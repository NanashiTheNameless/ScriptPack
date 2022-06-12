repeat
  wait()
until game.Players.LocalPlayer.Character
repeat
  wait()
until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil
repeat
  wait()
until #game.Players.LocalPlayer.Character:children() >= 5
repeat
  wait()
until #script:children() >= 6
wait()
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
wait()
char = game.Players.LocalPlayer.Character
lastmove = ""
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Neck = Torso.Neck
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
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
Humanoid = char.Humanoid
local Animate = char.Humanoid.Animator
local mouse
MMouse = nil
local Anim = "Idle"
local idle = 0
local idleanim = 0
local hitfloor, posfloor
player = nil
RSH, LSH = nil, nil
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
function wPart(x, y, z, color, tr, cc, an, parent)
  local wp = Instance.new("WedgePart", EffectMo)
  wp.formFactor = "Custom"
  wp.Size = Vector3.new(x, y, z)
  wp.BrickColor = BrickColor.new(color)
  wp.CanCollide = cc
  wp.Transparency = tr
  wp.Anchored = an
  wp.TopSurface, wp.BottomSurface = 0, 0
  return wp
end
function Mesh(par, num, x, y, z)
  local msh = _
  if num == 1 then
    msh = Instance.new("CylinderMesh", par)
  elseif num == 2 then
    msh = Instance.new("SpecialMesh", par)
    msh.MeshType = 3
  elseif num == 3 then
    msh = Instance.new("BlockMesh", par)
  elseif num == 4 then
    msh = Instance.new("SpecialMesh", par)
    msh.MeshType = "Torso"
  elseif type(num) == "string" then
    msh = Instance.new("SpecialMesh", par)
    msh.MeshId = num
  end
  msh.Scale = Vector3.new(x, y, z)
  return msh
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
    print("unreachable")
  end
  local len1 = (c - a):Dot((b - a).unit)
  local len2 = (b - a).magnitude - len1
  local width = (a + (b - a).unit * len1 - c).magnitude
  local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
  local list = {}
  if len1 > 0.01 then
    do
      local w1 = wPart(0, 0, 0, "Really black", 0.5, false, true, EffectMo)
      local sz = Vector3.new(0.2, width, len1)
      w1.Size = sz
      local sp = Mesh(w1, 2, 0, 0, 0)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
      w1:BreakJoints()
      w1.Anchored = true
      w1.Transparency = 0.7
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.1 do
          swait()
          w1.Transparency = w1.Transparency + 0.03
        end
      end))
      w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
      table.insert(list, w1)
    end
  end
  if len2 > 0.01 then
    do
      local w2 = wPart(0, 0, 0, "Really black", 0.5, false, true, char)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Mesh(w2, 2, 0, 0, 0)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Transparency = 0.7
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.1 do
          swait()
          w2.Transparency = w2.Transparency + 0.03
        end
      end))
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
  end
  return unpack(list)
end
function tre(p, t, h)
  coroutine.resume(coroutine.create(function()
    local blcf = p.CFrame
    local scfr = blcf
    for i = 1, t do
      local blcf = p.CFrame
      if scfr and (p.Position - scfr.p).magnitude > 0.1 then
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
      else
        scfr = scfr or blcf
      end
      swait()
    end
    scfr = nil
  end))
end
function NoOutline(Part)
  Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
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
BlockGui = script.Block:Clone()
BlockGui.Parent = Player.PlayerGui
Bar = BlockGui.Bar.InterBar
function weld(parent, part0, part1, c0)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end
Bl0ck = 0
maxbl0ck = 100
function so(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  if par == char then
    sou.Parent = char.Torso
  end
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  coroutine.resume(coroutine.create(function(Sound)
    swait()
    Sound:play()
  end), sou)
  game:GetService("Debris"):AddItem(sou, 6)
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
LastHitTime = time()
LastDamage = 0
ComboHits = 0
Hitstop = 0
ComboNubs = {}
function Damagefunc(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  Noob = hit.Parent
  if hit.Name ~= "Hitbox" then
    ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(hit.Position)
    game:GetService("Debris"):AddItem(ref, 1)
    hitnum = math.random(1, 7)
    if hitnum == 1 then
      so("153092274", hit, 1, 1)
    elseif hitnum == 2 then
      so("199149186", hit, 2, 0.5)
    elseif hitnum == 3 then
      so("153092296", hit, 1, 0.3)
    elseif hitnum == 4 then
      so("199149235", hit, 1, 0.5)
    elseif hitnum == 5 then
      so("199149269", hit, 1, 0.4)
    elseif hitnum == 6 then
      so("199149297", hit, 1, 0.5)
    elseif hitnum == 7 then
      so("201858024", hit, 1, 0.6)
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    hit = hit.Parent.Parent:findFirstChild("Torso")
    lasthit = hit
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    if Player.Neutral == false then
      if hit.Parent:findFirstChild("Alignment") ~= nil and hit.Parent.Alignment.Value == Player.TeamColor.Color then
        return
      end
      if game.Players:GetPlayerFromCharacter(hit.Parent) ~= nil and game.Players:GetPlayerFromCharacter(hit.Parent).TeamColor == Player.TeamColor then
        return
      end
    end
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
    if blocked == true then
    else
      Damage = math.floor(Damage)
      coroutine.resume(coroutine.create(function(Hum, Dam)
        hit.Parent.Humanoid:TakeDamage(Damage)
      end), h, Damage)
      showDamage(hit.Parent, Damage, "Damage")
      if Type == "Knockdown" then
        hum = hit.Parent.Humanoid
        hum.PlatformStand = true
        coroutine.resume(coroutine.create(function(HHumanoid)
          swait(1)
          HHumanoid.PlatformStand = false
        end))
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
      elseif Type == "Knockdown2" then
        hum = hit.Parent.Humanoid
        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
        local bodvol = Instance.new("BodyVelocity")
        bodvol.velocity = angle * knockback
        bodvol.P = 500
        bodvol.maxForce = Vector3.new(3000, 3000, 3000)
        bodvol.Parent = hit
        game:GetService("Debris"):AddItem(bodvol, 0.5)
      else
        if Type == "Normal" or Type == "NormalDecreaseMvmt1" then
          vp = Instance.new("BodyVelocity")
          vp.P = 500
          vp.maxForce = Vector3.new(math.huge, 0, math.huge)
          if KnockbackType == 1 then
            vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
          elseif KnockbackType == 2 then
            vp.velocity = Property.CFrame.lookVector * knockback
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
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
      end
    end
  end
  aHitstun = 38
  aHitstop = 10
  Hitstop = Hitstop + aHitstop
  LastHitTime = time() + aHitstop / 27 + aHitstun / 27 + 0.05
  LastDamage = LastDamage + Damage * 1
  Comboing = true
  ComboHits = ComboHits + 1
  ComboNubs[Noob.Name] = Noob
end
function showDamage(Char, Dealt, Type)
end
function MagniDamage(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head
      for _, d in pairs(c:children()) do
        if d.className == "Model" and ranged ~= true then
          head = d:findFirstChild("Hitbox")
          if d.Parent == Character then
            break
          end
          if head ~= nil then
            local targ = head.Position - Part.Position
            local mag = targ.magnitude
            if not (magni >= mag) or c.Name ~= Player.Name then
            end
          end
        end
        if d.className == "Part" and d.Name == "Torso" then
          head = d
          if head ~= nil then
            local targ = head.Position - Part.Position
            local mag = targ.magnitude
            if magni >= mag and c.Name ~= Player.Name then
              Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
            end
          end
        end
      end
    end
  end
end
function trail(Tim)
  for _, v in pairs(char:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" and v.Name ~= "Head" then
      do
        local p = v:clone()
        p.Name = "trail"
        p.Parent = EffectMo
        p.Transparency = 0
        p.Anchored = true
        p.BrickColor = BrickColor.new("Medium stone grey")
        p.Material = "Neon"
        p:ClearAllChildren()
        p.CanCollide = false
        coroutine.resume(coroutine.create(function()
          swait()
          repeat
            swait()
            p.Transparency = p.Transparency + Tim
          until p.Transparency >= 1
          p:Destroy()
        end))
      end
    end
  end
end
BlastMesh = "http://www.roblox.com/asset/?id=20329976"
function resetwelds()
  spr.C0 = neutralc0
end
function gentrail(par)
  par = par:clone()
  par.Parent = EffectMo
  coroutine.resume(coroutine.create(function(part, spin)
    for i = 1, 20 do
      part.Mesh.Scale = part.Mesh.Scale - Vector3.new(0.05, 0.05, 0.05)
      part.Transparency = i / 20
      part.CFrame = part.CFrame * CFrame.new(math.random(-50, 50) / 5000, math.random(-10, 10) / 1000, math.random(-10, 10) / 1000) * spin
      swait()
    end
    part.Parent = nil
  end), par, CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
end
function RestoreHP(targe, rest)
  local CPlayer = char
  pol = Instance.new("Part")
  pol.Name = "Trail"
  pol.TopSurface = 0
  pol.BottomSurface = 0
  pol.Anchored = false
  pol.CanCollide = false
  pol.formFactor = "Symmetric"
  pol.Size = Vector3.new(1, 1, 1)
  pol.BrickColor = BrickColor.new("Crimson")
  pol.Material = "Neon"
  pol.Transparency = 0.3
  pol.CFrame = targe.CFrame + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
  pol.Parent = EffectMo
  m = Instance.new("SpecialMesh")
  m.MeshType = "Sphere"
  m.Scale = Vector3.new(2, 2, 2)
  m.Parent = pol
  bp = Instance.new("BodyPosition")
  bp.P = 9000
  bp.D = 100
  bp.Parent = pol
  bp.position = pol.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) * 2 + (pol.Position - CPlayer.Torso.Position).unit * math.random(-5, 5)
  coroutine.resume(coroutine.create(function(part, spin, tar)
    swait(0.2)
    for i = 1, math.random(8, 11) do
      part.BodyPosition.position = part.BodyPosition.position + (pol.Position - tar.Position).unit * -2
      swait()
    end
    swait(0.25)
    part.BodyPosition:Remove()
    part.Anchored = true
    for i = 1, 5 do
      gentrail(part:clone())
      part.CFrame = CFrame.new(part.Position:Lerp(char.Torso.Position, i / 5)) * CFrame.fromEulerAnglesXYZ(math.random(-5, 5), math.random(-5, 5), 0)
      swait(0.05)
    end
    char.Humanoid.Health = char.Humanoid.Health + rest
    part.Parent = nil
  end), pol, CFrame.fromEulerAnglesXYZ(math.random(-50, 50) / 500, math.random(-50, 50) / 500, math.random(-50, 50) / 500), targe)
end
function doingmoves(value)
  if value == true then
    char.Humanoid.WalkSpeed = 0
    char.Humanoid.JumpPower = 0
    Dmoves = true
    Animate.Parent = nil
  end
  if value == false then
    char.Humanoid.WalkSpeed = 16
    char.Humanoid.JumpPower = 50
    Dmoves = false
    Animate.Parent = nil
  end
end
Dmoves = false
function switchMode()
  doingmoves(true)
  resetwelds()
  ER = char.Torso.CFrame
  local stab = Instance.new("BodyPosition", char.HumanoidRootPart)
  stab.P = 5000
  stab.maxForce = Vector3.new(500000000, 0, 500000000) * 4
  stab.position = stab.Parent.Position
  RootJoint.C0 = RootJoint.C0 * CFrame.Angles(math.rad(-25), 0, 0)
  LW.C0 = LW.C0 * CFrame.Angles(math.rad(-50), 0, math.rad(-30))
  RW.C0 = RW.C0 * CFrame.Angles(math.rad(-50), 0, math.rad(30))
  LH.C0 = LH.C0 * CFrame.Angles(math.rad(-15), 0, math.rad(25))
  RH.C0 = RH.C0 * CFrame.Angles(math.rad(-15), 0, math.rad(-25))
  Neck.C0 = Neck.C0 * CFrame.Angles(math.rad(-30), 0, 0)
  local proj = Instance.new("Part", EffectMo)
  proj.Anchored = true
  proj.CanCollide = true
  proj.Transparency = 1
  proj.Position = char.Torso.Position
  xdir = proj.CFrame.lookVector
  game.Debris:AddItem(proj, 10)
  so("153092315", char, 5, 0.8)
  MagniDamage(char.Torso, 19, 5, 6, 20, "Normal", RootPart, 0.2, 2, math.random(4, 7), nil, true)
  local p = Instance.new("Part", proj.Parent)
  p.Name = "Effect"
  p.formFactor = "Symmetric"
  p.TopSurface = 0
  p.BottomSurface = 0
  p.Material = "SmoothPlastic"
  if Mode == "Shield" then
    p.BrickColor = BrickColor.new("Deep orange")
  elseif Mode == "Spear" then
    p.BrickColor = BrickColor.new("Toothpaste")
  end
  p.Anchored = true
  p.CanCollide = false
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = CFrame.new(proj.Position, proj.Position + xdir * 50) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0)
  p.CFrame = p.CFrame * CFrame.new(0, 0, 5)
  game:GetService("Debris"):AddItem(p, 8)
  local m = Instance.new("SpecialMesh", p)
  m.MeshId = "http://www.roblox.com/asset/?id=3270017"
  m.Scale = Vector3.new(2, 2, 1)
  coroutine.resume(coroutine.create(function(p, s)
    for i = 1, 30 do
      p.Transparency = i / 30
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(2, 2, -0.05)
      swait()
    end
    p:Destroy()
  end), p, 8)
  local p = Instance.new("Part")
  p.TopSurface = 0
  p.BottomSurface = 0
  p.CanCollide = false
  p.Anchored = true
  p.BrickColor = BrickColor.new("Institutional white")
  p.Position = char.Torso.Position
  p.CFrame = p.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.random(-10, 10) / 100, 0)
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
  p.Parent = EffectMo
  m = MeshFolder.BlastMesh:clone()
  p.Material = "SmoothPlastic"
  m.Parent = p
  m.Scale = Vector3.new(1, 3, 1)
  m.Name = "Triangle"
  game:GetService("Debris"):AddItem(p, 5)
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 20 do
      p.Transparency = i / 20
      p.Triangle.Scale = p.Triangle.Scale + Vector3.new(1.5, 0, 1.5)
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
      swait()
    end
    p.Parent = nil
  end), p)
  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.5 - idleanim) * euler(-0.05, 0, 0), 0.3)
  for i = 1, 4 do
    do
      local p = Instance.new("Part", proj.Parent)
      p.Name = "Effect"
      p.formFactor = "Symmetric"
      p.TopSurface = 0
      p.BottomSurface = 0
      p.Material = "SmoothPlastic"
      if Mode == "Shield" then
        p.BrickColor = BrickColor.new("Deep orange")
      elseif Mode == "Spear" then
        p.BrickColor = BrickColor.new("Toothpaste")
      end
      p.Material = "Neon"
      p.Anchored = true
      p.CanCollide = false
      p.Size = Vector3.new(1, 1, 1)
      p.CFrame = CFrame.new(proj.CFrame.p) - Vector3.new(0, 0, 0)
      local m = Instance.new("CylinderMesh", p)
      m.Scale = Vector3.new(3, 1000000, 3)
      coroutine.resume(coroutine.create(function(p, pc, s)
        local e = 0
        for i = 0 + s, 50 + s do
          p.Mesh.Scale = p.Mesh.Scale / 1.02
          e = e ^ 1.008 + 0.88
          p.CFrame = pc * CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(math.cos(math.deg(i * 0.6)) * (i - s + 8), 0, math.sin(math.deg(i * 0.6)) * (i - s + 8))
          swait()
        end
        for i = 1, 10 do
          m.Scale = m.Scale - Vector3.new(0.1, 0, 0.1)
          p.Transparency = i / 10
          swait()
        end
        p:Remove()
      end), p, p.CFrame, i * 9)
    end
  end
  local p = Instance.new("Part", proj.Parent)
  p.Name = "Effect"
  p.formFactor = "Symmetric"
  p.TopSurface = 0
  p.BottomSurface = 0
  p.Material = "SmoothPlastic"
  p.BrickColor = BrickColor.new("Institutional white")
  p.Anchored = true
  p.CanCollide = false
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = proj.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
  p.Transparency = 0.1
  local m = Instance.new("SpecialMesh", p)
  m.Scale = Vector3.new(3, 3, 3)
  m.MeshType = "Sphere"
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 15 do
      p.Transparency = i / 15
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(5, 5, 5)
      swait()
    end
    p:Destroy()
  end), p)
  if Mode == "Spear" then
    Mode = "Shield"
  elseif Mode == "Shield" then
    Mode = "Spear"
  end
  swait(10)
  stab:Destroy()
  resetwelds()
  doingmoves(false)
