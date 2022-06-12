--fixed by Scenius
  plr = game.Players.LocalPlayer
  repeat
    wait(0.4)
  until plr.Character
  chr = plr.Character
  human = chr:FindFirstChild("Humanoid")
  mouse = plr:GetMouse()
  selected = false
  equipd = false
  tors = chr.Torso
  rarm = chr["Right Arm"]
  larm = chr["Left Arm"]
  rleg = chr["Right Leg"]
  lleg = chr["Left Leg"]
  hrp = chr.HumanoidRootPart
  head = chr.Head
  anim = human.Animator
  activu = false
  Heartbeat = Instance.new("BindableEvent")
  Heartbeat.Name = "Heartbeat"
  Heartbeat.Parent = script
  frame = 0.03333333333333333
  tf = 0
  game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
      for i = 1, math.floor(tf / frame) do
        Heartbeat:Fire()
      end
      tf = tf - frame * math.floor(tf / frame)
    end
  end)
  function swait(num)
    if num == 0 or num == nil then
      Heartbeat.Event:wait()
    else
      for i = 1, num do
        Heartbeat.Event:wait()
      end
    end
  end
  tool = Instance.new("Tool")
  tool.CanBeDropped = false
  tool.RequiresHandle = false
  tool.Name = "fir"
  tool.Parent = plr.Backpack
  RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RS = tors:FindFirstChild("Right Shoulder")
  LS = tors:FindFirstChild("Left Shoulder")
  RH = tors:FindFirstChild("Right Hip")
  LH = tors:FindFirstChild("Left Hip")
  RJ = hrp:FindFirstChild("RootJoint")
  N = tors:FindFirstChild("Neck")
  cf = CFrame.new
  ang = CFrame.Angles
  rd = math.rad
  rd2 = math.random
  function nooutline(p)
    p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface, p.FrontSurface, p.BottomSurface = 10, 10, 10, 10, 10, 10
  end
  function makepart(color, name, reflec, mater, parnt, cfram)
    local port = Instance.new("Part")
    port.BrickColor = BrickColor.new(color)
    port.Name = name
    nooutline(port)
    port.Reflectance = reflec
    port.Material = mater
    port.Anchored = false
    port.CanCollide = false
    port.Locked = true
    port.Size = Vector3.new(0.2, 0.2, 0.2)
    port.Parent = parnt
    return port
  end
  function makemesh(meshtype, scale, meshid, parent)
    local mes = Instance.new("SpecialMesh")
    mes.MeshType = meshtype
    mes.Scale = scale
    if meshtype == "FileMesh" then
      mes.MeshId = meshid
    end
    mes.Parent = parent
    return mes
  end
  function makeweld(parent, p0, p1, c0, c1)
    local wel = Instance.new("Weld")
    wel.Part0 = p0
    wel.Part1 = p1
    wel.C0 = c0
    if c1 ~= nil then
      wel.C1 = c1
    end
    wel.Parent = parent
    return wel
  end
  function smokz(prnt)
    s = Instance.new("Smoke")
    s.Color = Color3.new(1, 1, 1)
    s.Enabled = false
    s.Name = "smok"
    s.Opacity = 0.5
    s.RiseVelocity = 0.2
    s.Size = 0.1
    s.Parent = prnt
  end
  function glow(tz, paz, smokinz, length)
    if tz.Parent:FindFirstChildOfClass("Humanoid") and paz.Transparency == 1 then
      do
        local s = Instance.new("Sound")
        s.SoundId = "rbxassetid://298181829"
        s.Volume = 0.25
        s.Pitch = math.random(9, 11) / 10
        s.Parent = paz
        s:Play()
        paz.Transparency = 0.7
        if smokinz == true then
          paz.smok.Enabled = true
        end
        delay(length, function()
          paz.Transparency = 1
          paz.smok.Enabled = false
          s:Destroy()
        end)
      end
    end
  end
  function makeglow()
    for _, p in pairs(chr:GetChildren()) do
      if p.ClassName == "Accessory" then
        do
          local h = p:FindFirstChildOfClass("Part")
          local nh = h:Clone()
          nh.Parent = nil
          nh.CFrame = h.CFrame
          nh.Transparency = 1
          nh.Name = "Glow"
          nh.Material = "Neon"
          nh.BrickColor = BrickColor.new("New Yeller")
          nh.CustomPhysicalProperties = PhysicalProperties.new(0.2, 0.3, 0.5)
          nh.Parent = h
          makeweld(nh, nh, h, cf(0, 0, 0))
          local m = nh:FindFirstChildOfClass("SpecialMesh")
          m.Scale = m.Scale + Vector3.new(0.06, 0.06, 0.06)
          m.TextureId = ""
          smokz(nh)
          nh.Touched:connect(function(po)
            glow(po, nh, true, 0.8)
          end)
        end
      elseif p.ClassName == "Part" and p ~= hrp then
        do
          local n = p:Clone()
          n.Parent = nil
          n.Transparency = 1
          n.Material = "Neon"
          n.Name = "Glow"
          n.BrickColor = BrickColor.new("New Yeller")
          n.CFrame = p.CFrame
          n.CustomPhysicalProperties = PhysicalProperties.new(0.2, 0.3, 0.5)
          n.Parent = p
          makeweld(n, n, p, cf(0, 0, 0))
          smokz(n)
          n.Touched:connect(function(po)
            glow(po, n, true, 0.8)
          end)
          if n:FindFirstChildOfClass("Decal") then
            n:FindFirstChildOfClass("Decal"):Destroy()
          end
          if p:FindFirstChildOfClass("SpecialMesh") then
            local c = p:FindFirstChildOfClass("SpecialMesh"):Clone()
            c.Parent = nil
            c.Scale = c.Scale + Vector3.new(0.05, 0.05, 0.05)
            c.Parent = n
          else
            local m = Instance.new("BlockMesh")
            m.Scale = Vector3.new(1.05, 1.025, 1.05)
            if p == tors then
              m.Scale = Vector3.new(1.05, 1.05, 1.05)
            end
            m.Parent = n
          end
        end
      end
    end
  end
  makeglow()
  function fglow(glopart, duration)
    for _ = 1, 4 do
      swait()
      glopart.Transparency = glopart.Transparency - 0.075
    end
    delay(duration, function()
      for _ = 1, 4 do
        swait()
        glopart.Transparency = glopart.Transparency + 0.075
      end
    end)
  end
  function lerpz(joint, prop, cfrmz, alp)
    joint[prop] = joint[prop]:lerp(cfrmz, alp)
  end
  function resetlerp()
    RJ.C0 = RJC0
    RJ.C1 = RJC1
    N.C0 = NC0
    N.C1 = NC1
    RS.C0 = RSC0
    RS.C1 = RSC1
    LS.C0 = LSC0
    LS.C1 = LSC1
    RH.C0 = RHC0
    RH.C1 = RHC1
    LH.C0 = LHC0
  end











function RFistDamage()
	
