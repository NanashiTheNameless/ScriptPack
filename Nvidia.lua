--Error: unexpected symbol near 'char(127)--

script.Parent = nil
Character = game.Players.localPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
m = game:GetService("ReplicatedStorage").Weapons.Nvidia.GTX980:Clone()
gtx = m
fan = m.Fan
handle = m.Handle
sparks = handle.Spark
weldScript = function(weldTo)
  local weldModel = Instance.new("Model", weldTo)
  weldModel.Name = "Welds"
  local makeWeld = function(part1, part0)
    local w = Instance.new("Weld", weldModel)
    w.Part0 = part0
    w.Part1 = part1
    local CFrameOrigin = CFrame.new(part0.Position)
    local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
    local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
    w.C0 = CFrame0
    w.C1 = CFrame1
  end
  for i,v in pairs(weldTo.Parent:children()) do
    if (v.ClassName == "Part" or v.Name == "Part" or v:isA("WedgePart")) and v ~= weldTo then
      makeWeld(v, weldTo)
      v.Anchored = false
      v.CanCollide = false
    end
  end
  weldTo.Anchored = false
end
weldScript(handle)
weldScript(fan.Base)
local fanjoint = Instance.new("Motor", gtx.Base)
fanjoint.Part0 = gtx.Base
fanjoint.Part1 = fan.Base
pls = game:GetService("Players")
rs = game:GetService("RunService")
uinps = game:GetService("UserInputService")
lp = pls.LocalPlayer
mouse = lp:GetMouse()
c = lp.Character
human = c.Humanoid
critTime = 0.27
gtx.Parent = c
hw = Instance.new("Motor", c.Torso)
hw.Name = "HandleWeld"
hw.Part0 = c.Torso
hw.Part1 = handle
Debounces = {FPS = 0, Mode = "Still", Debounce = false, wasCrit = false, SwitchingModes = false, attackNumber = 0, isAttacking = false, isMoving = false, isSprinting = false, isJumping = false, isPassive = false, isTyping = false, isAgg = false, musicOn = false, DamDeb = false, isCombo = 0}
numLerp = function(start, goal, alpha)
  return (goal - start) * alpha + start
end
CFrameZero = function()
  return CFrame.new(Vector3.new())
end
rad = function(value)
  return math.rad(value)
end
CFAngles = function(Vector)
  return CFrame.Angles(rad(Vector.x), rad(Vector.y), rad(Vector.z))
end
AnimStat = {lerpSpeed = 0.2}
Joints = {c.HumanoidRootPart.RootJoint, c.Torso.Neck, c.Torso["Left Shoulder"], c.Torso["Right Shoulder"], c.Torso["Left Hip"], c.Torso["Right Hip"], hw}
JointTargets = {CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero()}
prepareCharacter = function()
  human.WalkSpeed = 0
  human.JumpPower = 0
  human.Animator:Destroy()
  human.MaxHealth = 125
  c.Animate:Destroy()
  wait()
  human.Health = 125
end
uinps.InputBegan:connect(function(InputObject)
  if InputObject.KeyCode == Enum.KeyCode.K and Debounces.isTyping == false then
    Debounces.isPassive = not Debounces.isPassive
  end
end)
uinps.InputBegan:connect(function(InputObject)
  if InputObject.KeyCode == Enum.KeyCode.J and Debounces.isTyping == false then
    Debounces.isAgg = not Debounces.isAgg
  end
end)
uinps.InputBegan:connect(function(InputObject)
  if InputObject.KeyCode == Enum.KeyCode.L and Debounces.isTyping == false then
    Debounces.musicOn = not Debounces.musicOn
  end
end)
setJointCFrames = function(table)
  for i = 1, #table do
    JointTargets[i] = table[i]
  end
end
setLerp = function(speed)
  AnimStat.lerpSpeed = speed
end
makegui = function(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  c.Transparency = 1
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", m)
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
  if math.random(1, 10) == 1 then
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
      wait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end)()