end
function AA()
  doingmoves(true)
  for i = 1, 0.5, -0.05 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(2, 0, -1.2) * euler(0, -0.5, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1, 0.2, -0.8) * euler(1.4, 0, 1.6) * euler(0, 0, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, -0.1), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.5)
  end
  so("2767090", Torso, 1, 0.8)
  dist = 150
  local p = Instance.new("Part")
  p.TopSurface = 0
  p.BottomSurface = 0
  p.CanCollide = false
  p.Anchored = true
  p.BrickColor = BrickColor.new("Institutional white")
  p.CFrame = char.Torso.CFrame * CFrame.new(-3, 0, 0) * CFrame.Angles(math.rad(90), 0, 0)
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
  p.Parent = EffectMo
  m = MeshFolder.BlastMesh:clone()
  p.Material = "SmoothPlastic"
  m.Parent = p
  m.Scale = Vector3.new(1, 0.5, 1)
  m.Name = "Triangle"
  game:GetService("Debris"):AddItem(p, 5)
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 10 do
      p.Transparency = i / 10
      p.Triangle.Scale = p.Triangle.Scale + Vector3.new(1, 1, 1)
      p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(10 * i), 0)
      swait()
    end
    p.Parent = nil
  end), p)
  Torso.Velocity = RootPart.CFrame.lookVector * dist
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.8) * euler(2, 0, -1.2) * euler(0, -0.5, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1, 0.2, -0.8) * euler(1.4, 0, 1.6) * euler(0, 0, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1.1, -1, 0) * euler(0, 1.57, -0.1), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.4), 0.5)
  end
  so("199145534", Torso, 1, 0.8)
  so("199145739", Torso, 1, 1)
  local p = Instance.new("Part")
  p.TopSurface = 0
  p.BottomSurface = 0
  p.CanCollide = false
  p.Anchored = true
  p.BrickColor = BrickColor.new("White")
  p.CFrame = char.Torso.CFrame * CFrame.new(0, 5, 0)
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
  p.Parent = EffectMo
  m = MeshFolder.idkMesh:clone()
  p.Material = "SmoothPlastic"
  m.Parent = p
  m.Scale = Vector3.new(2.5, 2.5, 2.5)
  m.Name = "Triangle"
  game:GetService("Debris"):AddItem(p, 5)
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 40 do
      p.Transparency = i / 40
      p.Triangle.Scale = p.Triangle.Scale + Vector3.new(0.05, 0.05, 0.05)
      p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(10 * i), 0)
      swait()
    end
    p.Parent = nil
  end), p)
  for i = 1, 20 do
    p = Instance.new("Part")
    p.TopSurface = 0
    p.BottomSurface = 0
    p.CanCollide = false
    p.Anchored = true
    p.BrickColor = BrickColor.new("Really black")
    p.formFactor = "Symmetric"
    p.Size = Vector3.new(0.2, 1, 0.2)
    p.Transparency = 0
    p.CFrame = Torso.CFrame * CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / 4, math.random(-10, 10) / 4, math.random(-10, 10) / 4)
    p.Parent = EffectMo
    local m = Instance.new("SpecialMesh")
    m.MeshType = "Sphere"
    m.Parent = p
    m.Scale = Vector3.new(2, 10, 2)
    coroutine.resume(coroutine.create(function(p)
      for i = 1, 40 do
        p.Transparency = i / 40
        p.CFrame = p.CFrame * CFrame.new(0, -1, 0)
        swait()
      end
      p.Parent = nil
    end), p)
  end
  for i = 1, 4 do
    do
      local p = Instance.new("Part", Torso.Parent)
      p.Name = "Effect"
      p.formFactor = "Symmetric"
      p.TopSurface = 0
      p.BottomSurface = 0
      p.Material = "SmoothPlastic"
      p.BrickColor = BrickColor.new("Toothpaste")
      p.Material = "Neon"
      p.Anchored = true
      p.CanCollide = false
      p.Size = Vector3.new(1, 1, 1)
      p.CFrame = CFrame.new(Torso.CFrame.p) - Vector3.new(0, 0, 0)
      local m = Instance.new("CylinderMesh", p)
      m.Scale = Vector3.new(3, 1000000, 3)
      coroutine.resume(coroutine.create(function(p, pc, s)
        local e = 0
        for i = 0 + s, 25 + s do
          p.Mesh.Scale = p.Mesh.Scale / 1.02
          e = e ^ 1.008 + 0.88
          p.CFrame = pc * CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(math.cos(math.deg(i * 0.6)) * (i - s + 8), 0, math.sin(math.deg(i * 0.6)) * (i - s + 8))
          swait()
        end
        for i = 1, 10 do
          m.Scale = m.Scale - Vector3.new(0.1, 0, 0.1)
          p.Transparency = i / 10
          swait()
        end
        p:Remove()
      end), p, p.CFrame, i * 9)
    end
  end
  for i = 1, 1 do
    swait()
    local p = Instance.new("Part")
    p.TopSurface = 0
    p.BottomSurface = 0
    p.CanCollide = false
    p.Anchored = true
    p.BrickColor = BrickColor.new("Light stone grey")
    p.CFrame = Torso.CFrame * CFrame.new(0, -0.5, 0) * CFrame.Angles(0, math.random(-360, 360), 0)
    p.formFactor = "Symmetric"
    p.Size = Vector3.new(1, 1, 1)
    p.Parent = EffectMo
    m = MeshFolder.BlastMesh:clone()
    p.Material = "SmoothPlastic"
    m.Parent = p
    m.Scale = Vector3.new(33, 1, 33)
    m.Name = "Mesh"
    game:GetService("Debris"):AddItem(p, 5)
    coroutine.resume(coroutine.create(function(p)
      for ii = 1, 60 do
        p.Transparency = 0.5 + ii / 60
        p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(1 + ii), 0) - Vector3.new(0, 0.05, 0)
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.1, -0.01, 0.1)
        swait()
      end
      p:Remove()
    end), p)
  end
  MagniDamage(char.Torso, 20, 10, 20, 30, "Normal", RootPart, 0.05, 2, math.random(4, 7), nil, true)
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * euler(0, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 0, 0), 0.5)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 0, 0), 0.5)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.5)
  end
  swait(5)
  doingmoves(false)
end
function shieldbash()
  doingmoves(true)
  resetwelds()
  ER = char.Torso.CFrame
  for i = 1, 10 do
    swait()
    RW.C1 = clerp(RW.C1, cf(0, 0.6, 0) * euler(math.rad(-100), 0, 0), 0.3)
    RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(0, 0, math.rad(9 * i))
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, math.rad(-90)) * euler(0, 0, 0), 0.7)
    LW.C1 = clerp(LW.C1, cf(0, 0.4, 0) * euler(0, 0, math.rad(30)), 0.5)
  end
  DIR = char.Head.CFrame.lookVector
  coroutine.resume(coroutine.create(function()
    for i = 1, 30 do
      p = Instance.new("Part")
      p.Name = "Trail"
      p.TopSurface = 0
      p.BottomSurface = 0
      p.Anchored = true
      p.CanCollide = false
      p.formFactor = "Symmetric"
      p.Size = Vector3.new(1, 1, 1)
      p.BrickColor = BrickColor.new("Toothpaste")
      p.Material = "Neon"
      p.CFrame = char.Torso.CFrame
      p.Parent = EffectMo
      m = Instance.new("BlockMesh")
      m.Scale = Vector3.new(1, 1, 1)
      m.Parent = p
      coroutine.resume(coroutine.create(function(part, spin)
        for i = 1, 20 do
          part.Mesh.Scale = part.Mesh.Scale - Vector3.new(0.25, 0.25, 0.25)
          part.Transparency = i / 20
          part.CFrame = part.CFrame * CFrame.new(math.random(-10, 10) / 9, math.random(-10, 10) / 9, math.random(-10, 10) / 9) * spin
          swait()
        end
        part.Parent = nil
      end), p, CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
      swait()
    end
  end))
  coroutine.resume(coroutine.create(function()
    for i = 1, 5 do
      swait(3)
      do
        local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
        ref.Anchored = true
        ref.CFrame = cf(RootPart.Position)
        hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
        if hitfloor2 ~= nil then
          so("199145477", ref, 1, 1.2)
          ref.CFrame = cf(posfloor2)
          col = hitfloor2.BrickColor
          for i = 1, 5 do
            local groundpart = part(3, workspace, 0, 0, col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
            groundpart.Anchored = true
            groundpart.Material = hitfloor2.Material
            groundpart.CanCollide = true
            groundpart.CFrame = cf(ref.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
            groundpart.Parent = EffectMo
            coroutine.resume(coroutine.create(function(groundpart)
              for i = 1, 30 do
                groundpart.Transparency = i / 30
                swait()
              end
              groundpart:Destroy()
              ref:Destroy()
            end), groundpart)
          end
        end
        local p = Instance.new("Part")
        p.TopSurface = 0
        p.BottomSurface = 0
        p.CanCollide = false
        p.Anchored = true
        p.BrickColor = BrickColor.new("Institutional white")
        p.CFrame = char.Torso.CFrame * CFrame.new(-3, 0, 0) * CFrame.Angles(math.rad(90), math.random(-10, 10) / 100, math.rad(90))
        p.formFactor = "Symmetric"
        p.Size = Vector3.new(1, 1, 1)
        p.Parent = EffectMo
        m = MeshFolder.BlastMesh:clone()
        p.Material = "SmoothPlastic"
        m.Parent = p
        m.Scale = Vector3.new(10, 1, 10)
        m.Name = "Triangle"
        game:GetService("Debris"):AddItem(p, 5)
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 10 do
            p.Transparency = i / 10
            p.Triangle.Scale = p.Triangle.Scale + Vector3.new(-1, 2, -1)
            p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(10 * i), 0)
            swait()
          end
          p.Parent = nil
        end), p)
      end
    end
  end))
  for i = 1, 20 do
    swait()
    Torso.Velocity = char.Head.CFrame.lookVector * 4 * i
    so("234365549", char, 1, 1.2)
    so("191395579", char, 1, 1.3)
    so("189505665", char, 1, 0.8)
    so("189505665", char, 1, 0.5)
    so("191395766", char, 1, 1.1)
    MagniDamage(char.Torso, 9, 1, 5, 0, "Normal", RootPart, 0.04, 0, math.random(3, 5), nil, true)
  end
  resetwelds()
  doingmoves(false)
end
function shockwave()
  doingmoves(true)
  resetwelds()
  ER = char.Torso.CFrame
  Humanoid.WalkSpeed = 16
  for i = 1, 10 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(-0.2, 0, 0), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.8, 0) * euler(2.5, 0, -0.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.8, 0) * euler(2.4, 0, 0.4), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.8, 0.2) * euler(0, 1.57, -0.2), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(0, -1.57, 0.3), 0.2)
  end
  so("200632136", char, 1, 0.6)
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.2, 0, 0), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.3, 0) * euler(0.8, 0, -0.4), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.3, 0) * euler(0.8, 0, 0.4), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.4) * euler(0, 1.57, -0.6) * euler(-0.2, 0, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -0.4, -0.5) * euler(0, -1.57, 0.2), 0.2)
  end
  so("200632561", Torso, 1, 0.6)
  so("200632561", Torso, 1, 0.4)
  so("191395766", Torso, 1, 1)
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.3, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.2, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.3, 0) * euler(0.5, 0, -0.4), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.3, 0) * euler(0.5, 0, 0.4), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.4) * euler(0, 1.57, -0.6) * euler(-0.2, 0, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.4, -0.5) * euler(0, -1.57, 0.2), 0.4)
  end
  er = Instance.new("Part")
  er.Anchored = true
  er.Transparency = 1
  er.CanCollide = false
  er.Position = char.Torso.Position
  er.Parent = EffectMo
  game.Debris:AddItem(er, 3)
  for i = 1, 5 do
    swait(1)
    Noob = nil
    if Humanoid:FindFirstChild("Shake") == nil then
      local tt = script.Shake2:clone()
      tt.Parent = Humanoid
      tt.Disabled = false
    end
    if Noob ~= nil and Noob.Humanoid:FindFirstChild("Shake") == nil then
      local ss = script.Shake2:clone()
      ss.Parent = Noob.Humanoid
      ss.Disabled = false
    end
    MagniDamage(char.Torso, 27, 5, 10, 20, "Normal", RootPart, 0.05, 2, math.random(4, 7), nil, true)
    xdir = er.CFrame.lookVector
    local p = Instance.new("Part")
    p.TopSurface = 0
    p.BottomSurface = 0
    p.CanCollide = false
    p.Anchored = true
    p.BrickColor = BrickColor.new("Light stone grey")
    p.CFrame = er.CFrame * CFrame.new(0, -0.5, 0) * CFrame.Angles(0, math.random(-50, 50), 0)
    p.formFactor = "Symmetric"
    p.Size = Vector3.new(1, 1, 1)
    p.Parent = EffectMo
    m = MeshFolder.BlastMesh:clone()
    p.Material = "SmoothPlastic"
    m.Parent = p
    m.Scale = Vector3.new(2, 2, 2)
    m.Name = "Mesh"
    game:GetService("Debris"):AddItem(p, 5)
    coroutine.resume(coroutine.create(function(p)
      for ii = 1, 20 do
        p.Transparency = 0.5 + ii / 20
        p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(10 + ii), 0) - Vector3.new(0, 0.05, 0)
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(3.5, -0.1, 3.5)
        swait()
      end
      p:Remove()
    end), p)
  end
  resetwelds()
  doingmoves(false)