end
  function rsmash()
    if activu == true or selected == false then
      return
    end
    coroutine.resume(coroutine.create(function()
      fglow(rarm.Glow, 3)
    end))
    activu = true
    
    human.WalkSpeed = human.WalkSpeed - 13
    animo(false)
    local Mus = Instance.new("Sound",workspace)
Mus.SoundId = "rbxassetid://789575203"
Mus.Pitch = 1
Mus.Volume = 90000
Mus.Looped = false
wait(0.3)
Mus:Play()
    local pe = Instance.new("ParticleEmitter")
    pe.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe.LightEmission = 0.9
    pe.Size = NumberSequence.new(0.5)
    pe.Texture = "rbxassetid://272050333"
    pe.Transparency = NumberSequence.new(0.1)
    pe.Lifetime = NumberRange.new(0.1)
    pe.Rate = 1
    pe.RotSpeed = NumberRange.new(360)
    pe.Speed = NumberRange.new(3)
    pe.VelocitySpread = 360
    pe.Parent = rarm.Glow
    local pe2 = Instance.new("ParticleEmitter")
    pe2.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe2.LightEmission = 0.9
    pe2.Size = NumberSequence.new(5)
    pe2.Texture = "rbxassetid://516107903"
    pe2.Transparency = NumberSequence.new(0.4)
    pe2.ZOffset = 2
    pe2.Enabled = false
    pe2.LockedToPart = true
    pe2.Lifetime = NumberRange.new(0.07)
    pe2.Rate = 8
    pe2.Rotation = NumberRange.new(0, 360)
    pe2.RotSpeed = NumberRange.new(0)
    pe2.Speed = NumberRange.new(0)
    pe2.VelocitySpread = 180
    pe2.Parent = rarm.Glow
    for _ = 1, 45 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0.8, -0.2) * ang(rd(10), rd(0), rd(-70)), 0.2)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(6), rd(2), rd(68)), 0.2)
      lerpz(RS, "C0", RSC0 * cf(rd2(-1, 1) / 10, rd2(-1, 1) / 10, rd2(-1, 1) / 10) * ang(rd(rd2(25, 35)), rd(rd2(-15, -5)), rd(rd2(80, 90))), 0.2)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(LS, "C0", LSC0 * cf(-0.15, -0.4, 0.5) * ang(rd(-10), rd(60), rd(-86)), 0.2)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(80), rd(0)), 0.2)
      lerpz(RH, "C0", RHC0 * cf(0, 0.1, 0) * ang(rd(-6), rd(-29), rd(-2)), 0.2)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(LH, "C0", LHC0 * cf(0.4, 0.2, -0.2) * ang(rd(-6), rd(80), rd(-10)), 0.2)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      pe.Rate = pe.Rate + 25
    end
    pe2.Enabled = true
    pe.Speed = NumberRange.new(10)
    for _ = 1, 30 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 1.2, -0.2) * ang(rd(5), rd(6), rd(-109)), 0.2)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-2), rd(-6), rd(96)), 0.2)
      lerpz(RS, "C0", RSC0 * cf(rd2(-1, 1) / 10, rd2(-1, 1) / 10, rd2(-1, 1) / 10) * ang(rd(rd2(10, 20)), rd(rd2(-25, -15)), rd(rd2(100, 110))), 0.2)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-10), rd(60), rd(-46)), 0.2)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(30), rd(0)), 0.2)
      lerpz(RH, "C0", RHC0 * cf(0, 0.1, 0) * ang(rd(-6), rd(-39), rd(-2)), 0.2)
      lerpz(LH, "C0", LHC0 * cf(0.4, 0.2, -0.2) * ang(rd(-6), rd(80), rd(-10)), 0.2)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(25), rd(0), rd(0)), 0.2)

    end
    for l = 1, 3 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0.4, -1.6, -0.2) * ang(rd(5), rd(6), rd(60)), 0.3 + l / 4)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(14), rd(-4), rd(-35)), 0.3 + l / 4)
      lerpz(RS, "C0", RSC0 * cf(0.3, -0.4, 0.55) * ang(rd(0), rd(-58), rd(95)), 0.3 + l / 4)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(-80), rd(0)), 0.3 + l / 4)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-10), rd(60), rd(-66)), 0.3 + l / 4)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(30), rd(0)), 0.3 + l / 4)
      lerpz(RH, "C0", RHC0 * cf(0, 0.1, 0) * ang(rd(-6), rd(-39), rd(-2)), 0.3 + l / 4)
      lerpz(LH, "C0", LHC0 * cf(0.4, 0.2, -0.2) * ang(rd(-6), rd(80), rd(-10)), 0.3 + l / 4)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(25), rd(0), rd(0)), 0.3 + l / 4)
    end
    pe:Destroy()
    pe2:Destroy()
    KABOOMZ()
    rarm.Glow.smok.Enabled = true
    for _ = 1, 8 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(1.5, -1.6, -0.7) * ang(rd(5), rd(18), rd(95)), 0.8)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(14), rd(-10), rd(-15)), 0.8)
      lerpz(RS, "C0", RSC0 * cf(0.3, -0.4, 0.55) * ang(rd(0), rd(40), rd(65)), 0.8)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(-80), rd(0)), 0.8)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-10), rd(60), rd(-86)), 0.8)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(30), rd(0)), 0.8)
      lerpz(RH, "C0", RHC0 * cf(0, 0.7, 0) * ang(rd(-6), rd(-39), rd(24)), 0.8)
      lerpz(LH, "C0", LHC0 * cf(0.4, 0.2, -0.2) * ang(rd(-6), rd(80), rd(-20)), 0.8)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(25), rd(0), rd(0)), 0.8)
    end
    wait(1.5)
    animo(true)
    human.WalkSpeed = human.WalkSpeed + 13
    for _ = 1, 24 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
    end
    resetlerp()
    rarm.Glow.smok.Enabled = false
    activu = false
  end




local debris=game:service"Debris"
vt = Vector3.new
bc = BrickColor.new












function Ring()
	
	
	local effspwn = Instance.new("Part")      
    local model = Instance.new("Model")
    game.Debris:AddItem(model, 20)
    model.Name = "smasheffects"
    model.Parent = workspace
    effspwn.Name = "spwnr"
    effspwn.Size = Vector3.new(1, 1, 1)
    effspwn.Anchored = true
    effspwn.CanCollide = false
    effspwn.Transparency = 1
    effspwn.CFrame = hrp.CFrame * CFrame.Angles(math.rad(180), 0, 0)
    effspwn.Parent = model

 for i,v in pairs(FindNearestTorso(tors.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10000020,10000030))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = head.CFrame.lookVector * 200
        end
    end 
	coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring1"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(0.1, 0.1, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(12, 12, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
    end))

coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shokwve"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.Position = effspwn.Position + Vector3.new(0, 5, 0)
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.6
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(1, 1, 1)
      mesh.Parent = shok
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2, 2, 2)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 32 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.03
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock3"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, -1, 0.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
    end))
    
end
function Landing()
	
	
	
	
	
	
	ROW = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(tors.CFrame.x,0,tors.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,15)
					end