end
prepareCharacter()
spawn(function()
  local sine = 0
  while 1 do
    while 1 do
      while 1 do
        while 1 do
          if wait() then
            Debounces.isCombo = Debounces.isCombo + 0.033333333333333
            if Debounces.isAttacking == false and Debounces.isMoving == false and Debounces.isJumping == false and Debounces.Debounce == false then
              setLerp(0.2)
              if Debounces.isPassive == true then
                setJointCFrames({CFrame.new(Vector3.new(0, -1 + math.sin(tick() * 1.8) / 35, 0)) * CFAngles(Vector3.new(-5, 0, 0)), CFrame.new(Vector3.new(0, 1.57 + math.sin(tick() * 1.8) / 40, -0.18)) * CFAngles(Vector3.new(-13.501 + math.sin(tick() * 1.8 - 1) * 4, 3.663, 0.523)), CFrame.new(Vector3.new(-1.5, 0.069 + math.sin(tick() * 1.8 + 1) / 37, -0.56)) * CFAngles(Vector3.new(50.809, 0.672, 3.289)), CFrame.new(Vector3.new(1.599, 0.109 + math.sin(tick() * 1.8 + 1) / 37, 0.229)) * CFAngles(Vector3.new(-21.149, -1.645, 14.912)), CFrame.new(Vector3.new(-0.63, -1.141 - math.sin(tick() * 1.8) / 40, -0.64)) * CFAngles(Vector3.new(0.773, 6.984, -4.382)), CFrame.new(Vector3.new(0.619, -1.2 - math.sin(tick() * 1.8) / 40, 0.78)) * CFAngles(Vector3.new(-61.93, 0.603, 9.809)), CFrame.new(Vector3.new(-0.776, -1.416 + math.sin(tick() * 1.8 + 1) / 37, 1.533)) * CFAngles(Vector3.new(11.916 + math.sin(tick() * 1.8) * 0.4, 15.785, -177.784))})
                -- DECOMPILER ERROR at PC230: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC230: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC230: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC230: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC230: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC230: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
        setJointCFrames({CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 1.8) / 35, 0)) * CFAngles(Vector3.new(0, 0, 0)), CFrame.new(Vector3.new(0, 1.5 + math.sin(tick() * 1.8) / 60, -0.1)) * CFAngles(Vector3.new(-14.0871 + math.sin(tick() * 1.8 - 1) * 2, -4.516, -0.001)), CFrame.new(Vector3.new(-1.5, -0.001 + math.sin(tick() * 1.8 + 1) / 37, -0.4)) * CFAngles(Vector3.new(44.999 + math.sin(tick() * 1.8 - 0.3) * 2, 14.999, 0)), CFrame.new(Vector3.new(1.599, 0.349 + math.sin(tick() * 1.8 + 1) / 37, -0.401)) * CFAngles(Vector3.new(74.999 + math.sin(tick() * 1.8 - 0.3) * 2, 14.999, 0)), CFrame.new(Vector3.new(-0.63, -2.02 - math.sin(tick() * 1.8) / 40, 0)) * CFAngles(Vector3.new(0.773, 6.984, -4.382)), CFrame.new(Vector3.new(0.569, -2 - math.sin(tick() * 1.8) / 40, 0)) * CFAngles(Vector3.new(2.093, -9.162, 2.619)), CFrame.new(Vector3.new(-0.986, -0.686 + math.sin(tick() * 1.8 - 0.3) / 20, -1.397)) * CFAngles(Vector3.new(89.739, -74.514, -165.774))})
      end
      if Debounces.isAttacking == false and Debounces.isMoving == true and Debounces.isJumping == false and Debounces.Debounce == false then
        sine = tick() * 8
        human.WalkSpeed = 14
        setLerp(0.4)
        setJointCFrames({CFrame.new(Vector3.new(0, math.sin(sine * 2) / 14, 0)) * CFAngles(Vector3.new(0, math.sin(sine) * -5.5, 0)), CFrame.new(Vector3.new(0, 1.499, -0.04)) * CFAngles(Vector3.new(-5.676, -0.001 - math.sin(sine) * -1, -0.001)), CFrame.new(Vector3.new(-1.97, 0 + math.sin(sine + 0.5) / 20, 0.1 + math.sin(-(sine)) / 2) / 1.3) * CFAngles(Vector3.new(-5 + math.sin(sine) * 23, 0, math.sin(sine - 2) * 2 - 5)), CFrame.new(Vector3.new(1.97, 0 - math.sin(sine + 0.5) / 20, 0.1 + math.sin(sine) / 2) / 1.3) * CFAngles(Vector3.new(-5 + math.sin(-(sine)) * 23, 0, math.sin(sine - 2) * 2 + 5)), CFrame.new(Vector3.new(-0.5, -1.93 - math.cos(sine) / 8.7, 0.2 + math.sin(sine) / 2)) * CFAngles(Vector3.new(-15 + math.sin(-(sine)) * 30, 0, 0)), CFrame.new(Vector3.new(0.5, -1.93 + math.cos(sine) / 8.7, 0.2 + math.sin(-(sine)) / 2)) * CFAngles(Vector3.new(-15 + math.sin(sine) * 30, 0, 0)), CFrame.new(Vector3.new(-1.176, -0.516 + math.sin(-(sine)) / 2.2, 1.133 + math.sin(-(sine)) / 1.6)) * CFAngles(Vector3.new(-22.916 + math.sin(sine) * 23, 11.785, -267.784))})
        -- DECOMPILER ERROR at PC692: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC692: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
    if Debounces.isJumping ~= true or Debounces.Debounce == false then
      setLerp(0.14)
      setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-8, 0, 0)), CFrame.new(Vector3.new(0, 1.5, -0.15)) * CFAngles(Vector3.new(-10.138, 3.687, 0.306)), CFrame.new(Vector3.new(-1.23, 0.069, -0.56)) * CFAngles(Vector3.new(50.809, 0.672, 18.704)), CFrame.new(Vector3.new(0.929, -0.031, -1.0912)) * CFAngles(Vector3.new(63, 13.85, -36.416)), CFrame.new(Vector3.new(-0.63, -1.82, -0.74)) * CFAngles(Vector3.new(31.324, 3.424, -1.249)), CFrame.new(Vector3.new(0.619, -1.331, 0.82)) * CFAngles(Vector3.new(-59.644, 0.998, 9.776)), CFrame.new(Vector3.new(-1.466, -0.716, -1.287)) * CFAngles(Vector3.new(23.713, -68.012, 138.119))})
    end
  end