end
function shieldslam()
  doingmoves(true)
  resetwelds()
  ER = char.Torso.CFrame
  Humanoid.WalkSpeed = 16
  for i = 1, 10 do
    swait()
    RW.C1 = clerp(RW.C1, cf(0, 0.6, 0) * euler(math.rad(-90), 0, 0), 0.3)
    RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(0, 0, math.rad(9 * i))
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, math.rad(-90)) * euler(0, 0, 0), 0.7)
    LW.C1 = clerp(LW.C1, cf(0.5, 1.5, 0) * euler(math.rad(-90), math.rad(70), 0), 0.5)
  end
  Torso.Velocity = vt(0, 1, 0) * 150
  Humanoid.Jump = true
  Humanoid.JumpPower = 16
  local spin = coroutine.create(function()
    for i = 1, 4.5 do
      so("203691447", char, 1, 1.1)
      wait(0.2)
    end
  end)
  coroutine.resume(spin)
  for i = 1, 30 do
    swait()
    local es = 27
    RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(math.rad(es * i), 0, math.rad(90))
  end
  hit = nil
  while hit == nil do
    swait()
    hit = rayCast(LeftLeg.Position, CFrame.new(LeftLeg.Position, LeftLeg.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
  end
  dist = 10
  ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref.Anchored = true
  ref.CFrame = cf(Torso.Position)
  game.Debris:AddItem(ref, 8)
  so("178452217", RightArm, 0.5, 0.4)
  so("168586586", RightArm, 0.5, 0.6)
  so("160740121", RightArm, 1, 0.8)
  so("168586621", RightArm, 1, 0.5)
  so("160867463", RightArm, 1, 0.8)
  er = Instance.new("Part")
  er.Anchored = true
  er.Transparency = 1
  er.CanCollide = false
  er.Position = char.Torso.Position
  er.Parent = EffectMo
  game.Debris:AddItem(er, 3)
  er.CFrame = er.CFrame * CFrame.Angles(0, math.rad(90), 0)
  local et = Instance.new("Part")
  et.Anchored = true
  et.Transparency = 1
  et.CanCollide = false
  et.Position = char.Torso.Position
  et.Parent = EffectMo
  game.Debris:AddItem(et, 3)
  er.CFrame = er.CFrame * CFrame.Angles(0, math.rad(90), 0) * CFrame.Angles(0, -2, 0)
  hitfloor2a, posfloor2a = rayCast(er.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
  local p = Instance.new("Part")
  p.TopSurface = 0
  p.BottomSurface = 0
  p.CanCollide = false
  p.Anchored = true
  p.BrickColor = hitfloor2a.BrickColor
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = cf(posfloor2a) * CFrame.Angles(0, math.rad(90), 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  p.Parent = EffectMo
  m = MeshFolder.ExplosionMesh:clone()
  p.Material = "SmoothPlastic"
  m.Scale = Vector3.new(40, 80, 40)
  m.Parent = p
  m.Name = "Triangle"
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 200 do
      p.Transparency = 0.3 + i / 200
      p.Triangle.Scale = p.Triangle.Scale + Vector3.new(0.1, 0.1, 0)
      swait()
    end
    p.Parent = nil
  end), p)
  local p = Instance.new("Part")
  p.TopSurface = 0
  p.BottomSurface = 0
  p.CanCollide = false
  p.Anchored = true
  p.BrickColor = BrickColor.new("White")
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = er.CFrame * CFrame.Angles(0, math.rad(90), 0) * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, 0)
  p.Parent = EffectMo
  m = MeshFolder.RingMesh:clone()
  p.Material = "SmoothPlastic"
  m.Scale = Vector3.new(60, 60, 0)
  m.Parent = p
  m.Name = "Triangle"
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 30 do
      p.Transparency = i / 30
      p.Triangle.Scale = p.Triangle.Scale + Vector3.new(0.3, 0.3, 0)
      swait()
    end
    p.Parent = nil
  end), p)
  local p = Instance.new("Part")
  p.TopSurface = 0
  p.BottomSurface = 0
  p.CanCollide = false
  p.Anchored = true
  p.BrickColor = BrickColor.new("White")
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = er.CFrame * CFrame.Angles(0, math.rad(90), 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), 0, 0)
  p.Parent = EffectMo
  m = MeshFolder.RingMesh:clone()
  p.Material = "SmoothPlastic"
  m.Scale = Vector3.new(60, 60, 0)
  m.Parent = p
  m.Name = "Triangle"
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 30 do
      p.Transparency = i / 30
      p.Triangle.Scale = p.Triangle.Scale + Vector3.new(0.3, 0.3, 0)
      swait()
    end
    p.Parent = nil
  end), p)
  for i = 1, 4 do
    Noob = nil
    MagniDamage(char.Torso, 34, 20, 25, 20, "Normal", RootPart, 2, 2, math.random(4, 7), nil, true)
    if Humanoid:FindFirstChild("Shake") == nil then
      local tt = script.Shake:clone()
      tt.Parent = Humanoid
      tt.Disabled = false
    end
    if Noob ~= nil and Noob.Humanoid:FindFirstChild("Shake") == nil then
      local ss = script.Shake:clone()
      ss.Parent = Noob.Humanoid
      ss.Disabled = false
    end
    swait()
    local p = Instance.new("Part", er.Parent)
    p.Name = "Effect"
    p.formFactor = "Symmetric"
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Material = "SmoothPlastic"
    p.BrickColor = BrickColor.new("Black")
    p.Anchored = true
    p.CanCollide = false
    p.Size = Vector3.new(1, 1, 1)
    p.CFrame = er.CFrame * CFrame.Angles(math.pi / 2, 0, 0) * CFrame.new(0, 0, 1.5)
    game:GetService("Debris"):AddItem(p, 8)
    local m = Instance.new("SpecialMesh", p)
    m.MeshId = "http://www.roblox.com/asset/?id=3270017"
    m.Scale = Vector3.new(2, 2, 1)
    coroutine.resume(coroutine.create(function(p, s)
      for i = 1, 30 do
        p.Transparency = i / 30
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(4, 4, -0.05)
        swait()
      end
    end), p, 8)
    xdir = er.CFrame.lookVector
    local p = Instance.new("Part")
    p.TopSurface = 0
    p.BottomSurface = 0
    p.CanCollide = false
    p.Anchored = true
    p.BrickColor = BrickColor.new("Institutional white")
    p.CFrame = er.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.random(-10, 10) / 100, 0)
    p.formFactor = "Symmetric"
    p.Size = Vector3.new(1, 1, 1)
    p.Parent = EffectMo
    m = MeshFolder.BlastMesh:clone()
    p.Material = "SmoothPlastic"
    m.Parent = p
    m.Scale = Vector3.new(1, 3, 1)
    m.Name = "Triangle"
    game:GetService("Debris"):AddItem(p, 5)
    coroutine.resume(coroutine.create(function(p)
      for i = 1, 25 do
        p.Transparency = i / 25
        p.Triangle.Scale = p.Triangle.Scale + Vector3.new(2.3, 0, 2.3)
        p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
        swait()
      end
      p.Parent = nil
    end), p)
    for i = 1, 5 do
      ref.CFrame = cf(RootPart.Position) * cf(math.random(-dist * 300, dist * 200) / 100, 0, math.random(-dist * 300, dist * 300) / 100)
      hitfloor2a, posfloor2a = rayCast(ref.Position, CFrame.new(ref.Position, ref.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
      if hitfloor2a ~= nil then
        local groundpart = part(3, workspace, 0, 0, hitfloor2a.BrickColor, "Ground", vt(math.random(500, 1000) / 100, math.random(500, 1000) / 100, math.random(500, 1000) / 100))
        groundpart.Anchored = true
        groundpart.Material = hitfloor2a.Material
        groundpart.CanCollide = false
        groundpart.CFrame = cf(posfloor2a) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        game:GetService("Debris"):AddItem(groundpart, 10)
        groundpart.Parent = EffectMo
        coroutine.resume(coroutine.create(function(groundpart)
          for i = 1, 300 do
            groundpart.Transparency = i / 300
            swait()
          end
          groundpart:Destroy()
        end), groundpart)
      end
    end
  end
  swait()
  resetwelds()
  doingmoves(false)
end
function orbatk()
  doingmoves(true)
  resetwelds()
  ER = char.Torso.CFrame
  local rek = Instance.new("Sound", char)
  rek.Volume = 1
  rek.Pitch = 1.3
  rek.SoundId = "http://www.roblox.com/asset/?id=235097614"
  rek:Play()
  game.Debris:AddItem(rek, 5)
  for i = 1, 5 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, 0, -1.2) * euler(0, 1.57, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.8), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.7, -1, 0.4) * euler(0, 1.57, 0) * euler(0, -0.8, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.7, -1, -0.4) * euler(0, -1.57, 0) * euler(0, -0.8, 0), 0.3)
  end
  for i = 1, 5 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.57), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, 1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.8), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.6, -1, 0.4) * euler(0, 1.57, 0) * euler(0.2, -1.57, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.6, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.4, -1.57, 0), 0.4)
  end
  Runes = {
    "rbxassetid://200326272",
    "rbxassetid://200326330",
    "rbxassetid://200326394",
    "rbxassetid://200326465",
    "rbxassetid://200326593",
    "rbxassetid://200326667",
    "rbxassetid://200326796",
    "rbxassetid://200326880",
    "rbxassetid://200327025",
    "rbxassetid://200327088",
    "rbxassetid://200327279",
    "rbxassetid://200327394",
    "rbxassetid://200327439",
    "rbxassetid://200327517",
    "rbxassetid://200327625",
    "rbxassetid://200327725",
    "rbxassetid://200327804",
    "rbxassetid://200327922",
    "rbxassetid://200327991",
    "rbxassetid://200328063",
    "rbxassetid://200328131",
    "rbxassetid://200328211",
    "rbxassetid://200328319",
    "rbxassetid://200328365",
    "rbxassetid://200328401",
    "rbxassetid://200328461",
    "rbxassetid://200328530",
    "rbxassetid://200328645",
    "rbxassetid://200328713"
  }
  function BillboardGui(image, position, size)
    local billpar = Instance.new("Part")
    billpar.Transparency = 1
    billpar.formFactor = "Custom"
    billpar.Size = Vector3.new(1, 1, 1)
    billpar.Anchored = true
    billpar.CanCollide = false
    billpar.CFrame = CFrame.new(position)
    billpar.Name = "BillboardGuiPart"
    local bill = Instance.new("BillboardGui", billpar)
    bill.Adornee = billpar
    bill.Size = UDim2.new(1, 0, 1, 0)
    bill.SizeOffset = Vector2.new(size, size)
    local d = Instance.new("ImageLabel", bill)
    d.BackgroundTransparency = 1
    d.Size = UDim2.new(1, 0, 1, 0)
    d.Image = image
    return billpar
  end
  eb = BillboardGui(Runes[math.random(1, #Runes)], (RightArm.CFrame * CFrame.new(0, -2, 0)).p, 0)
  eb.Parent = EffectMo
  eb.BillboardGui.Size = UDim2.new(3, 0, 3, 0)
  eb.BillboardGui.ImageLabel.ImageColor3 = BrickColor.new("Toothpaste").Color
  for i = 1, 3 do
    swait()
    do
      local blast = Instance.new("Part", EffectMo)
      blast.Anchored = true
      blast.CanCollide = false
      blast.Size = Vector3.new(1, 1, 1)
      blast.CFrame = RightArm.CFrame * CFrame.new(0, -2, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      m = Instance.new("SpecialMesh", blast)
      m.Scale = Vector3.new(3, 3, 3)
      m.MeshType = "Sphere"
      blast.BrickColor = BrickColor.new("White")
      blast.Material = "Neon"
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 15 do
          blast.Transparency = i / 10
          blast.Mesh.Scale = blast.Mesh.Scale / 1.1
          swait()
        end
        blast:Remove()
      end), p)
      p = Instance.new("Part")
      local p = Instance.new("Part")
      p.TopSurface = 0
      p.BottomSurface = 0
      p.CanCollide = false
      p.Anchored = true
      p.BrickColor = BrickColor.new("White")
      p.formFactor = "Symmetric"
      p.Size = Vector3.new(1, 1, 1)
      p.CFrame = blast.CFrame * CFrame.fromEulerAnglesXYZ(math.pi / 2 + math.random(-15, 15) / 9, math.random(-15, 15) / 9, math.random(-10, 10) / 9)
      p.Parent = EffectMo
      m = MeshFolder.RingMesh:clone()
      m.Scale = Vector3.new(0, 0, 0)
      m.Parent = p
      m.Name = "Triangle"
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 10 do
          p.Transparency = i / 10
          p.Triangle.Scale = p.Triangle.Scale + Vector3.new(0.8, 0.8, 0)
          swait()
        end
        p.Parent = nil
      end), p)
      p = Instance.new("Part")
      p.TopSurface = 0
      p.BottomSurface = 0
      p.CanCollide = false
      p.Anchored = true
      p.BrickColor = BrickColor.new("Black")
      p.Material = "Neon"
      p.formFactor = "Symmetric"
      p.Size = Vector3.new(1, 1, 1)
      p.CFrame = blast.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / 4, math.random(-10, 10) / 4, math.random(-10, 10) / 4)
      p.Parent = EffectMo
      local m = Instance.new("BlockMesh")
      m.Parent = p
      m.Scale = Vector3.new(0.4, 0.4, 0.4)
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 10 do
          p.Transparency = i / 10
          p.CFrame = p.CFrame * CFrame.new(0, -0.5, 0)
          swait()
        end
        p.Parent = nil
      end), p)
    end
  end
  for i = 1, 8 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, -1) * euler(0, 0.2, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -1), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.6, 0.4) * euler(0, -1.57, 0) * euler(-0.4, 1, 0), 0.4)
  end
  p = Instance.new("Sound", char)
  p.Volume = 0.8
  p.Pitch = 1
  p.SoundId = "http://www.roblox.com/asset/?id=240517975"
  p:Play()
  eb:Destroy()
  local billpar = Instance.new("Part")
  billpar.Transparency = 1
  billpar.formFactor = "Custom"
  billpar.Size = Vector3.new(1, 1, 1)
  billpar.Anchored = true
  billpar.CanCollide = false
  billpar.CFrame = RootPart.CFrame
  billpar.BrickColor = BrickColor.new("White")
  billpar.Material = "Neon"
  billpar.Name = "oraora"
  billpar.Parent = EffectMo
  m = Instance.new("SpecialMesh", billpar)
  m.Scale = Vector3.new(5, 5, 5)
  m.MeshType = "Sphere"
  billpar.BrickColor = BrickColor.new("White")
  billpar.Material = "Neon"
  local bill = Instance.new("BillboardGui", billpar)
  bill.Adornee = billpar
  bill.Size = UDim2.new(7, 0, 7, 0)
  bill.SizeOffset = Vector2.new(0, 0)
  local d = Instance.new("ImageLabel", bill)
  d.BackgroundTransparency = 1
  d.Size = UDim2.new(1, 0, 1, 0)
  d.Image = Runes[math.random(1, #Runes)]
  d.ImageColor3 = BrickColor.new("Toothpaste").Color
  num = 0
  coroutine.resume(coroutine.create(function(p)
    for er = 1, 100 do
      swait()
      d.Rotation = d.Rotation + 3
      DIR = billpar.CFrame.lookVector
      do
        local hitfloor2, posfloor2 = rayCast(billpar.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
        num = num + 1
        ef = 5
        goto = posfloor2 + Vector3.new(math.random(-ef, ef), 0, math.random(-ef, ef))
        if num == 4 then
          MagniDamage(billpar, 11, 3, 6, math.random(1, 3), "Normal", billpar, 0.1, 2, math.random(4, 7), nil, true)
          num = 0
          local hitfloor2, posfloor2 = rayCast(billpar.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
          if hitfloor2 ~= nil and equipped == true and Dmoves == false then
            local p = Instance.new("Part")
            p.TopSurface = 0
            p.BottomSurface = 0
            p.CanCollide = false
            p.Anchored = true
            p.BrickColor = BrickColor.new("Light stone grey")
            p.CFrame = cf(posfloor2) * CFrame.new(0, 1, 0) * CFrame.Angles(0, math.random(-10, 10), 0)
            p.formFactor = "Symmetric"
            p.Size = Vector3.new(1, 1, 1)
            p.Parent = EffectMo
            m = MeshFolder.BlastMesh:clone()
            p.Material = "SmoothPlastic"
            m.Parent = p
            m.Scale = Vector3.new(12, 2, 12)
            m.Name = "Mesh"
            game:GetService("Debris"):AddItem(p, 5)
            coroutine.resume(coroutine.create(function(p)
              for ii = 1, 20 do
                p.Transparency = 0.5 + ii / 20
                p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(3 + ii), 0) - Vector3.new(0, 0.05, 0)
                p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.4, -0.1, 0.4)
                swait()
              end
              p:Remove()
            end), p)
          end
          p = Instance.new("Part")
          local p = Instance.new("Part")
          p.TopSurface = 0
          p.BottomSurface = 0
          p.CanCollide = false
          p.Anchored = true
          p.BrickColor = BrickColor.new("Really black")
          p.formFactor = "Symmetric"
          p.Size = Vector3.new(1, 1, 1)
          p.CFrame = billpar.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
          p.Parent = EffectMo
          m = MeshFolder.RingMesh:clone()
          m.Scale = Vector3.new(5, 5, 3)
          m.Parent = p
          m.Name = "Triangle"
          coroutine.resume(coroutine.create(function(p)
            for iii = 1, 15 do
              p.Transparency = iii / 10
              p.Triangle.Scale = p.Triangle.Scale + Vector3.new(1.7, 1.7, 0.4)
              p.CFrame = billpar.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(2 * er), 0)
              swait()
            end
            p.Parent = nil
          end), p)
        end
        billpar.CFrame = billpar.CFrame * CFrame.new(0, 0, -0.8)
        local blast = Instance.new("Part", EffectMo)
        blast.Anchored = true
        blast.CanCollide = false
        blast.Size = Vector3.new(1, 1, 1)
        blast.CFrame = billpar.CFrame
        m = Instance.new("SpecialMesh", blast)
        m.Scale = Vector3.new(8, 8, 8)
        m.MeshType = "Sphere"
        blast.BrickColor = BrickColor.new("Fossil")
        blast.Material = "Neon"
        blast.Transparency = 0.7
        coroutine.resume(coroutine.create(function(p)
          for ii = 1, 20 do
            blast.Transparency = 0.7 + ii / 20
            blast.Mesh.Scale = blast.Mesh.Scale / 1.1
            blast.CFrame = billpar.CFrame
            swait()
          end
          blast:Remove()
        end), p)
      end
    end
    billpar:Destroy()
  end))
  swait(5)
  resetwelds()
  doingmoves(false)
end
function lightarrow()
  doingmoves(true)
  resetwelds()
  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0), 1)
  RW.C1 = clerp(RW.C1, cf(0, 0.5, 0), 1)
  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0), 1)
  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0), 1)
  ER = char.Torso.CFrame
  for i = 1, 20 do
    swait()
    RW.C1 = clerp(RW.C1, cf(0, 0.6, 0) * euler(math.rad(-90), 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0, 0, math.rad(90)), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, math.rad(-90)) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0.5, 1.5, 0) * euler(math.rad(-90), math.rad(70), 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0, -1.2), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.4, -0.6) * euler(0, -1.57, 0) * euler(0, 0, 0.2), 0.4)
  end
  local stab = Instance.new("BodyPosition", char.HumanoidRootPart)
  stab.P = 5000
  stab.maxForce = Vector3.new(500000000, 0, 500000000) * 4
  stab.position = stab.Parent.Position
  so("231917975", char.Torso, 1, 1.3)
  coroutine.resume(coroutine.create(function()
    for i = 1, 7 do
      swait(5)
      local p = Instance.new("Part")
      p.TopSurface = 0
      p.BottomSurface = 0
      p.CanCollide = false
      p.Anchored = true
      p.BrickColor = BrickColor.new("Institutional white")
      p.CFrame = char.Torso.CFrame * CFrame.new(0, -2, 0)
      p.formFactor = "Symmetric"
      p.Size = Vector3.new(1, 1, 1)
      p.Parent = EffectMo
      m = MeshFolder.BlastMesh:clone()
      p.Material = "SmoothPlastic"
      m.Parent = p
      m.Scale = Vector3.new(1, 3, 1)
      m.Name = "Triangle"
      game:GetService("Debris"):AddItem(p, 5)
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 10 do
          p.Transparency = i / 10
          p.Triangle.Scale = p.Triangle.Scale + Vector3.new(1, -0.4, 1)
          p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
          swait()
        end
        p:Destroy()
      end), p)
      local p = Instance.new("Part")
      p.TopSurface = 0
      p.BottomSurface = 0
      p.CanCollide = false
      p.Anchored = true
      p.BrickColor = BrickColor.new("Institutional white")
      p.CFrame = char.Torso.CFrame * CFrame.new(0, 0, 0)
      p.formFactor = "Symmetric"
      p.Size = Vector3.new(1, 1, 1)
      p.Parent = EffectMo
      m = MeshFolder.BlastMesh:clone()
      p.Material = "SmoothPlastic"
      m.Parent = p
      m.Scale = Vector3.new(5, 1, 5)
      m.Name = "Triangle"
      game:GetService("Debris"):AddItem(p, 5)
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 10 do
          p.Transparency = i / 10
          p.Triangle.Scale = p.Triangle.Scale + Vector3.new(-0.5, 3, -0.5)
          p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
          swait()
        end
        p:Destroy()
      end), p)
    end
  end))
  for i = 1, 20 do
    swait()
    do
      local blast = Instance.new("Part", EffectMo)
      blast.Anchored = true
      blast.CanCollide = false
      blast.Size = Vector3.new(1, 1, 1)
      blast.CFrame = RightArm.CFrame * CFrame.new(2.5, 0, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      m = Instance.new("SpecialMesh", blast)
      m.Scale = Vector3.new(3, 3, 3)
      m.MeshType = "Sphere"
      game:GetService("Debris"):AddItem(blast, 3)
      blast.BrickColor = BrickColor.new("Toothpaste")
      blast.Material = "Neon"
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 15 do
          blast.Mesh.Scale = blast.Mesh.Scale / 1.1
          swait()
        end
        blast:Remove()
      end), p)
      local blast2 = Instance.new("Part", EffectMo)
      blast2.Anchored = true
      blast2.CanCollide = false
      blast2.Size = Vector3.new(1, 1, 1)
      game:GetService("Debris"):AddItem(blast2, 5)
      blast2.CFrame = RightArm.CFrame * CFrame.new(2.5, 0, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      m = Instance.new("SpecialMesh", blast2)
      m.Scale = Vector3.new(3.5, 3.5, 3.5)
      m.MeshType = "Brick"
      blast2.Material = "Neon"
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 15 do
          blast2.Transparency = 0.5 + i / 10
          blast2.Mesh.Scale = blast2.Mesh.Scale / 1.1
          swait()
        end
        blast2:Remove()
      end), p)
      p = Instance.new("Part")
      p.Name = "Trail"
      p.TopSurface = 0
      p.BottomSurface = 0
      p.Anchored = true
      p.CanCollide = false
      p.formFactor = "Symmetric"
      p.Size = Vector3.new(3, 0, 0)
      p.Transparency = 0
      p.BrickColor = BrickColor.new("Steel blue")
      p.Material = "Neon"
      p.CFrame = blast.CFrame
      p.Parent = EffectMo
      game:GetService("Debris"):AddItem(p, 3)
      m = Instance.new("SpecialMesh")
      m.MeshType = "Sphere"
      local m = Instance.new("SpecialMesh")
      m.MeshType = "Sphere"
      m.Parent = p
      m.Scale = Vector3.new(5, 1, 1)
      m.Parent = p
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 20 do
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.2, 0, 0)
          p.Transparency = i / 15
          swait()
        end
        p.Parent = nil
      end), p)
    end
  end
  DIR = Head.CFrame.lookVector
  stab.position = char.Torso.Position - DIR * 20
  local p = Instance.new("Part")
  p.TopSurface = 0
  p.BottomSurface = 0
  p.CanCollide = false
  p.Anchored = true
  p.BrickColor = BrickColor.new("Really black")
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = Torso.CFrame * CFrame.Angles(0, math.rad(90), 0)
  p.Parent = EffectMo
  m = MeshFolder.RingMesh:clone()
  p.Material = "SmoothPlastic"
  m.Scale = Vector3.new(10, 10, 0)
  m.Parent = p
  game:GetService("Debris"):AddItem(p, 5)
  m.Name = "Triangle"
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 30 do
      p.Transparency = i / 30
      p.Triangle.Scale = p.Triangle.Scale + Vector3.new(0.7, 0.7, 0)
      swait()
    end
    p.Parent = nil
  end), p)
  local p = Instance.new("Part", EffectMo)
  p.BrickColor = BrickColor.new("Pastel light blue")
  p.Anchored = true
  p.CanCollide = false
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = RightArm.CFrame * CFrame.new(2.5, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(-90), 0)
  m = MeshFolder.ArrowMesh:clone()
  m.Parent = p
  m.Scale = Vector3.new(10, 10, 10)
  arrow = p
  p = Instance.new("Sound", char)
  p.Volume = 1
  p.Pitch = 0.85
  p.SoundId = "http://www.roblox.com/asset/?id=233091136"
  p:Play()
  game:GetService("Debris"):AddItem(p, 5)
  coroutine.resume(coroutine.create(function()
    while true do
      swait()
      do
        local blast = Instance.new("Part", EffectMo)
        blast.Anchored = true
        blast.CanCollide = false
        blast.Size = Vector3.new(2, 2, 2)
        blast.CFrame = p.CFrame * CFrame.new(0, math.random(-200, 200) / 100, math.random(-1000, 1000) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        m = Instance.new("BlockMesh", blast)
        m.Scale = Vector3.new(1, 1, 1)
        blast.BrickColor = BrickColor.new("Toothpaste")
        blast.Material = "Neon"
        game:GetService("Debris"):AddItem(blast, 5)
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 15 do
            blast.Transparency = i / 15
            blast.Mesh.Scale = blast.Mesh.Scale / 1.1
            swait()
          end
          blast:Remove()
        end), p)
        if arrow.Parent == nil then
          break
        end
      end
    end
  end))
  coroutine.resume(coroutine.create(function()
    for i = 1, 30 do
      swait()
      arrow.CFrame = arrow.CFrame * CFrame.new(0, 0, -3)
      MagniDamage(arrow, 8, 3, 7, 20, "Normal", RootPart, 0.02, 2, math.random(4, 7), nil, true)
    end
    for i = 1, 10 do
      swait()
      arrow.Transparency = i / 10
    end
    local proj = arrow
    xdir = arrow.CFrame.lookVector
    p = Instance.new("Sound", arrow)
    p.Volume = 1
    p.Pitch = 1.1
    p.SoundId = "http://www.roblox.com/asset/?id=231917833"
    p:Play()
    game:GetService("Debris"):AddItem(p, 5)
    MagniDamage(arrow, 25, 15, 30, 20, "Normal", RootPart, 0.02, 2, math.random(4, 7), nil, true)
    for i = 1, 5 do
      local p = Instance.new("Part")
      p.TopSurface = 0
      p.BottomSurface = 0
      p.CanCollide = false
      p.Anchored = true
      p.BrickColor = BrickColor.new("White")
      p.formFactor = "Symmetric"
      p.Size = Vector3.new(1, 1, 1)
      p.CFrame = proj.CFrame * CFrame.fromEulerAnglesXYZ(math.pi / 2 + math.random(-15, 15) / 9, math.random(-15, 15) / 9, math.random(-10, 10) / 9)
      p.Parent = EffectMo
      m = MeshFolder.RingMesh:clone()
      m.Scale = Vector3.new(0, 0, 0)
      m.Parent = p
      m.Name = "Triangle"
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 15 do
          p.Transparency = i / 15
          p.Triangle.Scale = p.Triangle.Scale + Vector3.new(4, 4, 0.1)
          swait()
        end
        p.Parent = nil
      end), p)
    end
    local p = Instance.new("Part", proj.Parent)
    p.Name = "Effect"
    p.formFactor = "Symmetric"
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Material = "SmoothPlastic"
    p.BrickColor = BrickColor.new("White")
    p.Anchored = true
    p.CanCollide = false
    p.Size = Vector3.new(1, 1, 1)
    p.CFrame = proj.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
    game:GetService("Debris"):AddItem(p, 5)
    local m = MeshFolder.SpikeBall:Clone()
    m.Parent = p
    m.Scale = Vector3.new(1.5, 1.5, 1.5)
    m.Name = "Mesh"
    coroutine.resume(coroutine.create(function(p)
      for i = 1, 35 do
        p.Transparency = i / 35
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.3, 0.3, 0.3)
        swait()
      end
      p:Remove()
    end), p)
    local p = Instance.new("Part", proj.Parent)
    p.Name = "Effect"
    p.formFactor = "Symmetric"
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Material = "SmoothPlastic"
    p.BrickColor = BrickColor.new("White")
    p.Anchored = true
    p.CanCollide = false
    p.Size = Vector3.new(1, 1, 1)
    p.CFrame = CFrame.new(proj.Position, proj.Position + xdir * 50) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0)
    game:GetService("Debris"):AddItem(p, 8)
    local m = Instance.new("SpecialMesh", p)
    m.MeshId = "http://www.roblox.com/asset/?id=3270017"
    m.Scale = Vector3.new(2, 2, 1)
    coroutine.resume(coroutine.create(function(p, s)
      for i = 1, 15 do
        p.Transparency = i / 15
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(s, s, 0.05)
        swait()
      end
      p:Remove()
    end), p, 8)
    for i = 1, 2 do
      local p = Instance.new("Part", proj.Parent)
      p.Name = "Effect"
      p.formFactor = "Symmetric"
      p.TopSurface = 0
      p.BottomSurface = 0
      p.Material = "Neon"
      p.BrickColor = BrickColor.new("White")
      p.Anchored = true
      p.CanCollide = false
      p.Size = Vector3.new(1, 1, 1)
      p.CFrame = proj.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      game:GetService("Debris"):AddItem(p, 5)
      local m = Instance.new("BlockMesh", p)
      m.Scale = Vector3.new(1.5, 1.5, 1.5)
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 25 do
          p.Transparency = i / 20
          p.Mesh.Scale = p.Mesh.Scale + Vector3.new(2, 2, 2)
          swait()
        end
        p:Remove()
      end), p)
    end
    arrow:Destroy()
  end))
  swait(30)
  stab:Destroy()
  resetwelds()
  doingmoves(false)