end
	
	
	


		ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
Ring()





end	







function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=game.Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end



	
  function jum()
    if activu == true or selected == false then
      return
    end
    coroutine.resume(coroutine.create(function()
      fglow(rleg.Glow, 1)
      fglow(lleg.Glow, 1)
    end))
    activu = true
    human.WalkSpeed = human.WalkSpeed - 13
    local pe = Instance.new("ParticleEmitter")
    pe.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe.LightEmission = 0.9
    pe.Size = NumberSequence.new(0.5)
    pe.Texture = "rbxassetid://272050333"
    pe.Transparency = NumberSequence.new(0.1)
    pe.Lifetime = NumberRange.new(0.1)
    pe.Rate = 250
    pe.RotSpeed = NumberRange.new(360)
    pe.Speed = NumberRange.new(3)
    pe.VelocitySpread = 360
    pe.Parent = rleg.Glow
    local pea = pe:Clone()
    pea.Parent = lleg.Glow
    local pe2 = Instance.new("ParticleEmitter")
    pe2.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe2.LightEmission = 0.9
    pe2.Size = NumberSequence.new(5)
    pe2.Texture = "rbxassetid://516107903"
    pe2.Transparency = NumberSequence.new(0.4)
    pe2.ZOffset = 2
    pe2.Enabled = true
    pe2.LockedToPart = true
    pe2.Lifetime = NumberRange.new(0.07)
    pe2.Rate = 8
    pe2.Rotation = NumberRange.new(0, 360)
    pe2.RotSpeed = NumberRange.new(0)
    pe2.Speed = NumberRange.new(0)
    pe2.VelocitySpread = 180
    pe2.Parent = lleg.Glow
    local pea2 = pe2:Clone()
    pea2.Parent = rleg.Glow
    for l = 1, 30 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.5) * ang(rd(6), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(12), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-8), rd(-7), rd(-10)), 0.02 + l / 40)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-8), rd(7), rd(10)), 0.02 + l / 40)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(RH, "C0", RHC0 * cf(0.4, 0.5, 0) * ang(rd(0), rd(-6), rd(8)), 0.02 + l / 40)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(3), rd(0), rd(42)), 0.02 + l / 40)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
    end
    pe:Destroy()
    pe2:Destroy()
    pea:Destroy()
    pea2:Destroy()
    human.WalkSpeed = 50
        BV = Instance.new("BodyVelocity", tors)
        BV.maxForce = Vector3.new(0,100000,0)
        BV.P = 100000
        BV.velocity = Vector3.new(0,800,0)
    KABOOMZ2()
    coroutine.resume(coroutine.create(function()
      swait(3)
      BV:Destroy()
    end))
    for _ = 1, 18 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-3), rd(0), rd(0)), 0.6)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-12), rd(0), rd(0)), 0.6)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-9), rd(-9), rd(-15)), 0.6)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-9), rd(9), rd(15)), 0.6)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-6), rd(0), rd(-12)), 0.6)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-6), rd(0), rd(12)), 0.6)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
    end
    for _ = 1, 18 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
    end
    resetlerp()
local ry,ht,ps=nil,nil,nil
while ht==nil do
	ry,ht,ps=newRay(hrp.CFrame*CFrame.new(0,-2,0),hrp.CFrame*CFrame.new(0,-3,0),4.1,{chr})
	wait()
end
human.WalkSpeed = 0
Landing()
z = Instance.new("Sound",tors)
z.SoundId = "rbxassetid://142070127"
z.Volume = 2
wait(.1)
z:Play()

for l = 1, 30 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.5) * ang(rd(6), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(12), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-8), rd(-7), rd(-10)), 0.02 + l / 40)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-8), rd(7), rd(10)), 0.02 + l / 40)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(RH, "C0", RHC0 * cf(0.4, 0.5, 0) * ang(rd(0), rd(-6), rd(8)), 0.02 + l / 40)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(3), rd(0), rd(42)), 0.02 + l / 40)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
    end
resetlerp()
human.WalkSpeed = 16

activu = false
end



local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function Crater(Torso,Radius)
        spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = Hit.BrickColor
                P.Material = Hit.Material
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = Hit.BrickColor
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end


function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= chr then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end

  function KABOOMZ()
    local effspwn = Instance.new("Part")
    coroutine.resume(coroutine.create(function()
      local sound1 = Instance.new("Sound")
      sound1.SoundId = "rbxassetid://138137702"
      sound1.MaxDistance = 300
      sound1.EmitterSize = 20
      sound1.Volume = 5
      sound1.Pitch = 0.95
      sound1.Parent = effspwn
      local sound2 = Instance.new("Sound")
      sound2.SoundId = "rbxassetid://157878578"
      sound2.MaxDistance = 300
      sound2.EmitterSize = 20
      sound2.Volume = 2
      sound2.Pitch = 0.9
      sound2.Parent = effspwn
      local sound3 = Instance.new("Sound")
      sound3.SoundId = "rbxassetid://138250406"
      sound2.MaxDistance = 400
      sound2.EmitterSize = 30
      sound2.Volume = 1.5
      sound2.Pitch = 0.6
      sound2.Parent = effspwn
      sound2:Play()
      wait()
      sound1:Play()
      sound3:Play()
    end))
    local model = Instance.new("Model")
    game.Debris:AddItem(model, 20)
    model.Name = "smasheffects"
    model.Parent = workspace
    effspwn.Name = "spwnr"
    effspwn.Size = Vector3.new(1, 1, 1)
    effspwn.Anchored = true
    effspwn.CanCollide = false
    effspwn.Transparency = 1
    effspwn.CFrame = rarm.CFrame * CFrame.new(0, -0.7, 0)
    effspwn.Parent = model

