  plr = game.Players.LocalPlayer
script.Parent = plr.PlayerGui --prevents from getting stolen on nonsb games
  repeat
    wait(0.2)
  until plr.Character
  chr = plr.Character
  mouse = plr:GetMouse()
  selected = false
  human = chr:FindFirstChild("Humanoid")
  ragged = false
  movindamover = false
  coolindown = false
  togglecamshake = false
  warudo = false
  waruding = false
  rootpart = chr:WaitForChild("HumanoidRootPart")
  torso = chr:WaitForChild("Torso")
  rarm = chr:WaitForChild("Right Arm")
  larm = chr:WaitForChild("Left Arm")
  rleg = chr:WaitForChild("Right Leg")
  lleg = chr:WaitForChild("Left Leg")
  local nscale = Instance.new("NumberValue")
  nscale.Value = 1
  nscale.Parent = nil
  RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  nscale.Changed:connect(function()
    RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  end)
  Heartbeat = Instance.new("BindableEvent")
  Heartbeat.Name = "Heartbeat"
  Heartbeat.Parent = script
  frame = 0.016666666666666666
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
  local mod = Instance.new("Model")
  mod.Name = "stuff"
  mod.Parent = chr
  tool = Instance.new("Tool")
  tool.CanBeDropped = false
  tool.RequiresHandle = false
  tool.ToolTip = "haha funny memeeeee xdd"
  tool.Parent = plr.Backpack
  tool.Name = "haha"
  local screngui = Instance.new("ScreenGui")
  screngui.Parent = plr.PlayerGui
  local fram = Instance.new("Frame")
  fram.AnchorPoint = Vector2.new(0.5, 0.5)
  fram.BackgroundColor3 = Color3.new(0.050980392156862744, 0.050980392156862744, 0.050980392156862744)
  fram.BorderColor3 = Color3.new(0, 0, 0)
  fram.BorderSizePixel = 2
  fram.Position = UDim2.new(0.5, 0, 0.85, 0)
  fram.Size = UDim2.new(0.25, 75, 0, 25)
  fram.Parent = screngui
  local manabar = Instance.new("ImageLabel")
  manabar.Name = "ManaBar"
  manabar.AnchorPoint = Vector2.new(0.5, 0.5)
  manabar.BackgroundColor3 = Color3.new(1, 0.9333333333333333, 0.1607843137254902)
  manabar.BorderColor3 = Color3.new(0.10588235294117647, 0.16470588235294117, 0.20784313725490197)
  manabar.BorderSizePixel = 0
  manabar.LayoutOrder = 3
  manabar.Position = UDim2.new(0.5, 0, 0.5, 0)
  manabar.Size = UDim2.new(1, -6, 1, -6)
  manabar.ZIndex = 5
  manabar.Parent = fram
  local nobm = Instance.new("ImageLabel")
  nobm.Name = "xd"
  nobm.AnchorPoint = Vector2.new(0.5, 0.5)
  nobm.BackgroundColor3 = Color3.new(0.050980392156862744, 0.050980392156862744, 0.050980392156862744)
  nobm.BorderColor3 = Color3.new(0, 0, 0)
  nobm.BorderSizePixel = 2
  nobm.Position = UDim2.new(0.5, 0, -0.3, 0)
  nobm.Size = UDim2.new(0.35, 0, 0.6, 0)
  nobm.ZIndex = 2
  nobm.Parent = fram
  local nobote = Instance.new("TextLabel")
  nobote.Name = "texto"
  nobote.AnchorPoint = Vector2.new(0.5, 0.5)
  nobote.BackgroundTransparency = 1
  nobote.BorderColor3 = Color3.new(0.10588235294117647, 0.16470588235294117, 0.20784313725490197)
  nobote.BorderSizePixel = 0
  nobote.Position = UDim2.new(0.5, 0, 0.5, 0)
  nobote.Size = UDim2.new(1, 0, 1, 0)
  nobote.ZIndex = 3
  nobote.Font = "Arcade"
  nobote.Text = "Noob-o-meter"
  nobote.TextColor3 = Color3.new(0.9176470588235294, 1, 0)
  nobote.TextScaled = true
  nobote.TextStrokeTransparency = 1
  nobote.Parent = nobm
  local mano = Instance.new("ImageLabel")
  mano.Name = "xd"
  mano.AnchorPoint = Vector2.new(0.5, 0.5)
  mano.BackgroundColor3 = Color3.new(0.050980392156862744, 0.050980392156862744, 0.050980392156862744)
  mano.BorderColor3 = Color3.new(0, 0, 0)
  mano.BorderSizePixel = 2
  mano.Position = UDim2.new(0.5, 0, 1.1, 0)
  mano.Size = UDim2.new(0.1, 0, 0.6, 0)
  mano.ZIndex = 2
  mano.Parent = fram
  local manu = Instance.new("TextLabel")
  manu.Name = "texto"
  manu.AnchorPoint = Vector2.new(0.5, 0.5)
  manu.BackgroundTransparency = 1
  manu.BorderColor3 = Color3.new(0.10588235294117647, 0.16470588235294117, 0.20784313725490197)
  manu.BorderSizePixel = 0
  manu.Position = UDim2.new(0.5, 0, 0.5, 0)
  manu.Size = UDim2.new(1, 0, 1, 0)
  manu.ZIndex = 3
  manu.Font = "Arcade"
  manu.Text = "100"
  manu.TextColor3 = Color3.new(0.9176470588235294, 1, 0)
  manu.TextScaled = true
  manu.TextStrokeTransparency = 1
  manu.Parent = mano
  local mana = Instance.new("IntValue")
  mana.Value = 100
  mana.Name = "Mana"
  mana.Parent = fram
  coroutine.resume(coroutine.create(function()
    while true do
      wait(0.15)
      manabar:TweenSize(UDim2.new(1 * mana.Value / 100, -6, 1, -6), 2, 1, 0.2, false, nil)
      if mana.Value < 100 then
        mana.Value = mana.Value + 1
        manu.Text = mana.Value
        if mana.Value < 0 then
          mana.Value = 0
        end
      end
    end
  end))
  function nooutline(part)
    part.TopSurface, part.BottomSurface, part.RightSurface, part.LeftSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
  end
  function test()
    if selected == false then
      return
    end
    if waruding == true then
      return
    end
    if ragged == false then
      ragged = true
      human.PlatformStand = true
      if rarm and torso:FindFirstChild("Right Shoulder") then
        torso:FindFirstChild("Right Shoulder"):Destroy()
        makegloo(torso, RightShoulderC0, RightShoulderC1, torso, rarm, "Right Shoulder")
        maketouchy(rarm, rarm, CFrame.new(0, 0.5, 0))
      end
      if larm and torso:FindFirstChild("Left Shoulder") then
        torso:FindFirstChild("Left Shoulder"):Destroy()
        makegloo(torso, LeftShoulderC0, LeftShoulderC1, torso, larm, "Left Shoulder")
        maketouchy(larm, larm, CFrame.new(0, 0.5, 0))
      end
      if rleg and torso:FindFirstChild("Right Hip") then
        torso:FindFirstChild("Right Hip"):Destroy()
        makegloo(torso, RightHipC0, RightHipC1, torso, rleg, "Right Hip")
        maketouchy(rleg, rleg, CFrame.new(0, 0.5, 0))
      end
      if lleg and torso:FindFirstChild("Left Hip") then
        torso:FindFirstChild("Left Hip"):Destroy()
        makegloo(torso, LeftHipC0, LeftHipC1, torso, lleg, "Left Hip")
        maketouchy(lleg, lleg, CFrame.new(0, 0.5, 0))
      end
    elseif ragged == true then
      ragged = false
      human.Jump = true
      if rarm and torso:FindFirstChild("Right Shoulder") then
        torso:FindFirstChild("Right Shoulder"):Destroy()
        makejoint(torso, RightShoulderC0, RightShoulderC1, torso, rarm, "Right Shoulder")
        rarm:FindFirstChild("touchy"):Destroy()
      end
      if larm and torso:FindFirstChild("Left Shoulder") then
        torso:FindFirstChild("Left Shoulder"):Destroy()
        makejoint(torso, LeftShoulderC0, LeftShoulderC1, torso, larm, "Left Shoulder")
        larm:FindFirstChild("touchy"):Destroy()
      end
      if rleg and torso:FindFirstChild("Right Hip") then
        torso:FindFirstChild("Right Hip"):Destroy()
        makejoint(torso, RightHipC0, RightHipC1, torso, rleg, "Right Hip")
        rleg:FindFirstChild("touchy"):Destroy()
      end
      if lleg and torso:FindFirstChild("Left Hip") then
        torso:FindFirstChild("Left Hip"):Destroy()
        makejoint(torso, LeftHipC0, LeftHipC1, torso, lleg, "Left Hip")
        lleg:FindFirstChild("touchy"):Destroy()
      end
    end
  end
  function makegloo(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Glue")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function makejoint(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Motor6D")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function maketouchy(parent, limb, cframe)
    local pr = Instance.new("Part")
    pr.Name = "touchy"
    pr.Size = Vector3.new(1 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    pr.Transparency = 1
    pr.CustomPhysicalProperties = PhysicalProperties.new(0.55, 0.3, 0.5)
    pr.CanCollide = true
    pr.Anchored = false
    pr.Parent = parent
    local w = Instance.new("Weld")
    w.Part0 = pr
    w.Part1 = limb
    w.C0 = cframe
    w.Parent = pr
  end
  function movinit()
    if ragged == true then
      do
        local bodyp = Instance.new("BodyPosition")
        bodyp.MaxForce = Vector3.new(100000, 100000, 100000)
        bodyp.Position = mouse.Hit.p
        bodyp.P = 100
        bodyp.Name = "bodehforce"
        bodyp.D = 20
        bodyp.Parent = rootpart
        delay(0.01, function()
          bodyp:Destroy()
        end)
      end
    end
  end
  function shoom()
    if selected == false then
      return
    end
    if waruding == true then
      return
    end
    if mana.Value < 5 then
      return
    end
    local mcir1 = Instance.new("Part")
    mcir1.Anchored = true
    mcir1.CanCollide = false
    mcir1.Size = Vector3.new(0.2, 0.2, 0.2)
    mcir1.Transparency = 1
    mcir1.CFrame = CFrame.new(rootpart.Position + Vector3.new(math.random(-5, 5), math.random(7, 9), math.random(-5, 5)), mouse.Hit.p)
    mcir1.Parent = mod
    game.Debris:AddItem(mcir1, 8)
    local d1 = Instance.new("Decal")
    d1.Texture = "rbxassetid://602615043"
    d1.Face = "Front"
    d1.Parent = mcir1
    local d2 = Instance.new("Decal")
    d2.Texture = "rbxassetid://602617463"
    d2.Face = "Back"
    d2.Parent = mcir1
    local bme = Instance.new("BlockMesh")
    bme.Parent = mcir1
    for _ = 1, 9 do
      wait()
      bme.Scale = bme.Scale:lerp(Vector3.new(35, 35, 0), 0.3)
    end
    makenoob(mcir1.CFrame, (mouse.Hit.p - mcir1.Position).unit * 150, math.random(8, 12) / 10)
    mana.Value = mana.Value - 5
    coroutine.resume(coroutine.create(function()
      wait(1)
      for _ = 1, 12 do
        wait()
        d1.Transparency = d1.Transparency + 0.08
        d2.Transparency = d2.Transparency + 0.08
      end
      mcir1:Destroy()
    end))
  end
  function transpo()
    if selected == false then
      return
    end
    if waruding == true then
      return
    end
    if mana.Value < 5 then
      return
    end
    if mouse.Target.Parent.Name == "Noob" and mouse.Target.Parent.Humanoid.Health ~= 0 then
      do
        local nibz = mouse.Target.Parent
        chr.PrimaryPart = rootpart
        nibz.PrimaryPart = nibz:FindFirstChild("HumanoidRootPart")
        local g = Instance.new("Part")
        g.CanCollide, g.Anchored = false, true
        g.Transparency = 1
        g.CFrame = rootpart.CFrame
        g.Parent = workspace
        game.Debris:AddItem(g, 4)
        local sou = Instance.new("Sound")
        sou.Pitch = math.random(7, 11) / 10
        sou.Volume = 0.9
        sou.SoundId = "rbxassetid://111124523"
        sou.Parent = g
        sou:Play()
        local pe = Instance.new("ParticleEmitter")
        pe.Acceleration = Vector3.new(0, 8, 0)
        pe.Lifetime = NumberRange.new(1, 1.5)
        pe.Rate = 20000
        pe.RotSpeed = NumberRange.new(-30, 30)
        pe.Rotation = NumberRange.new(0, 360)
        pe.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 4.38, 0),
          NumberSequenceKeypoint.new(0.672, 4.14, 0),
          NumberSequenceKeypoint.new(1, 1.48, 0)
        })
        pe.Texture = "rbxassetid://244221440"
        pe.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0, 0),
          NumberSequenceKeypoint.new(0.529, 0.3, 0),
          NumberSequenceKeypoint.new(1, 1, 1)
        })
        pe.ZOffset = 5
        pe.VelocitySpread = 360
        pe.Parent = g
        delay(0.14, function()
          pe.Enabled = false
        end)
        chr:SetPrimaryPartCFrame(nibz:FindFirstChild("HumanoidRootPart").CFrame)
        local g2 = Instance.new("Part")
        g2.CanCollide, g2.Anchored = false, true
        g2.Transparency = 1
        g2.CFrame = nibz:FindFirstChild("HumanoidRootPart").CFrame
        g2.Parent = workspace
        game.Debris:AddItem(g2, 4)
        local sou2 = Instance.new("Sound")
        sou2.Pitch = math.random(7, 11) / 10
        sou2.Volume = 0.9
        sou2.SoundId = "rbxassetid://111124523"
        sou2.Parent = g2
        sou2:Play()
        local pe2 = Instance.new("ParticleEmitter")
        pe2.Acceleration = Vector3.new(0, 8, 0)
        pe2.Lifetime = NumberRange.new(1, 1.5)
        pe2.Rate = 20000
        pe2.RotSpeed = NumberRange.new(-30, 30)
        pe2.Rotation = NumberRange.new(0, 360)
        pe2.Size = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 4.38, 0),
          NumberSequenceKeypoint.new(0.672, 4.14, 0),
          NumberSequenceKeypoint.new(1, 1.48, 0)
        })
        pe2.Texture = "rbxassetid://244221440"
        pe2.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0, 0),
          NumberSequenceKeypoint.new(0.529, 0.3, 0),
          NumberSequenceKeypoint.new(1, 1, 1)
        })
        pe2.ZOffset = 5
        pe2.VelocitySpread = 360
        pe2.Parent = g2
        delay(0.14, function()
          pe2.Enabled = false
        end)
        nibz:SetPrimaryPartCFrame(g.CFrame)
        mana.Value = mana.Value - 5
      end
    end
  end
  function pow()
    if selected == false then
      return
    end
    if coolindown == true then
      return
    end
    if waruding == true then
      return
    end
    if mana.Value < 50 then
      return
    end
    coolindown = true
    local propertieslol = function(part)
      part.Material = "SmoothPlastic"
      part.CanCollide = false
      part.Locked = true
      part.Anchored = true
      part.Size = Vector3.new(0.2, 0.2, 0.2)
      part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
    end
    local mover = Instance.new("Part")
    mover.Transparency = 1
    mover.Size = Vector3.new(0.2, 0.2, 0.2)
    mover.CFrame = rootpart.CFrame * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 11, 0)
    mover.Anchored = true
    mover.CanCollide = false
    mover.Parent = mod
    local mciro = Instance.new("Part")
    mciro.Name = "mciro"
    mciro.BrickColor = BrickColor.new("Bright yellow")
    propertieslol(mciro)
    mciro.CFrame = rootpart.CFrame * CFrame.new(0, -2.45, -35) * CFrame.Angles(math.rad(180), 0, 0)
    mciro.Transparency = 1
    mciro.Parent = mod
    local mc = Instance.new("BlockMesh")
    mc.Scale = Vector3.new(0, 0, 0)
    mc.Parent = mciro
    local d1 = Instance.new("Decal")
    d1.Texture = "rbxassetid://602615043"
    d1.Face = "Top"
    d1.Parent = mciro
    local d2 = Instance.new("Decal")
    d2.Texture = "rbxassetid://602617463"
    d2.Face = "Bottom"
    d2.Parent = mciro
    movindamover = true
    coroutine.resume(coroutine.create(function()
      while movindamover == true do
        swait()
        mover.CFrame = mover.CFrame:lerp(rootpart.CFrame * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 11, 0), 0.4)
        mciro.CFrame = mciro.CFrame:lerp(rootpart.CFrame * CFrame.new(0, -2.45, -35) * CFrame.Angles(math.rad(180), 0, 0), 0.4)
        mc.Scale = mc.Scale:lerp(Vector3.new(120, 0, 120), 0.1)
      end
    end))
    local handle = Instance.new("Part")
    handle.Name = "Handle"
    handle.BrickColor = BrickColor.new("Br. yellowish green")
    propertieslol(handle)
    handle.CFrame = rootpart.CFrame * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)) * CFrame.new(0, 11, 0)
    handle.Parent = mod
    local m0 = Instance.new("SpecialMesh")
    m0.MeshType = "Head"
    m0.Parent = handle
    local h1 = Instance.new("Part")
    h1.Name = "h1"
    h1.BrickColor = BrickColor.new("Br. yellowish green")
    propertieslol(h1)
    h1.CFrame = mover.CFrame * CFrame.new(0, 3, 0)
    h1.Parent = mod
    local m1 = Instance.new("SpecialMesh")
    m1.MeshType = "Head"
    m1.Parent = h1
    local h2 = Instance.new("Part")
    h2.Name = "h2"
    h2.BrickColor = BrickColor.new("Br. yellowish green")
    propertieslol(h2)
    h2.CFrame = mover.CFrame * CFrame.new(0, -3, 0)
    h2.Parent = mod
    local m2 = Instance.new("SpecialMesh")
    m2.MeshType = "Head"
    m2.Parent = h2
    local he = Instance.new("Part")
    he.Name = "he"
    he.BrickColor = BrickColor.new("Bright yellow")
    propertieslol(he)
    he.CFrame = mover.CFrame * CFrame.new(0, -3.75, 0)
    he.Parent = mod
    local m3 = Instance.new("SpecialMesh")
    m3.MeshType = "Head"
    m3.Parent = he
    local ht = Instance.new("Part")
    ht.Name = "ht"
    ht.BrickColor = BrickColor.new("White")
    propertieslol(ht)
    ht.CFrame = mover.CFrame * CFrame.new(0, -5.5, 0) * CFrame.Angles(math.rad(180), 0, 0)
    ht.Parent = mod
    local m4 = Instance.new("SpecialMesh")
    m4.MeshType = "Head"
    m4.MeshId = "http://www.roblox.com/asset/?id=1082802"
    m4.TextureId = "http://www.roblox.com/asset/?id=1082804"
    m4.Parent = ht
    local p1 = Instance.new("Part")
    p1.Name = "p1"
    p1.BrickColor = BrickColor.new("Bright blue")
    propertieslol(p1)
    p1.CFrame = mover.CFrame * CFrame.new(0, 12, 0)
    p1.Parent = mod
    local m5 = Instance.new("SpecialMesh")
    m5.MeshType = "Head"
    m5.Parent = p1
    local p2 = Instance.new("Part")
    p2.Name = "p2"
    p2.BrickColor = BrickColor.new("Bright blue")
    propertieslol(p2)
    p2.CFrame = mover.CFrame * CFrame.new(0, 14, 0) * CFrame.Angles(math.rad(180), 0, 0)
    p2.Parent = mod
    local m6 = Instance.new("SpecialMesh")
    m6.MeshType = "FileMesh"
    m6.MeshId = "rbxassetid://1033714"
    m6.Parent = p2
    local he1 = Instance.new("Part")
    he1.Name = "he1"
    he1.BrickColor = BrickColor.new("Bright yellow")
    propertieslol(he1)
    he1.CFrame = mover.CFrame * CFrame.new(0, 27, 0) * CFrame.Angles(0, math.rad(90), 0)
    he1.Parent = mod
    local m7 = Instance.new("SpecialMesh")
    m7.MeshType = "Head"
    m7.Parent = he1
    local hdec1 = Instance.new("Decal")
    hdec1.Texture = "rbxasset://textures/face.png"
    hdec1.Face = "Front"
    hdec1.Parent = he1
    local he2 = Instance.new("Part")
    he2.Name = "he2"
    he2.BrickColor = BrickColor.new("Bright yellow")
    propertieslol(he2)
    he2.CFrame = mover.CFrame * CFrame.new(0, 27, 0) * CFrame.Angles(0, math.rad(-90), 0)
    he2.Transparency = 1
    he2.Parent = mod
    local m8 = Instance.new("SpecialMesh")
    m8.MeshType = "Head"
    m8.Parent = he2
    local hdec2 = Instance.new("Decal")
    hdec2.Texture = "rbxasset://textures/face.png"
    hdec2.Face = "Front"
    hdec2.Parent = he2
    local het1 = Instance.new("Part")
    het1.Name = "het1"
    het1.BrickColor = BrickColor.new("Bright yellow")
    propertieslol(het1)
    het1.CFrame = mover.CFrame * CFrame.new(0, 30, 0) * CFrame.Angles(0, math.rad(90), 0)
    het1.Parent = mod
    local m9 = Instance.new("SpecialMesh")
    m9.MeshType = "FileMesh"
    m9.MeshId = "http://www.roblox.com/asset/?id=272942659"
    m9.TextureId = "http://www.roblox.com/asset/?id=272942750"
    m9.Parent = het1
    local he3 = Instance.new("Part")
    he3.Name = "he3"
    he3.BrickColor = BrickColor.new("Bright yellow")
    propertieslol(he3)
    he3.CFrame = mover.CFrame * CFrame.new(0, 27, 11) * CFrame.Angles(0, math.rad(90), math.rad(90))
    he3.Parent = mod
    local m10 = Instance.new("SpecialMesh")
    m10.MeshType = "Head"
    m10.Parent = he3
    local hdec3 = Instance.new("Decal")
    hdec3.Texture = "rbxasset://textures/face.png"
    hdec3.Face = "Front"
    hdec3.Parent = he3
    local he4 = Instance.new("Part")
    he4.Name = "he4"
    he4.BrickColor = BrickColor.new("Bright yellow")
    propertieslol(he4)
    he4.CFrame = mover.CFrame * CFrame.new(0, 27, 11) * CFrame.Angles(0, math.rad(-90), math.rad(90))
    he4.Transparency = 1
    he4.Parent = mod
    local m11 = Instance.new("SpecialMesh")
    m11.MeshType = "Head"
    m11.Parent = he4
    local hdec4 = Instance.new("Decal")
    hdec4.Texture = "rbxasset://textures/face.png"
    hdec4.Face = "Front"
    hdec4.Parent = he4
    local he5 = Instance.new("Part")
    he5.Name = "he5"
    he5.BrickColor = BrickColor.new("Bright yellow")
    propertieslol(he5)
    he5.CFrame = mover.CFrame * CFrame.new(0, 27, -11) * CFrame.Angles(0, math.rad(90), math.rad(-90))
    he5.Parent = mod
    local m12 = Instance.new("SpecialMesh")
    m12.MeshType = "Head"
    m12.Parent = he5
    local hdec5 = Instance.new("Decal")
    hdec5.Texture = "rbxasset://textures/face.png"
    hdec5.Face = "Front"
    hdec5.Parent = he5
    local he6 = Instance.new("Part")
    he6.Name = "he6"
    he6.BrickColor = BrickColor.new("Bright yellow")
    propertieslol(he6)
    he6.CFrame = mover.CFrame * CFrame.new(0, 27, -11) * CFrame.Angles(0, math.rad(-90), math.rad(-90))
    he6.Transparency = 1
    he6.Parent = mod
    local m13 = Instance.new("SpecialMesh")
    m13.MeshType = "Head"
    m13.Parent = he6
    local hdec6 = Instance.new("Decal")
    hdec6.Texture = "rbxasset://textures/face.png"
    hdec6.Face = "Front"
    hdec6.Parent = he6
    m0.Scale = Vector3.new(0, 0, 0)
    m1.Scale = Vector3.new(0, 0, 0)
    m2.Scale = Vector3.new(0, 0, 0)
    m3.Scale = Vector3.new(0, 0, 0)
    m4.Scale = Vector3.new(0, 0, 0)
    m5.Scale = Vector3.new(0, 0, 0)
    m6.Scale = Vector3.new(0, 0, 0)
    m7.Scale = Vector3.new(0, 0, 0)
    m8.Scale = Vector3.new(0, 0, 0)
    m9.Scale = Vector3.new(0, 0, 0)
    m10.Scale = Vector3.new(0, 0, 0)
    m11.Scale = Vector3.new(0, 0, 0)
    m12.Scale = Vector3.new(0, 0, 0)
    m13.Scale = Vector3.new(0, 0, 0)
    coroutine.resume(coroutine.create(function()
      while mover do
        swait()
        handle.CFrame = handle.CFrame:lerp(mover.CFrame, 0.4)
        h1.CFrame = h1.CFrame:lerp(mover.CFrame * CFrame.new(0, 3, 0), 0.4)
        h2.CFrame = h2.CFrame:lerp(mover.CFrame * CFrame.new(0, -3, 0), 0.4)
        he.CFrame = he.CFrame:lerp(mover.CFrame * CFrame.new(0, -4, 0), 0.4)
        ht.CFrame = ht.CFrame:lerp(mover.CFrame * CFrame.new(0, -5.5, 0) * CFrame.Angles(math.rad(180), 0, 0), 0.4)
        p1.CFrame = p1.CFrame:lerp(mover.CFrame * CFrame.new(0, 12, 0), 0.4)
        p2.CFrame = p2.CFrame:lerp(mover.CFrame * CFrame.new(0, 14, 0) * CFrame.Angles(math.rad(180), 0, 0), 0.4)
        he1.CFrame = he1.CFrame:lerp(mover.CFrame * CFrame.new(0, 27, 0) * CFrame.Angles(0, math.rad(90), 0), 0.4)
        he2.CFrame = he2.CFrame:lerp(mover.CFrame * CFrame.new(0, 27, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
        het1.CFrame = het1.CFrame:lerp(mover.CFrame * CFrame.new(0, 30, 0) * CFrame.Angles(0, math.rad(90), 0), 0.4)
        he3.CFrame = he3.CFrame:lerp(mover.CFrame * CFrame.new(0, 27, 11) * CFrame.Angles(0, math.rad(90), math.rad(90)), 0.4)
        he4.CFrame = he4.CFrame:lerp(mover.CFrame * CFrame.new(0, 27, 11) * CFrame.Angles(0, math.rad(-90), math.rad(90)), 0.4)
        he5.CFrame = he5.CFrame:lerp(mover.CFrame * CFrame.new(0, 27, -11) * CFrame.Angles(0, math.rad(90), math.rad(-90)), 0.4)
        he6.CFrame = he6.CFrame:lerp(mover.CFrame * CFrame.new(0, 27, -11) * CFrame.Angles(0, math.rad(-90), math.rad(-90)), 0.4)
      end
    end))
    local function expando(mesho, vectorz)
      mesho.Scale = Vector3.new(0, 0, 0)
      local sond = Instance.new("Sound")
      sond.Volume = 1.2
      sond.Pitch = 1
      sond.EmitterSize = 10
      sond.SoundId = "rbxassetid://315152748"
      sond.Parent = mesho.Parent
      sond:Play()
      mana.Value = mana.Value - 3
      for _ = 1, 5 do
        swait()
        mesho.Scale = mesho.Scale:lerp(vectorz + Vector3.new(6, 6, 6), 0.65)
      end
      for _ = 1, 3 do
        swait()
        mesho.Scale = mesho.Scale:lerp(vectorz, 0.65)
      end
      mesho.Scale = vectorz
    end
    expando(m0, Vector3.new(5, 30, 5))
    expando(m1, Vector3.new(6, 5.5, 5.5))
    expando(m2, Vector3.new(6, 5.5, 5.5))
    expando(m3, Vector3.new(6.5, 6.5, 6.5))
    expando(m4, Vector3.new(1.25, 1.25, 1.25))
    expando(m5, Vector3.new(5, 90, 4))
    expando(m6, Vector3.new(2, 20, 2))
    expando(m7, Vector3.new(75, 75, 75))
    expando(m8, Vector3.new(75, 75, 75))
    expando(m9, Vector3.new(12, 11, 11))
    expando(m10, Vector3.new(60, 60, 60))
    expando(m11, Vector3.new(60, 60, 60))
    expando(m12, Vector3.new(60, 60, 60))
    expando(m13, Vector3.new(60, 60, 60))
    wait(0.2)
    movindamover = false
    coroutine.resume(coroutine.create(function()
      local sond = Instance.new("Sound")
      sond.Volume = 2.5
      sond.Pitch = 0.5
      sond.SoundId = "rbxassetid://320557353"
      sond.Parent = p2
      sond:Play()
    end))
    for _ = 1, 60 do
      swait()
      mover.CFrame = mover.CFrame:lerp(rootpart.CFrame * CFrame.Angles(math.rad(70), math.rad(0), math.rad(0)) * CFrame.new(0, 16, 4), 0.1)
      mciro.CFrame = mciro.CFrame:lerp(rootpart.CFrame * CFrame.new(0, -2.45, -35) * CFrame.Angles(math.rad(180), 0, 0), 0.6)
    end
    coroutine.resume(coroutine.create(function()
      local sond = Instance.new("Sound")
      sond.Volume = 5.5
      sond.Pitch = 0.6
      sond.SoundId = "rbxassetid://320557353"
      sond.Parent = p2
      sond:Play()
    end))
    for d = 1, 5 do
      swait()
      mover.CFrame = mover.CFrame:lerp(rootpart.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * CFrame.new(0, 13, -5), 0.008 + d / 8)
      mciro.CFrame = mciro.CFrame:lerp(rootpart.CFrame * CFrame.new(0, -2.45, -35) * CFrame.Angles(math.rad(180), 0, 0), 0.6)
    end
    for e = 1, 3 do
      swait()
      mover.CFrame = mover.CFrame:lerp(rootpart.CFrame * CFrame.Angles(math.rad(-110), math.rad(0), math.rad(0)) * CFrame.new(0, 6, 13), 0.7 + e / 9)
      mciro.CFrame = mciro.CFrame:lerp(rootpart.CFrame * CFrame.new(0, -2.45, -35) * CFrame.Angles(math.rad(180), 0, 0), 0.6)
    end
    coroutine.resume(coroutine.create(function()
      local sond = Instance.new("Sound")
      sond.Volume = 5
      sond.Pitch = 0.9
      sond.SoundId = "rbxassetid://157878578"
      sond.Parent = mciro
      sond:Play()
    end))
    local ra = Ray.new(mciro.Position, mciro.CFrame.upVector * 3)
    local part, positi = workspace:FindPartOnRayWithIgnoreList(ra, {chr}, false, true)
    if part then
      local cfremz = CFrame.new(positi)
      debris(cfremz, part, 20)
    end
    mana.Value = mana.Value - 30
    for m = 1, 18 do
      makenoob(mciro.CFrame * CFrame.new(math.random(-15, 15), math.random(-32, -4), math.random(-15, 15)), Vector3.new(math.random(-100, 100), math.random(100, 200), math.random(-100, 100)), math.random(4, 16) / 10)
    end
    coroutine.resume(coroutine.create(function()
      local pou1 = Instance.new("Part")
      propertieslol(pou1)
      pou1.BrickColor = BrickColor.new("Grey")
      pou1.Transparency = 0.5
      pou1.CFrame = mciro.CFrame * CFrame.new(0, -28, 0) * CFrame.Angles(math.rad(180), 0, 0)
      pou1.Parent = mod
      local mosh = Instance.new("SpecialMesh")
      mosh.MeshType = "FileMesh"
      mosh.MeshId = "rbxassetid://489415447"
      mosh.Scale = Vector3.new(0.1, 0.1, 0.1)
      mosh.Parent = pou1
      local pou2 = Instance.new("Part")
      propertieslol(pou2)
      pou2.BrickColor = BrickColor.new("Grey")
      pou2.Transparency = 0.5
      pou2.CFrame = mciro.CFrame * CFrame.new(0, -23, 0) * CFrame.Angles(math.rad(180), 0, 0)
      pou2.Parent = mod
      local mosh2 = Instance.new("SpecialMesh")
      mosh2.MeshType = "FileMesh"
      mosh2.MeshId = "rbxassetid://489415447"
      mosh2.Scale = Vector3.new(0.1, 0.1, 0.1)
      mosh2.Parent = pou2
      for x = 1, 4 do
        wait()
        pou1.CFrame = pou1.CFrame:lerp(pou1.CFrame * CFrame.Angles(0, math.rad(4), 0), 0.4)
        mosh.Scale = mosh.Scale:lerp(mosh.Scale + Vector3.new(15, 100, 15), 0.4)
        pou2.CFrame = pou2.CFrame:lerp(pou2.CFrame * CFrame.Angles(0, math.rad(-8), 0), 0.4)
        mosh2.Scale = mosh2.Scale:lerp(mosh2.Scale + Vector3.new(25, 80, 25), 0.4)
      end
      for x = 1, 40 do
        wait()
        pou1.CFrame = pou1.CFrame:lerp(pou1.CFrame * CFrame.new(0, -0.5, 0) * CFrame.Angles(0, math.rad(4), 0), 0.4)
        mosh.Scale = mosh.Scale:lerp(mosh.Scale + Vector3.new(2, -4, 2), 0.4)
        pou2.CFrame = pou2.CFrame:lerp(pou2.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-8), 0), 0.4)
        mosh2.Scale = mosh2.Scale:lerp(mosh2.Scale + Vector3.new(3, -6, 3), 0.4)
      end
      for x = 1, 19 do
        wait()
        pou1.CFrame = pou1.CFrame:lerp(pou1.CFrame * CFrame.new(0, -0.5, 0) * CFrame.Angles(0, math.rad(4), 0), 0.4)
        mosh.Scale = mosh.Scale:lerp(mosh.Scale + Vector3.new(2, -4, 2), 0.4)
        pou2.CFrame = pou2.CFrame:lerp(pou2.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-8), 0), 0.4)
        mosh2.Scale = mosh2.Scale:lerp(mosh2.Scale + Vector3.new(3, -6, 3), 0.4)
        pou1.Transparency = pou1.Transparency + 0.03
        pou2.Transparency = pou2.Transparency + 0.03
      end
    end))
    hito(mciro, 24, 40)
    camshake(mciro, 48, 6)
    wait(3)
    for _, g in pairs(mod:GetChildren()) do
      if g.ClassName == "Part" then
        coroutine.resume(coroutine.create(function()
          for _ = 1, 24 do
            wait()
            g.Transparency = g.Transparency + 0.06
          end
          g:Destroy()
        end))
        for _, d in ipairs(g:GetChildren()) do
          if d.ClassName == "Decal" then
            coroutine.resume(coroutine.create(function()
              if d.Transparency ~= 1 then
                for _ = 1, 24 do
                  wait()
                  d.Transparency = d.Transparency + 0.06
                end
              end
            end))
          end
        end
        delay(2, function()
          coolindown = false
        end)
      end
    end
  end
  function ZAWARUDO()
    if selected == false then
      return
    end
    if warudo == true then
      return
    end
    if workspace:FindFirstChild("The Noob") then
      return
    end
    warudo = true
    waruding = true
    local animo = human.Animator
    animo.Parent = nil
    chr.Animate.Disabled = true
    local lmao = Instance.new("Sound")
    lmao.EmitterSize = 150
    lmao.Volume = 1.25
    lmao.MaxDistance = 2700
    lmao.SoundId = "rbxassetid://170620840"
    lmao.Parent = rootpart
    game.Debris:AddItem(lmao, 25)
    lmao:Play()
    chr.PrimaryPart = rootpart
    wait(0.75)
    rootpart.Anchored = true
    for _ = 1, 40 do
      wait(0.04)
      chr:MoveTo(rootpart.Position + Vector3.new(0, 60, 0))
      chr:SetPrimaryPartCFrame(rootpart.CFrame * CFrame.Angles(math.rad(0.2), math.rad(0), math.rad(0)))
    end
    for _ = 1, 12 do
      wait(0.03)
      chr:MoveTo(rootpart.Position + Vector3.new(0, 10, 0))
      chr:SetPrimaryPartCFrame(rootpart.CFrame * CFrame.Angles(math.rad(0.2), math.rad(0), math.rad(0)))
    end
    for c = 1, 14 do
      wait(0.01)
      torso:FindFirstChild("Right Shoulder").C0 = torso:FindFirstChild("Right Shoulder").C0:lerp(RightShoulderC0 * CFrame.new(0, 0.6, 0) * CFrame.Angles(math.rad(10), math.rad(-20), math.rad(178)), 0.3)
      torso:FindFirstChild("Left Shoulder").C0 = torso:FindFirstChild("Left Shoulder").C0:lerp(LeftShoulderC0 * CFrame.new(0, 0.6, 0) * CFrame.Angles(math.rad(10), math.rad(20), math.rad(-178)), 0.3)
      torso:FindFirstChild("Neck").C0 = torso:FindFirstChild("Neck").C0:lerp(NeckC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
      torso:FindFirstChild("Right Hip").C0 = torso:FindFirstChild("Right Hip").C0:lerp(RightHipC0 * CFrame.new(0, 0.15, 0) * CFrame.Angles(math.rad(-10), math.rad(-10), math.rad(0)), 0.3)
      torso:FindFirstChild("Left Hip").C0 = torso:FindFirstChild("Left Hip").C0:lerp(LeftHipC0 * CFrame.new(0, 0.15, 0) * CFrame.Angles(math.rad(-10), math.rad(10), math.rad(0)), 0.3)
    end
    local trn = function(p)
      for _ = 1, 6 do
        wait()
        p.Transparency = p.Transparency - 0.18
      end
    end
    local function bignoob(cfrem, scalo)
      nscale.Value = scalo
      local md = Instance.new("Model")
      md.Name = "The Noob"
      md.Parent = workspace
      local hu = Instance.new("Humanoid")
      hu.MaxHealth = 0
      hu.RigType = "R6"
      hu.Name = "nothumanxd"
      hu.Parent = md
      local anm = Instance.new("Animator")
      anm.Parent = hu
      hu.PlatformStand = true
      local hd = Instance.new("Part")
      hd.Name = "Head"
      hd.Size = Vector3.new(2 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
      hd.TopSurface = "Smooth"
      hd.BottomSurface = "Inlet"
      hd.Locked = true
      hd.Transparency = 1
      hd.BrickColor = BrickColor.new("Bright yellow")
      hd.CanCollide = false
      hd.Parent = md
      local hm = Instance.new("SpecialMesh")
      hm.MeshType = "Head"
      hm.Scale = Vector3.new(1.25, 1.25, 1.25)
      hm.Parent = hd
      local hf = Instance.new("Decal")
      hf.Texture = "rbxasset://textures/face.png"
      local gen = math.random(1, 40)
      if gen == 3 then
        hf.Texture = "rbxassetid://260884109"
      end
      if gen == 8 then
        hf.Texture = "rbxassetid://260569492"
      end
      if gen == 12 then
        hf.Texture = "rbxassetid://259580505"
      end
      if gen == 16 then
        hf.Texture = "rbxassetid://259579232"
      end
      if gen == 24 then
        hf.Texture = "rbxassetid://259571525"
      end
      if gen == 28 then
        hf.Texture = "rbxassetid://258283210"
      end
      if gen == 32 then
        hf.Texture = "rbxassetid://258940032"
      end
      if gen == 38 then
        hf.Texture = "rbxassetid://673220970"
        hf.Color3 = Color3.new(0, 0, 0)
      end
      hf.Face = "Front"
      hf.Parent = hd
      local hrp = Instance.new("Part")
      hrp.Name = "HumanoidRootPart"
      hrp.TopSurface, hrp.BottomSurface = 0, 0
      hrp.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
      hrp.Transparency = 1
      hrp.CanCollide = false
      hrp.Anchored = true
      hrp.Locked = true
      hrp.Parent = md
      local learm = Instance.new("Part")
      learm.Name = "Left Arm"
      learm.BrickColor = BrickColor.new("Bright yellow")
      learm.CanCollide = false
      learm.Transparency = 1
      learm.Locked = true
      learm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
      learm.Parent = md
      local riarm = Instance.new("Part")
      riarm.Name = "Right Arm"
      riarm.BrickColor = BrickColor.new("Bright yellow")
      riarm.CanCollide = false
      riarm.Transparency = 1
      riarm.Locked = true
      riarm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
      riarm.Parent = md
      local leleg = Instance.new("Part")
      leleg.Name = "Left Leg"
      leleg.BrickColor = BrickColor.new("Br. yellowish green")
      leleg.CanCollide = false
      leleg.Transparency = 1
      leleg.Locked = true
      leleg.BottomSurface = 0
      leleg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
      leleg.Parent = md
      local rileg = Instance.new("Part")
      rileg.Name = "Right Leg"
      rileg.BrickColor = BrickColor.new("Br. yellowish green")
      rileg.CanCollide = false
      rileg.Locked = true
      rileg.Transparency = 1
      rileg.BottomSurface = 0
      rileg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
      rileg.Parent = md
      local tor = Instance.new("Part")
      tor.Name = "Torso"
      tor.BrickColor = BrickColor.new("Bright blue")
      tor.Locked = true
      tor.Anchored = true
      tor.CanCollide = false
      tor.Transparency = 1
      tor.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
      tor.LeftSurface, tor.RightSurface = "Weld", "Weld"
      tor.Parent = md
      md.PrimaryPart = hrp
      md:SetPrimaryPartCFrame(cfrem)
      md:makeJoints()
      makejoint(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
      makejoint(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
      makejoint(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
      makejoint(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
      makejoint(hrp, RootJointC0, RootJointC1, hrp, tor, "RootJoint")
      makejoint(tor, NeckC0, NeckC1, tor, hd, "Neck")
      tor:FindFirstChild("Right Shoulder").C0 = tor:FindFirstChild("Right Shoulder").C0 * CFrame.new(7, 22, -11) * CFrame.Angles(math.rad(6), 0, 0)
      tor:FindFirstChild("Left Shoulder").C0 = tor:FindFirstChild("Left Shoulder").C0 * CFrame.new(-7, 22, -11) * CFrame.Angles(math.rad(6), 0, 0)
      tor:FindFirstChild("Right Hip").C0 = tor:FindFirstChild("Right Hip").C0 * CFrame.new(7, 19, 7.5) * CFrame.Angles(math.rad(10), 0, 0)
      tor:FindFirstChild("Left Hip").C0 = tor:FindFirstChild("Left Hip").C0 * CFrame.new(-7, 19, 7.5) * CFrame.Angles(math.rad(10), 0, 0)
      tor:FindFirstChild("Neck").C0 = tor:FindFirstChild("Neck").C0 * CFrame.new(0, 1, 3) * CFrame.Angles(math.rad(-90), 0, 0)
      trn(tor)
      trn(hd)
      trn(learm)
      trn(riarm)
      trn(leleg)
      trn(rileg)
      nscale.Value = 1
    end
    local yehboi = true
    bignoob(rootpart.CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(math.rad(90), 0, 0), 15)
    coroutine.resume(coroutine.create(function()
      while workspace:FindFirstChild("The Noob") and yehboi == true do
        swait()
        workspace:FindFirstChild("The Noob"):SetPrimaryPartCFrame(rootpart.CFrame * CFrame.new(0, 9, 0) * CFrame.Angles(math.rad(90), 0, 0))
      end
    end))
    local function bam(cframe, intens, nu)
      local pou1 = Instance.new("Part")
      pou1.BrickColor = BrickColor.new("Grey")
      pou1.Transparency = 0.1
      pou1.CFrame = cframe
      pou1.Parent = mod
      local mosh = Instance.new("SpecialMesh")
      mosh.MeshType = "FileMesh"
      mosh.MeshId = "rbxassetid://489415447"
      mosh.Scale = Vector3.new(1, 1, 1)
      mosh.Parent = pou1
      coroutine.resume(coroutine.create(function()
        for _ = 1, nu do
          swait()
          mosh.Scale = mosh.Scale + Vector3.new(3 * intens, 3 * intens, 3 * intens)
          pou1.Transparency = pou1.Transparency + 0.9 / nu
        end
        pou1:Destroy()
      end))
    end
    wait(1)
    for _ = 1, 50 do
      wait(0.025)
      chr:MoveTo(rootpart.Position + Vector3.new(0, -9.5, 0))
      chr:SetPrimaryPartCFrame(rootpart.CFrame * CFrame.Angles(math.rad(-3.8), math.rad(0), math.rad(0)))
    end
    for _ = 1, 30 do
      wait()
      chr:MoveTo(rootpart.Position + Vector3.new(0, -79.1, 0))
    end
    local ry = Ray.new(rootpart.Position + Vector3.new(0, -6, 0), rootpart.CFrame.upVector * 150)
    local part, poso = workspace:FindPartOnRayWithIgnoreList(ry, {chr}, false, false)
    if part then
      debris(CFrame.new(poso), part, 25)
    end
    chr:MoveTo(poso + Vector3.new(0, 15, 0))
    yehboi = false
    coroutine.resume(coroutine.create(function()
      local sond = Instance.new("Sound")
      sond.Volume = 3
      sond.Pitch = 0.5
      sond.MaxDistance = 300
      sond.SoundId = "rbxassetid://157878578"
      sond.Parent = workspace:FindFirstChild("The Noob").Torso
      sond:Play()
    end))
    stun(workspace:FindFirstChild("The Noob").Torso, 26, 7)
    hito(workspace:FindFirstChild("The Noob").Torso, 26, 15)
    bam(workspace:FindFirstChild("The Noob").Torso.CFrame * CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 16, 32)
    for _ = 1, 10 do
      wait()
      chr:SetPrimaryPartCFrame(rootpart.CFrame * CFrame.Angles(math.rad(7), math.rad(0), math.rad(0)))
    end
    for _ = 1, 8 do
      wait()
      chr:SetPrimaryPartCFrame(rootpart.CFrame * CFrame.Angles(math.rad(4.5), math.rad(2), math.rad(0)))
      torso:FindFirstChild("Right Shoulder").C0 = torso:FindFirstChild("Right Shoulder").C0:lerp(RightShoulderC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(10), math.rad(80)), 0.4)
      torso:FindFirstChild("Left Shoulder").C0 = torso:FindFirstChild("Left Shoulder").C0:lerp(LeftShoulderC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-10), math.rad(80)), 0.4)
    end
    local br = Instance.new("Part")
    br.Anchored = true
    br.CFrame = workspace:FindFirstChild("The Noob").Torso.CFrame
    br.Transparency = 1
    br.CanCollide = false
    br.Parent = workspace
    game.Debris:AddItem(br, 30)
    local hrz = Instance.new("Part")
    hrz.Anchored = true
    hrz.CFrame = rootpart.CFrame
    hrz.Transparency = 1
    hrz.CanCollide = false
    hrz.Parent = workspace
    game.Debris:AddItem(hrz, 30)
    wait(0.4)
    coroutine.resume(coroutine.create(function()
      local f = true
      for n = 1, 70 do
        wait()
        workspace:FindFirstChild("The Noob"):SetPrimaryPartCFrame(br.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)))
        if f == true then
          chr:SetPrimaryPartCFrame(hrz.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 0)) * CFrame.Angles(math.rad(0), math.rad(-32), math.rad(0)))
          torso:FindFirstChild("Neck").C0 = torso:FindFirstChild("Neck").C0:lerp(NeckC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(21)), 0.9)
          f = false
        elseif f == false then
          chr:SetPrimaryPartCFrame(hrz.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 0)) * CFrame.Angles(math.rad(0), math.rad(32), math.rad(0)))
          torso:FindFirstChild("Neck").C0 = torso:FindFirstChild("Neck").C0:lerp(NeckC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-21)), 0.9)
          f = true
        end
      end
    end))
    for _ = 1, 18 do
      wait(0.06)
      torso:FindFirstChild("Right Shoulder").C0 = torso:FindFirstChild("Right Shoulder").C0:lerp(RightShoulderC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-16, -5)), math.rad(math.random(5, 16)), math.rad(math.random(-82, -68))), 1)
      torso:FindFirstChild("Left Shoulder").C0 = torso:FindFirstChild("Left Shoulder").C0:lerp(LeftShoulderC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-16, -5)), math.rad(math.random(-16, -5)), math.rad(math.random(-117, -100))), 1)
      makenoob(rootpart.CFrame * CFrame.new(math.random(-3, 3), math.random(-2, 2), math.random(-5, -3)), rootpart.CFrame.lookVector * math.random(-200, -80), 1)
      bam(larm.CFrame, 1, 9)
      coroutine.resume(coroutine.create(function()
        local sond = Instance.new("Sound")
        sond.Volume = 0.7
        sond.PlaybackSpeed = math.random(19, 26) / 10
        sond.SoundId = "rbxassetid://157878578"
        sond.MaxDistance = 150
        sond.Parent = workspace:FindFirstChild("The Noob").Torso
        sond:Play()
      end))
      wait(0.06)
      torso:FindFirstChild("Right Shoulder").C0 = torso:FindFirstChild("Right Shoulder").C0:lerp(RightShoulderC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-16, -5)), math.rad(math.random(5, 16)), math.rad(math.random(100, 117))), 1)
      torso:FindFirstChild("Left Shoulder").C0 = torso:FindFirstChild("Left Shoulder").C0:lerp(LeftShoulderC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-16, -5)), math.rad(math.random(-16, -5)), math.rad(math.random(68, 82))), 1)
      makenoob(rootpart.CFrame * CFrame.new(math.random(-3, 3), math.random(-2, 2), math.random(-5, -3)), rootpart.CFrame.lookVector * math.random(-200, -80), 1)
      hito(workspace:FindFirstChild("The Noob").Torso, 18, 5)
      if part then
        debris(CFrame.new(poso), part, 1)
      end
      bam(rarm.CFrame, 1, 9)
    end
    wait(0.6)
    for _ = 1, 15 do
      wait(0.02)
      chr:SetPrimaryPartCFrame(rootpart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(2), math.rad(0)))
    end
    for _ = 1, 8 do
      swait()
      torso:FindFirstChild("Right Shoulder").C0 = torso:FindFirstChild("Right Shoulder").C0:lerp(RightShoulderC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-16, -5)), math.rad(math.random(5, 16)), math.rad(math.random(-82, -68))), 1)
      torso:FindFirstChild("Left Shoulder").C0 = torso:FindFirstChild("Left Shoulder").C0:lerp(LeftShoulderC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(-16, -5)), math.rad(math.random(50, 51)), math.rad(math.random(-91, -89))), 1)
      torso:FindFirstChild("Neck").C0 = torso:FindFirstChild("Neck").C0:lerp(NeckC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(61)), 0.9)
      chr:SetPrimaryPartCFrame(rootpart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-18), math.rad(0)))
    end
    coroutine.resume(coroutine.create(function()
      local sond = Instance.new("Sound")
      sond.Volume = 3
      sond.PlaybackSpeed = math.random(6, 8) / 10
      sond.SoundId = "rbxassetid://157878578"
      sond.MaxDistance = 200
      sond.Parent = workspace:FindFirstChild("The Noob").Torso
      sond:Play()
    end))
    bam(larm.CFrame, 6, 24)
    hito(workspace:FindFirstChild("The Noob").Torso, 32, 20)
    wait(0.6)
    for _, d in pairs(torso:GetChildren()) do
      if d.ClassName == "Motor6D" then
        d:Destroy()
      end
    end
    makejoint(torso, NeckC0, NeckC1, torso, chr.Head, "Neck")
    makejoint(torso, LeftShoulderC0, LeftShoulderC1, torso, larm, "Left Shoulder")
    makejoint(torso, RightShoulderC0, RightShoulderC1, torso, rarm, "Right Shoulder")
    makejoint(torso, LeftHipC0, LeftHipC1, torso, lleg, "Left Hip")
    makejoint(torso, RightHipC0, RightHipC1, torso, rleg, "Right Hip")
    chr:SetPrimaryPartCFrame(workspace:FindFirstChild("The Noob").Torso.CFrame * CFrame.new(0, 0, 8))
    chr:SetPrimaryPartCFrame(rootpart.CFrame * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)))
    for _ = 1, 40 do
      swait()
      chr:MoveTo(rootpart.CFrame.p + Vector3.new(0, 2, -3))
      chr:SetPrimaryPartCFrame(rootpart.CFrame * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)))
    end
    rootpart.Anchored = false
    animo.Parent = human
    chr.Animate.Disabled = false
    hito(workspace:FindFirstChild("The Noob").Torso, 36, 40)
    for _, parz in pairs(workspace:FindFirstChild("The Noob"):GetChildren()) do
      if parz.ClassName == "Part" then
        for _, g in pairs(parz:GetChildren()) do
          if g.ClassName == "Motor6D" then
            g:Destroy()
          end
        end
        if parz.Name == "HumanoidRootPart" then
          parz:Destroy()
        end
        if workspace:FindFirstChild("The Noob"):FindFirstChild("Humanoid") then
          workspace:FindFirstChild("The Noob"):FindFirstChild("Humanoid"):Destroy()
        end
        parz.Anchored = false
        parz.CanCollide = false
        do
          local bodyp = Instance.new("BodyVelocity")
          bodyp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
          bodyp.Velocity = Vector3.new(math.random(-200, 200), math.random(150, 300), math.random(-200, 200))
          bodyp.P = 500
          bodyp.Parent = parz
          parz.RotVelocity = Vector3.new(math.random(-700, 700), math.random(-700, 700), math.random(-700, 700))
          delay(0.02, function()
            bodyp:Destroy()
            wait(2)
            parz.CanCollide = true
          end)
          game.Debris:AddItem(parz, 10)
        end
      end
    end
    coroutine.resume(coroutine.create(function()
      local ex = Instance.new("Explosion")
      ex.BlastRadius = 40
      ex.DestroyJointRadiusPercent = 0.2
      ex.BlastPressure = 120
      ex.ExplosionType = 2
      ex.Position = workspace:FindFirstChild("The Noob").Torso.Position
      ex.Visible = true
      ex.Parent = workspace
      wait(12)
      if workspace:FindFirstChild("The Noob") then
        workspace:FindFirstChild("The Noob"):Destroy()
      end
      wait(0.5)
      warudo = false
    end))
    waruding = false
  end
  function makenoob(cfrem, velocity, scalo)
    nscale.Value = scalo
    local md = Instance.new("Model")
    md.Name = "Noob"
    md.Parent = workspace
    local hu = Instance.new("Humanoid")
    hu.RigType = "R6"
    hu.Parent = md
    local anm = Instance.new("Animator")
    anm.Parent = hu
    hu.PlatformStand = true
    local light = function(part)
      part.CustomPhysicalProperties = PhysicalProperties.new(0.35, 0.3, 0.5)
    end
    local hd = Instance.new("Part")
    hd.Name = "Head"
    hd.Size = Vector3.new(2 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    hd.TopSurface = "Smooth"
    hd.BottomSurface = "Inlet"
    hd.Locked = true
    hd.BrickColor = BrickColor.new("Bright yellow")
    hd.CanCollide = true
    hd.Anchored = false
    light(hd)
    hd.Parent = md
    local hm = Instance.new("SpecialMesh")
    hm.MeshType = "Head"
    hm.Scale = Vector3.new(1.25, 1.25, 1.25)
    hm.Parent = hd
    local hf = Instance.new("Decal")
    hf.Texture = "rbxasset://textures/face.png"
    local gen = math.random(1, 40)
    if gen == 3 then
      hf.Texture = "rbxassetid://260884109"
    end
    if gen == 8 then
      hf.Texture = "rbxassetid://260569492"
    end
    if gen == 12 then
      hf.Texture = "rbxassetid://259580505"
    end
    if gen == 16 then
      hf.Texture = "rbxassetid://259579232"
    end
    if gen == 24 then
      hf.Texture = "rbxassetid://259571525"
    end
    if gen == 28 then
      hf.Texture = "rbxassetid://258283210"
    end
    if gen == 32 then
      hf.Texture = "rbxassetid://258940032"
    end
    if gen == 38 then
      hf.Texture = "rbxassetid://673220970"
      hf.Color3 = Color3.new(0, 0, 0)
    end
    hf.Face = "Front"
    hf.Parent = hd
    local hrp = Instance.new("Part")
    hrp.Name = "HumanoidRootPart"
    hrp.TopSurface, hrp.BottomSurface = 0, 0
    hrp.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    hrp.Transparency = 1
    hrp.CanCollide = false
    hrp.Locked = true
    light(hrp)
    hrp.Parent = md
    local learm = Instance.new("Part")
    learm.Name = "Left Arm"
    learm.BrickColor = BrickColor.new("Bright yellow")
    learm.CanCollide = false
    learm.Locked = true
    learm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    light(learm)
    learm.Parent = md
    local riarm = Instance.new("Part")
    riarm.Name = "Right Arm"
    riarm.BrickColor = BrickColor.new("Bright yellow")
    riarm.CanCollide = false
    riarm.Locked = true
    light(riarm)
    riarm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    riarm.Parent = md
    local leleg = Instance.new("Part")
    leleg.Name = "Left Leg"
    leleg.BrickColor = BrickColor.new("Br. yellowish green")
    leleg.CanCollide = false
    leleg.Locked = true
    light(leleg)
    leleg.BottomSurface = 0
    leleg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    leleg.Parent = md
    local rileg = Instance.new("Part")
    rileg.Name = "Right Leg"
    rileg.BrickColor = BrickColor.new("Br. yellowish green")
    rileg.CanCollide = false
    rileg.Locked = true
    light(rileg)
    rileg.BottomSurface = 0
    rileg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    rileg.Parent = md
    local tor = Instance.new("Part")
    tor.Name = "Torso"
    tor.BrickColor = BrickColor.new("Bright blue")
    tor.Locked = true
    light(tor)
    tor.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    tor.LeftSurface, tor.RightSurface = "Weld", "Weld"
    tor.Parent = md
    md.PrimaryPart = hrp
    md:SetPrimaryPartCFrame(cfrem * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)))
    md:makeJoints()
    makegloo(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
    makegloo(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
    makegloo(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
    makegloo(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
    makejoint(hrp, RootJointC0, RootJointC1, hrp, tor, "RootJoint")
    makejoint(tor, NeckC0, NeckC1, tor, hd, "Neck")
    maketouchy(riarm, riarm, CFrame.new(0, 0.5 * nscale.Value, 0))
    maketouchy(learm, learm, CFrame.new(0, 0.5 * nscale.Value, 0))
    maketouchy(leleg, leleg, CFrame.new(0, 0.5 * nscale.Value, 0))
    maketouchy(rileg, rileg, CFrame.new(0, 0.5 * nscale.Value, 0))
    local d = math.random(0, 12)
    if d == 5 then
      local sun = Instance.new("Sound")
      sun.SoundId = "rbxassetid://167285348"
      sun.Pitch = math.random(9, 10) / 10
      sun.Volume = 3
      sun.Parent = hrp
      sun:Play()
    elseif d == 6 then
      local sun = Instance.new("Sound")
      sun.SoundId = "rbxassetid://604650009"
      sun.Pitch = math.random(7, 13) / 10
      sun.Volume = 3
      sun.Parent = hrp
      sun:Play()
    end
    local bodyp = Instance.new("BodyVelocity")
    bodyp.MaxForce = Vector3.new(90000, 90000, 90000)
    bodyp.Velocity = velocity
    bodyp.P = 5000
    bodyp.Parent = hrp
    delay(0.06, function()
      bodyp:Destroy()
    end)
    nscale.Value = 1
  end
  function hito(partoz, magn, dmg)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("Torso") and guy ~= chr and magn > (guy:FindFirstChild("Torso").Position - partoz.Position).magnitude then
        local humz = guy:FindFirstChild("Humanoid")
        local torse = guy:FindFirstChild("Torso")
        humz:TakeDamage(dmg)
      end
    end
  end
  function stun(partoz, magn, time)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("Torso") and guy ~= chr and magn > (guy:FindFirstChild("Torso").Position - partoz.Position).magnitude then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local torse = guy:FindFirstChild("Torso")
          guy.PrimaryPart = torse
          torse.Anchored = true
          if guy:FindFirstChild("HumanoidRootPart") then
            guy:FindFirstChild("HumanoidRootPart").Anchored = true
            delay(time, function()
              if guy:FindFirstChild("HumanoidRootPart") then
                guy:FindFirstChild("HumanoidRootPart").Anchored = false
              end
            end)
          end
          guy:SetPrimaryPartCFrame(torse.CFrame * CFrame.Angles(math.rad(0), 0, 0))
          delay(time, function()
            if torse then
              torse.Anchored = false
            end
          end)
        end
      end
    end
  end
  function debris(cfremz, thepart, amt)
    for j = 1, amt do
      do
        local pr = Instance.new("Part")
        nooutline(pr)
        pr.Name = "debrisobeb"
        pr.Anchored = true
        pr.BrickColor = thepart.BrickColor
        pr.CanCollide = true
        pr.Material = thepart.Material
        pr.Transparency = thepart.Transparency
        pr.Size = Vector3.new(math.random(16, 24), math.random(12, 16), math.random(16, 24))
        pr.CFrame = cfremz * CFrame.Angles(0, math.rad(amt * j), 0) * CFrame.new(0, -5, math.random(18, 22)) * CFrame.Angles(math.rad(math.random(-30, -15)), math.rad(math.random(0, 1)), math.rad(math.random(0, 1)))
        pr.Parent = workspace
        game.Debris:AddItem(pr, 25)
        delay(15, function()
          if pr then
            pr.CanCollide = false
            pr.Anchored = false
          end
        end)
      end
    end
    for c = 1, amt do
      do
        local pr2 = Instance.new("Part")
        nooutline(pr2)
        pr2.Name = "moredebr"
        pr2.Anchored = false
        pr2.BrickColor = thepart.BrickColor
        pr2.CanCollide = false
        pr2.Material = thepart.Material
        pr2.Transparency = thepart.Transparency
        pr2.Size = Vector3.new(math.random(8, 18), math.random(6, 18), math.random(8, 18))
        pr2.CFrame = cfremz * CFrame.Angles(0, math.rad(30 * c), 0) * CFrame.new(0, -5, math.random(18, 22)) * CFrame.Angles(math.rad(math.random(-30, -15)), math.rad(math.random(0, 1)), math.rad(math.random(0, 1)))
        pr2.Parent = workspace
        pr2.Velocity = Vector3.new(math.random(-75, 75), math.random(120, 240), math.random(-75, 75))
        pr2.RotVelocity = Vector3.new(math.random(-35, 35), math.random(-35, 35), math.random(-35, 35))
        game.Debris:AddItem(pr2, 45)
        delay(2, function()
          pr2.CanCollide = true
          wait(10)
          if pr2 then
            pr2.CanCollide = false
          end
        end)
      end
    end
  end
  function camshake(partoz, magn, intens)
    if togglecamshake == true then
      return
    end
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("Torso") and guy.Name ~= "Noob" and magn > (guy:FindFirstChild("Torso").Position - partoz.Position).magnitude then
        coroutine.resume(coroutine.create(function()
          local humz = guy:FindFirstChild("Humanoid")
          local torse = guy:FindFirstChild("Torso")
          for _ = 1, 5 * intens do
            wait()
            humz.CameraOffset = Vector3.new(2 * math.random(-intens, intens), 0.5 * math.random(-intens, intens), 2 * math.random(-intens, intens))
          end
          humz.CameraOffset = Vector3.new(0, 0, 0)
        end))
      end
    end
  end
  function cleannoobs()
    for _, nib in pairs(workspace:GetChildren()) do
      coroutine.resume(coroutine.create(function()
        if nib.Name == "Noob" then
          if nib:FindFirstChild("HumanoidRootPart") then
            wait(0.06)
            do
              local g = Instance.new("Part")
              g.CanCollide, g.Anchored = false, true
              g.Transparency = 1
              g.CFrame = nib:FindFirstChild("HumanoidRootPart").CFrame
              g.Parent = workspace
              game.Debris:AddItem(g, 4)
              local sou = Instance.new("Sound")
              sou.Pitch = math.random(7, 11) / 10
              sou.Volume = 0.9
              sou.SoundId = "rbxassetid://111124523"
              sou.Parent = g
              sou:Play()
              local pe = Instance.new("ParticleEmitter")
              pe.Acceleration = Vector3.new(0, 8, 0)
              pe.Lifetime = NumberRange.new(1, 1.5)
              pe.Rate = 20000
              pe.RotSpeed = NumberRange.new(-30, 30)
              pe.Rotation = NumberRange.new(0, 360)
              pe.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 4.38, 0),
                NumberSequenceKeypoint.new(0.672, 4.14, 0),
                NumberSequenceKeypoint.new(1, 1.48, 0)
              })
              pe.Texture = "rbxassetid://244221440"
              pe.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0, 0),
                NumberSequenceKeypoint.new(0.529, 0.3, 0),
                NumberSequenceKeypoint.new(1, 1, 1)
              })
              pe.ZOffset = 5
              pe.VelocitySpread = 360
              pe.Parent = g
              delay(0.04, function()
                pe.Enabled = false
              end)
            end
          end
          nib:Destroy()
        end
      end))
    end
  end
  tool.Activated:connect(function()
    movinit()
  end)
  mouse.KeyDown:connect(function(key)
    if key == "r" then
      test()
    end
    if key == "q" then
      shoom()
    end
    if key == "f" then
      pow()
    end
    if key == "t" then
      transpo()
    end
    if key == "c" then
      cleannoobs()
    end
    if key == "m" and plr.Name == "DahNoob" or key == "m" and plr.Name == "FlaireZol" or key == "m" and plr.Name == "Fenrier" then
      ZAWARUDO()
    end
    if key == "k" then
      if togglecamshake == false then
        togglecamshake = true
      elseif togglecamshake == true then
        togglecamshake = false
      end
    end
  end)
  tool.Equipped:connect(function()
    selected = true
  end)
  tool.Unequipped:connect(function()
    selected = false
  end)