end
function sax()
  resetwelds()
  doingmoves(true)
  saxing = true
  Humanoid.JumpPower = 50
  hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
  if hitfloor2 ~= nil and equipped == true then
    local p = Instance.new("Part")
    p.TopSurface = 0
    p.BottomSurface = 0
    p.CanCollide = false
    p.Anchored = true
    p.BrickColor = BrickColor.new("White")
    p.CFrame = cf(posfloor2) * CFrame.new(0, 3, 0) * CFrame.Angles(0, math.random(-500, 500) / 100, 0)
    p.formFactor = "Symmetric"
    p.Size = Vector3.new(1, 1, 1)
    p.Parent = EffectMo
    m = MeshFolder.BlastMesh:clone()
    p.Material = "SmoothPlastic"
    m.Parent = p
    m.Scale = Vector3.new(5, 3, 5)
    m.Name = "Mesh"
    game:GetService("Debris"):AddItem(p, 5)
    coroutine.resume(coroutine.create(function(p, s)
      for i = 1, 15 do
        p.Transparency = i / 15
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.5, -0.2, 1.5)
        p.CFrame = p.CFrame * CFrame.new(0, -0.25, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(20), 0)
        swait()
      end
      p:Remove()
    end), p)
  end
  coroutine.resume(coroutine.create(function(p)
    while saxing == true do
      MagniDamage(RightLeg, 8, 5, 10, 15, "Normal", RootPart, 0.2, 2, math.random(4, 7), nil, true)
      do
        local blast2 = Instance.new("Part", EffectMo)
        blast2.Anchored = true
        blast2.CanCollide = false
        blast2.Size = Vector3.new(1, 1, 1)
        blast2.CFrame = RightLeg.CFrame * CFrame.new(0, -2, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        m = Instance.new("SpecialMesh", blast2)
        m.Scale = Vector3.new(2, 2, 2)
        m.MeshType = "Brick"
        if Mode == "Shield" then
          blast2.BrickColor = BrickColor.new("Toothpaste")
        elseif Mode == "Spear" then
          blast2.BrickColor = BrickColor.new("Deep orange")
        end
        blast2.Material = "Neon"
        gentrail(blast2)
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 10 do
            blast2.Transparency = 0.5 + i / 10
            blast2.Mesh.Scale = blast2.Mesh.Scale / 1.1
            swait()
          end
          blast2:Remove()
        end), p)
        swait()
      end
    end
  end))
  for i = 0, 1, 0.25 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 1), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0.5, 0) * euler(0, 0, -1), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.4) * euler(0, -1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -0.4) * euler(0, -1.57, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.6), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.5, 0, 0) * euler(0, 0, 0.2), 0.4)
  end
  Humanoid.Jump = true
  Torso.Velocity = RootPart.CFrame.lookVector * 90 + vt(0, 0.3, 0) * 80
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, 0) * euler(0, 0, 1.3), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 1.57, 0) * euler(0, 0, -1.3), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.5, 0, -0.4) * euler(0, -1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, 0.4) * euler(0, -1.57, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, -0.5, 0) * euler(0, 0, -0.6), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.5, 0, 0) * euler(0, 0, 0.4), 0.4)
  end
  so("199146359", char, 1, 1)
  so("228343324", char, 0.6, 0.8)
  so("199146359", char, 1, 1.2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(0, 1.57, 0) * euler(0, 0, -1.3) * euler(0, 0, 5 * i)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.5, 0, -0.4) * euler(0, -1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, 0.4) * euler(0, -1.57, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, -0.5, 0) * euler(0, 0, -0.6), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.4) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.5, 0, 0) * euler(0, 0, 0.4), 0.4)
  end
  so("199146359", char, 1, 1)
  so("228343324", char, 0.6, 0.8)
  so("199146359", char, 1, 1.2)
  while true do
    swait()
    if hitfloor == nil then
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0.5, 0) * euler(0, 0, -0.5), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.5, 0, 0.8) * euler(0, -1.57, 0), 0.4)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -1.4) * euler(0, 0, 0.6), 0.4)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(0.8, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.6), 0.4)
      LH.C0 = clerp(LH.C0, cf(-1, -0.2, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(-0.5, 0, 0) * euler(0, 0, 0.2), 0.4)
    end
    break
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.2, 0, 0) * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1, 0, 1) * euler(0, -1.57, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.8, 0, 0) * euler(0, 0, -0.5), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -0.6, -0.4) * euler(0, 1.57, 0) * euler(0, 0.5, 0) * euler(0, 0.5, 0) * euler(0, 0, -0.2), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.2, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0) * euler(0, 0, 0) * euler(0, 0, 0.2), 0.4)
  end
  saxing = false
  resetwelds()
  doingmoves(false)