Crater(head,60)

    for i,v in pairs(FindNearestTorso(tors.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10000020,10000030))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = head.CFrame.lookVector * 200
        end
    end 
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "whoosh"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.1
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://437347603"
      mesh.Scale = Vector3.new(0.8, 0.8, 0.3)
      mesh.Parent = shok
      for e = 1, 8 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.24, 0.24, 0.22)
        shok.Transparency = shok.Transparency + 0.035
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -14), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(29))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.13, 0.13, 0.12)
        shok.Transparency = shok.Transparency + 0.11
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -5), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(15))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring1"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(0.1, 0.1, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(12, 12, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "coil1"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "coil2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
      mesh.Scale = Vector3.new(6, 12, 6)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.1, 2.4, 1.1)
        shok.Transparency = shok.Transparency + 0.005
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.1, 2.4, 1.1)
        shok.Transparency = shok.Transparency + 0.005
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.1, 2.4, 1.1)
        shok.Transparency = shok.Transparency + 0.09
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shokwve"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.Position = effspwn.Position - Vector3.new(0, 0.8, 0)
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.6
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(1, 1, 1)
      mesh.Parent = shok
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2, 2, 2)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 32 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.03
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock3"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, -1, 0.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
    end))
  end
  function KABOOMZ2()
    local effspwn = Instance.new("Part")
    coroutine.resume(coroutine.create(function()
      local sound1 = Instance.new("Sound")
      sound1.SoundId = "rbxassetid://138137702"
      sound1.MaxDistance = 300
      sound1.EmitterSize = 20
      sound1.Volume = 2.5
      sound1.Pitch = 0.65
      sound1.Parent = effspwn
      local sound2 = Instance.new("Sound")
      sound2.SoundId = "rbxassetid://157878578"
      sound2.MaxDistance = 300
      sound2.EmitterSize = 20
      sound2.Volume = 1
      sound2.Pitch = 0.7
      sound2.Parent = effspwn
      local sound3 = Instance.new("Sound")
      sound3.SoundId = "rbxassetid://138250406"
      sound2.MaxDistance = 400
      sound2.EmitterSize = 30
      sound2.Volume = 0.5
      sound2.Pitch = 0.5
      sound2.Parent = effspwn
      sound2:Play()
      wait()
      sound1:Play()
      sound3:Play()
    end))
    local model = Instance.new("Model")
    game.Debris:AddItem(model, 20)
    model.Name = "smasheffects"
    model.Parent = workspace
    effspwn.Name = "spwnr"
    effspwn.Size = Vector3.new(1, 1, 1)
    effspwn.Anchored = true
    effspwn.CanCollide = false
    effspwn.Transparency = 1
    effspwn.CFrame = hrp.CFrame * CFrame.Angles(math.rad(180), 0, 0)
    effspwn.Parent = model





Crater(head,60)
Crater(head,120)

    for i,v in pairs(FindNearestTorso(tors.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10000020,10000030))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = head.CFrame.lookVector * 200
        end
    end 

    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "whoosh"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.1
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://437347603"
      mesh.Scale = Vector3.new(0.8, 0.8, 0.3)
      mesh.Parent = shok





      for e = 1, 8 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.24, 0.24, 0.22)
        shok.Transparency = shok.Transparency + 0.035
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -22), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(29))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.13, 0.13, 0.12)
        shok.Transparency = shok.Transparency + 0.11
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -10), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(15))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring1"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(0.1, 0.1, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(12, 12, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "coil1"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "coil2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
      mesh.Scale = Vector3.new(6, 12, 6)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.1, 2.4, 1.1)
        shok.Transparency = shok.Transparency + 0.005
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.1, 2.4, 1.1)
        shok.Transparency = shok.Transparency + 0.005
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.1, 2.4, 1.1)
        shok.Transparency = shok.Transparency + 0.09
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shokwve"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.Position = effspwn.Position + Vector3.new(0, 5, 0)
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.6
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(1, 1, 1)
      mesh.Parent = shok
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2, 2, 2)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 32 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.03
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock3"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, -1, 0.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
    end))
  end



tor = chr.Torso
Debounce = false

Invis = function()
	for i = 1,20 do
	chr['Right Arm'].Transparency = chr['Right Arm'].Transparency + .05 
	chr['Left Arm'].Transparency = chr['Left Arm'].Transparency + .05
	chr['Right Leg'].Transparency = chr['Right Leg'].Transparency + .05
	chr['Left Leg'].Transparency = chr['Left Leg'].Transparency + .05
	chr['Head'].Transparency = chr['Head'].Transparency + .05
	chr['Torso'].Transparency = chr['Torso'].Transparency + .05
	chr.Head['face'].Transparency = chr.Head['face'].Transparency + .05
	game["Run Service"].RenderStepped:wait()
	end
end

Vis = function()
	for i = 1,20 do
	chr['Right Arm'].Transparency = chr['Right Arm'].Transparency - .05 
	chr['Left Arm'].Transparency = chr['Left Arm'].Transparency - .05
	chr['Right Leg'].Transparency = chr['Right Leg'].Transparency - .05
	chr['Left Leg'].Transparency = chr['Left Leg'].Transparency - .05
	chr['Head'].Transparency = chr['Head'].Transparency - .05
	chr['Torso'].Transparency = chr['Torso'].Transparency - .05
	chr.Head['face'].Transparency = chr.Head['face'].Transparency - .05
	game["Run Service"].RenderStepped:wait()
	end
end

Fade = function(Part)
	if Part:IsA'Part' then
		for i = 1,20 do
			Part.Transparency = Part.Transparency + .05
			Part.Size = Part.Size - Vector3.new(.04,.04,.04)
			Part.CFrame = Part.CFrame * CFrame.new(0,-.1,0)
			wait()
		end
		Part:Destroy()
	end
end

Teleport = function(cx,cy,cz)
	Debounce = true
	tor.Anchored = true
	Invis()
	--MakeTpPart()
	tor.Anchored = false
	tor.CFrame = CFrame.new(cx,cy,cz) * CFrame.new(0,3,0)
	tor.Anchored = true
	Vis()
	tor.Anchored = false
	Debounce = false
end;



tps = Instance.new("Sound",chr)
tps.SoundId = "http://www.roblox.com/asset/?id = 449860746"
tps.Volume = 30


function Tele()
	human.WalkSpeed = 0
	 if activu == true or selected == false then
      return
    end
    coroutine.resume(coroutine.create(function()
      fglow(rleg.Glow, 1)
      fglow(lleg.Glow, 1)
    end))
    activu = true
