wait(0.016666666666667)
Anim = nil
cf = CFrame.new
function c3(cz, cx, cc)
  return Color3.new(cz / 255, cx / 255, cc / 255)
end
angles = CFrame.Angles
Player = game.Players.LocalPlayer
Character = Player.Character
Humanoid = Character.Humanoid
mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
RightArm = Character["Right Arm"]
LeftLeg = Character["Left Leg"]
RightLeg = Character["Right Leg"]
Head = Character.Head
Torso = Character.Torso
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RootCF = angles(-1.57, 0, 3.14)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
Neck = Torso.Neck
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "Left Shoulder"
LW.Part0 = Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso
Effects = Instance.new("Model", Character)
Effects.Name = "Effects"
Humanoid.WalkSpeed = 16
partEffects, AttackHas, AttackNeeded, AttackCan = {}, {}, {}, {}
AttackHas[1], AttackHas[2], AttackHas[3], AttackHas[4] = 1, 1, 1, 1
AttackNeeded[1], AttackNeeded[2], AttackNeeded[3], AttackNeeded[4] = 1, 1, 1, 1
AttackCan[1], AttackCan[2], AttackCan[3], AttackCan[4] = true, true, true, true
sine = 0
attackcounter = 1
torvel = nil
attacking = false
hitfloor, posfloor = nil, nil
tool = nil
if script.Parent.ClassName == "HopperBin" then
  tool = script.Parent
  tool.Parent = Player.Backpack
else
  tool = Instance.new("HopperBin", Player.Backpack)
  tool.Name = ""