end
function spearspin()
  doingmoves(true)
  resetwelds()
  ER = char.Torso.CFrame
  spr.Part0 = char.Torso
  spr.C0 = spr.C0 * CFrame.new(4, 0, 0) * CFrame.Angles(0, math.rad(90), 0)
  for i = 1, 10 do
    swait()
    RW.C1 = clerp(RW.C1, cf(0.3, 1.7, 0) * euler(0, 0, math.rad(180), 0) * euler(0, 0, math.rad(-15), 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(-0.3, 1.7, 0) * euler(0, 0, math.rad(-180), 0) * euler(0, 0, math.rad(15), 0), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.25)
  end
  spinning = true
  local zcols = {"231917856", "231917788"}
  num = 0
  coroutine.resume(coroutine.create(function()
    while spinning == true do
      swait(1)
      so(zcols[math.random(1, #zcols)], char, 1, math.random(7, 10) / 10)
      num = num + 1
      if num == 4 then
        num = 0
        hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
        if hitfloor2 ~= nil and equipped == true then
          local p = Instance.new("Part")
          p.TopSurface = 0
          p.BottomSurface = 0
          p.CanCollide = false
          p.Anchored = true
          p.BrickColor = hitfloor2.BrickColor
          p.CFrame = cf(posfloor2) * CFrame.new(0, 1, 0)
          p.formFactor = "Symmetric"
          p.Size = Vector3.new(1, 1, 1)
          p.Parent = EffectMo
          m = MeshFolder.BlastMesh:clone()
          p.Material = "SmoothPlastic"
          m.Parent = p
          m.Scale = Vector3.new(1, 3, 1)
          m.Name = "Triangle"
          game:GetService("Debris"):AddItem(p, 5)
          coroutine.resume(coroutine.create(function(p)
            for i = 1, 10 do
              p.Transparency = i / 10
              p.Triangle.Scale = p.Triangle.Scale + Vector3.new(2.5, -0.4, 2.5)
              p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
              swait()
            end
            p.Parent = nil
          end), p)
        end
      end
    end
  end))
  for i = 1, 100 do
    swait()
    spr.C0 = spr.C0 * CFrame.Angles(0, 0, math.rad(1 * i))
    Spear.idk.fire.Enabled = true
    Spear.idk.fire2.Enabled = true
    Humanoid.WalkSpeed = 20
    MagniDamage(Spear.Handle, 12, 1, 3, 15, "Normal", RootPart, 0.1, 2, math.random(4, 7), nil, true)
    spinning = true
  end
  swait(10)
  spinning = false
  Spear.idk.fire.Enabled = false
  Spear.idk.fire2.Enabled = false
  spr.Part0 = char["Right Arm"]
  resetwelds()
  doingmoves(false)
end
function idkdash()
  doingmoves(true)
  resetwelds()
  so("153092315", Torso, 1, 1)
  Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0) * euler(0, 0, 0), 0.3)
  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.2, 0, 0) * euler(0, 0, 0), 0.3)
  RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2, 0, -1) * euler(0, 1, 0), 0.3)
  RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(2, 0, 1) * euler(0, -1, 0), 0.3)
  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(0, 0, -0.8), 0.3)
  LH.C0 = clerp(LH.C0, cf(-1, -0.1, -0.4) * euler(0, -1.57, 0) * euler(-0.2, 0, 0) * euler(0, 0, 0.2), 0.3)
  for i = 1, 3 do
    swait(5)
    hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
    if hitfloor2 ~= nil and equipped == true then
      local p = Instance.new("Part")
      p.TopSurface = 0
      p.BottomSurface = 0
      p.CanCollide = false
      p.Anchored = true
      p.BrickColor = BrickColor.new("Institutional white")
      p.CFrame = cf(posfloor2) * cf(0, 1.5, 0) * CFrame.Angles(0, math.random(-10, 10) / 100, 0)
      p.formFactor = "Symmetric"
      p.Size = Vector3.new(1, 1, 1)
      p.Parent = EffectMo
      m = MeshFolder.BlastMesh:clone()
      p.Material = "SmoothPlastic"
      m.Parent = p
      m.Scale = Vector3.new(1, 3, 1)
      m.Name = "Triangle"
      game:GetService("Debris"):AddItem(p, 5)
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 10 do
          p.Transparency = i / 10
          p.Triangle.Scale = p.Triangle.Scale + Vector3.new(2.3, -0.4, 2.3)
          p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
          swait()
        end
        p.Parent = nil
      end), p)
    end
  end
  trail(0.05)
  local p = Instance.new("Part", EffectMo)
  p.Name = "Effect"
  p.formFactor = "Symmetric"
  p.TopSurface = 0
  p.BottomSurface = 0
  p.Material = "SmoothPlastic"
  p.BrickColor = BrickColor.new("Institutional white")
  p.Anchored = true
  p.CanCollide = false
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = Torso.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
  p.Transparency = 0.1
  local m = Instance.new("SpecialMesh", p)
  m.Scale = Vector3.new(3, 3, 3)
  m.MeshType = "Sphere"
  game:GetService("Debris"):AddItem(p, 5)
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 10 do
      p.Transparency = i / 10
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1, 1, 1)
      swait()
    end
    p:Destroy()
  end), p)
  Neck.C0 = necko * euler(0.2, 0, 0) * euler(0, 0, 0)
  RootJoint.C0 = RootCF * cf(0, 0, 1.5) * euler(0.1, 0, 0) * euler(0, 0, 0)
  RW.C0 = cf(1.5, 0.5, 0) * euler(-0.8, 0, 1) * euler(0, -0.5, 0)
  RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
  LW.C0 = cf(-1.5, 0.5, 0) * euler(-0.8, 0, -1) * euler(0, 0.5, 0)
  LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
  RH.C0 = cf(1, -1, -0.4) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(0, 0, -0.5)
  LH.C0 = cf(-1, -1, -0.4) * euler(0, -1.57, 0) * euler(-0.2, 0, 0) * euler(0, 0, 0.2)
  so("231917856", Torso, 1, 1)
  so("231917788", Torso, 1, 1)
  local er = Instance.new("Part")
  er.Parent = workspace
  er.Transparency = 1
  er.Anchored = true
  er.CanCollide = false
  er.CFrame = RootPart.CFrame * CFrame.new(0, 0, -23)
  er.Size = Vector3.new(6.823, 5.838, 51.579)
  RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -50)
  for i = 1, 5 do
    local p = Instance.new("Part", EffectMo)
    p.Name = "Effect"
    p.formFactor = "Symmetric"
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Material = "SmoothPlastic"
    p.BrickColor = BrickColor.new("Institutional white")
    p.Anchored = true
    p.CanCollide = false
    p.Size = Vector3.new(0.2, 0.2, 1)
    p.CFrame = RootPart.CFrame * CFrame.new(math.random(-5, 5), math.random(-5, 5), 25)
    p.Transparency = 0.1
    p.Material = "Neon"
    local m = Instance.new("SpecialMesh", p)
    m.Scale = Vector3.new(3, 3, 60)
    m.MeshType = "Sphere"
    game:GetService("Debris"):AddItem(p, 5)
    coroutine.resume(coroutine.create(function(p)
      for i = 1, 60 do
        p.Transparency = 0.3 + i / 60
        swait()
      end
      p:Destroy()
    end), p)
    old = p
    MagniDamage(er, 10, 15, 15, 20, "Normal", RootPart, 1, 2, math.random(4, 7), nil, true)
    local p = Instance.new("Part", EffectMo)
    p.Name = "Effect"
    p.formFactor = "Symmetric"
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Material = "SmoothPlastic"
    p.BrickColor = BrickColor.new("Deep orange")
    p.Anchored = true
    p.CanCollide = false
    p.Size = Vector3.new(0.2, 0.2, 1)
    p.CFrame = old.CFrame
    p.Material = "Neon"
    local m = Instance.new("SpecialMesh", p)
    m.Scale = Vector3.new(1, 1, 50)
    m.MeshType = "Sphere"
    game:GetService("Debris"):AddItem(p, 5)
    coroutine.resume(coroutine.create(function(p)
      for i = 1, 60 do
        p.Transparency = i / 60
        swait()
      end
      p:Destroy()
    end), p)
  end
  swait(15)
  so("233091161", Torso, 1, 1.3)
  local proj = Instance.new("Part", EffectMo)
  proj.Anchored = true
  proj.CanCollide = true
  proj.Transparency = 1
  proj.Position = char.Torso.Position
  xdir = proj.CFrame.lookVector
  game:GetService("Debris"):AddItem(proj, 2)
  local p = Instance.new("Part", proj.Parent)
  p.Name = "Effect"
  p.formFactor = "Symmetric"
  p.TopSurface = 0
  p.BottomSurface = 0
  p.Material = "SmoothPlastic"
  p.BrickColor = BrickColor.new("Deep orange")
  p.Anchored = true
  p.CanCollide = false
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = CFrame.new(proj.Position, proj.Position + xdir * 50) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0)
  p.CFrame = p.CFrame * CFrame.new(0, 0, 5)
  game:GetService("Debris"):AddItem(p, 5)
  local m = Instance.new("SpecialMesh", p)
  m.MeshId = "http://www.roblox.com/asset/?id=3270017"
  m.Scale = Vector3.new(2, 2, 1)
  coroutine.resume(coroutine.create(function(p, s)
    for i = 1, 15 do
      p.Transparency = i / 15
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(2, 2, -0.05)
      swait()
    end
  end), p, 8)
  local p = Instance.new("Part")
  p.TopSurface = 0
  p.BottomSurface = 0
  p.CanCollide = false
  p.Anchored = true
  p.BrickColor = BrickColor.new("Institutional white")
  p.Position = char.Torso.Position
  p.CFrame = p.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.random(-10, 10) / 100, 0)
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
  p.Parent = EffectMo
  m = MeshFolder.BlastMesh:clone()
  p.Material = "SmoothPlastic"
  m.Parent = p
  m.Scale = Vector3.new(1, 3, 1)
  m.Name = "Triangle"
  game:GetService("Debris"):AddItem(p, 5)
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 20 do
      p.Transparency = i / 20
      p.Triangle.Scale = p.Triangle.Scale + Vector3.new(1.5, 0, 1.5)
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
      swait()
    end
    p.Parent = nil
  end), p)
  er:Destroy()
  for i = 1, 8 do
    do
      local p = Instance.new("Part", proj.Parent)
      p.Name = "Effect"
      p.formFactor = "Symmetric"
      p.TopSurface = 0
      p.BottomSurface = 0
      p.Material = "SmoothPlastic"
      p.BrickColor = BrickColor.new("Deep orange")
      p.Material = "Neon"
      p.Anchored = true
      p.CanCollide = false
      p.Size = Vector3.new(1, 1, 1)
      p.CFrame = CFrame.new(proj.CFrame.p) - Vector3.new(0, 0, 0)
      game:GetService("Debris"):AddItem(p, 3)
      local m = Instance.new("CylinderMesh", p)
      m.Scale = Vector3.new(1, 1000000, 1)
      coroutine.resume(coroutine.create(function(p, pc, s)
        local e = 0
        for i = 0 + s, 20 + s do
          MagniDamage(p, 8, 1, 3, 20, "Normal", RootPart, 0.05, 2, math.random(4, 7), nil, true)
          e = e ^ 1.008 + 0.88
          p.CFrame = pc * CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(math.cos(math.deg(i * 0.6)) * (i - s + 8), 0, math.sin(math.deg(i * 0.6)) * (i - s + 8))
          swait()
        end
        for i = 1, 10 do
          m.Scale = m.Scale - Vector3.new(0.1, 0, 0.1)
          p.Transparency = i / 10
          swait()
        end
        p:Remove()
      end), p, p.CFrame, i * 9)
    end
  end
  swait(15)
  doingmoves(false)
  resetwelds()