local pe = Instance.new("ParticleEmitter")
    pe.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe.LightEmission = 0.9
    pe.Size = NumberSequence.new(0.5)
    pe.Texture = "rbxassetid://272050333"
    pe.Transparency = NumberSequence.new(0.1)
    pe.Lifetime = NumberRange.new(0.1)
    pe.Rate = 250
    pe.RotSpeed = NumberRange.new(360)
    pe.Speed = NumberRange.new(3)
    pe.VelocitySpread = 360
    pe.Parent = rleg.Glow
    local pea = pe:Clone()
    pea.Parent = lleg.Glow
    local pe2 = Instance.new("ParticleEmitter")
    pe2.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe2.LightEmission = 0.9
    pe2.Size = NumberSequence.new(5)
    pe2.Texture = "rbxassetid://516107903"
    pe2.Transparency = NumberSequence.new(0.4)
    pe2.ZOffset = 2
    pe2.Enabled = true
    pe2.LockedToPart = true
    pe2.Lifetime = NumberRange.new(0.07)
    pe2.Rate = 8
    pe2.Rotation = NumberRange.new(0, 360)
    pe2.RotSpeed = NumberRange.new(0)
    pe2.Speed = NumberRange.new(0)
    pe2.VelocitySpread = 180
    pe2.Parent = lleg.Glow
    local pea2 = pe2:Clone()
    pea2.Parent = rleg.Glow

	for l = 1, 30 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.5) * ang(rd(6), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(12), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-8), rd(-7), rd(-10)), 0.02 + l / 40)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-8), rd(7), rd(10)), 0.02 + l / 40)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(RH, "C0", RHC0 * cf(0.4, 0.5, 0) * ang(rd(0), rd(-6), rd(8)), 0.02 + l / 40)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(3), rd(0), rd(42)), 0.02 + l / 40)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
	    end
	
	pe:Destroy()
    pe2:Destroy()
    pea:Destroy()
    pea2:Destroy()
    local rng = Instance.new("Part", chr)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Institutional white")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0.5
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.Position = tors.Position - Vector3.new(0,2,0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
                coroutine.wrap(function()
                for i = 1, 60, 8 do
                rngm.Scale = Vector3.new(1.2 + i*1.1, 1.2 + i*1.1, 1)
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
	tps:Play()
	Teleport(mouse.Hit.X,mouse.Hit.Y,mouse.Hit.Z)
	resetlerp()
	human.WalkSpeed = 16
	activu = false
	
end




boom3 = Instance.new("Sound",chr)
boom3.SoundId = "http://www.roblox.com/asset/?id = 450719019"
boom3.Volume = 50





gprop = {}
function materialhit(hit)
if hit.Parent ~= chr and hit.Parent.Parent ~= chr and hit.Name ~= "Trace" and hit.Parent:FindFirstChild("Humanoid") == nil then
gprop = {hit.BrickColor,hit.Material}
end
end
chr["Left Leg"].Touched:connect(materialhit)
chr["Right Leg"].Touched:connect(materialhit)


function KickBoom()
	local effspwn = Instance.new("Part")
    local model = Instance.new("Model")
    game.Debris:AddItem(model, 20)
    model.Name = "smasheffects"
    model.Parent = chr
    effspwn.Name = "spwnr"
    effspwn.Size = Vector3.new(1, 1, 1)
    effspwn.Anchored = true
    effspwn.CanCollide = false
    effspwn.Transparency = 1
    effspwn.CFrame = hrp.CFrame * CFrame.Angles(math.rad(180), 0, 0)
    effspwn.Parent = model

for i = 1, 15 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(16,16,16)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = (chr.HumanoidRootPart.CFrame + Vector3.new(math.random(-70,70),-6,math.random(-70,70))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
wait(3)
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end

Crater(head,67)

for i,v in pairs(FindNearestTorso(tors.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10000020,10000030))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = head.CFrame.lookVector * 250
        end
    end 

	coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock3"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(19, 19, 19)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, -1, 0.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
	    end))
	
	
	coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock3"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(47, 47, 47)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, -1, 0.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
	    end))
	
	coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock3"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(79, 79, 79)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, -1, 0.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
    end))
end




function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
cam = workspace.CurrentCamera








function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end




it = Instance.new










so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end


function Stom()
	
cf=CFrame.new
angles=CFrame.Angles
euler=CFrame.fromEulerAnglesXYZ
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RootPart=chr.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)

function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 



	 if activu == true or selected == false then
      return
	    end
	coroutine.resume(coroutine.create(function()
      fglow(lleg.Glow, 6)
    end))
    activu = true
local pe = Instance.new("ParticleEmitter")
    pe.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe.LightEmission = 0.9
    pe.Size = NumberSequence.new(0.5)
    pe.Texture = "rbxassetid://272050333"
    pe.Transparency = NumberSequence.new(0.1)
    pe.Lifetime = NumberRange.new(0.1)
    pe.Rate = 250
    pe.RotSpeed = NumberRange.new(360)
    pe.Speed = NumberRange.new(3)
    pe.VelocitySpread = 360
    pe.Parent = lleg.Glow
    local pea = pe:Clone()
    pea.Parent = lleg.Glow
    wait(0.5)
    local pe2 = Instance.new("ParticleEmitter")
    pe2.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe2.LightEmission = 0.9
    pe2.Size = NumberSequence.new(5)
    pe2.Texture = "rbxassetid://516107903"
    pe2.Transparency = NumberSequence.new(0.4)
    pe2.ZOffset = 2
    pe2.Enabled = true
    pe2.LockedToPart = true
    pe2.Lifetime = NumberRange.new(0.07)
    pe2.Rate = 8
    pe2.Rotation = NumberRange.new(0, 360)
    pe2.RotSpeed = NumberRange.new(0)
    pe2.Speed = NumberRange.new(0)
    pe2.VelocitySpread = 180
    pe2.Parent = lleg.Glow
    local pea2 = pe2:Clone()
    pea2.Parent = lleg.Glow
