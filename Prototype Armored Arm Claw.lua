
  wait(1)
  Player = game:GetService("Players").LocalPlayer
  Character = Player.Character
  Mouse = Player:GetMouse()
  m = Instance.new("Model", Character)
  Character.Humanoid.JumpPower = Character.Humanoid.JumpPower * 2
  pcall(function()
    Character.RobloxUHood.Handle.Material = "Neon"
    Character.RobloxUHood.Handle.Mesh.TextureId = "rbxassetid://426317630"
    Character.RobloxUHood.Handle.Mesh.VertexColor = Vector3.new(1, 0, 0)
  end)
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
      mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
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
  Character["Right Arm"].Transparency = 1
  m.ChildAdded:connect(function(p)
    if p:IsA("Part") then
      p.Transparency = 1
      repeat
        game:GetService("RunService").RenderStepped:wait()
        p.Transparency = p.Transparency - 0.01
        game:GetService("RunService").RenderStepped:wait()
        p.Transparency = p.Transparency + 0.005
        wait()
      until p.Transparency <= 0
    end
  end)
  Handle = part(Enum.FormFactor.Symmetric, m, Enum.Material.Neon, 0, 0, "Medium stone grey", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Handleweld = weld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0399861336, -0.0400176048, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
  Arm = part(Enum.FormFactor.Symmetric, m, Enum.Material.Neon, 0, 0, "Black", "Arm", Vector3.new(1, 2, 1))
  Armweld = weld(m, Handle, Arm, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.109999657, -0.0488853455, 4.76837158E-6, 1, 0, 0, 0, 1, 0, 0, 0, 1))
  mesh("SpecialMesh", Arm, Enum.MeshType.FileMesh, "rbxassetid://33308774", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  wait(0.3)
  Claw = part(Enum.FormFactor.Plate, m, Enum.Material.Neon, 0.10000000149012, 0, "Mid gray", "Claw", Vector3.new(1, 1, 2))
  Clawweld = weld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.142930031, -0.0899963379, -1.43707323, 0.965925932, 0.258819073, 0, 0, 0, 1, 0.258819073, -0.965925932, 0))
  mesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=10681506", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.899999976))
  wait(0.3)
  Detail = part(Enum.FormFactor.Plate, m, Enum.Material.Neon, 0, 0, "Black", "Detail", Vector3.new(0.200000003, 0.200000048, 0.399999976))
  Detailweld = weld(m, Handle, Detail, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.667227745, 0.135678291, -0.0999965668, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
  mesh("SpecialMesh", Detail, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 1.20000005, 0.300000012))
  for i, v in pairs(m:children("")) do
    if v:IsA("Part") and v.Name ~= "Handle" then
      pe = Instance.new("ParticleEmitter", v)
      pe.Color = ColorSequence.new(Color3.new(0.00392156862745098, 0.00392156862745098, 0.00392156862745098), Color3.new(1, 0.00392156862745098, 0.00392156862745098))
      pe.Lifetime = NumberRange.new(0.3)
      pe.RotSpeed = NumberRange.new(100)
      pe.Rotation = NumberRange.new(100)
      pe.Rate = 200
      pe.LightEmission = 0.1
      pe.Size = NumberSequence.new(0.4)
      pe.Texture = "http://www.roblox.com/asset/?id=246689799"
      pe.Transparency = NumberSequence.new(0.3)
      pe.VelocitySpread = 50
      pe.Speed = NumberRange.new(1.5)
      spawn(function()
        while true do
          game:GetService("RunService").RenderStepped:wait()
          for i = 1, 255 do
            v.Mesh.VertexColor = Vector3.new(i / 255 / 2, 0.00392156862745098, 0.00392156862745098)
            game:GetService("RunService").RenderStepped:wait()
          end
          for i = 1, 255 do
            v.Mesh.VertexColor = Vector3.new((1.003921568627451 - i / 255) / 2, 0.00392156862745098, 0.00392156862745098)
            game:GetService("RunService").RenderStepped:wait()
          end
        end
      end)
    end
  end
  Player = game:GetService("Players").LocalPlayer
  Character = Player.Character
  Character.Animate:Destroy()
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
  attack = false
  attackdebounce = false
  MMouse = nil
  combo = 0
  local Anim = "Idle"
  player = nil
  RSH, LSH = nil, nil
  RW, LW = Instance.new("Weld"), Instance.new("Weld")
  RW.Name = "Right Shoulder"
  LW.Name = "Left Shoulder"
  LH = Torso["Left Hip"]
  RH = Torso["Right Hip"]
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
  function swait(num)
    if num == 0 or num == nil then
      game:service("RunService").RenderStepped:wait()
    else
      for i = 0, num do
        game:service("RunService").RenderStepped:wait()
      end
    end
  end
  function weld(parent, part0, part1, c0)
    local weld = it("Weld")
    weld.Parent = parent
    weld.Part0 = part0
    weld.Part1 = part1
    weld.C0 = c0
    return weld
  end
  Plr = game.Players.LocalPlayer
  P = Plr.Character
  Mouse = Plr:GetMouse()
  ch = P
  RSH = ch.Torso["Right Shoulder"]
  LSH = ch.Torso["Left Shoulder"]
  RF, LF = Instance.new("Weld"), Instance.new("Weld")
  RSH.Parent = nil
  LSH.Parent = nil
  RW.Name = "Right Shoulder"
  RW.Part0 = ch.Torso
  RW.C0 = cf(1.5, 0.5, 0)
  RW.C1 = cf(0, 0.5, 0)
  RW.Part1 = ch["Right Arm"]
  RW.Parent = P.Torso
  LW.Name = "Left Shoulder"
  LW.Part0 = ch.Torso
  LW.C0 = cf(-1.5, 0.5, 0)
  LW.C1 = cf(0, 0.5, 0)
  LW.Part1 = ch["Left Arm"]
  LW.Parent = P.Torso
  RF.Name = "Right Hip"
  RF.Part0 = ch.Torso
  RF.C0 = cf(0.5, -1.5, 0)
  RF.C1 = cf(0, 0.5, 0)
  RF.Part1 = ch["Right Leg"]
  RF.Parent = P.Torso
  LF.Name = "Left Hip"
  LF.Part0 = ch.Torso
  LF.C0 = cf(-0.5, -1.5, 0)
  LF.C1 = cf(0, 0.5, 0)
  LF.Part1 = ch["Left Leg"]
  LF.Parent = P.Torso
  RFC0 = RF.C0
  LFC0 = LF.C0
  local Rads = 14
  local sine = 0
  local Arms = true
  local Legs = true
  w = Instance.new("Weld", P)
  w.Part1 = nil
  w.Part0 = P["Right Arm"]
  w.C1 = CFrame.new(0, 1.25, 0)
  grabbing = false
  function Walk()
    P.Humanoid.WalkSpeed = 32
    if Arms then
      if w.Part1 == nil then
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-math.rad(55) - math.sin(sine / 3) / 5, 0, math.pi / 16), 0.3)
      elseif w.Part1 ~= nil or grabbing == true then
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(110), -math.sin(sine / 3) / 5, 0, math.pi / 16), 0.3)
      end
      LW.C0 = clerp(LW.C0, cf(math.sin(sine / 3) / 5 - 1, 0.5, -0.5) * euler(0, math.rad(45) - math.sin(sine / 3) / 5, math.pi / 2), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF, 0.3)
    end
    if Legs then
      RF.C0 = clerp(RF.C0, cf(0.5, -1.5, math.sin(sine / 3) * 0.4) * euler(-math.sin(sine / 3), 0, 0), 0.5)
      LF.C0 = clerp(LF.C0, cf(-0.5, -1.5, math.sin(-sine / 3) * 0.4) * euler(-math.sin(-sine / 3), 0, 0), 0.5)
    end
    sine = sine + math.rad(Rads)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(math.rad(15), 0, 0), 0.3)
  end
  function Idle()
    if Arms then
      if w.Part1 == nil then
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5 + math.sin(sine / 3) / 10 / 1.6666666666666667, 0) * euler(0, 0, math.pi / 32 + math.sin(tick()) * 0.05 + math.sin(sine / 3) / 10 / 1.6666666666666667), 0.3)
      elseif w.Part1 ~= nil or grabbing == true then
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5 + math.sin(sine / 3) / 10 / 1.6666666666666667, 0) * euler(math.rad(110), 0, math.pi / 32 + math.sin(tick()) * 0.05 + math.sin(sine / 3) / 10 / 1.6666666666666667), 0.3)
      end
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5 + math.sin(sine / 3) / 10 / 1.6666666666666667, 0) * euler(0, 0, -math.pi / 32 - math.sin(tick()) * 0.05 - math.sin(sine / 3) / 10 / 1.6666666666666667), 0.3)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF, 0.3)
    end
    if Legs then
      RF.C0 = clerp(RF.C0, RFC0 * cf(0, 0, 0.2) * euler(-math.rad(15), -math.rad(15), 0), 0.3)
      LF.C0 = clerp(LF.C0, LFC0 * cf(0, 0, -0.2) * euler(math.rad(15), math.rad(15), 0), 0.3)
    end
    sine = sine + math.rad(Rads)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * CFrame.new(0, -math.sin(sine / 3) / 10 / 1.6666666666666667, -math.sin(sine / 3) / 10 / 1.6666666666666667) * euler(math.sin(sine / 3) / 15 + math.rad(5), 0, 0), 0.3)
  end
  function Sound(ID, Par, Pitch, Vol)
    local Sound = Instance.new("Sound", Par)
    Sound.SoundId = "http://www.roblox.com/asset/?id=" .. tostring(ID)
    game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=" .. tostring(ID))
    Sound.Pitch = Pitch
    Sound.Volume = Vol
    game.Debris:AddItem(Sound, Sound.TimeLength)
    Sound:Play()
  end
  local Jumping = false
  local Jumpi = 0
  game:GetService("RunService").Heartbeat:connect(function()
    if Jumping == true then
      Jumpi = Jumpi + 1
      if Arms then
        RW.C0 = clerp(RW.C0, cf(1, 1, 0) * euler(0, 0, math.pi / 2 + math.pi / 4), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1, 1, 0) * euler(0, 0, -math.pi / 2 - math.pi / 4), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(math.pi / 16, 0, 0), 0.3)
      end
      if Legs then
        RF.C0 = clerp(RF.C0, RFC0 * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
        LF.C0 = clerp(LF.C0, LFC0 * cf(0, 0.5, -0.6) * euler(0, 0, 0), 0.3)
      end
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.5)
      if Jumpi == 10 then
        Jumping = false
        Jumpi = 0
      end
    elseif (Vector3.new(P.Torso.Velocity.x, 0, P.Torso.Velocity.z)).magnitude < 3 then
      Idle()
    elseif (Vector3.new(P.Torso.Velocity.x, 0, P.Torso.Velocity.z)).magnitude > 3 then
      Walk()
    end
  end)
  local AttArm = 0
  local AttLeg = 0
  local Enabled = true
  function hwait()
    game:GetService("RunService").Heartbeat:wait()
  end
  function Damage(Dmg, Part)
    local Child = Part
    local Par = Part.Parent
    if Par == workspace then
    else
      repeat
        Child = Par
        Par = Par.Parent
      until Par == workspace
    end
    local Found = false
    function Search(c)
      coroutine.resume(coroutine.create(function()
        for i, v in pairs(c:GetChildren()) do
          if v:IsA("Humanoid") then
            for i = 1, 10 do
              v.Health = v.Health - Dmg / 10
              Found = true
            end
          end
          Search(v)
        end
      end))
    end
    if Child ~= P then
      Search(Child)
    end
    if Found == false then
      return false
    else
      return true
    end
  end
  P.Humanoid.Jumping:connect(function()
    if Arms == false and Legs == false then
    else
      Jumping = true
    end
  end)
  Mouse.KeyDown:connect(function(key)
    if key:lower() == "z" and Enabled == true then
      Legs = false
      Enabled = false
      do
        local Hit = false
        AttLeg = AttLeg + 1
        Sound(175024455, P.Torso, 1, 0.8)
        if AttLeg % 2 ~= 0 then
          P["Right Leg"].Touched:connect(function(part)
            if Hit == false then
              local Hitz = Damage(10, part)
              if Hitz == true then
                local Velo = Instance.new("BodyVelocity", part)
                Velo.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                Velo.velocity = P.Torso.CFrame.lookVector * 35
                game.Debris:AddItem(Velo, 0.1)
                Hit = true
              end
            end
          end)
          for i = 0, 1, 0.2 do
            hwait()
            if Jumping == false then
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.5) * euler(0, 0, math.pi / 16), 0.6)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -math.pi / 16), 0.6)
            end
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-math.pi / 8, 0, math.pi / 4), 0.6)
            RF.C0 = clerp(RF.C0, cf(0.5, -1.5, -0.5) * euler(math.pi / 2, 0, 0), 0.6)
            LF.C0 = clerp(LF.C0, cf(-0.5, -1.5, 0) * euler(-math.pi / 8, 0, 0), 0.6)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(math.pi / 8, 0, 0), 0.6)
          end
        else
          P["Left Leg"].Touched:connect(function(part)
            if Hit == false then
              local Hitz = Damage(10, part)
              if Hitz == true then
                local Velo = Instance.new("BodyVelocity", part)
                Velo.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                Velo.velocity = P.Torso.CFrame.lookVector * 34
                game.Debris:AddItem(Velo, 0.1)
                Hit = true
              end
            end
          end)
          for i = 0, 1, 0.2 do
            hwait()
            if Jumping == false then
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.5) * euler(0, 0, math.pi / 16), 0.6)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -math.pi / 16), 0.6)
            end
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-math.pi / 8, 0, -math.pi / 4), 0.6)
            RF.C0 = clerp(RF.C0, cf(0.5, -1.5, 0) * euler(-math.pi / 8, 0, 0), 0.6)
            LF.C0 = clerp(LF.C0, cf(-0.5, -1.5, -0.5) * euler(math.pi / 2, 0, 0), 0.6)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(math.pi / 8, 0, 0), 0.6)
          end
        end
        Legs = true
        Hit = true
        wait(0.2)
        Enabled = true
      end
    end
  end)
  cooldown = false
  function Spike(pos, times)
    if cooldown == false then
      spawn(function()
        cooldown = true
        wait(10)
        cooldown = false
      end)
      do
        local p = Instance.new("Part", workspace)
        p.Anchored = true
        p.BrickColor = BrickColor.new("Really black")
        p.Material = "Granite"
        p.Size = Vector3.new(3, 8, 3)
        p.CFrame = pos * CFrame.new(0, -8, 0)
        local m = Instance.new("SpecialMesh", p)
        m.MeshType = "FileMesh"
        m.Scale = p.Size
        m.MeshId = "http://www.roblox.com/asset/?id=1323306"
        m.TextureId = "http://www.roblox.com/asset/?id=269748808"
        Sound(289842971, p, 1, 0.5)
        spawn(function()
          while true do
            for i = 1, 255 do
              m.VertexColor = Vector3.new(i / 255, 0.00392156862745098, 0.00392156862745098)
              game:GetService("RunService").RenderStepped:wait()
            end
            for i = 1, 255 do
              m.VertexColor = Vector3.new(1.003921568627451 - i / 255, 0.00392156862745098, 0.00392156862745098)
              game:GetService("RunService").RenderStepped:wait()
            end
          end
        end)
        p.Touched:connect(function(op)
          if op.Parent.Name ~= P.Name and op.Parent:FindFirstChild("Humanoid") then
            op.Parent.Humanoid:TakeDamage(10)
          end
        end)
        game.Debris:AddItem(p, times)
        local initialpc = p.CFrame
        for i = 1, 100 do
          wait()
          p.CFrame = p.CFrame:lerp(initialpc * CFrame.new(0, 8, 0), i / 100)
        end
      end
    end
  end
  cooldowntwo = false
  function LesserSpike(pos, times)
    if cooldowntwo == false then
      spawn(function()
        cooldowntwo = true
        wait(3)
        cooldowntwo = false
      end)
      for i = 1, 5 do
        do
          local p = Instance.new("Part", workspace)
          p.Anchored = true
          p.BrickColor = BrickColor.new("Really black")
          p.Material = "Granite"
          p.Size = Vector3.new(1.5, 4, 1.5)
          p.CFrame = pos * CFrame.new(0, -8, 0) * CFrame.new(0, 0, -3.5 * i)
          local m = Instance.new("SpecialMesh", p)
          m.MeshType = "FileMesh"
          m.Scale = p.Size
          m.MeshId = "http://www.roblox.com/asset/?id=1323306"
          m.TextureId = "http://www.roblox.com/asset/?id=269748808"
          Sound(289842971, p, 1, 0.5)
          spawn(function()
            while true do
              for i = 1, 255 do
                m.VertexColor = Vector3.new(i / 255, 0.00392156862745098, 0.00392156862745098)
                game:GetService("RunService").RenderStepped:wait()
              end
              for i = 1, 255 do
                m.VertexColor = Vector3.new(1.003921568627451 - i / 255, 0.00392156862745098, 0.00392156862745098)
                game:GetService("RunService").RenderStepped:wait()
              end
            end
          end)
          p.Touched:connect(function(op)
            if op.Parent.Name ~= P.Name and op.Parent:FindFirstChild("Humanoid") then
              op.Parent.Humanoid:TakeDamage(10)
            end
          end)
          game.Debris:AddItem(p, times)
          local initialpc = p.CFrame
          spawn(function()
            for i = 1, 100 do
              wait()
              p.CFrame = p.CFrame:lerp(initialpc * CFrame.new(0, 8, 0), i / 100)
            end
          end)
        end
      end
    end
  end
  Mouse.KeyDown:connect(function(k)
    if k == "v" then
      spawn(function()
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.pi / 2, 0, 0), 1)
        for i = 0, 1, 0.05 do
          hwait()
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.5) * euler(-math.pi / 8, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-math.pi / 8, 0, math.pi / 16), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * CFrame.new(0, -1, -1) * euler(math.pi / 8, 0, 0), 0.3)
          RF.C0 = clerp(RF.C0, cf(0.5, -1.5, 0) * euler(-math.pi / 8, 0, 0), 0.3)
          LF.C0 = clerp(LF.C0, cf(-0.5, -1.5, 0) * euler(-math.pi / 8, 0, 0), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(math.pi / 48, 0, 0), 0.3)
        end
      end)
      Spike(P.Torso.CFrame * CFrame.new(0, 0, -15), 5)
    elseif k == "x" then
      spawn(function()
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.pi / 2, 0, 0), 1)
        for i = 0, 1, 0.2 do
          hwait()
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.5) * euler(math.pi / 2, math.pi / 6, -math.pi / 8), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -math.pi / 16), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(math.pi / 32, 0, math.pi / 8), 0.3)
          RF.C0 = clerp(RF.C0, cf(0.5, -1.5, 0) * euler(0, 0, 0), 0.3)
          LF.C0 = clerp(LF.C0, cf(-0.5, -1.5, 0) * euler(0, 0, 0), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-math.pi / 48, 0, 0), 0.3)
        end
      end)
      LesserSpike(P.Torso.CFrame * CFrame.new(0, 0, -5), 2)
    end
  end)
  cooldowng = false
  Mouse.KeyDown:connect(function(k)
    if k == "c" and cooldowng == false then
      coroutine.wrap(function()
        for i = 0, 1, 0.2 do
          hwait()
          RW.C0 = clerp(RW.C0, cf(1.5, 0.7, 0) * euler(0, 0, math.rad(55)), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.7, 0) * euler(0, 0, -math.rad(55)), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
          RF.C0 = clerp(RF.C0, cf(0.5, -0.5, -1.5) * euler(0, 0, 0), 0.3)
          LF.C0 = clerp(LF.C0, cf(-0.5, -1.5, 0) * euler(0, 0, 0), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.3)
        end
        for i = 0, 1, 0.2 do
          hwait()
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, math.rad(55)), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -math.rad(55)), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
          RF.C0 = clerp(RF.C0, cf(0.5, -1.5, 0) * euler(0, 0, 0), 0.3)
          LF.C0 = clerp(LF.C0, cf(-0.5, -1.5, 0) * euler(0, 0, 0), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.3)
        end
      end)()
      spawn(function()
        cooldowng = true
        wait(5)
        cooldowng = false
      end)
      do
        local p = Instance.new("Part", workspace)
        p.Anchored = true
        p.CanCollide = false
        p.Size = Vector3.new(4, 4, 1)
        p.Transparency = 0
        local m = Instance.new("SpecialMesh", p)
        m.MeshType = "FileMesh"
        m.Scale = p.Size
        m.MeshId = "http://www.roblox.com/asset/?id=3270017"
        local initpcf = P.Torso.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
        p.Touched:connect(function(op)
          if op.Parent.Name ~= P.Name and op.Parent:FindFirstChild("Humanoid") then
            op.Parent.Humanoid:TakeDamage(5)
          end
        end)
        spawn(function()
          repeat
            wait()
            p.Size = p.Size + Vector3.new(0.5, 0.5, 0)
            p.CFrame = initpcf
            p.Transparency = p.Transparency + 0.01
            m.Scale = p.Size
          until p.Transparency >= 1
          p:Remove()
        end)
      end
    end
  end)
  grabbing = false
  Mouse.KeyDown:connect(function(k)
    if k == "f" then
      local tp = P.Torso.CFrame.p
      local rayforward = Ray.new(tp, tp - Vector3.new(0, 0, -1000))
      local raybackward = Ray.new(tp, tp - Vector3.new(0, 0, 1000))
      local rayleft = Ray.new(tp, tp - Vector3.new(-1000, 0, 0))
      local rayright = Ray.new(tp, tp - Vector3.new(1000, 0, 0))
      local hit, pos = workspace:FindPartOnRay(rayforward, P)
      local hit1, pos1 = workspace:FindPartOnRay(raybackward, P)
      local hit2, pos2 = workspace:FindPartOnRay(rayleft, P)
      local hit3, pos3 = workspace:FindPartOnRay(rayright, P)
      if hit ~= nil and (tp - pos).magnitude <= 2 then
        P.Humanoid.Sit = true
        wait()
        P.Humanoid.Jump = true
      end
      if hit1 ~= nil and (tp - pos1).magnitude <= 2 then
        P.Humanoid.Sit = true
        wait()
        P.Humanoid.Jump = true
      end
      if hit2 ~= nil and (tp - pos2).magnitude <= 2 then
        P.Humanoid.Sit = true
        wait()
        P.Humanoid.Jump = true
      end
      if hit3 ~= nil and (tp - pos3).magnitude <= 2 then
        P.Humanoid.Sit = true
        wait()
        P.Humanoid.Jump = true
      end
    elseif k == "e" then
      if w.Part1 == nil then
        spawn(function()
          grabbing = true
          wait(0.5)
          grabbing = false
        end)
        P["Right Arm"].Touched:connect(function(op)
          if grabbing == true and op ~= nil and op.Parent:FindFirstChild("Humanoid") then
            w.Part1 = op.Parent.Head
            op.Parent.Humanoid.PlatformStand = true
          end
        end)
      elseif w.Part1 ~= nil then
        for i, v in pairs(m:children("")) do
          if v:IsA("Part") and v.Name ~= "Handle" then
            v.ParticleEmitter:Emit(200)
          end
        end
        w.Part1.Parent.Humanoid:TakeDamage(15)
        P.Humanoid.Health = P.Humanoid.Health + 15
        w.Part1 = nil
      end
    end
  end)
  Mouse.Button1Down:connect(function()
    if Enabled == true then
      Enabled = false
      Arms = false
      do
        local Hit = false
        AttArm = AttArm + 1
        P.Model.Handle.Touched:connect(function(part)
          if Hit == false then
            local Hitz = Damage(10, part)
            if Hitz == true then
              Hit = true
            end
          end
        end)
        P["Left Arm"].Touched:connect(function(part)
          if Hit == false then
            local Hitz = Damage(10, part)
            if Hitz == true then
              Hit = true
            end
          end
        end)
        Sound(220025675, P.Torso, 1, 1)
        if AttArm % 2 ~= 0 then
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.pi / 2, 0, 0), 1)
          for i = 0, 1, 0.05 do
            hwait()
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.5) * euler(math.pi / 2, math.pi / 6, -math.pi / 8), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -math.pi / 16), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(math.pi / 32, 0, math.pi / 8), 0.3)
            RF.C0 = clerp(RF.C0, cf(0.5, -1.5, 0) * euler(0, 0, 0), 0.3)
            LF.C0 = clerp(LF.C0, cf(-0.5, -1.5, 0) * euler(0, 0, 0), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-math.pi / 48, 0, 0), 0.3)
          end
        else
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(math.pi / 2, 0, 0), 1)
          for i = 0, 1, 0.2 do
            hwait()
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, math.pi / 16), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, -0.5) * euler(math.pi / 2, -math.pi / 6, math.pi / 8), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(math.pi / 32, 0, -math.pi / 8), 0.3)
            RF.C0 = clerp(RF.C0, cf(0.5, -1.5, 0) * euler(0, 0, 0), 0.3)
            LF.C0 = clerp(LF.C0, cf(-0.5, -1.5, 0) * euler(0, 0, 0), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-math.pi / 48, 0, 0), 0.3)
          end
        end
        Hit = true
        Enabled = true
        Arms = true
      end
    end
  end)