end
function swordportal()
  doingmoves(true)
  resetwelds()
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.5, -0.1) * euler(0.2, 0, 0.4) * euler(0, 1, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2, 0, -0.6) * euler(0, 1.4, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.9, -0.2) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, 0.1), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 1.2) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0.2, 0, 0) * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.5, -0.1) * euler(0.2, 0, 0.4) * euler(0, 1, 0) * euler(-0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.4, 0) * euler(2, 0, -1) * euler(0, 1.4, 0) * euler(0, 0, -1.2), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.8, -0.3, -0.6) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, -0.3), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.2, 0.1) * euler(0, -1.57, 0) * euler(0, 1, 0) * euler(-0.2, 0, -0.1), 0.3)
  end
  Humanoid.WalkSpeed = 10
  for i = 1, 8 do
    swait(10)
    so("231917784", RootPart, 1, 1)
    so("233091136", RootPart, 1, 0.85)
    so("231917833", RootPart, 1, 1.1)
    so("233096543", RootPart, 1, 0.85)
    MagniDamage(char.Torso, 20, 5, 10, 20, "Normal", RootPart, 0.2, 2, math.random(4, 7), nil, true)
    for i = 1, 5 do
      local p = Instance.new("Part", EffectMo)
      p.Name = "Effect"
      p.formFactor = "Symmetric"
      p.TopSurface = 0
      p.BottomSurface = 0
      p.Material = "SmoothPlastic"
      p.BrickColor = BrickColor.new("White")
      p.Material = "Neon"
      p.Anchored = true
      p.CanCollide = false
      p.Size = Vector3.new(1, 1, 1)
      p.CFrame = CFrame.new(RootPart.CFrame.p) - Vector3.new(0, 2.5, 0)
      game:GetService("Debris"):AddItem(p, 5)
      local m = Instance.new("BlockMesh", p)
      m.Scale = Vector3.new(3, 3, 3)
      tor = script.ParticleFolder.trail:clone()
      tor.Parent = p
      tor.Enabled = true
      coroutine.resume(coroutine.create(function(p, pc, s)
        local e = 0
        for i = 0 + s, 10 + s do
          p.Transparency = (i - s) / 10
          p.Mesh.Scale = p.Mesh.Scale / 1.02
          e = e ^ 1.008 + 0.88
          p.CFrame = pc * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-(i - s - 1), i - s + 1)), math.rad(math.random(-(i - s - 1), i - s + 1)), math.rad(math.random(-(i - s - 1), i - s + 1))) + Vector3.new(math.cos(math.deg(i * 0.6)) * (i - s + 8), 0, math.sin(math.deg(i * 0.6)) * (i - s + 8))
          swait()
        end
        swait(20)
        p:Remove()
      end), p, p.CFrame, i * 9)
    end
    do
      local p = Instance.new("Part")
      p.TopSurface = 0
      p.BottomSurface = 0
      p.CanCollide = false
      p.Anchored = true
      p.BrickColor = BrickColor.new("Institutional white")
      p.CFrame = RootPart.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, math.random(-10, 10) / 100, 0)
      p.formFactor = "Symmetric"
      p.Size = Vector3.new(1, 1, 1)
      p.Parent = EffectMo
      m = MeshFolder.BlastMesh:clone()
      p.Material = "SmoothPlastic"
      m.Parent = p
      m.Scale = Vector3.new(1, 3, 1)
      m.Name = "Triangle"
      game:GetService("Debris"):AddItem(p, 5)
      coroutine.resume(coroutine.create(function(p)
        for i = 1, 15 do
          p.Transparency = 0.3 + i / 15
          p.Triangle.Scale = p.Triangle.Scale + Vector3.new(2.3, -0.4, 2.3)
          p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
          swait()
        end
        p.Parent = nil
      end), p)
      local portal = Instance.new("Part", EffectMo)
      portal.Anchored = true
      portal.CanCollide = false
      portal.Size = Vector3.new(1, 8, 8)
      portal.CFrame = RootPart.CFrame * CFrame.new(math.random(-10, 15), math.random(0, 10), math.random(-10, 10)) * CFrame.Angles(0, math.rad(90), 0)
      m = Instance.new("SpecialMesh", portal)
      m.MeshType = "Cylinder"
      portal.Material = "SmoothPlastic"
      portal.BrickColor = BrickColor.new("Really black")
      gairo = Instance.new("BodyGyro")
      gairo.Parent = portal
      gairo.maxTorque = Vector3.new(400000, 400000, 400000) * math.huge
      gairo.P = 20000
      gairo.cframe = cf(RootPart.Position.X, RootPart.Position.Y, RootPart.Position.Z)
      m.Scale = Vector3.new(0.003, 1, 1)
      local portal2 = Instance.new("Part", portal)
      portal2.Anchored = true
      portal2.CanCollide = false
      portal2.Position = Torso.Position
      portal2.Size = Vector3.new(0.2, 10, 10)
      portal2.CFrame = portal.CFrame
      m = Instance.new("SpecialMesh", portal2)
      m.MeshType = "Cylinder"
      portal2.Material = "Neon"
      portal2.BrickColor = BrickColor.new("Deep orange")
      m.Scale = Vector3.new(0.001, 1, 1)
      ter = script.ParticleFolder.idk:clone()
      ter.Parent = portal
      ter.Enabled = true
      coroutine.resume(coroutine.create(function()
        local p = Instance.new("Part")
        p.TopSurface = 0
        p.BottomSurface = 0
        p.CanCollide = false
        p.Anchored = true
        p.BrickColor = BrickColor.new("Really black")
        p.formFactor = "Symmetric"
        p.Size = Vector3.new(1, 1, 1)
        p.CFrame = portal.CFrame * CFrame.Angles(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, 0)
        p.Parent = EffectMo
        m = MeshFolder.RingMesh:clone()
        p.Material = "SmoothPlastic"
        m.Scale = Vector3.new(15, 15, 0)
        m.Parent = p
        m.Name = "Triangle"
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 30 do
            p.Transparency = i / 30
            p.Triangle.Scale = p.Triangle.Scale + Vector3.new(0.3, 0.3, 0)
            swait()
          end
          p.Parent = nil
        end), p)
        local p = Instance.new("Part")
        p.TopSurface = 0
        p.BottomSurface = 0
        p.CanCollide = false
        p.Anchored = true
        p.BrickColor = BrickColor.new("Really black")
        p.formFactor = "Symmetric"
        p.Size = Vector3.new(1, 1, 1)
        p.CFrame = portal.CFrame * CFrame.Angles(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), 0, 0)
        p.Parent = EffectMo
        m = MeshFolder.RingMesh:clone()
        p.Material = "SmoothPlastic"
        m.Scale = Vector3.new(15, 15, 0)
        m.Parent = p
        m.Name = "Triangle"
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 30 do
            p.Transparency = i / 30
            p.Triangle.Scale = p.Triangle.Scale + Vector3.new(0.3, 0.3, 0)
            swait()
          end
          p.Parent = nil
        end), p)
        local blade = Instance.new("Part", portal)
        blade.CFrame = portal.CFrame * CFrame.Angles(math.rad(180), math.rad(-90), 0)
        blade.Anchored = true
        blade.CanCollide = false
        gairo = Instance.new("BodyGyro")
        gairo.Parent = blade
        gairo.maxTorque = Vector3.new(400000, 400000, 400000) * math.huge
        gairo.P = 20000
        gairo.cframe = blade.CFrame
        m = MeshFolder.BladeMesh:clone()
        m.Parent = blade
        blade.Material = "SmoothPlastic"
        blade.BrickColor = BrickColor.new("Deep orange")
        m.Scale = Vector3.new(0.1, 4, 8)
        coroutine.resume(coroutine.create(function()
          while blade.Parent ~= nil do
            swait()
            do
              local blast = Instance.new("Part", EffectMo)
              blast.Anchored = true
              blast.CanCollide = false
              blast.Size = Vector3.new(2, 2, 2)
              blast.CFrame = blade.CFrame * CFrame.new(0, math.random(-200, 200) / 100, math.random(-1000, 1000) / 100) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
              m = Instance.new("BlockMesh", blast)
              m.Scale = Vector3.new(1, 1, 1)
              blast.BrickColor = BrickColor.new("White")
              blast.Material = "Neon"
              coroutine.resume(coroutine.create(function(p)
                for i = 1, 10 do
                  blast.Transparency = i / 10
                  blast.Mesh.Scale = blast.Mesh.Scale / 1.1
                  swait()
                end
                blast:Remove()
              end), p)
            end
          end
        end))
        coroutine.resume(coroutine.create(function()
          for i = 1, 30 do
            swait()
            MagniDamage(blade, 13, 1, 4, 15, "Normal", blade, 0.1, 2, math.random(4, 7), nil, true)
            blade.CFrame = blade.CFrame * CFrame.new(0, 0, -3)
          end
          blade:Destroy()
          for i = 1, 15 do
            swait()
            bnum = 0.26666666666666666
            blade.Transparency = i / 15
            blade.BladeMesh.Scale = blade.BladeMesh.Scale - Vector3.new(0, bnum, 0)
          end
        end))
        swait(40)
        for i = 1, 20 do
          swait()
          num = 0.4
          num2 = 0.5
          portal.Transparency = i / 20
          portal2.Transparency = i / 20
          portal.Size = portal.Size - Vector3.new(0, num, num)
          portal2.Size = portal2.Size - Vector3.new(0, num2, num2)
        end
        portal:Destroy()
      end))
    end
  end
  swait(10)
  resetwelds()
  doingmoves(false)