local Mus = Instance.new("Sound",workspace)
Mus.SoundId = "rbxassetid://802518140"
Mus.Pitch = 1
Mus.Volume = 90000
Mus.Looped = false
wait(0.9)
Mus:Play()


   
human.WalkSpeed = 0
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
tors.Neck.C0 = clerp(tors.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RS.C0 = clerp(RS.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.3)
LS.C0 = clerp(LS.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.1,-.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
end
wait(1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
tors.Neck.C0 = clerp(tors.Neck.C0,necko *angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
RS.C0 = clerp(RS.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
LS.C0 = clerp(LS.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-3),math.rad(0),math.rad(0)),.3)
end
KickBoom()
so("http://roblox.com/asset/?id=144699494",lleg,2,1.1)	
so("http://roblox.com/asset/?id=321321137",lleg,1,1)
so("http://roblox.com/asset/?id=506384002",lleg,1,1)	
so("http://roblox.com/asset/?id=157878578",lleg,25,1)
so("http://roblox.com/asset/?id=165970126",lleg,25,1)

wait(3)
human.WalkSpeed = 16
pe:Destroy()
pe2:Destroy()
pea:Destroy()
pea2:Destroy()
resetlerp()
activu = false
end





function Smash()
	for i = 1, 15 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(19,19,19)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = (chr.HumanoidRootPart.CFrame + Vector3.new(math.random(-60,60),-6,math.random(-60,60))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
wait(7)
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end

Crater(head,67)
end

function Smash2()
	for i = 1, 15 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(19,19,19)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = (chr.HumanoidRootPart.CFrame + Vector3.new(math.random(-70,70),-6,math.random(-70,70))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
wait(7)
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end

end

function Smash3()
	for i = 1, 15 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(19,19,19)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = (chr.HumanoidRootPart.CFrame + Vector3.new(math.random(-50,50),-6,math.random(-50,50))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
wait(7)
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end

end


function Smash4()
	for i = 1, 15 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(19,19,19)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = (chr.HumanoidRootPart.CFrame + Vector3.new(math.random(-40,40),-6,math.random(-40,40))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
wait(7)
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end

end

function Smash5()
	for i = 1, 15 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(19,19,19)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = (chr.HumanoidRootPart.CFrame + Vector3.new(math.random(-30,30),-6,math.random(-30,30))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
wait(7)
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end

end

function Smash6()
	for i = 1, 15 do
local gtrace = Instance.new("Part",game.Workspace)
gtrace.BrickColor = gprop[1]
gtrace.Material = gprop[2]
gtrace.Size = Vector3.new(19,19,19)
gtrace.Anchored = true
gtrace.CanCollide = false
gtrace.CFrame = (chr.HumanoidRootPart.CFrame + Vector3.new(math.random(-20,20),-6,math.random(-20,20))) * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local gdisp = coroutine.wrap(function()
wait(7)
for i = 1, 9 do
wait(.1)
gtrace.Transparency = gtrace.Transparency + .1
end
gtrace:Destroy()
end)
gdisp()
end

end


	for i,v in pairs(FindNearestTorso(tors.CFrame.p,99))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999,9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = head.CFrame.lookVector * 600
        end
    end 


function HeavenSmash()
	
	
	 if activu == true or selected == false then
      return
	    end
	coroutine.resume(coroutine.create(function()
      fglow(lleg.Glow, 19)
	  fglow(rleg.Glow, 19)
	  fglow(rarm.Glow, 19)
	  fglow(larm.Glow, 19)
	  fglow(head.Glow, 19)
	  fglow(tors.Glow, 19)
    end))
    activu = true
local pe = Instance.new("ParticleEmitter")
    pe.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe.LightEmission = 0.9
    pe.Size = NumberSequence.new(0.5)
    pe.Texture = "rbxassetid://272050333"
    pe.Transparency = NumberSequence.new(0.1)
    pe.Lifetime = NumberRange.new(0.1)
    pe.Rate = 250
    pe.RotSpeed = NumberRange.new(360)
    pe.Speed = NumberRange.new(3)
    pe.VelocitySpread = 360
    pe.Parent = lleg.Glow
    local pea = pe:Clone()
    pea.Parent = lleg.Glow
    local pe2 = Instance.new("ParticleEmitter")
    pe2.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pe2.LightEmission = 0.9
    pe2.Size = NumberSequence.new(5)
    pe2.Texture = "rbxassetid://516107903"
    pe2.Transparency = NumberSequence.new(0.4)
    pe2.ZOffset = 2
    pe2.Enabled = true
    pe2.LockedToPart = true
    pe2.Lifetime = NumberRange.new(0.07)
    pe2.Rate = 8
    pe2.Rotation = NumberRange.new(0, 360)
    pe2.RotSpeed = NumberRange.new(0)
    pe2.Speed = NumberRange.new(0)
    pe2.VelocitySpread = 180
    pe2.Parent = lleg.Glow
    local pea2 = pe2:Clone()
    pea2.Parent = lleg.Glow



    local pet = Instance.new("ParticleEmitter")
    pet.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pet.LightEmission = 0.9
    pet.Size = NumberSequence.new(0.5)
    pet.Texture = "rbxassetid://272050333"
    pet.Transparency = NumberSequence.new(0.1)
    pet.Lifetime = NumberRange.new(0.1)
    pet.Rate = 1
    pet.RotSpeed = NumberRange.new(360)
    pet.Speed = NumberRange.new(3)
    pet.VelocitySpread = 360
    pet.Parent = rarm.Glow
    local pet2 = Instance.new("ParticleEmitter")
    pet2.Color = ColorSequence.new(Color3.new(255, 255, 0))
    pet2.LightEmission = 0.9
    pet2.Size = NumberSequence.new(5)
    pet2.Texture = "rbxassetid://516107903"
    pet2.Transparency = NumberSequence.new(0.4)
    pet2.ZOffset = 2
    pet2.Enabled = false
    pet2.LockedToPart = true
    pet2.Lifetime = NumberRange.new(0.07)
    pet2.Rate = 8
    pet2.Rotation = NumberRange.new(0, 360)
    pet2.RotSpeed = NumberRange.new(0)
    pet2.Speed = NumberRange.new(0)
    pet2.VelocitySpread = 180
    pet2.Parent = rarm.Glow

    
   
    local petl = Instance.new("ParticleEmitter")
    petl.Color = ColorSequence.new(Color3.new(255, 255, 0))
    petl.LightEmission = 0.9
    petl.Size = NumberSequence.new(0.5)
    petl.Texture = "rbxassetid://272050333"
    petl.Transparency = NumberSequence.new(0.1)
    petl.Lifetime = NumberRange.new(0.1)
    petl.Rate = 1
    petl.RotSpeed = NumberRange.new(360)
    petl.Speed = NumberRange.new(3)
    petl.VelocitySpread = 360
    petl.Parent = larm.Glow
    local petl2 = Instance.new("ParticleEmitter")
    petl2.Color = ColorSequence.new(Color3.new(255, 255, 0))
    petl2.LightEmission = 0.9
    petl2.Size = NumberSequence.new(5)
    petl2.Texture = "rbxassetid://516107903"
    petl2.Transparency = NumberSequence.new(0.4)
    petl2.ZOffset = 2
    petl2.Enabled = false
    petl2.LockedToPart = true
    petl2.Lifetime = NumberRange.new(0.07)
    petl2.Rate = 8
    petl2.Rotation = NumberRange.new(0, 360)
    petl2.RotSpeed = NumberRange.new(0)
    petl2.Speed = NumberRange.new(0)
    petl2.VelocitySpread = 180
    petl2.Parent = larm.Glow

   
   local petl3 = Instance.new("ParticleEmitter")
    petl3.Color = ColorSequence.new(Color3.new(255, 255, 0))
    petl3.LightEmission = 0.9
    petl3.Size = NumberSequence.new(0.5)
    petl3.Texture = "rbxassetid://272050333"
    petl3.Transparency = NumberSequence.new(0.1)
    petl3.Lifetime = NumberRange.new(0.1)
    petl3.Rate = 1
    petl3.RotSpeed = NumberRange.new(360)
    petl3.Speed = NumberRange.new(3)
    petl3.VelocitySpread = 360
    petl3.Parent = head.Glow
    local petl23 = Instance.new("ParticleEmitter")
    petl23.Color = ColorSequence.new(Color3.new(255, 255, 0))
    petl23.LightEmission = 0.9
    petl23.Size = NumberSequence.new(5)
    petl23.Texture = "rbxassetid://516107903"
    petl23.Transparency = NumberSequence.new(0.4)
    petl23.ZOffset = 2
    petl23.Enabled = false
    petl23.LockedToPart = true
    petl23.Lifetime = NumberRange.new(0.07)
    petl23.Rate = 8
    petl23.Rotation = NumberRange.new(0, 360)
    petl23.RotSpeed = NumberRange.new(0)
    petl23.Speed = NumberRange.new(0)
    petl23.VelocitySpread = 180
    petl23.Parent = head.Glow



local petl34 = Instance.new("ParticleEmitter")
    petl34.Color = ColorSequence.new(Color3.new(255, 255, 0))
    petl34.LightEmission = 0.9
    petl34.Size = NumberSequence.new(0.5)
    petl34.Texture = "rbxassetid://272050333"
    petl34.Transparency = NumberSequence.new(0.1)
    petl34.Lifetime = NumberRange.new(0.1)
    petl34.Rate = 1
    petl34.RotSpeed = NumberRange.new(360)
    petl34.Speed = NumberRange.new(3)
    petl34.VelocitySpread = 360
    petl34.Parent = rleg.Glow
    local petl234 = Instance.new("ParticleEmitter")
    petl234.Color = ColorSequence.new(Color3.new(255, 255, 0))
    petl234.LightEmission = 0.9
    petl234.Size = NumberSequence.new(5)
    petl234.Texture = "rbxassetid://516107903"
    petl234.Transparency = NumberSequence.new(0.4)
    petl234.ZOffset = 2
    petl234.Enabled = false
    petl234.LockedToPart = true
    petl234.Rate = 8
    petl234.Rotation = NumberRange.new(0, 360)
    petl234.RotSpeed = NumberRange.new(0)
    petl234.Speed = NumberRange.new(0)
    petl234.VelocitySpread = 180
    petl234.Parent = rleg.Glow


local petl345 = Instance.new("ParticleEmitter")
    petl345.Color = ColorSequence.new(Color3.new(255, 255, 0))
    petl345.LightEmission = 0.9
    petl345.Size = NumberSequence.new(0.5)
    petl345.Texture = "rbxassetid://272050333"
    petl345.Transparency = NumberSequence.new(0.1)
    petl345.Lifetime = NumberRange.new(0.1)
    petl345.Rate = 1
    petl345.RotSpeed = NumberRange.new(360)
    petl345.Speed = NumberRange.new(3)
    petl345.VelocitySpread = 360
    petl345.Parent = tors.Glow
    local petl2345 = Instance.new("ParticleEmitter")
    petl2345.Color = ColorSequence.new(Color3.new(255, 255, 0))
    petl2345.LightEmission = 0.9
    petl2345.Size = NumberSequence.new(5)
    petl2345.Texture = "rbxassetid://516107903"
    petl2345.Transparency = NumberSequence.new(0.4)
    petl2345.ZOffset = 2
    petl2345.Enabled = false
    petl2345.LockedToPart = true
    petl2345.Rate = 8
    petl2345.Rotation = NumberRange.new(0, 360)
    petl2345.RotSpeed = NumberRange.new(0)
    petl2345.Speed = NumberRange.new(0)
    petl2345.VelocitySpread = 180
    petl2345.Parent = tors.Glow
human.WalkSpeed = 0
so("http://www.roblox.com/asset/?id=169445572",head,1.5,1.5)
so("http://www.roblox.com/asset/?id=169380495",head,1.5,1.5)
for l = 1, 30 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, -0.5) * ang(rd(6), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(12), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-8), rd(-7), rd(-10)), 0.02 + l / 40)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-8), rd(7), rd(10)), 0.02 + l / 40)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(RH, "C0", RHC0 * cf(0.4, 0.5, 0) * ang(rd(0), rd(-6), rd(8)), 0.02 + l / 40)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(3), rd(0), rd(42)), 0.02 + l / 40)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.02 + l / 40)
	    end