end)
human.Changed:connect(function(prop)
  if prop == "MoveDirection" then
    if human.MoveDirection.magnitude > 0.02 then
      Debounces.isMoving = true
    else
      Debounces.isMoving = false
    end
  end
end)
uinps.InputBegan:connect(function(InputObj)
  if InputObj.KeyCode == Enum.KeyCode.Slash then
    local finishEvent = nil
    do
      Debounces.isTyping = true
      finishEvent = uinps.InputBegan:connect(function(InputObj)
    if InputObj.KeyCode == Enum.KeyCode.Return or InputObj.UserInputType == Enum.UserInputType.MouseButton1 then
      Debounces.isTyping = false
      finishEvent:disconnect()
    end
  end)
    end
  end
end)
uinps.InputBegan:connect(function(InputObj)
  if InputObj.KeyCode == Enum.KeyCode.LeftShift then
    Debounces.isSprinting = true
  end
end)
uinps.InputEnded:connect(function(InputObj)
  if InputObj.KeyCode == Enum.KeyCode.LeftShift then
    Debounces.isSprinting = false
  end
end)
handle.Touched:connect(function(part)
  if Debounces.isAttacking and not Debounces.DamDeb then
    local hum = part.Parent:FindFirstChild("Humanoid")
    Debounces.DamDeb = true
    do
      if part.Parent and hum and hum:isA("Humanoid") then
        local dmg = math.random(5, 26)
        sparks.Enabled = true
        hum:TakeDamage(dmg)
        makegui(CFrame.new(part.CFrame.p + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10 + 1.2, math.random(-10, 10) / 10)), dmg)
      end
      wait(0.1)
      sparks.Enabled = false
      Debounces.DamDeb = false
    end
  end