end
function boomatk()
  doingmoves(true)
  resetwelds()
  Humanoid.JumpPower = 60
  lastmove = "wwq"
  for i = 1, 10 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 1)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, 0.6) * euler(0, -1, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2 - idleanim / 4, 0, -0.1 + idleanim / 7), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1 - idleanim / 4, 0, 0.05 - idleanim / 7), 0.3)
  end
  local p = Instance.new("Part", EffectMo)
  p.Name = "Effect"
  p.formFactor = "Symmetric"
  p.TopSurface = 0
  p.BottomSurface = 0
  p.Material = "SmoothPlastic"
  p.BrickColor = BrickColor.new("White")
  p.Anchored = true
  p.CanCollide = false
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = Torso.CFrame * CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 1, 0)
  p.CFrame = p.CFrame * CFrame.new(0, 0, 5)
  game:GetService("Debris"):AddItem(p, 8)
  local m = Instance.new("SpecialMesh", p)
  m.MeshId = "http://www.roblox.com/asset/?id=3270017"
  m.Scale = Vector3.new(1, 1, 0.5)
  coroutine.resume(coroutine.create(function(p, s)
    for i = 1, 30 do
      p.Transparency = 0.3 + i / 30
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(2, 2, 0)
      swait()
    end
    p:Destroy()
  end), p, 8)
  local p = Instance.new("Part", EffectMo)
  p.Name = "Effect"
  p.formFactor = "Symmetric"
  p.TopSurface = 0
  p.BottomSurface = 0
  p.Material = "SmoothPlastic"
  p.BrickColor = BrickColor.new("White")
  p.Anchored = true
  p.CanCollide = false
  p.Size = Vector3.new(1, 1, 1)
  p.CFrame = Torso.CFrame * CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 1, 0)
  p.CFrame = p.CFrame * CFrame.new(0, 0, 5)
  game:GetService("Debris"):AddItem(p, 8)
  local m = Instance.new("SpecialMesh", p)
  m.MeshId = "http://www.roblox.com/asset/?id=3270017"
  m.Scale = Vector3.new(10, 10, 0.5)
  coroutine.resume(coroutine.create(function(p, s)
    for i = 1, 30 do
      p.Transparency = 0.3 + i / 30
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(3, 3, 0)
      swait()
    end
    p:Destroy()
  end), p, 8)
  local WWQ = Instance.new("BoolValue", char)
  WWQ.Name = "CanDoDown"
  rot = coroutine.create(function()
    if (Anim == "Fall" or Anim == "Jump") and char:FindFirstChild("CanDoDown") ~= nil then
      char:FindFirstChild("CanDoDown"):Destroy()
      local t = Instance.new("BoolValue", char)
      t.Name = "UpCooldown"
      game.Debris:AddItem(t, 4)
    end
    while rotating == true do
      for i = 0, 1, 0.1 do
        swait()
        if Anim == "Fall" or Anim == "Jump" then
          local bom = 155
          RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(math.rad(bom), 0, 3 * i)
        elseif Anim ~= "Fall" or Anim ~= "Jump" then
          RootJoint.C0 = RootCF * cf(0, 0, -0.2) * euler(math.rad(25), 0, 3 * i)
        end
      end
      swait()
    end
    Dmoves = false
  end)
  lasthit = nil
  rotating = true
  coroutine.resume(rot)
  local num = 0
  for i = 1, 15 do
    local erm = 7.666666666666667
    local erm2 = 7.333333333333333
    local p = Instance.new("Part", EffectMo)
    p.Name = "Effect"
    p.formFactor = "Symmetric"
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Material = "SmoothPlastic"
    p.BrickColor = BrickColor.new("Black")
    p.Anchored = true
    p.CanCollide = false
    p.Size = Vector3.new(1, 1, 1)
    p.CFrame = Torso.CFrame * CFrame.Angles(math.rad(90), 0, 0) * CFrame.new(0, 1, 0)
    p.CFrame = p.CFrame * CFrame.new(0, 0, 5)
    game:GetService("Debris"):AddItem(p, 8)
    local m = Instance.new("SpecialMesh", p)
    m.MeshId = "http://www.roblox.com/asset/?id=3270017"
    m.Scale = Vector3.new(0.5, 0.5, 0.5)
    coroutine.resume(coroutine.create(function(p, s)
      for i = 1, 30 do
        p.Transparency = i / 30
        p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.5, 1.5, 0)
        swait()
      end
      p:Destroy()
    end), p, 8)
    if Anim ~= "Fall" or Anim ~= "Jump" then
      Humanoid.Jump = true
      Torso.Velocity = RootPart.CFrame.lookVector * 60 + vt(0, 80, 0)
    end
    if Anim == "Fall" or Anim == "Jump" then
      Torso.Velocity = RootPart.CFrame.lookVector * 60 + vt(0, -80, 0)
    end
    MagniDamage(char.Torso, 15, 3, 8, 20, "Normal", RootPart, 0.05, 1, math.random(4, 7), nil, true)
    swait()
    rotating = true
    local er = math.random(1, 2)
    so("231917856", Torso, 1, math.random(1, 2))
    so("231917788", Torso, 1, math.random(1, 2))
    p = Instance.new("Part")
    p.Name = "Trail"
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Anchored = true
    p.CanCollide = false
    p.formFactor = "Symmetric"
    p.Size = Vector3.new(1, 1, 1)
    p.BrickColor = BrickColor.new("Deep orange")
    p.Material = "Neon"
    p.CFrame = Torso.CFrame
    p.Parent = EffectMo
    game:GetService("Debris"):AddItem(p, 3)
    m = Instance.new("BlockMesh")
    m.Scale = Vector3.new(7, 7, 7)
    m.Parent = p
    coroutine.resume(coroutine.create(function(part, spin)
      for i = 1, 20 do
        part.Mesh.Scale = part.Mesh.Scale - Vector3.new(0.35, 0.35, 0.35)
        part.Transparency = 0.4 + i / 30
        part.CFrame = part.CFrame * CFrame.new(math.random(-50, 50) / 500, math.random(-10, 10) / 100, math.random(-10, 10) / 100) * spin
        swait()
      end
      part.Parent = nil
    end), p, CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
  end
  game.Debris:AddItem(WWQ, 1)
  rotating = false
  doingmoves(false)
  resetwelds()
end
function dash()
  if Anim == "Jump" then
    return
  end
  so("200633029", RootPart, 1, 1.4)
  so("200633077", RootPart, 0.7, 1.4)
  doingmoves(true)
  resetwelds()
  if Mode == "Shield" then
    for _, v in pairs(Wings:children()) do
      if v.ClassName == "Part" and v.Name == "NeonWing" then
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 10 do
            v.Transparency = v.Transparency - 0.1
            swait()
          end
        end))
      end
    end
  end
  Humanoid.WalkSpeed = 16
  swait(1)
  ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt())
  ref.Anchored = true
  ref.CFrame = cf(RootPart.Position - RootPart.Velocity) * cf(0, -1, 0)
  game:GetService("Debris"):AddItem(ref, 10)
  look = cf(RootPart.Position, ref.Position)
  CF = look.lookVector * -150
  Torso.Velocity = CF
  local p = Instance.new("Part")
  p.TopSurface = 0
  p.BottomSurface = 0
  p.CanCollide = false
  p.Anchored = true
  p.BrickColor = BrickColor.new("Institutional white")
  p.CFrame = look * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.random(-10, 10) / 100, math.rad(180))
  p.formFactor = "Symmetric"
  p.Size = Vector3.new(1, 1, 1)
  p.Parent = EffectMo
  m = MeshFolder.BlastMesh:clone()
  p.Material = "SmoothPlastic"
  m.Parent = p
  m.Scale = Vector3.new(1, 2, 1)
  m.Name = "Triangle"
  game:GetService("Debris"):AddItem(p, 5)
  coroutine.resume(coroutine.create(function(p)
    for i = 1, 10 do
      p.Transparency = i / 10
      p.Triangle.Scale = p.Triangle.Scale + Vector3.new(1, -0.2, 1)
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
      swait()
    end
    p.Parent = nil
  end), p)
  for i = 0, 10 do
    swait()
    for _, v in pairs(char:children()) do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        do
          local p = v:clone()
          p.Name = "trail"
          p.Parent = EffectMo
          p.Transparency = 0
          p.Anchored = true
          p.BrickColor = BrickColor.new("White")
          p:BreakJoints()
          p.CanCollide = false
          p.Material = "Neon"
          p.Transparency = 0.7
          coroutine.resume(coroutine.create(function()
            swait()
            repeat
              swait()
              p.Transparency = p.Transparency + 0.1
            until p.Transparency >= 1
            p:Destroy()
          end))
        end
      end
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0, 0, 1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 1), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, 0.6) * euler(0, -1, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.6, 0), 0.4)
  end
  swait(5)
  for _, v in pairs(Wings:children()) do
    if v.ClassName == "Part" and v.Name == "NeonWing" then
      coroutine.resume(coroutine.create(function(p)
        if Mode == "Shield" then
          for i = 1, 10 do
            v.Transparency = i / 10
            swait()
          end
        else
        end
      end))
    end
  end
  doingmoves(false)
  resetwelds()
end
function Lightning(Start, End, Times, Offset, Color, Thickness, Transparency)
  local magz = (Start - End).magnitude
  local curpos = Start
  local trz = {
    -Offset,
    Offset
  }
  coroutine.resume(coroutine.create(function()
    for i = 1, Times do
      do
        local li = Instance.new("Part", workspace)
        li.TopSurface = 0
        li.BottomSurface = 0
        li.Anchored = true
        li.Transparency = Transparency or 0.4
        li.BrickColor = Color
        li.formFactor = "Custom"
        li.Material = "Neon"
        li.CanCollide = false
        li.Size = Vector3.new(1, 1, 1)
        Instance.new("BlockMesh", li).Scale = Vector3.new(Thickness, Thickness, magz / Times)
        local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
        local trolpos = CFrame.new(curpos, End) * CFrame.new(0, 0, magz / Times).p + ofz
        if Times == i then
          local magz2 = (curpos - End).magnitude
          li.Mesh.Scale = Vector3.new(Thickness, Thickness, magz2)
          li.CFrame = CFrame.new(curpos, End) * CFrame.new(0, 0, -magz2 / 2)
        else
          li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / Times / 2)
        end
        curpos = li.CFrame * CFrame.new(0, 0, magz / Times / 2).p
        coroutine.resume(coroutine.create(function()
          for i = 1, 10 do
            li.Transparency = li.Transparency + 0.1
            swait()
          end
          li:Destroy()
        end))
        game:service("RunService").RenderStepped:wait()
      end
    end
  end))
end
function equip()
  wait()
  if char:FindFirstChild("Wings") == nil and char:FindFirstChild("Shield") == nil then
    ora = false
    EffectMo = Instance.new("Model", char)
    EffectMo.Name = "Effects"
    Mode = "Shield"
    MeshFolder = script.MeshFolder
    ch = char
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
    for i = 0, 1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, -0.2), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.1, 0, 1.9) * euler(0, 1, 0), 0.3)
      RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -1.4) * euler(0, -0.2, 0), 0.3)
      LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    end
    Wings = script.Wings:Clone()
    char = game.Players.LocalPlayer.Character
    Wings.Parent = char
    w = Instance.new("Weld")
    w.Part0 = Wings.Handle
    w.Part1 = char.Torso
    w.Name = "AIDS"
    w.Parent = w.Part0
    Shield = script.Shield:Clone()
    char = game.Players.LocalPlayer.Character
    Shield.Parent = char
    w = Instance.new("Weld")
    w.Part0 = Shield.Handle
    w.Part1 = char["Right Arm"]
    w.Name = "AIDS"
    w.Parent = w.Part0
    Spear = script.Spear:Clone()
    char = game.Players.LocalPlayer.Character
    Spear.Parent = char
    spr = Instance.new("Weld")
    spr.Part1 = Spear.Handle
    spr.Part0 = char["Right Arm"]
    spr.Name = "AIDS"
    spr.Parent = w.Part0
    spr.C0 = spr.C0 * CFrame.Angles(math.rad(90), math.rad(90), 0) * CFrame.new(-1, 0, 0)
    neutralc0 = spr.C0
    for _, v in pairs(Wings:children()) do
      if v.ClassName == "Part" then
        coroutine.resume(coroutine.create(function(p)
          v.Transparency = 1
        end))
      end
    end
    for _, v in pairs(Spear:children()) do
      if v.ClassName == "Part" then
        coroutine.resume(coroutine.create(function(p)
          v.Transparency = 1
        end))
      end
    end
    for _, v in pairs(Shield:children()) do
      if v.ClassName == "Part" then
        coroutine.resume(coroutine.create(function(p)
          v.Transparency = 1
        end))
      end
    end
    for _, v in pairs(Shield:children()) do
      if v.ClassName == "Part" and v.Name ~= "Handle" then
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 10 do
            swait()
            v.Transparency = v.Transparency - 0.1
          end
        end))
      end
    end
    for _, v in pairs(Wings:children()) do
      if v.ClassName == "Part" and v.Name ~= "Handle" and v.Name ~= "NeonWing" then
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 10 do
            swait()
            v.Transparency = v.Transparency - 0.1
          end
          equipped = true
          Animate.Parent = nil
        end))
      end
    end
    swait(10)
  end
end
function dequip()
  equipped = false
  swait()
  for i = 0, 1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.1, 0, -0.2), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.1, 0, 1.9) * euler(0, 1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.1, 0, -1.4) * euler(0, -0.2, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
  end
  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 1)
  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 1)
  ora = true
  if Mode == "Shield" then
    for _, v in pairs(Shield:children()) do
      if v.ClassName == "Part" then
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 10 do
            swait()
            v.Transparency = v.Transparency + 0.1
          end
        end))
      end
    end
    for _, v in pairs(Wings:children()) do
      if v.ClassName == "Part" and v.Name ~= "NeonPart" and v.Name ~= "Handle" then
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 10 do
            swait()
            v.Transparency = v.Transparency + 0.1
          end
          equipped = false
          RH.C0 = clerp(RH.C0, RHC0, 0.2)
          LH.C0 = clerp(LH.C0, LHC0, 0.2)
          RH.C1 = clerp(RH.C1, RHC1, 0.2)
          LH.C1 = clerp(LH.C1, LHC1, 0.2)
          Animate.Parent = Humanoid
          swait(0)
          RW.Parent = nil
          LW.Parent = nil
          RSH.Parent = player.Character.Torso
          LSH.Parent = player.Character.Torso
          Spear:Destroy()
          Shield:Destroy()
          Wings:Destroy()
        end))
      end
    end
  elseif Mode == "Spear" then
    for _, v in pairs(Spear:children()) do
      if v.ClassName == "Part" then
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 10 do
            swait()
            v.Transparency = v.Transparency + 0.1
          end
        end))
      end
    end
    for _, v in pairs(Wings:children()) do
      if v.ClassName == "Part" and v.Name ~= "Handle" then
        coroutine.resume(coroutine.create(function(p)
          for i = 1, 10 do
            swait()
            v.Transparency = v.Transparency + 0.1
          end
          equipped = false
          RH.C0 = clerp(RH.C0, RHC0, 0.2)
          LH.C0 = clerp(LH.C0, LHC0, 0.2)
          RH.C1 = clerp(RH.C1, RHC1, 0.2)
          LH.C1 = clerp(LH.C1, LHC1, 0.2)
          Animate.Parent = Humanoid
          swait(0)
          RW.Parent = nil
          LW.Parent = nil
          RSH.Parent = player.Character.Torso
          LSH.Parent = player.Character.Torso
          Spear:Destroy()
          Shield:Destroy()
          Wings:Destroy()
        end))
      end
    end
  end
  ora = false
end
function ob1d(mouse)
  hold = true
end
function ob1u(mouse)
  hold = false
end
buttonhold = false
input = ""
age = 0
local input_time = 25
local input_maxtime = 25
local input_lose = 1
local maxinput = 12
local running_timer = false
function inputTimer()
  if not running_timer then
    running_timer = true
    repeat
      swait()
      input_time = input_time - input_lose
    until input_time <= 0.1 or input == "" or age == maxinput or Dmoves == true
    input = ""
    input_time = input_maxtime
    running_timer = false
  end