end
meshes = {
  3270017,
  20329976,
  448386996,
  1095708,
  1033714,
  9756362
}
sounds = {
  {
    320557413,
    320557453,
    320557487,
    320557518,
    320557537,
    320557563,
    233856146,
    233856140
  },
  {
    234365549,
    234365573,
    231917961,
    231917950,
    231917856,
    231917863,
    231917871
  },
  {
    262562442,
    231917806,
    231917784
  },
  {
    262562442,
    233856048,
    306247739
  }
}
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.025
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
function thread(f)
  coroutine.resume(coroutine.create(f))
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
function newPart(par, brick, transp, anch, canc, size, name, mat, cfra)
  local p = Instance.new("Part")
  p.BrickColor = brick
  p.Transparency = transp
  p.Material = mat and mat or "SmoothPlastic"
  p.Anchored = anch
  p.CanCollide = canc
  p.Size = size
  p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface, p.FrontSurface, p.BackSurface = 10, 10, 10, 10, 10, 10
  p.Name = name
  p.CFrame = cfra or RootPart.CFrame
  p.Parent = par
  return p
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = Instance.new(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  if offset then
    mesh.Offset = offset
  end
  mesh.Scale = scale
  return mesh
end
function weld(parent, part0, part1, c0, c1)
  local weld = Instance.new("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  if c1 then
    weld.C1 = c1
  end
  return weld
end
function sound(id, par, vol, dur, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
    swait()
    sou:play()
    wait(dur)
    sou:Destroy()
  end))
end
function round(num)
  local a, b = math.modf(num)
  if num % 1 ~= 0 then
    return math.floor(num) + math.floor(b * 10 + 0.5) / 10
  else
    return math.floor(num)
  end
end
function findCloseHumanoid(centre, distance)
  local tab = {}
  for _, child in pairs(game.Workspace:GetChildren()) do
    if child:findFirstChild("Humanoid") and child:findFirstChild("Humanoid") ~= Humanoid and child:findFirstChild("Torso") then
      local vtors = child.Torso
      local mag = math.abs((vtors.Position - centre).magnitude)
      if distance >= mag then
        table.insert(tab, child.Humanoid)
      end
    end
  end
  return tab
end
function basicDamage(vhum, damage, colour)
  if not vhum or not vhum.Parent:findFirstChild("Humanoid") or vhum.Health <= 0 then
    return
  end
  vhum.Health = vhum.Health - damage
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
function createBodyTrail()
  local nPart = function(parent, brickcolor, transparency, anchored, cancollide, size, name)
    local fp = Instance.new("Part")
    fp.Parent = parent
    fp.Transparency = transparency
    fp.Anchored = anchored
    fp.CanCollide = cancollide
    fp.Locked = true
    fp.BrickColor = BrickColor.new(brickcolor)
    fp.Name = name
    fp.Size = size
    fp.Position = RootPart.Position
    fp.TopSurface, fp.BottomSurface, fp.LeftSurface, fp.RightSurface, fp.FrontSurface, fp.BackSurface = 10, 10, 10, 10, 10, 10
    fp.Material = "SmoothPlastic"
    fp:BreakJoints()
    return fp
  end
  local faketab = {}
  local fakel = nPart(Effects, Character["Right Arm"].BrickColor.Color, 0, true, false, Character["Right Arm"].Size, "")
  local faker = nPart(Effects, Character["Left Arm"].BrickColor.Color, 0, true, false, Character["Left Arm"].Size, "")
  local fakell = nPart(Effects, Character["Left Leg"].BrickColor.Color, 0, true, false, Character["Left Leg"].Size, "")
  local fakerl = nPart(Effects, Character["Right Leg"].BrickColor.Color, 0, true, false, Character["Right Leg"].Size, "")
  local faketors = nPart(Effects, Character.Torso.BrickColor.Color, 0, true, false, Character.Torso.Size, "")
  local fakehead = nPart(Effects, Character.Head.BrickColor.Color, 0, true, false, Character.Head.Size, "")
  fakel.BrickColor = BrickColor.new("Fog")
  faker.BrickColor = BrickColor.new("Fog")
  fakell.BrickColor = BrickColor.new("Fog")
  fakerl.BrickColor = BrickColor.new("Fog")
  faketors.BrickColor = BrickColor.new("Fog")
  fakehead.BrickColor = BrickColor.new("Fog")
  if Character.Head:findFirstChild("Mesh") then
    Character.Head.Mesh:Clone().Parent = fakehead
  end
  fakel.Name = "FakeLeft"
  faker.Name = "FakeRight"
  fakell.Name = "FakeLeftL"
  fakerl.Name = "FakeRightL"
  faketors.Name = "FakeTorso"
  fakehead.Name = "FakeHead"
  table.insert(faketab, fakel)
  table.insert(faketab, faker)
  table.insert(faketab, fakell)
  table.insert(faketab, fakerl)
  table.insert(faketab, faketors)
  table.insert(faketab, fakehead)
  for _, v in pairs(faketab) do
    v.Archivable = true
    v.CanCollide = false
    v.Anchored = true
    v.Material = "SmoothPlastic"
    v.Transparency = 0.2
    v.Locked = true
    game.Debris:AddItem(v, 3)
  end
  fakel.CFrame = Character["Left Arm"].CFrame
  faker.CFrame = Character["Right Arm"].CFrame
  fakell.CFrame = Character["Left Leg"].CFrame
  fakerl.CFrame = Character["Right Leg"].CFrame
  faketors.CFrame = Character.Torso.CFrame
  fakehead.CFrame = Character.Head.CFrame
  local hats = {}
  for _, v in pairs(hats) do
    if v:findFirstChild("Handle") then
      do
        local vc = v.Handle:Clone()
        vc.Parent = Effects
        vc.CFrame = v.Handle.CFrame
        vc.Anchored = true
        vc.CanCollide = false
        thread(function()
          for i = 1, 15 do
            swait()
            vc.Transparency = vc.Transparency + 0.06666666666666667
          end
          vc:Destroy()
        end)
      end
    end
  end
  return faketors, fakehead, faker, fakel, fakerl, fakell
end
function magic(type, thing)
  local magicBlock = function(par, brick, cframe, x1, y1, z1, x3, y3, z3, delay, t)
    local prt = newPart(par, brick, 0, true, false, Vector3.new(), "Part", "SmoothPlastic", cframe)
    prt.CFrame = cframe
    local msh = mesh("BlockMesh", prt, nil, nil, Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 8)
    if t == 1 or t == nil then
      table.insert(partEffects, {
        prt,
        "Block1",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    elseif t == 2 then
      table.insert(partEffects, {
        prt,
        "Block2",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  end
  local magicCylinder = function(par, brick, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = newPart(par, brick, 0, true, false, Vector3.new(), "Part", "SmoothPlastic", cframe)
    local msh = mesh("CylinderMesh", prt, nil, nil, Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 8)
    table.insert(partEffects, {
      prt,
      "Cylinder",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  end
  local magicSphere = function(par, brick, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = newPart(par, brick, 0, true, false, Vector3.new(), "Part", "SmoothPlastic", cframe)
    local msh = mesh("SpecialMesh", prt, "Sphere", nil, Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 8)
    table.insert(partEffects, {
      prt,
      "Cylinder",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  end
  local magicRing = function(par, brick, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = newPart(par, brick, 0, true, false, Vector3.new(), "Part", "SmoothPlastic", cframe)
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = mesh("SpecialMesh", prt, "FileMesh", 3270017, Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 2)
    coroutine.resume(coroutine.create(function(Part, Mesh, num)
      for i = 0, 1, delay do
        swait()
        Part.Transparency = i
        Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
      end
      Part:Destroy()
    end), prt, msh, (math.random(0, 1) + math.random()) / 5)
  end
  local magicSlash = function(par, brick, cframe, x1, y1, z1, x3, y3, z3, delay)
    local prt = newPart(par, brick, 0, true, false, Vector3.new(), "Part", cframe)
    prt.Anchored = true
    prt.CFrame = cframe
    local msh = mesh("SpecialMesh", prt, "FileMesh", 20329976, Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    game:GetService("Debris"):AddItem(prt, 2)
    coroutine.resume(coroutine.create(function(Part, Mesh, num)
      for i = 0, 1, delay do
        swait()
        Part.Transparency = i
        Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
      end
      Part:Destroy()
    end), prt, msh, (math.random(0, 1) + math.random()) / 5)
  end
  local par = thing[1]
  local brick = thing[2]
  local cframe = thing[3]
  local x1 = thing[4]
  local y1 = thing[5]
  local z1 = thing[6]
  local x3 = thing[7]
  local y3 = thing[8]
  local z3 = thing[9]
  local delay = thing[10]
  local t = thing[11]
  if type == "Block" or type == 1 then
    magicBlock(thing[1], thing[2], thing[3], thing[4], thing[5], thing[6], thing[7], thing[8], thing[9], thing[10], thing[11])
  elseif type == "Cylinder" or type == 2 then
    magicCylinder(thing[1], thing[2], thing[3], thing[4], thing[5], thing[6], thing[7], thing[8], thing[9], thing[10], thing[11])
  elseif type == "Sphere" or type == 3 then
    magicSphere(thing[1], thing[2], thing[3], thing[4], thing[5], thing[6], thing[7], thing[8], thing[9], thing[10], thing[11])
  elseif type == "Ring" or type == 4 then
    magicRing(thing[1], thing[2], thing[3], thing[4], thing[5], thing[6], thing[7], thing[8], thing[9], thing[10], thing[11])
  elseif type == "Slash" or type == 5 then
    magicSlash(thing[1], thing[2], thing[3], thing[4], thing[5], thing[6], thing[7], thing[8], thing[9], thing[10], thing[11])
  end
end
function newFrame(par, bg, transp, size, pos, name)
  local f = Instance.new("Frame", nil)
  f.BackgroundColor3 = bg
  f.BackgroundTransparency = transp
  f.BorderSizePixel = 0
  f.Position = pos
  f.Size = size
  f.Name = name
  f.Parent = par
  return f
end
function newLabel(par, size, pos, text, textsize, text3, textstroke3, scaled, name)
  local l = Instance.new("TextLabel", nil)
  l.BackgroundTransparency = 1
  l.Size = size
  l.Position = pos
  l.Text = text
  l.TextSize = textsize
  l.TextColor3 = text3
  l.TextStrokeColor3 = textstroke3
  if scaled then
    l.TextScaled = scaled
  else
    l.TextScaled = true
  end
  l.TextStrokeTransparency = 0
  l.Name = name
  l.Parent = par
  return l
end
a1t = "Misdirection"
a2t = "Marionette"
a3t = "Luna Clock"
a4t = "Clock Corpse"
backc3 = c3(210, 210, 255)
reloc3 = c3(107, 107, 210)
g = Instance.new("ScreenGui")
f1 = newFrame(g, backc3, 0.5, UDim2.new(0.18, 0, 0.08, 0), UDim2.new(0.8, 0, 0.85, 0), "")
f2 = newFrame(g, backc3, 0.5, UDim2.new(0.18, 0, 0.08, 0), UDim2.new(0.8, 0, 0.76, 0), "")
f3 = newFrame(g, backc3, 0.5, UDim2.new(0.18, 0, 0.08, 0), UDim2.new(0.8, 0, 0.67, 0), "")
f4 = newFrame(g, backc3, 0.5, UDim2.new(0.18, 0, 0.08, 0), UDim2.new(0.8, 0, 0.58, 0), "")
newFrame(f1, reloc3, 0, UDim2.new(1.002, 0, 1.002, 0), UDim2.new(0, 0, 0, 0), "Reload")
newFrame(f2, reloc3, 0, UDim2.new(1.002, 0, 1.002, 0), UDim2.new(0, 0, 0, 0), "Reload")
newFrame(f3, reloc3, 0, UDim2.new(1.002, 0, 1.002, 0), UDim2.new(0, 0, 0, 0), "Reload")
newFrame(f4, reloc3, 0, UDim2.new(1.002, 0, 1.002, 0), UDim2.new(0, 0, 0, 0), "Reload")
newLabel(f1, UDim2.new(1, 0, 0.4, 0), UDim2.new(0, 0, 0, 0), "(Z)", 18, c3(243, 242, 242), c3(0, 0, 0), true, "Key")
newLabel(f2, UDim2.new(1, 0, 0.4, 0), UDim2.new(0, 0, 0, 0), "(X)", 18, c3(243, 242, 242), c3(0, 0, 0), true, "Key")
newLabel(f3, UDim2.new(1, 0, 0.4, 0), UDim2.new(0, 0, 0, 0), "(C)", 18, c3(243, 242, 242), c3(0, 0, 0), true, "Key")
newLabel(f4, UDim2.new(1, 0, 0.4, 0), UDim2.new(0, 0, 0, 0), "(V)", 18, c3(243, 242, 242), c3(0, 0, 0), true, "Key")
newLabel(f1, UDim2.new(1, 0, 0.6, 0), UDim2.new(0, 0, 0.4, 0), a1t, 18, c3(243, 242, 242), c3(0, 0, 0), true, "Label")
newLabel(f2, UDim2.new(1, 0, 0.6, 0), UDim2.new(0, 0, 0.4, 0), a2t, 18, c3(243, 242, 242), c3(0, 0, 0), true, "Label")
newLabel(f3, UDim2.new(1, 0, 0.6, 0), UDim2.new(0, 0, 0.4, 0), a3t, 18, c3(243, 242, 242), c3(0, 0, 0), true, "Label")
newLabel(f4, UDim2.new(1, 0, 0.6, 0), UDim2.new(0, 0, 0.4, 0), a4t, 18, c3(243, 242, 242), c3(0, 0, 0), true, "Label")
g.Parent = Player.PlayerGui
Reload = {}
Reload[1] = f1.Reload
Reload[2] = f2.Reload
Reload[3] = f3.Reload
Reload[4] = f4.Reload
function newKnife()
  local weapon = Instance.new("Model", Character)
  weapon.Name = "Izayoi"
  local p0 = newPart(weapon, BrickColor.new("Black"), 0, false, false, Vector3.new(0.200000003, 0.200000003, 0.200000003), "Wedge")
  mesh("SpecialMesh", p0, Enum.MeshType.Wedge, nil, Vector3.new(0, 0, 0), Vector3.new(0.400000036, 0.550000012, 1.29999995))
  local p1 = newPart(weapon, BrickColor.new("Black"), 0, false, false, Vector3.new(0.200000003, 0.200000003, 0.200000003), "Block")
  mesh("BlockMesh", p1, nil, nil, Vector3.new(0, 0, 0), Vector3.new(0.400000095, 0.749999881, 0.699999988))
  local p2 = newPart(weapon, BrickColor.new("Black"), 0, false, false, Vector3.new(0.200000003, 0.200000003, 0.200000003), "Block")
  mesh("BlockMesh", p2, nil, nil, Vector3.new(0, 0, 0), Vector3.new(0.400000095, 0.749999881, 0.699999869))
  local p3 = newPart(weapon, BrickColor.new("Lily white"), 0, false, false, Vector3.new(0.200000003, 0.200000003, 0.200000003), "Blade")
  mesh("BlockMesh", p3, nil, nil, Vector3.new(0, 0, 0), Vector3.new(0.349999994, 5.45000029, 0.999999881))
  local p4 = newPart(weapon, BrickColor.new("Lily white"), 0, false, false, Vector3.new(0.200000003, 0.200000003, 0.200000003), "Wedge")
  mesh("SpecialMesh", p4, Enum.MeshType.Wedge, nil, Vector3.new(0, 0, 0), Vector3.new(0.350000024, 3.9000001, 1.05000007))
  local p5 = newPart(weapon, BrickColor.new("Black"), 0, false, false, Vector3.new(0.200000003, 0.200000003, 0.200000003), "Wedge")
  mesh("SpecialMesh", p5, Enum.MeshType.Wedge, nil, Vector3.new(0, 0, 0), Vector3.new(0.400000066, 0.550000012, 1.29999995))
  local p6 = newPart(weapon, BrickColor.new("Black"), 0, false, false, Vector3.new(0.200000003, 0.200000003, 0.200000003), "Handle")
  mesh("BlockMesh", p6, nil, nil, Vector3.new(0, 0, 0), Vector3.new(0.400000036, 3.5999999, 0.699999928))
  local p7 = newPart(weapon, BrickColor.new("Black"), 0, false, false, Vector3.new(0.200000003, 0.200000003, 0.200000003), "Block")
  mesh("BlockMesh", p7, nil, nil, Vector3.new(0, 0, 0), Vector3.new(0.449999988, 0.349999994, 2.29999971))
  weld(p0, p0, p1, CFrame.new(-30.2999763, 2.48997641, 28.180027, 1, 0, 0, 0, 1, -4.37113883E-8, 0, 4.37113883E-8, 1), CFrame.new(30.2999763, 16.1993866, -23.0049038, -1, 0, 0, 0, 0.866025388, 0.49999997, 0, 0.49999997, -0.866025388))
  weld(p1, p1, p2, CFrame.new(30.2999763, 16.1993866, -23.0049038, -1, 0, 0, 0, 0.866025388, 0.49999997, 0, 0.49999997, -0.866025388), CFrame.new(30.2999763, 11.7913561, 25.5498791, -1, 0, 0, 0, -0.866025269, 0.49999997, 0, 0.49999997, 0.866025269))
  weld(p2, p2, p3, CFrame.new(30.2999763, 11.7913561, 25.5498791, -1, 0, 0, 0, -0.866025269, 0.49999997, 0, 0.49999997, 0.866025269), CFrame.new(30.2999763, 26.6550255, 2.5449779, -1, 0, 0, 0, 0, 1, 0, 1, 0))
  weld(p3, p3, p4, CFrame.new(30.2999763, 26.6550255, 2.5449779, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(30.2999763, 25.7200241, 2.5449779, -1, 0, 0, 0, 0, 1, 0, 1, 0))
  weld(p4, p4, p5, CFrame.new(30.2999763, 25.7200241, 2.5449779, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(30.2999763, -2.59997678, 28.180027, -1, 8.74227766E-8, 0, -8.74227766E-8, -1, -4.37113883E-8, -3.82137093E-15, -4.37113883E-8, 1))
  weld(p5, p5, p6, CFrame.new(30.2999763, -2.59997678, 28.180027, -1, 8.74227766E-8, 0, -8.74227766E-8, -1, -4.37113883E-8, -3.82137093E-15, -4.37113883E-8, 1), CFrame.new(30.2999763, 27.6200256, 2.5449779, -1, 0, 0, 0, 0, 1, 0, 1, 0))
  weld(p6, p6, p7, CFrame.new(30.2999763, 27.6200256, 2.5449779, -1, 0, 0, 0, 0, 1, 0, 1, 0), CFrame.new(30.2999763, 27.2300262, 2.5449779, -1, 0, 0, 0, 0, 1, 0, 1, 0))
  return weapon, p6, p3
end
knife1, blade1, handle1 = newKnife()
handleweld1 = Instance.new("Weld", RightArm)
handleweld1.Part1 = RightArm
handleweld1.Part0 = handle1
handle1c0 = CFrame.new(0.2, 0.95, 0) * CFrame.Angles(math.rad(85), math.rad(180), 0)
handle1c1 = CFrame.new(0, -0.95, 0)
handleweld1.C0 = handle1c0
handleweld1.C1 = handle1c1
knife2, blade2, handle2 = newKnife()
handleweld2 = Instance.new("Weld", RightArm)
handleweld2.Part1 = RightArm
handleweld2.Part0 = handle2
handle2c0 = CFrame.new(0, 0.9, 0.15) * CFrame.Angles(math.rad(55), math.rad(180), 0)
handle2c1 = CFrame.new(0, -0.9, 0)
handleweld2.C0 = handle2c0
handleweld2.C1 = handle2c1
knife3, blade3, handle3 = newKnife()
handleweld3 = Instance.new("Weld", RightArm)
handleweld3.Part1 = RightArm
handleweld3.Part0 = handle3
handle3c0 = CFrame.new(-0.2, 0.9, 0.3) * CFrame.Angles(math.rad(25), math.rad(180), 0)
handle3c1 = CFrame.new(0, -0.9, 0)
handleweld3.C0 = handle3c0
handleweld3.C1 = handle3c1
function teleport(k)
  local a, b, c, d, e, f = createBodyTrail()
  table.insert(partEffects, {
    a,
    "Disappear",
    0.05
  })
  table.insert(partEffects, {
    b,
    "Disappear",
    0.05
  })
  table.insert(partEffects, {
    c,
    "Disappear",
    0.05
  })
  table.insert(partEffects, {
    d,
    "Disappear",
    0.05
  })
  table.insert(partEffects, {
    e,
    "Disappear",
    0.05
  })
  table.insert(partEffects, {
    f,
    "Disappear",
    0.05
  })
  local unit = (RootPart.Velocity * Vector3.new(1, 0, 1)).unit
  if k == "e" then
  elseif k == "q" then
    unit = -unit
  end
  local velocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  local hit, pos = rayCast(RootPart.Position, unit, 15, Character)
  if velocity <= 2 then
    unit = RootPart.CFrame.lookVector
    if k == "q" then
      unit = RootPart.CFrame.lookVector * -1
    end
  end
  if pos then
    if hit then
      if hit.Parent:findFirstChild("Humanoid") then
        RootPart.CFrame = CFrame.new(RootPart.CFrame.p + unit * 20)
      else
        if hit.Parent:IsA("Model") and hit.Parent.Parent:findFirstChild("Humanoid") then
          RootPart.CFrame = CFrame.new(RootPart.CFrame.p + unit * 20)
        end
        RootPart.CFrame = CFrame.new(pos)
      end
    else
      RootPart.CFrame = CFrame.new(RootPart.CFrame.p + unit * 20)
    end
  end
end
function attackone()
  attacking = true
  cloak("Uncloak")
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, NeckCF * CFrame.Angles(math.rad(8), 0, math.rad(-70)), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0.1 * math.cos(sine / 25)) * CFrame.Angles(0, 0, math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3 - 0.1 * math.cos(sine / 15), -0.6) * CFrame.Angles(math.rad(80), 0, math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 15), 0.2) * CFrame.Angles(math.rad(15), math.rad(10), math.rad(-10)), 0.3)
    RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.3)
    LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.3)
    RH.C0 = clerp(RH.C0, CFrame.new(1, -1 - 0.1 * math.cos(sine / 25), 0) * CFrame.Angles(math.rad(0), math.rad(90) - math.rad(10), math.rad(5)), 0.3)
    LH.C0 = clerp(LH.C0, CFrame.new(-1, -1 - 0.1 * math.cos(sine / 25), 0) * CFrame.Angles(math.rad(0), -math.rad(90) - math.rad(10), math.rad(5)), 0.3)
    handleweld1.C0 = clerp(handleweld1.C0, handle1c0, 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, handle2c0, 0.3)
    handleweld3.C0 = clerp(handleweld3.C0, handle3c0, 0.3)
  end
  local dir1 = (RootPart.CFrame.lookVector + Vector3.new(math.cos(math.rad(45)), 0, math.sin(math.rad(45)))).unit
  local dir2 = RootPart.CFrame.lookVector
  local dir3 = (RootPart.CFrame.lookVector + Vector3.new(math.cos(math.rad(-45)), 0, math.sin(math.rad(-45)))).unit
  local throwknife1 = newKnife()
  throwknife1.Handle.CFrame = CFrame.new(RootPart.CFrame.p, RootPart.CFrame.p + dir1) * CFrame.Angles(math.rad(-90), 0, 0)
  local bv1 = Instance.new("BodyVelocity", throwknife1.Handle)
  bv1.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  bv1.Velocity = dir1 * 30
  local throwknife2 = newKnife()
  throwknife2.Handle.CFrame = CFrame.new(RootPart.CFrame.p, RootPart.CFrame.p + dir2) * CFrame.Angles(math.rad(-90), 0, 0)
  local bv2 = Instance.new("BodyVelocity", throwknife2.Handle)
  bv2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  bv2.Velocity = dir2 * 30
  local throwknife3 = newKnife()
  throwknife3.Handle.CFrame = CFrame.new(RootPart.CFrame.p, RootPart.CFrame.p + dir3) * CFrame.Angles(math.rad(-90), 0, 0)
  local bv3 = Instance.new("BodyVelocity", throwknife3.Handle)
  bv3.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  bv3.Velocity = dir3 * 30
  thread(function()
    while throwknife1.Parent ~= Effects do
      swait()
      local hit1, pos1
      if throwknife1:findFirstChild("Blade") then
        hit1, pos1 = rayCast(throwknife1.Blade.Position, dir1, 1, Character)
      end
      if hit1 and pos1 then
        local w = weld(hit1, throwknife1.Blade, hit1, throwknife1.Blade.CFrame:toObjectSpace(hit1.CFrame))
        bv1:Destroy()
        if hit1.Parent:findFirstChild("Humanoid") then
          basicDamage(hit1.Parent.Humanoid, 5, BrickColor.new("Fog").Color)
        end
        break
      end
    end
  end)
  thread(function()
    while throwknife2.Parent ~= Effects do
      swait()
      local hit1, pos1
      if throwknife2:findFirstChild("Blade") then
        hit1, pos1 = rayCast(throwknife2.Blade.Position, dir2, 1, Character)
      end
      if hit1 and pos1 then
        local w = weld(hit1, throwknife2.Blade, hit1, throwknife2.Blade.CFrame:toObjectSpace(hit1.CFrame))
        bv2:Destroy()
        if hit1.Parent:findFirstChild("Humanoid") then
          basicDamage(hit1.Parent.Humanoid, 5, BrickColor.new("Fog").Color)
        end
        break
      end
    end
  end)
  thread(function()
    while throwknife3.Parent ~= Effects do
      swait()
      local hit1, pos1
      if throwknife3:findFirstChild("Blade") then
        hit1, pos1 = rayCast(throwknife3.Blade.Position, dir3, 1, Character)
      end
      if hit1 and pos1 then
        local w = weld(hit1, throwknife3.Blade, hit1, throwknife3.Blade.CFrame:toObjectSpace(hit1.CFrame))
        bv3:Destroy()
        if hit1.Parent:findFirstChild("Humanoid") then
          basicDamage(hit1.Parent.Humanoid, 5, BrickColor.new("Fog").Color)
        end
        break
      end
    end
  end)
  delay(10, function()
    if throwknife1 then
      throwknife1:Destroy()
    end
    if throwknife2 then
      throwknife2:Destroy()
    end
    if throwknife3 then
      throwknife3:Destroy()
    end
  end)
  cloak("Cloak")
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, NeckCF * angles(math.rad(8), math.rad(0), math.rad(0)), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(0.2, math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(0), math.rad(-40), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(45), 0, math.rad(-25)), 0.3)
    RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
  end
  attacking = false
end
function attacktwo()
  attackone()
end
function attackthree()
  attackone()
end
function mouse1d()
  if tool.Active == false then
    return
  end
  if attacking == false and attackcounter == 1 then
    attackcounter = 2
    attackone()
  elseif attacking == false and attackcounter == 2 then
    attackcounter = 3
    attacktwo()
  elseif attacking == false and attackcounter == 3 then
    attackcounter = 1
    attackthree()
  end
end
function key(k)
  if tool.Active == false then
    return
  end
  k = k:lower()
  if attacking == false and k == "z" and AttackHas[1] >= AttackNeeded[1] then
  elseif attacking == false and k == "x" and AttackHas[2] >= AttackNeeded[2] then
  elseif attacking == false and k == "c" and AttackHas[3] >= AttackNeeded[3] then
  elseif attacking == false and k == "v" and AttackHas[4] >= AttackNeeded[4] then
  elseif k == "e" then
    teleport("e")
  elseif k == "q" then
    teleport("q")
  end
end
mouse.Button1Down:connect(mouse1d)
mouse.KeyDown:connect(key)
cloaked = false
function cloak(t)
  if t == "Cloak" then
    if cloaked == true then
      return
    end
    cloaked = true
    magic("Sphere", {
      Effects,
      BrickColor.new("Fog"),
      handle1.CFrame,
      0.5,
      0.5,
      0.5,
      1,
      2,
      1,
      0.1
    })
    magic("Sphere", {
      Effects,
      BrickColor.new("Fog"),
      handle2.CFrame,
      0.5,
      0.5,
      0.5,
      1,
      2,
      1,
      0.1
    })
    magic("Sphere", {
      Effects,
      BrickColor.new("Fog"),
      handle3.CFrame,
      0.5,
      0.5,
      0.5,
      1,
      2,
      1,
      0.1
    })
    for i, v in pairs(knife1:GetChildren()) do
      v.Transparency = 1
    end
    for i, v in pairs(knife2:GetChildren()) do
      v.Transparency = 1
    end
    for i, v in pairs(knife3:GetChildren()) do
      v.Transparency = 1
    end
    handleweld1.C0 = CFrame.new(0, -0.9, 0)
    handleweld2.C0 = CFrame.new(0, -0.9, 0)
    handleweld3.C0 = CFrame.new(0, -0.9, 0)
  elseif t == "Uncloak" then
    if cloaked == false then
      return
    end
    cloaked = false
    for i, v in pairs(knife1:GetChildren()) do
      v.Transparency = 0
    end
    for i, v in pairs(knife2:GetChildren()) do
      v.Transparency = 0
    end
    for i, v in pairs(knife3:GetChildren()) do
      v.Transparency = 0
    end
  end
end
thread(function()
  while true do
    swait()
    torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    sine = sine + 1
    if AttackHas[1] < AttackNeeded[1] and AttackCan[1] == true then
      AttackHas[1] = AttackHas[1] + 0.03
    end
    if AttackHas[2] < AttackNeeded[2] and AttackCan[2] == true then
      AttackHas[2] = AttackHas[2] + 0.03
    end
    if AttackHas[3] < AttackNeeded[3] and AttackCan[3] == true then
      AttackHas[3] = AttackHas[3] + 0.03
    end
    if AttackHas[4] < AttackNeeded[4] and AttackCan[4] == true then
      AttackHas[4] = AttackHas[4] + 0.03
    end
    Reload[1]:TweenSize(UDim2.new(AttackHas[1] / AttackNeeded[1], 0, 1, 0), nil, 1, 0.4)
    Reload[2]:TweenSize(UDim2.new(AttackHas[2] / AttackNeeded[2], 0, 1, 0), nil, 1, 0.4)
    Reload[3]:TweenSize(UDim2.new(AttackHas[3] / AttackNeeded[3], 0, 1, 0), nil, 1, 0.4)
    Reload[4]:TweenSize(UDim2.new(AttackHas[4] / AttackNeeded[4], 0, 1, 0), nil, 1, 0.4)
    if 1 < RootPart.Velocity.y and hitfloor == nil then
      if attacking == false then
        Anim = "Jump"
        Neck.C0 = clerp(Neck.C0, NeckCF * CFrame.Angles(math.rad(-15), 0, math.rad(0)), 0.1)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-math.rad(17), 0, math.rad(12)), 0.2)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(-math.rad(17), 0, -math.rad(12)), 0.2)
        RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(90), 0), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(12), -math.rad(90), 0), 0.2)
        cloak("Cloak")
      end
    elseif RootPart.Velocity.y < -1 and hitfloor == nil then
      if attacking == false then
        Anim = "Fall"
        Neck.C0 = clerp(Neck.C0, NeckCF * CFrame.Angles(math.rad(23), 0, 0), 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.Angles(0, 0, 0), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(-math.rad(17), 0, math.rad(12)), 0.2)
        RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-math.rad(17), 0, -math.rad(12)), 0.2)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0), 0.2)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(24), math.rad(90), 0), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-12), -math.rad(90), 0), 0.2)
      end
    elseif torvel < 1 and hitfloor ~= nil then
      if attacking == false then
        Anim = "Idle"
        Neck.C0 = clerp(Neck.C0, NeckCF * CFrame.Angles(math.rad(8), 0, math.rad(-25)), 0.1)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0.1 * math.cos(sine / 25)) * CFrame.Angles(0, 0, math.rad(25)), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3 - 0.1 * math.cos(sine / 15), -0.6) * CFrame.Angles(math.rad(70), 0, math.rad(-45)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 15), 0.2) * CFrame.Angles(math.rad(15), math.rad(10), math.rad(-10)), 0.2)
        RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.2)
        LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.2)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1 - 0.1 * math.cos(sine / 25), 0) * CFrame.Angles(math.rad(0), math.rad(90) - math.rad(10), math.rad(5)), 0.2)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1 - 0.1 * math.cos(sine / 25), 0) * CFrame.Angles(math.rad(0), -math.rad(90) - math.rad(10), math.rad(5)), 0.2)
        cloak("Uncloak")
        handleweld1.C0 = clerp(handleweld1.C0, handle1c0, 0.2)
        handleweld2.C0 = clerp(handleweld2.C0, handle2c0, 0.2)
        handleweld3.C0 = clerp(handleweld3.C0, handle3c0, 0.2)
      end
    elseif torvel > 2 and hitfloor ~= nil and attacking == false then
      Anim = "Walk"
      Neck.C0 = clerp(Neck.C0, NeckCF * CFrame.Angles(math.rad(8), 0, math.rad(-25)), 0.1)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, 0, 0.1 * math.cos(sine / 25)) * CFrame.Angles(0.1, 0, math.rad(25)), 0.1)
      RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.3 - 0.1 * math.cos(sine / 15), -0.6) * CFrame.Angles(math.rad(90), 0, math.rad(-50)), 0.2)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 15), 0.2) * CFrame.Angles(math.rad(15), math.rad(10), math.rad(-10)), 0.2)
      RW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.2)
      LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0), 0.2)
      RH.C0 = clerp(RH.C0, CFrame.new(1, -1 - 0.1 * math.cos(sine / 25), 0) * CFrame.Angles(math.cos(sine * 1.2 / 8), math.rad(90) - math.rad(10), math.rad(5)), 0.2)
      LH.C0 = clerp(LH.C0, CFrame.new(-1, -1 - 0.1 * math.cos(sine / 25), 0) * CFrame.Angles(-math.cos(sine * 1.2 / 8), -math.rad(90) - math.rad(10), math.rad(5)), 0.2)
      cloak("Uncloak")
      handleweld1.C0 = clerp(handleweld1.C0, CFrame.new(0.2, 0.95, 0) * CFrame.Angles(math.rad(80), math.rad(180), 0), 0.2)
      handleweld2.C0 = clerp(handleweld2.C0, CFrame.new(0, 0.95, 0.15) * CFrame.Angles(math.rad(50), math.rad(180), 0), 0.2)
      handleweld3.C0 = clerp(handleweld3.C0, CFrame.new(-0.2, 0.9, 0.3) * CFrame.Angles(math.rad(20), math.rad(180), 0), 0.2)
    end
    if 0 < #partEffects then
      for e = 1, #partEffects do
        if partEffects[e] ~= nil then
          local Thing = partEffects[e]
          if Thing ~= nil then
            local Part = Thing[1]
            local Mode = Thing[2]
            local Delay = Thing[3]
            local IncX = Thing[4]
            local IncY = Thing[5]
            local IncZ = Thing[6]
            if 1 >= Thing[1].Transparency then
              if Thing[2] == "Block1" then
                Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                local Mesh = Thing[1].Mesh
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Block2" then
                Thing[1].CFrame = Thing[1].CFrame
                local Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Cylinder" then
                local Mesh = Thing[1].Mesh
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Blood" then
                local Mesh = Thing[7]
                Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Elec" then
                local Mesh = Thing[1].Mesh
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Disappear" then
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Shatter" then
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                Thing[6] = Thing[6] + Thing[5]
              end
            else
              Part:Destroy()
              table.remove(partEffects, e)
            end
          end
        end
      end
    end
  end
end)