resetlerp()

 BV = Instance.new("BodyVelocity", tors)
        BV.maxForce = Vector3.new(0,200000,0)
        BV.P = 100000
        BV.velocity = Vector3.new(0,150,0)
local rng = Instance.new("Part", chr)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Institutional white")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0.5
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.Position = tors.Position - Vector3.new(0,2,0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(10, 10, 20)
            x = Instance.new("Sound",tors)
            x.SoundId = "http://www.roblox.com/asset/?id=169445602"
            x.Looped = false
            x.Pitch = .7
            x.Volume = 30
            x:Play()
                coroutine.wrap(function()
                for i = 1, 60, 8 do
                rngm.Scale = Vector3.new(10.20 + i*10.10, 10.20 + i*10.10, 10)
                rng.Transparency = i/60
                wait()
                end
                wait()
                rng:Destroy()
                end)()
wait(2.6)
BV:Destroy()
tors.Anchored = true
wait(3.2)
tors.Anchored = false
BV = Instance.new("BodyVelocity", tors)
        BV.maxForce = Vector3.new(0,-20000,0)
        BV.P = 1000
        BV.velocity = Vector3.new(0,-150,0)
wait(1)
BV:Destroy()
wait(0.01)

human.WalkSpeed = 0
    boom3:Play()

Smash()
Smash2()
Smash3()
Ring()
pe:Destroy()
pea:Destroy()
pea2:Destroy()
pe2:Destroy()
wait(2)
human.WalkSpeed = 16
	activu = false
end



sound = Instance.new("Sound", game.Players.LocalPlayer.Character["Right Leg"])
sound.SoundId = "rbxassetid://220025776"
sound.Volume = 6

sound2 = Instance.new("Sound", game.Players.LocalPlayer.Character["Torso"])
sound2.SoundId = "rbxassetid://386946017"
sound2.Volume = 6

sound3 = Instance.new("Sound", game.Players.LocalPlayer.Character)
sound3.SoundId = "rbxassetid://165969964"
sound3.Volume = 6

function rip()
		activu = true
		local detect = Instance.new("Part", game.Players.LocalPlayer.Character)
		detect.Size = Vector3.new(1,1,1)
		detect:BreakJoints()
		detect.CanCollide = false
		local weld = Instance.new("Weld", detect)
		weld.Part0 = game.Players.LocalPlayer.Character["Torso"]
		weld.Part1 = detect
		weld.C0 = weld.C0 * CFrame.new(0,-1,0)
		
		
		
		local function attack(prt)
			local humanoid = prt.Parent:findFirstChild("Humanoid")
			if humanoid ~= nil then
				local torso = prt.Parent:findFirstChild("Torso")
				
				
				
				
				
				
				
				function KABOOMZ3()
    local effspwn = Instance.new("Part")
    coroutine.resume(coroutine.create(function()
      local sound1 = Instance.new("Sound")
      sound1.SoundId = "rbxassetid://138137702"
      sound1.MaxDistance = 300
      sound1.EmitterSize = 20
      sound1.Volume = 2.5
      sound1.Pitch = 0.65
      sound1.Parent = effspwn
      local sound2 = Instance.new("Sound")
      sound2.SoundId = "rbxassetid://157878578"
      sound2.MaxDistance = 300
      sound2.EmitterSize = 20
      sound2.Volume = 1
      sound2.Pitch = 0.7
      sound2.Parent = effspwn
      local sound3 = Instance.new("Sound")
      sound3.SoundId = "rbxassetid://138250406"
      sound2.MaxDistance = 400
      sound2.EmitterSize = 30
      sound2.Volume = 0.5
      sound2.Pitch = 0.5
      sound2.Parent = effspwn
      sound2:Play()
      wait()
      sound1:Play()
      sound3:Play()
    end))
    local model = Instance.new("Model")
    game.Debris:AddItem(model, 20)
    model.Name = "smasheffects"
    model.Parent = workspace
    effspwn.Name = "spwnr"
    effspwn.Size = Vector3.new(1, 1, 1)
    effspwn.Anchored = true
    effspwn.CanCollide = false
    effspwn.Transparency = 1
    effspwn.CFrame = torso.CFrame * CFrame.Angles(math.rad(180), 0, 0)
    effspwn.Parent = model





Crater(head,60)
Crater(head,120)

    for i,v in pairs(FindNearestTorso(tors.CFrame.p,50))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(10000020,10000030))
            v.Humanoid.PlatformStand = true
            v:FindFirstChild("Torso").Velocity = head.CFrame.lookVector * 200
        end
    end 

    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "whoosh"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.1
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://437347603"
      mesh.Scale = Vector3.new(0.8, 0.8, 0.3)
      mesh.Parent = shok





      for e = 1, 8 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.24, 0.24, 0.22)
        shok.Transparency = shok.Transparency + 0.035
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -22), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(29))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.13, 0.13, 0.12)
        shok.Transparency = shok.Transparency + 0.11
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -10), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(15))
        hito(shok, 10, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 3)

      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring1"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(0.1, 0.1, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.6, 2.6, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "wring2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://3270017"
      mesh.Scale = Vector3.new(12, 12, 0.05)
      mesh.Parent = shok
      for e = 1, 30 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 3)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
      for e = 1, 38 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.002
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2.8, 2.8, 0.1)
        shok.Transparency = shok.Transparency + 0.03
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "coil1"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "coil2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.25
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
      mesh.Scale = Vector3.new(6, 12, 6)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.1, 2.4, 1.1)
        shok.Transparency = shok.Transparency + 0.005
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -1), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.1, 2.4, 1.1)
        shok.Transparency = shok.Transparency + 0.005
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.1, 2.4, 1.1)
        shok.Transparency = shok.Transparency + 0.09
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 0, -0.12), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shokwve"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.Position = effspwn.Position + Vector3.new(0, 5, 0)
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.6
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(1, 1, 1)
      mesh.Parent = shok
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(2, 2, 2)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 32 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.002
      end
      for e = 1, 24 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 0.5, 0.5)
        shok.Transparency = shok.Transparency + 0.03
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock2"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(1.5, 2.8, 1.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(35), math.rad(0))
      end
    end))
    coroutine.resume(coroutine.create(function()
      local shok = Instance.new("Part")
      shok.Name = "shock3"
      shok.BrickColor = BrickColor.new("Institutional white")
      shok.CFrame = effspwn.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
      shok.Size = Vector3.new(1, 1, 1)
      shok.Anchored = true
      shok.Material = "Neon"
      shok.Transparency = 0.35
      shok.CanCollide = false
      shok.Parent = model
      game.Debris:AddItem(shok, 12)
      local mesh = Instance.new("SpecialMesh")
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "rbxassetid://489415447"
      mesh.Scale = Vector3.new(12, 12, 12)
      mesh.Parent = shok
      for e = 1, 15 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 16 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, 2.6, 0.5)
        shok.Transparency = shok.Transparency + 0.004
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
      for e = 1, 12 do
        wait()
        mesh.Scale = mesh.Scale + Vector3.new(0.5, -1, 0.5)
        shok.Transparency = shok.Transparency + 0.06
        shok.CFrame = shok.CFrame:lerp(shok.CFrame * CFrame.new(0, 2, 0), 0.4)
        shok.CFrame = shok.CFrame * CFrame.Angles(math.rad(0), math.rad(-16), math.rad(0))
      end
    end))
  end



				if torso ~= nil then
					game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
		            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
					for i = 1,5 do
						wait()
						game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 = game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 * CFrame.Angles(0,0,0.25)
						game.Players.LocalPlayer.Character.Torso["Right Hip"].C0 = game.Players.LocalPlayer.Character.Torso["Right Hip"].C0 * CFrame.Angles(0,0,0.25)
						game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(-0.25,0,0)
					end
					sound:Play()
					local bodyVel = Instance.new("BodyPosition", torso)
					bodyVel.Position = game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0,1000,0)
					bodyVel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					wait(2)
					torso.Anchored = true
					for i = 1,5 do
						wait()
						game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 = game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 * CFrame.Angles(0,0,-0.25)
						game.Players.LocalPlayer.Character.Torso["Right Hip"].C0 = game.Players.LocalPlayer.Character.Torso["Right Hip"].C0 * CFrame.Angles(0,0,-0.25)
						game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0.25,0,0)
					end
					for i = 1,5 do
						wait()
						game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 = game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 * CFrame.Angles(0,0,-0.08)
						game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(0.08,0,0)
					end
					wait(1)
					local bodyvel = Instance.new("BodyPosition" , game.Players.LocalPlayer.Character.Torso)
					bodyvel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					bodyvel.Position = torso.Position
					for i = 1,5 do
						wait()
						game.Players.LocalPlayer.Character.Torso["Right Hip"].C0 = game.Players.LocalPlayer.Character.Torso["Right Hip"].C0 * CFrame.Angles(0,0,0)
						game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 = game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 * CFrame.Angles(0,0,0.08)
						game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 * CFrame.Angles(-0.15,0,0)
					end
					wait(2)
					bodyVel:destroy()
					game.Players.LocalPlayer.Character.Torso.Anchored = true
					torso.Anchored = false
					humanoid.PlatformStand = true
					local bodyVel = Instance.new("BodyPosition", torso)
					bodyVel.Position = game.Players.LocalPlayer.Character.Torso.Position - Vector3.new(0,1000,0)
					bodyVel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					sound2:Play()
					
					wait(1.2)
					game.Players.LocalPlayer.Character.Torso.Anchored = false
                    game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint.C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
                    game.Players.LocalPlayer.Character.Torso["Right Hip"].C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                    game.Players.LocalPlayer.Character.Torso["Right Shoulder"].C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                    game.Players.LocalPlayer.Character.Torso["Left Hip"].C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
					activu = false
					wait(0.5)
					bodyvel:destroy()
					local ROW3 = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(torso.CFrame.x,0,torso.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,25)
					end