end
Blocking = nil
function key(key)
  if equipped == true then
    if key == "b" then
      Blocking = true
      Block()
    end
    if key == "a" or key == "s" or key == "d" or key == "q" or key == "w" or key == "e" or key == "c" or key == "z" or key == "x" then
      input = input .. key
    end
    if input == "dsasq" and Dmoves == false and char:FindFirstChild("AACooldown") == nil and Mode == "Shield" then
      local t = Instance.new("BoolValue", char)
      t.Name = "AACooldown"
      game.Debris:AddItem(t, 0)
      AA()
    end
    if input == "sax" and Dmoves == false and char:FindFirstChild("SaxCooldown") == nil then
      local t = Instance.new("BoolValue", char)
      t.Name = "SaxCooldown"
      game.Debris:AddItem(t, 1.2)
      sax()
    end
    if input == "ssadq" and Dmoves == false and Mode == "Shield" and char:FindFirstChild("ArrowCooldown") == nil then
      local t = Instance.new("BoolValue", char)
      t.Name = "ArrowCooldown"
      game.Debris:AddItem(t, 3)
      lightarrow()
      input = ""
    end
    if input == "adq" and Dmoves == false then
      switchMode()
      input = ""
    end
    if input == "sdq" and char:FindFirstChild("BashCooldown") == nil and Dmoves == false and Mode == "Shield" then
      local t = Instance.new("BoolValue", char)
      t.Name = "BashCooldown"
      game.Debris:AddItem(t, 3)
      shieldbash()
      input = ""
    end
    if input == "asdq" and char:FindFirstChild("ShockwaveCooldown") == nil and Dmoves == false and Mode == "Shield" then
      local t = Instance.new("BoolValue", char)
      t.Name = "ShockwaveCooldown"
      game.Debris:AddItem(t, 3)
      shockwave()
      input = ""
    end
    if input == "asdwwq" and char:FindFirstChild("SlamCooldown") == nil and Dmoves == false and Mode == "Shield" then
      local t = Instance.new("BoolValue", char)
      t.Name = "SlamCooldown"
      game.Debris:AddItem(t, 15)
      shieldslam()
      input = ""
    end
    if input == "ssq" and char:FindFirstChild("OrbCooldown") == nil and Dmoves == false and Mode == "Shield" then
      local t = Instance.new("BoolValue", char)
      t.Name = "OrbCooldown"
      game.Debris:AddItem(t, 3)
      orbatk()
      input = ""
    end
    if input == "sdq" and char:FindFirstChild("SpinCooldown") == nil and Dmoves == false and Mode == "Spear" then
      local t = Instance.new("BoolValue", char)
      t.Name = "SpinCooldown"
      game.Debris:AddItem(t, 5)
      spearspin()
      input = ""
    end
    if input == "dasq" and char:FindFirstChild("DashCooldown") == nil and Dmoves == false and Mode == "Spear" then
      local t = Instance.new("BoolValue", char)
      t.Name = "DashCooldown"
      game.Debris:AddItem(t, 6)
      idkdash()
      input = ""
    end
    if input == "wwq" and char:FindFirstChild("UpCooldown") == nil and Dmoves == false and Mode == "Spear" then
      boomatk()
      input = ""
    end
    if input == "adadq" and char:FindFirstChild("PortalCooldown") == nil and Dmoves == false and Mode == "Spear" then
      local t = Instance.new("BoolValue", char)
      t.Name = "PortalCooldown"
      game.Debris:AddItem(t, 15)
      swordportal()
      input = ""
    end
    if key == "e" and Dmoves == false and char:FindFirstChild("DodgeCooldown") == nil then
      local t = Instance.new("BoolValue", char)
      t.Name = "DodgeCooldown"
      game.Debris:AddItem(t, 2.4)
      dash()
      input = ""
    end
    age = age + 1
    inputTimer()
  end
end
lastinput = input
function Block()
  if Mode ~= "Shield" then
    return
  end
  if Bl0ck <= 0 then
    return
  end
  doingmoves(true)
  Animate.Parent = Humanoid
  HP = Humanoid.Health
  LW.C1 = clerp(LW.C1, cf(0, 0.5, 0), 1)
  RW.C1 = clerp(RW.C1, cf(0, 0.5, 0), 1)
  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0), 1)
  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0), 1)
  Humanoid.WalkSpeed = 9
  repeat
    if 0 < Humanoid.Health then
      Humanoid.Health = HP
    end
    Bl0ck = Bl0ck - 1
    swait()
    ER = char.Torso.CFrame
    Bar:TweenSize(UDim2.new(0.8, 0, Bl0ck / 100, 0), nil, "Linear", 1, true)
    RW.C1 = clerp(RW.C1, cf(0, 0.6, 0) * euler(math.rad(-90), 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, math.rad(90)), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, math.rad(-90)) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0.5, 1.5, 0) * euler(math.rad(-90), math.rad(70), 0), 0.4)
  until Blocking == false or Bl0ck == 0
  doingmoves(false)
end
function key2(key)
  if key == "b" then
    Blocking = false
  end
end
function s(mouse)
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(key2)
  equip()
  player = Player
  ch = Character
  MMouse = mouse
end
function ds(mouse)
  dequip()
end
Tool = script.Parent
Tool.Selected:connect(s)
Tool.Deselected:connect(ds)
player = Player
ch = Character
MMouse = mouse
Scrubs = {}
InfoGui = nil
vPlayer = game.Players.LocalPlayer
coroutine.resume(coroutine.create(function()
  while true do
    wait()
    if Comboing == true then
      if InfoGui == nil then
        InfoGui = script.InfoGui:clone()
        if vPlayer:FindFirstChild("PlayerGui") ~= nil then
          InfoGui.Parent = vPlayer.PlayerGui
        end
        Scrubs = 0
        for _, v in pairs(ComboNubs) do
          Scrubs = Scrubs + 1
        end
        if Scrubs == 0 then
          Scrubs = 1
        end
        InfoGui.Frame.HitsLabel.Text = ComboHits
        InfoGui.Frame.DamageLabel.Text = LastDamage
        InfoGui.Frame.EffectiveDamageLabel.Text = LastDamage / Scrubs
      else
        Scrubs = 0
        for _, v in pairs(ComboNubs) do
          Scrubs = Scrubs + 1
        end
        if Scrubs == 0 then
          Scrubs = 1
        end
        InfoGui.Frame.HitsLabel.Text = ComboHits
        InfoGui.Frame.DamageLabel.Text = math.floor(LastDamage)
        InfoGui.Frame.EffectiveDamageLabel.Text = math.floor(LastDamage / Scrubs)
        TimeDiff = LastHitTime - time()
        InfoGui.Frame.HitstunFrame.Fill.Size = UDim2.new(0, 40 * TimeDiff, 0, 10)
        InfoGui.Frame.HitstunFrame.Fill.Position = UDim2.new(0.5, -20 * TimeDiff, 0, 0)
      end
    elseif InfoGui ~= nil then
      coroutine.resume(coroutine.create(function(g)
        for i = 1, 15 do
          g.Frame.Position = g.Frame.Position + UDim2.new(0, -10 - i, 0, 0)
          wait(0.03)
        end
        g:Remove()
      end), InfoGui)
      InfoGui = nil
    end
    if LastHitTime <= time() and Comboing == true then
      Scrubs = 0
      for _, v in pairs(ComboNubs) do
        Scrubs = Scrubs + 1
      end
      if Scrubs == 0 then
        Scrubs = 1
      end
      ComboNubs = {}
      LastDamage = LastDamage / Scrubs
      wait(0.1)
      ComboHits = 0
      LastDamage = 0
      Comboing = false
    end
  end
end))
print("Merc Loaded")
Bl0ck = 100
Bar:TweenSize(UDim2.new(0.8, 0, 1, 0), "Out", "Linear", 1, true)
local gef = 10
while true do
  swait()
  if Bl0ck >= 100 then
    Bar:TweenSize(UDim2.new(0.8, 0, 1, 0), "Out", "Linear", 1, true)
  end
  if Bl0ck < 100 and Blocking == false then
    Bl0ck = Bl0ck + 0.05
    Bar:TweenSize(UDim2.new(0.8, 0, Bl0ck / 100, 0), "Out", "Linear", 1, true)
  end
  if equipped == true and Dmoves == false then
    if ora == false then
      if Mode == "Shield" and Mode ~= "dodge" then
        if Dmoves == false then
          Animate.Parent = Humanoid
        end
        for _, v in pairs(Wings:children()) do
          if v.ClassName == "Part" and v.Name == "NeonWing" then
            v.Transparency = 1
          end
        end
      end
      if Mode == "Spear" and Mode ~= "dodge" then
        Animate.Parent = nil
        gef = gef + 1
        if gef % 10 == 0 and 0 < Humanoid.Health then
          hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
          if hitfloor2 ~= nil and equipped == true and Dmoves == false then
            local p = Instance.new("Part")
            p.TopSurface = 0
            p.BottomSurface = 0
            p.CanCollide = false
            p.Anchored = true
            p.BrickColor = BrickColor.new("Institutional white")
            p.CFrame = cf(posfloor2)
            p.formFactor = "Symmetric"
            p.Size = Vector3.new(1, 1, 1)
            p.Parent = EffectMo
            m = MeshFolder.BlastMesh:clone()
            p.Material = "SmoothPlastic"
            m.Parent = p
            m.Scale = Vector3.new(1, 3, 1)
            m.Name = "Triangle"
            game:GetService("Debris"):AddItem(p, 5)
            coroutine.resume(coroutine.create(function(p)
              for i = 1, 10 do
                p.Transparency = i / 10
                p.Triangle.Scale = p.Triangle.Scale + Vector3.new(1, -0.4, 1)
                p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(15), 0)
                swait()
              end
              p.Parent = nil
            end), p)
          end
        end
        if Dmoves == false then
        end
        for _, v in pairs(Wings:children()) do
          if v.ClassName == "Part" and v.Name == "NeonWing" then
            v.Transparency = 0
          end
        end
        for _, v in pairs(Shield:children()) do
          if v.ClassName == "Part" then
            v.Transparency = 1
          end
        end
        for _, v in pairs(Spear:children()) do
          if v.ClassName == "Part" then
            v.Transparency = 0
          end
        end
      end
      if Mode == "Shield" and Mode ~= "dodge" then
        for _, v in pairs(Wings:children()) do
          if v.ClassName == "Part" and v.Name == "NeonWing" then
            v.Transparency = 1
          end
        end
        for _, v in pairs(Shield:children()) do
          if v.ClassName == "Part" and v.Name ~= "Handle" then
            v.Transparency = 0
          end
        end
        for _, v in pairs(Spear:children()) do
          if v.ClassName == "Part" then
            v.Transparency = 1
          end
        end
      end
    end
    local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    local velderp = RootPart.Velocity.y
    hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if 1 < RootPart.Velocity.y and hitfloor == nil and Dmoves == false then
      Anim = "Jump"
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.25)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0) * euler(math.rad(-15), math.rad(5), math.rad(30)), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.6, 0) * euler(math.rad(-5), math.rad(10), math.rad(-30)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -1) * euler(-0.3, 1.57, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.5, -1.57, 0), 0.2)
    elseif -1 > RootPart.Velocity.y and hitfloor == nil and Dmoves == false then
      Anim = "Fall"
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.25)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0) * euler(math.rad(-15), math.rad(5), math.rad(35)), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
    elseif torvel < 1 and hitfloor ~= nil and Dmoves == false then
      if Anim == "Fall" and velderp <= -70 then
        coroutine.resume(coroutine.create(function()
        end))
      end
      Anim = "Idle"
      if idle <= 500 and Dmoves == false then
        if Mode == "Spear" then
          RW.C1 = clerp(RW.C1, cf(0, 0.5, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.5 - idleanim) * euler(-0.05, 0, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2 + idleanim / 2, 0, 0), 0.3)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2 - idleanim / 8, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.4, 0.6, 0) * euler(math.rad(-10) - idleanim / 4, 0 + idleanim, math.rad(20) + idleanim / 2), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.3, 0.6, 0) * euler(0 - idleanim, math.rad(30) + idleanim, math.rad(-15)), 0.3)
          RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2 - idleanim / 4, 0, -0.1 + idleanim / 7), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1 - idleanim / 4, 0, 0.05 - idleanim / 7), 0.3)
        end
        if Mode == "Shield" then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, math.rad(45)) * euler(0, 0, 0), 0.25)
          RH.C1 = clerp(RH.C1, RHC1, 0.4)
          LH.C1 = clerp(LH.C1, LHC1, 4)
          RW.C1 = clerp(RW.C1, cf(0, 0.5, 0), 0.4)
          LW.C1 = clerp(LW.C1, cf(0, 0.5, 0), 0.4)
          Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, math.rad(-45)), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.4, 0.6, 0) * euler(math.rad(-10) - idleanim / 4, 0 + idleanim, math.rad(20) + idleanim / 2), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.3, 0.6, 0) * euler(0 - idleanim, math.rad(30) + idleanim, math.rad(-15)), 0.3)
          RH.C0 = clerp(RH.C0, RHC0, 0.2)
          LH.C0 = clerp(LH.C0, LHC0, 0.2)
        end
      end
    elseif torvel > 2 and torvel < 22 and hitfloor ~= nil and Dmoves == false then
      if Anim ~= "Fall" or velderp <= -70 then
      end
      Anim = "Walk"
      if Mode == "Spear" then
        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1 - idleanim) * euler(0.4, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2 + idleanim / 2, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4 + idleanim / 4) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(-0.2, 0, -0.4 - idleanim / 4) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2 - idleanim / 2) * euler(0, 1.57, 0) * euler(-0.2 - idleanim / 4, 0, -0.5 - idleanim / 2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2 - idleanim / 2) * euler(0, -1.57, 0) * euler(-0.1 - idleanim / 4, 0, 0.5 + idleanim / 2), 0.3)
      end
      if Mode == "Shield" then
        RH.C1 = clerp(RH.C1, RHC1, 0.4)
        LH.C1 = clerp(LH.C1, LHC1, 4)
        RW.C1 = clerp(RW.C1, cf(0, 0.5, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0), 0.4)
        RH.C0 = clerp(RH.C0, RHC0, 0.2)
        LH.C0 = clerp(LH.C0, LHC0, 0.2)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0) * euler(0, 0, 0), 0.25)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.6, 0) * euler(math.rad(0) - idleanim / 4, math.rad(15) + idleanim, math.rad(30) + idleanim / 2), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5 + idleanim, 0.6 - idleanim, 0) * euler(0 - idleanim, -math.rad(5) + idleanim, math.rad(-10)), 0.3)
      end
    elseif torvel >= 22 and hitfloor ~= nil then
      if Anim == "Fall" and velderp <= -70 then
        coroutine.resume(coroutine.create(function()
        end))
      end
      Anim = "Run"
      if Mode == "Spear" then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1 - idleanim) * euler(0.4, 0, 0), 0.3)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2 + idleanim / 2, 0, 0), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4 + idleanim / 4) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(-0.2, 0, -0.4 - idleanim / 4) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2 - idleanim / 2) * euler(0, 1.57, 0) * euler(-0.2 - idleanim / 4, 0, -0.5 - idleanim / 2), 0.3)
        LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2 - idleanim / 2) * euler(0, -1.57, 0) * euler(-0.1 - idleanim / 4, 0, 0.5 + idleanim / 2), 0.3)
      end
      if Mode == "Shield" then
        RW.C0 = clerp(RW.C0, cf(1.4, 0.6, 0) * euler(math.rad(0) - idleanim / 4, math.rad(15) + idleanim, math.rad(30) + idleanim / 2), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5 + idleanim, 0.6 - idleanim, 0) * euler(0 - idleanim, -math.rad(5) + idleanim, math.rad(-10)), 0.3)
      end
    end
  end
end