end)
uinps.InputBegan:connect(function(InputObj)
  local e, e2 = nil, nil
  if InputObj.UserInputType == Enum.UserInputType.MouseButton1 and Debounces.isJumping == false and Debounces.isAttacking == false then
    if Debounces.isCombo <= critTime then
      Debounces.wasCrit = true
    else
      Debounces.wasCrit = false
    end
    Debounces.attackNumber = Debounces.attackNumber + 1
    Debounces.isCombo = 0
    Debounces.isAttacking = true
    setLerp(0.23)
    local playAnim = Debounces.attackNumber % 3 + 1
    local frame1 = {
{CFrame.new(Vector3.new(math.random(-10, 10) / 200, 0, math.random(-10, 10) / 200)) * CFAngles(Vector3.new(0, math.random(-2, 5), 0)), CFrame.new(Vector3.new(0, 1.56, -0.01)) * CFAngles(Vector3.new(-5.914, -13.989, -1.015)), CFrame.new(Vector3.new(-1.021, 0.329, -0.75)) * CFAngles(Vector3.new(82.382, 11.798, 41.905)), CFrame.new(Vector3.new(1.649, 0.169, 0.749)) * CFAngles(Vector3.new(-77.626, 16.244, 21.328)), CFrame.new(Vector3.new(-0.63, -1.871, -0.38)) * CFAngles(Vector3.new(-0.91, 3.562, 0.768)), CFrame.new(Vector3.new(0.619, -2.011, 0.31)) * CFAngles(Vector3.new(-26.804, -12.884, -1.817)), CFrame.new(Vector3.new(-0.666, 0.294, -1.807)) * CFAngles(Vector3.new(-28.48, 70.346, -83.191))}
, 
{CFrame.new(Vector3.new(math.random(-10, 10) / 200, 0, math.random(-10, 10) / 200)) * CFAngles(Vector3.new(0, math.random(-2, 5), 0)), CFrame.new(Vector3.new(0, 1.56, -0.01)) * CFAngles(Vector3.new(-14.957, 9.347, 1.86)), CFrame.new(Vector3.new(-1.471, 0.239, -0.98)) * CFAngles(Vector3.new(50.874, -38.983, 14.74)), CFrame.new(Vector3.new(1.789, 0.049, 0.249)) * CFAngles(Vector3.new(-39.301, 20.922, 22.363)), CFrame.new(Vector3.new(-0.63, -2.02, -0.14)) * CFAngles(Vector3.new(0.523, 3.58, 0.679)), CFrame.new(Vector3.new(0.62, -2.011, 0.31)) * CFAngles(Vector3.new(-32.649, -15.017, 6.958)), CFrame.new(Vector3.new(-0.646, -0.576, -1.597)) * CFAngles(Vector3.new(-73.07, 86.04, -17.928))}
, 
{CFrame.new(Vector3.new(math.random(-10, 10) / 200, 0, math.random(-10, 10) / 200)) * CFAngles(Vector3.new(0, math.random(-2, 5), 0)), CFrame.new(Vector3.new(0.14, 1.56, -0.01)) * CFAngles(Vector3.new(-8.767, 9.322, 0.967)), CFrame.new(Vector3.new(-1.711, -0.051, -0.28)) * CFAngles(Vector3.new(26.633, -15.091, -28.888)), CFrame.new(Vector3.new(1.789, 0.049, 0.109)) * CFAngles(Vector3.new(-10.529, 11.255, 19.434)), CFrame.new(Vector3.new(-0.59, -2.02, -0.14)) * CFAngles(Vector3.new(1.445, 18.442, -3.585)), CFrame.new(Vector3.new(0.799, -2.031, -0.04)) * CFAngles(Vector3.new(1.339, -21.187, 15.748)), CFrame.new(Vector3.new(-1.966, -0.756, -1.117)) * CFAngles(Vector3.new(177.818, -16.903, 86.063))}
}
    local frame2 = {
{CFrame.new(Vector3.new(0, 0, math.random(-10, 10) / 200)) * CFAngles(Vector3.new(0, math.random(-2, 5), 0)), CFrame.new(Vector3.new(0, 1.56, -0.01)) * CFAngles(Vector3.new(-8.241, 17.447, -0.169)), CFrame.new(Vector3.new(-1.581, -0.151, -0.17)) * CFAngles(Vector3.new(69.448, 37.134, -78.032)), CFrame.new(Vector3.new(1.789, 0.049, 0.609)) * CFAngles(Vector3.new(-54.033, 14.452, 26.869)), CFrame.new(Vector3.new(-0.63, -2.02, -0.14)) * CFAngles(Vector3.new(-18.859, 3.152, 1.828)), CFrame.new(Vector3.new(0.799, -2.011, 0.31)) * CFAngles(Vector3.new(-19.054, -13.009, 10.266)), CFrame.new(Vector3.new(-2.386, -0.986, -2.477)) * CFAngles(Vector3.new(174.048, -0.303, 72.496))}
, 
{CFrame.new(Vector3.new(math.random(-10, 10) / 200, math.random(-10, 10) / 500, math.random(-10, 10) / 200)) * CFAngles(Vector3.new(0, math.random(-2, 5), 0)), CFrame.new(Vector3.new(0, 1.56, -0.01)) * CFAngles(Vector3.new(-9.096, 26.968, -0.885)), CFrame.new(Vector3.new(-1.851, 0.239, -0.98)) * CFAngles(Vector3.new(46.523, -35.77, -44.203)), CFrame.new(Vector3.new(1.789, 0.049, 0.249)) * CFAngles(Vector3.new(-20.556, 7.594, 51.7)), CFrame.new(Vector3.new(-0.9, -2.02, -0.14)) * CFAngles(Vector3.new(0.523, 3.58, -17.2)), CFrame.new(Vector3.new(0.889, -2.071, 0.19)) * CFAngles(Vector3.new(-4.831, -22.678, 13.441)), CFrame.new(Vector3.new(-3.286, -0.016, -3.167)) * CFAngles(Vector3.new(177.818, -16.903, 86.063))}
, 
{CFrame.new(Vector3.new(math.random(-10, 10) / 200, math.random(-10, 10) / 500, math.random(-10, 10) / 200)) * CFAngles(Vector3.new(0, math.random(-2, 5), 0)), CFrame.new(Vector3.new(0.14, 1.56, -0.01)) * CFAngles(Vector3.new(-8.104, -7.695, 0.899)), CFrame.new(Vector3.new(-1.191, 0.109, -0.86)) * CFAngles(Vector3.new(103.661, -62.452, 30.966)), CFrame.new(Vector3.new(1.789, 0.049, 0.269)) * CFAngles(Vector3.new(-41.475, -0.825, 22.337)), CFrame.new(Vector3.new(-0.69, -2.02, -0.14)) * CFAngles(Vector3.new(-6.435, 20.198, -11.958)), CFrame.new(Vector3.new(0.71, -2.031, 0.25)) * CFAngles(Vector3.new(-31.549, -26.093, 2.237)), CFrame.new(Vector3.new(0.504, -0.346, -2.117)) * CFAngles(Vector3.new(147.39, 81.207, 135.492))}
}
    if Debounces.wasCrit == false then
      local e = Instance.new("Sound", c.Head)
      do
        e.Volume = 0.5
        e.SoundId = "rbxassetid://145486992"
        e.Pitch = math.random(110, 130) / 100
        spawn(function()
    wait()
    e:Play()
  end)
        setJointCFrames(frame1[playAnim])
        setLerp(0.35)
        wait(0.1)
        setJointCFrames(frame2[playAnim])
        wait(0.07)
      end
    else
      do
        local e = Instance.new("Sound", c.Head)
        e.Volume = 0.5
        e.SoundId = "rbxassetid://181894961"
        e.Pitch = math.random(130, 160) / 100
        spawn(function()
    wait()
    e:Play()
  end)
        do
          do
            local e2 = Instance.new("Sound", c.Head)
            e2.Volume = 0.6
            e2.Pitch = math.random(110, 130) / 100
            e2.SoundId = "rbxassetid://200632875"
            spawn(function()
    wait()
    e2:Play()
  end)
            setLerp(0.4)
            setJointCFrames(frame1[playAnim])
            setLerp(0.5)
            wait(0.05)
            setJointCFrames(frame2[playAnim])
            wait(0.06)
            Debounces.isAttacking = false
            wait(5)
            if e then
              e:Destroy()
              e2:Destroy()
            end
          end
        end
      end
    end
  end
end)
uinps.InputBegan:connect(function(InputObj)
  if InputObj.KeyCode == Enum.KeyCode.Space and Debounces.isTyping == false and Debounces.isJumping == false and Debounces.Debounce == false then
    Debounces.Debounce = true
    human.WalkSpeed = 0
    setLerp(0.2)
    setJointCFrames({CFrame.new(Vector3.new(0, -1, 0)) * CFAngles(Vector3.new(0, 0, 0)), CFrame.new(Vector3.new(0, 1.5, -0.15)) * CFAngles(Vector3.new(-18.621, -3.513, 0.853)), CFrame.new(Vector3.new(-1.01, 0.069, -0.69)) * CFAngles(Vector3.new(50.809, 0.672, 20.794)), CFrame.new(Vector3.new(1.309, -0.031, -0.031)) * CFAngles(Vector3.new(-33.146, 36.092, 14.78)), CFrame.new(Vector3.new(-0.63, -1.33, -0.74)) * CFAngles(Vector3.new(-13.998, 3.296, 1.554)), CFrame.new(Vector3.new(0.619, -1.331, 0.42)) * CFAngles(Vector3.new(-58.408, 1.211, 9.751)), CFrame.new(Vector3.new(-1.896, -0.596, -1.287)) * CFAngles(Vector3.new(0.315, -82.579, 125.578))})
    wait(0.25)
    human.JumpPower = 75
    human.Jump = true
    Debounces.Debounce = false
    human.WalkSpeed = 45
    Debounces.isJumping = true
    wait()
    human.JumpPower = 0
  end
end)
uinps.InputBegan:connect(function(InputObj)
  if InputObj.KeyCode == Enum.KeyCode.Space and Debounces.isTyping == false and Debounces.isSprinting == true and Debounces.isJumping == false and Debounces.Debounce == false then
    Debounces.Debounce = true
    human.WalkSpeed = 0
    setLerp(0.2)
    setJointCFrames({CFrame.new(Vector3.new(0, -1, 0)) * CFAngles(Vector3.new(0, 0, 0)), CFrame.new(Vector3.new(0, 1.5, -0.15)) * CFAngles(Vector3.new(-18.621, -3.513, 0.853)), CFrame.new(Vector3.new(-1.01, 0.069, -0.69)) * CFAngles(Vector3.new(50.809, 0.672, 20.794)), CFrame.new(Vector3.new(1.309, -0.031, -0.031)) * CFAngles(Vector3.new(-33.146, 36.092, 14.78)), CFrame.new(Vector3.new(-0.63, -1.33, -0.74)) * CFAngles(Vector3.new(-13.998, 3.296, 1.554)), CFrame.new(Vector3.new(0.619, -1.331, 0.42)) * CFAngles(Vector3.new(-58.408, 1.211, 9.751)), CFrame.new(Vector3.new(-1.896, -0.596, -1.287)) * CFAngles(Vector3.new(0.315, -82.579, 125.578))})
    wait(0.25)
    human.JumpPower = 100
    local e = Instance.new("Sound", c.Head)
    do
      e.SoundId = "rbxassetid://180204603"
      e.Pitch = math.random(90, 110) / 100
      e.Volume = 1
      spawn(function()
    wait()
    e:Play()
  end)
      local e2 = Instance.new("Part", c)
      e2.Size = Vector3.new(1, 1, 1)
      e2.CFrame = CFrame.new(c.HumanoidRootPart.CFrame.p - Vector3.new(0, 3, 0)) * CFrame.Angles(math.pi / 2, 0, 0)
      e2.BrickColor = BrickColor.new("White")
      e2.Anchored = true
      e2.CanCollide = false
      local rm = Instance.new("SpecialMesh", e2)
      rm.MeshType = "FileMesh"
      rm.MeshId = "rbxassetid://3270017"
      rm.Scale = Vector3.new(1, 1, 6)
      human.Jump = true
      Debounces.Debounce = false
      Debounces.isJumping = true
      human.WalkSpeed = 55
      wait()
      human.JumpPower = 0
      while 1 do
        if rs.RenderStepped:wait() then
          rm.Scale = rm.Scale:lerp(Vector3.new(35, 35, 6), 0.15 / (Debounces.FPS / 60))
          e2.Transparency = numLerp(e2.Transparency, 1, 0.15 / (Debounces.FPS / 60))
        end
        if e2.Transparency >= 0.98 then
          break
        end
      end
      e2:Destroy()
    end
  end
end)
human.StateChanged:connect(function(os, ns)
  if c.HumanoidRootPart.Velocity.Y < 0.1 and Debounces.isJumping == true and ns == Enum.HumanoidStateType.Landed then
    Debounces.isJumping = false
  end
end)
rs.RenderStepped:connect(function()
  Debounces.FPS = 1 / rs.RenderStepped:wait()
  if Debounces.FPS < 30 then
    Debounces.FPS = 30
  end
  local FPSLerp = AnimStat.lerpSpeed / (Debounces.FPS / 60)
  fanjoint.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(tick(), 0, 0)
  for i = 1, #Joints do
    Joints[i].C0 = Joints[i].C0:lerp(JointTargets[i], FPSLerp)
    Joints[i].C1 = CFrameZero()
  end
end)