end
	
	
	

        sound3:Play()
		ROW3(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
					game.Players.LocalPlayer.Character.Torso.Anchored = true
					KABOOMZ3()
					wait(0.1)
					
										game.Players.LocalPlayer.Character.Torso.Anchored = false
										game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
					game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50

					
				end
				end
		end
		detect.Touched:connect(attack)
		wait(0.1)
		detect:destroy()
		activu = false
			end
		


  function hito(partoz, magn, dmg, debtim)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("Head") and guy ~= chr and magn > (guy:FindFirstChild("Head").Position - partoz.Position).magnitude and guy:FindFirstChild("Head"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local hed = guy:FindFirstChild("Head")
          humz:TakeDamage(dmg)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = hed
          delay(debtim, function()
            db:Destroy()
          end)
        end
      end
    end
  end
  function animo(yep)
    if yep == true then
      anim.Parent = human
      chr.Animate.Disabled = false
    elseif yep == false then
      chr.Animate.Disabled = true
      anim.Parent = nil
    end
  end
  mouse.KeyDown:connect(function(key)
    if key == "e" then
      rsmash()
    end
    if key == "t" then
      jum()
    end
	if key == "r" then
	  Tele()
	    end
	if key == "q" then
		Stom()
	end
	if key == "f" then
		HeavenSmash()
	end
	if key == "h" then
		rip()
	end
  end)
  tool.Equipped:connect(function()
    selected = true
  end)
  tool.Unequipped:connect(function()
    selected = false
  end)