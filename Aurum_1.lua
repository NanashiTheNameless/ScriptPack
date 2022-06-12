
--Runs with no error. Still no actual script running--
TagService = require(game:GetService("ReplicatedStorage"):WaitForChild("TagService"))
pls = game:GetService("Players")
rs = game:GetService("RunService")
uinps = game:GetService("UserInputService")
lp = pls.LocalPlayer
mouse = lp:GetMouse()
c = lp.Character
human = c.Humanoid
health = 130
root = c.HumanoidRootPart
EfxModel = Instance.new("Model", c)
Effects = {
Spark = {new = function(pos, point, length, thickness, speed, distime, color, trans, material)
  local e = Instance.new("Part", EfxModel)
  e.Name = "Spark"
  e.Size = Vector3.new(thickness, thickness, length + math.random(-10, 10) / 10)
  e.BrickColor = BrickColor.new(color or "Black")
  if not trans then
    e.Transparency = math.random(1, 3) / 10
    e.Material = material or "Neon"
    e.Anchored = true
    e.CanCollide = false
    e.CFrame = CFrame.new(pos, point)
    local m = Instance.new("SpecialMesh", e)
    m.MeshType = "Sphere"
    local d = Instance.new("NumberValue", e)
    d.Name = "Time"
    d.Value = distime or 0.05
    local s = Instance.new("NumberValue", e)
    s.Name = "Speed"
    s.Value = speed or 0.5
  end
end, move = function(part)
  part.CFrame = part.CFrame:toWorldSpace(CFrame.new(0, 0, part.Speed.Value / (Debounces.FPS / 60)))
  part.Transparency = part.Transparency + part.Time.Value / (Debounces.FPS / 60)
  if part.Transparency > 0.97 then
    part:Destroy()
  end
end}
, 
Spark2 = {new = function(pos, point, length, thickness, speed, distime, drop, color, trans, material)
  local e = Instance.new("Part", EfxModel)
  e.Name = "Spark2"
  e.Size = Vector3.new(thickness, thickness, length + math.random(-10, 10) / 10)
  e.BrickColor = BrickColor.new(color or "Black")
  if not trans then
    e.Transparency = math.random(1, 3) / 10
    e.Material = material or "Neon"
    e.Anchored = true
    e.CanCollide = false
    e.CFrame = CFrame.new(pos, point)
    local m = Instance.new("SpecialMesh", e)
    m.MeshType = "Sphere"
    local d = Instance.new("NumberValue", e)
    d.Name = "Time"
    d.Value = distime or 0.05
    local s = Instance.new("NumberValue", e)
    s.Name = "Speed"
    s.Value = speed or 0.5
    local d2 = Instance.new("NumberValue", e)
    d2.Name = "Drop"
    d2.Value = drop or 0.2
  end
end, move = function(part)
  local moveTo = part.CFrame.lookVector * part.Speed.Value
  moveTo = moveTo - Vector3.new(0, part.Drop.Value / Debounces.FPS, 0)
  part.CFrame = CFrame.new(part.CFrame.p + (moveTo), part.CFrame.p + (moveTo) * 2)
  part.Transparency = part.Transparency + part.Time.Value / (Debounces.FPS / 60)
  if part.Transparency > 0.97 then
    part:Destroy()
  end
end}
, 
Sphere = {new = function(pos, radius, time, size, color, trans, material)
  local e = Instance.new("Part", EfxModel)
  e.Name = "Sphere"
  e.Size = Vector3.new(radius, radius, radius)
  e.BrickColor = BrickColor.new(color or "Black")
  if not trans then
    e.Transparency = math.random(1, 3) / 10
    e.Material = material or "Neon"
    e.Anchored = true
    e.CanCollide = false
    e.CFrame = CFrame.new(pos)
    local m = Instance.new("SpecialMesh", e)
    m.MeshType = "Sphere"
    local d = Instance.new("NumberValue", e)
    d.Name = "Time"
    d.Value = distime or 0.055
    local s = Instance.new("NumberValue", e)
    s.Name = "SizeChange"
    s.Value = size or 0.5
  end
end, move = function(part)
  local pcf = part.CFrame
  part.Size = part.Size + Vector3.new(part.SizeChange.Value, part.SizeChange.Value, part.SizeChange.Value)
  part.CFrame = pcf
  part.Transparency = part.Transparency + part.Time.Value
  if part.Transparency > 0.95 then
    part:Destroy()
  end
end}
, 
Fire = {new = function(pos, size, speed, transspeed, wave, color, trans, material)
  local e = Instance.new("Part", EfxModel)
  e.Name = "Fire"
  e.Size = Vector3.new(size, size, size)
  e.BrickColor = BrickColor.new(color or "Bright orange")
  if not trans then
    e.Transparency = math.random(1, 3) / 10
    e.Material = material or "Neon"
    e.Anchored = true
    e.CanCollide = false
    e.CFrame = CFrame.new(pos)
    local d = Instance.new("NumberValue", e)
    d.Name = "Time"
    d.Value = transspeed or 0.05
    local s = Instance.new("NumberValue", e)
    s.Name = "Speed"
    s.Value = speed or 0.5
    local w = Instance.new("NumberValue", e)
    w.Name = "Wave"
    w.Value = wave or 0
  end
end, move = function(part)
  local partPos = part.CFrame.p
  part.Size = part.Size - Vector3.new(0.2, 0.2, 0.2)
  part.CFrame = CFrame.new(partPos + Vector3.new(math.sin(tick() * part.Wave.Value), part.Speed.Value, math.sin(tick() * part.Wave.Value)).unit / part.Size.x) * CFrame.Angles(math.random(1, 6), math.random(1, 6), math.random(1, 6))
  part.Transparency = part.Transparency + part.Time.Value / (Debounces.FPS / 60)
  if part.Transparency > 0.97 then
    part:Destroy()
  end
end}
}
CEfx = {SparkSphere = function(pos, loopcount, radius, length, thickness, speed, distime, color, trans, material)
  for i = 1, loopcount do
    Effects.Spark.new(pos + Vector3.new(math.sin(i / loopcount * math.pi * 2), math.abs(math.sin(math.random(0, 50))), math.cos(i / loopcount * math.pi * 2)).unit * radius, pos, length, thickness, speed, distime, color, trans, material)
  end
end, Spark2Sphere = function(pos, loopcount, radius, length, thickness, speed, distime, drop, color, trans, material)
  for i = 1, loopcount do
    local vector = Vector3.new(math.sin(i / loopcount * math.pi * 2), math.abs(math.sin(math.random(0, 50))), math.cos(i / loopcount * math.pi * 2)).unit * radius
    Effects.Spark2.new(pos + vector, pos + vector * 2, length, thickness, speed, distime, drop, color, trans, material)
  end
end}
Debounces = {FPS = 0, Speed = 1, Combo = 1, ComboTimer = 0, canSpecial = true, canNormal = true, isAttacking = false, isMoving = false, isSprinting = false, isTyping = false}
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
Joints = {c.HumanoidRootPart.RootJoint, c.Torso.Neck, c.Torso["Left Shoulder"], c.Torso["Right Shoulder"], c.Torso["Left Hip"], c.Torso["Right Hip"]}
JointTargets = {CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero()}
Combo = {function()
  setLerp(0.3)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -71, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(1.336, 35.63, -1.865)), CFrame.new(Vector3.new(-1.501, 0.059, -0.59)) * CFAngles(Vector3.new(150.11, -61.307, -0.508)), CFrame.new(Vector3.new(1.239, 0.43, -0.91)) * CFAngles(Vector3.new(92.909, 10.092, -31.545)), CFrame.new(Vector3.new(-0.55, -2.051, -0.081)) * CFAngles(Vector3.new(0.962, 35.736, 0.77)), CFrame.new(Vector3.new(0.869, -1.881, -0.15)) * CFAngles(Vector3.new(-0.82, -20.773, 16.901))})
  wait(0.15)
  local hit = takeDamage(root.Position, math.random(13, 16), 5, false)
  setLerp(0.4)
  Debounces.Speed = 1.1
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 65, 0)), CFrame.new(Vector3.new(0.079, 1.5, -0.01)) * CFAngles(Vector3.new(-1.221, -44.109, -2.112)), CFrame.new(Vector3.new(-1.251, 0.189, -0.99)) * CFAngles(Vector3.new(90.281, -49.501, 47.064)), CFrame.new(Vector3.new(1.989, 0.47, -0.4)) * CFAngles(Vector3.new(155.987, -32.162, 72.107)), CFrame.new(Vector3.new(-0.71, -1.991, 0.149)) * CFAngles(Vector3.new(-7.213, 10.172, -12.334)), CFrame.new(Vector3.new(0.51, -1.951, 0.21)) * CFAngles(Vector3.new(-10.342, -20.926, -0.716))})
  sound(c.Torso, 280667448, math.random(72, 97) / 100, math.random(85, 115) / 100)
  wait(0.17)
  return hit[1]
end, function()
  setLerp(0.3)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 15, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(-0.157, -15.009, -1.57)), CFrame.new(Vector3.new(-1.621, 0.059, 0.129)) * CFAngles(Vector3.new(25.69, 3.472, -14.641)), CFrame.new(Vector3.new(0.949, 0.239, -0.891)) * CFAngles(Vector3.new(69.388, 5.364, -33.696)), CFrame.new(Vector3.new(-0.8, -1.891, -0.231)) * CFAngles(Vector3.new(-2.542, 16.877, -4.399)), CFrame.new(Vector3.new(0.6, -1.951, 0.13)) * CFAngles(Vector3.new(-8.352, -11.307, 2.56))})
  wait(0.15)
  local hit = takeDamage(root.Position, math.random(13, 15), 5, false)
  setLerp(0.4)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -71, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(3.865, 67.238, -3.921)), CFrame.new(Vector3.new(-2.031, 0.31, -0.211)) * CFAngles(Vector3.new(132.173, -1.906, -79.905)), CFrame.new(Vector3.new(1.499, 0.039, -0.261)) * CFAngles(Vector3.new(43.335, -7.22, 25.135)), CFrame.new(Vector3.new(-0.64, -2.071, -0.031)) * CFAngles(Vector3.new(4.351, 39.697, -5.775)), CFrame.new(Vector3.new(0.6, -1.951, -0.01)) * CFAngles(Vector3.new(-2.073, -25.333, 4.241))})
  sound(c.Torso, 280667448, math.random(72, 97) / 100, math.random(85, 115) / 100)
  wait(0.17)
  return hit[1]
end, function()
  setLerp(0.3)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -71, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(3.247, 63.159, -3.359)), CFrame.new(Vector3.new(-1.771, 0.1, -0.05)) * CFAngles(Vector3.new(-19.34, -18.625, -40.311)), CFrame.new(Vector3.new(1.659, 0.049, -0.251)) * CFAngles(Vector3.new(2.979, 26.217, 31.923)), CFrame.new(Vector3.new(-0.74, -1.941, -0.081)) * CFAngles(Vector3.new(-1.663, 35.343, -2.91)), CFrame.new(Vector3.new(0.909, -1.881, -0.15)) * CFAngles(Vector3.new(1.355, -27.383, 17.173))})
  wait(0.15)
  local hit = takeDamage(root.Position, math.random(13, 17), 5, false)
  setLerp(0.4)
  Debounces.Speed = 1.1
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(75, 75, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(3.247, 63.159, -3.359)), CFrame.new(Vector3.new(-1.771, 0.1, -0.05)) * CFAngles(Vector3.new(-19.34, -18.625, -40.311)), CFrame.new(Vector3.new(1.659, 0.049, -0.251)) * CFAngles(Vector3.new(2.979, 26.217, 31.923)), CFrame.new(Vector3.new(-1.37, -1.531, 0.379)) * CFAngles(Vector3.new(-25.945, 18.839, -46.095)), CFrame.new(Vector3.new(0.909, -1.881, -0.15)) * CFAngles(Vector3.new(1.355, -27.383, 17.173))})
  sound(c.Torso, 147722227, math.random(72, 97) / 100, math.random(85, 115) / 100)
  wait(0.06)
  Effects.Fire.new(c["Right Leg"].Position, 4, 0.5, 0.04, 3, "Bright yellow")
  wait(0.08)
  return hit[1]
end, function()
  setLerp(0.3)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -71, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(1.336, 35.63, -1.865)), CFrame.new(Vector3.new(-1.501, 0.059, -0.59)) * CFAngles(Vector3.new(150.11, -61.307, -0.508)), CFrame.new(Vector3.new(1.239, 0.43, -0.91)) * CFAngles(Vector3.new(92.909, 10.092, -31.545)), CFrame.new(Vector3.new(-0.55, -2.051, -0.081)) * CFAngles(Vector3.new(0.962, 35.736, 0.77)), CFrame.new(Vector3.new(0.869, -1.881, -0.15)) * CFAngles(Vector3.new(-0.82, -20.773, 16.901))})
  wait(0.15)
  local hit = takeDamage(root.Position, math.random(12, 15), 5, false)
  setLerp(0.4)
  Debounces.Speed = 1.1
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 65, 0)), CFrame.new(Vector3.new(0.079, 1.5, -0.01)) * CFAngles(Vector3.new(-1.221, -44.109, -2.112)), CFrame.new(Vector3.new(-1.251, 0.189, -0.99)) * CFAngles(Vector3.new(90.281, -49.501, 47.064)), CFrame.new(Vector3.new(1.989, 0.47, -0.4)) * CFAngles(Vector3.new(155.987, -32.162, 72.107)), CFrame.new(Vector3.new(-0.71, -1.991, 0.149)) * CFAngles(Vector3.new(-7.213, 10.172, -12.334)), CFrame.new(Vector3.new(0.51, -1.951, 0.21)) * CFAngles(Vector3.new(-10.342, -20.926, -0.716))})
  Effects.Fire.new(c["Right Arm"].Position, 4, 0.5, 0.04, 3, "Bright yellow")
  CEfx.Spark2Sphere(c["Right Arm"].Position, 15, 4, 8, 0.3, 2, 0.05, 3, "Bright yellow")
  sound(c.Torso, 260430079, math.random(72, 97) / 100, math.random(85, 115) / 100)
  wait(0.17)
  return hit[1]
end, function()
  setLerp(0.3)
  Debounces.Speed = 0.7
  CEfx.SparkSphere(c.Torso.Position, 10, 15, 4, 0.2, -0.8, 0.05, "Bright yellow")
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 15, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(-0.157, -15.009, -1.57)), CFrame.new(Vector3.new(-1.621, 0.059, 0.129)) * CFAngles(Vector3.new(25.69, 3.472, -14.641)), CFrame.new(Vector3.new(0.949, 0.239, -0.891)) * CFAngles(Vector3.new(69.388, 5.364, -33.696)), CFrame.new(Vector3.new(-0.8, -1.891, -0.231)) * CFAngles(Vector3.new(-2.542, 16.877, -4.399)), CFrame.new(Vector3.new(0.6, -1.951, 0.13)) * CFAngles(Vector3.new(-8.352, -11.307, 2.56))})
  wait(0.15)
  local hit = takeDamage(root.Position, math.random(13, 15), 5, false)
  setLerp(0.4)
  Debounces.Speed = 1.1
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -71, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(3.865, 67.238, -3.921)), CFrame.new(Vector3.new(-2.031, 0.31, -0.211)) * CFAngles(Vector3.new(132.173, -1.906, -79.905)), CFrame.new(Vector3.new(1.499, 0.039, -0.261)) * CFAngles(Vector3.new(43.335, -7.22, 25.135)), CFrame.new(Vector3.new(-0.64, -2.071, -0.031)) * CFAngles(Vector3.new(4.351, 39.697, -5.775)), CFrame.new(Vector3.new(0.6, -1.951, -0.01)) * CFAngles(Vector3.new(-2.073, -25.333, 4.241))})
  sound(c.Torso, 147722227, math.random(72, 97) / 100, math.random(85, 115) / 100)
  wait(0.17)
  return hit[1]
end, function()
  setLerp(0.3)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -71, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(3.247, 63.159, -3.359)), CFrame.new(Vector3.new(-1.771, 0.1, -0.05)) * CFAngles(Vector3.new(-19.34, -18.625, -40.311)), CFrame.new(Vector3.new(1.659, 0.049, -0.251)) * CFAngles(Vector3.new(2.979, 26.217, 31.923)), CFrame.new(Vector3.new(-0.74, -1.941, -0.081)) * CFAngles(Vector3.new(-1.663, 35.343, -2.91)), CFrame.new(Vector3.new(0.909, -1.881, -0.15)) * CFAngles(Vector3.new(1.355, -27.383, 17.173))})
  wait(0.15)
  local hit = takeDamage(root.Position, math.random(10, 12), 5, false)
  setLerp(0.4)
  Debounces.Speed = 1.1
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(75, 75, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(3.247, 63.159, -3.359)), CFrame.new(Vector3.new(-1.771, 0.1, -0.05)) * CFAngles(Vector3.new(-19.34, -18.625, -40.311)), CFrame.new(Vector3.new(1.659, 0.049, -0.251)) * CFAngles(Vector3.new(2.979, 26.217, 31.923)), CFrame.new(Vector3.new(-1.37, -1.531, 0.379)) * CFAngles(Vector3.new(-25.945, 18.839, -46.095)), CFrame.new(Vector3.new(0.909, -1.881, -0.15)) * CFAngles(Vector3.new(1.355, -27.383, 17.173))})
  wait(0.06)
  Effects.Fire.new(c["Right Leg"].Position, 4, 0.5, 0.04, 3, "Bright yellow")
  sound(c.Torso, 260430079, math.random(72, 97) / 100, math.random(105, 115) / 100)
  wait(0.08)
  return hit[1]
end, function()
  Debounces.Speed = 0
  setLerp(0.2)
  CEfx.SparkSphere(c.Torso.Position, 15, 25, 7, 0.3, -0.6, 0.02, "Bright orange")
  sound(c.Torso, 280667448, math.random(47, 72) / 100, math.random(85, 90) / 100)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -71, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(1.336, 35.63, -1.865)), CFrame.new(Vector3.new(-1.501, 0.059, -0.59)) * CFAngles(Vector3.new(150.11, -61.307, -0.508)), CFrame.new(Vector3.new(1.239, 0.43, -0.91)) * CFAngles(Vector3.new(92.909, 10.092, -31.545)), CFrame.new(Vector3.new(-0.55, -2.051, -0.081)) * CFAngles(Vector3.new(0.962, 35.736, 0.77)), CFrame.new(Vector3.new(0.869, -1.881, -0.15)) * CFAngles(Vector3.new(-0.82, -20.773, 16.901))})
  wait(0.3)
  moveVel(root.CFrame.lookVector, 65, 0.5)
  setLerp(0.4)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 65, 0)), CFrame.new(Vector3.new(0.079, 1.5, -0.01)) * CFAngles(Vector3.new(-1.221, -44.109, -2.112)), CFrame.new(Vector3.new(-1.251, 0.189, -0.99)) * CFAngles(Vector3.new(90.281, -49.501, 47.064)), CFrame.new(Vector3.new(1.989, 0.47, -0.4)) * CFAngles(Vector3.new(155.987, -32.162, 72.107)), CFrame.new(Vector3.new(-0.71, -1.991, 0.149)) * CFAngles(Vector3.new(-7.213, 10.172, -12.334)), CFrame.new(Vector3.new(0.51, -1.951, 0.21)) * CFAngles(Vector3.new(-10.342, -20.926, -0.716))})
  sound(c.Torso, 260430117, 1, math.random(95, 115) / 100)
  for i = 1, 8 do
    wait(0.05)
    local hit = takeDamage(root.Position, math.random(5, 7), 5, false)
    Effects.Fire.new(c["Right Arm"].Position, 4 + math.random(-10, 10) / 10, 0.5, 0.04, 5 + math.random(1, 4), "Bright yellow")
    Effects.Fire.new(c["Right Arm"].Position, 4 + math.random(-10, 10) / 10, 0.5, 0.04, 4 + math.random(1, 4), "Bright orange")
    Effects.Fire.new(c["Right Arm"].Position, 4 + math.random(-10, 10) / 10, 0.5, 0.04, 7 + math.random(1, 4), "Bright red")
  end
  return hit[1]
end}
prepareCharacter = function()
  local animator = c.Humanoid:FindFirstChild("Animator")
  if animator then
    animator:Destroy()
  end
  local animate = c:FindFirstChild("Animate")
  if animate then
    animate:Destroy()
  end
  for _,x in pairs(Joints) do
    x.C1 = CFrameZero()
  end
  for _,v in pairs(c.Head:children()) do
    if v:isA("Sound") then
      v:Destroy()
    end
  end
  c.Humanoid.MaxHealth = health
  wait()
  c.Humanoid.Health = health
end
setJointCFrames = function(table)
  for i = 1, #table do
    JointTargets[i] = table[i]
  end
end
setLerp = function(speed)
  AnimStat.lerpSpeed = speed
end
takeDamage = function(position, damage, distance, platformStand)
  hitPlrs = {}
  for i,v in pairs(pls:children()) do
    if v:isA("Player") and workspace:FindFirstChild(v.Name) and v ~= lp then
      local tor = workspace[v.Name]
      if tor and tor:FindFirstChild("HumanoidRootPart") and tor:FindFirstChild("Humanoid") and tor.HumanoidRootPart.Position - position.magnitude < distance then
        tor.Humanoid:TakeDamage(damage)
        table.insert(hitPlrs, #hitPlrs + 1, v)
        sound(tor.HumanoidRootPart, 131237241, math.random(4, 7) / 10, math.random(85, 115) / 100)
        if platformStand then
          v.Character.PlatformStand = platformStand
        end
      end
    end
  end
  return hitPlrs
end
moveVel = function(dir, speed, time)
  spawn(function()
    local g = Instance.new("BodyGyro", root)
    g.D = 0
    g.CFrame = root.CFrame
    g.MaxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
    g.P = 10000000000
    local e = Instance.new("BodyVelocity", root)
    e.Velocity = dir.unit * speed
    e.P = 10000
    e.MaxForce = Vector3.new(100000000, 100000000, 100000000)
    wait(time)
    e:Destroy()
    g:Destroy()
  end)
end
sound = function(part, id, volume, pitch)
  local x = Instance.new("Sound", part)
  x.SoundId = "rbxassetid://" .. id
  x.Volume = volume or 0.7
  x.Pitch = pitch or 1
  spawn(function()
    wait()
    x:Play()
    wait((x.TimeLength or 120) + 0.033333333333333)
    x:Destroy()
  end)
end
prepareCharacter()
spawn(function()
  Tick = 0
  sine = 0
  while wait() do
    Debounces.ComboTimer = Debounces.ComboTimer - 0.033333333333333
    Tick = tick() * 4.5
    sine = math.sin(Tick)
    if Debounces.isAttacking == false and Debounces.isMoving == false and math.abs(root.Velocity.y) < 1 then
      setLerp(0.2)
      setJointCFrames({CFrame.new(Vector3.new(0, -0.2 + sine / 45, 0)) * CFAngles(Vector3.new(0, -71, 3)), CFrame.new(Vector3.new(-0.031, 1.5 + math.sin(Tick + 1) / 65, -0.01)) * CFAngles(Vector3.new(2.959 + math.sin(Tick) * 2, 60.763, -3.105)), CFrame.new(Vector3.new(-1.621, 0.229 + math.sin(Tick + 0.5) / 25, -0.46)) * CFAngles(Vector3.new(92.104 + math.sin(Tick + 1.7) * 2, -43.603, -48.471 + math.sin(Tick - 1.4) * 2)), CFrame.new(Vector3.new(0.649, 0.049 + math.sin(Tick + 0.7) / 25, -0.97)) * CFAngles(Vector3.new(121.338 + math.sin(Tick + 1.5) * 2, 13.67 + math.sin(Tick + 2.1), -50.552 + math.sin(Tick + 1.2) * 2)), CFrame.new(Vector3.new(-0.8, -1.891, -0.081)) * CFAngles(Vector3.new(-2.819, 35.424, -4.553)), CFrame.new(Vector3.new(0.6, -1.881, -0.15)) * CFAngles(Vector3.new(-0.82, -20.773, 4.072))})
    else
      if Debounces.isAttacking == false and Debounces.isMoving == true and math.abs(root.Velocity.y) < 1 then
        setLerp(0.3)
        Debounces.Speed = 0.9
        setJointCFrames({CFrame.new(Vector3.new(0, -0.21 + math.sin(Tick * 4) / 45, 0)) * CFAngles(Vector3.new(-math.abs(root.RotVelocity.y / 1.7), -71, 3.7)), CFrame.new(Vector3.new(-0.031, 1.5 + math.sin(Tick * 4 + 1) / 75, -0.01)) * CFAngles(Vector3.new(2.959 + math.sin(Tick) * 2, 60.763 + root.RotVelocity.y * 3, -3.105)), CFrame.new(Vector3.new(-1.621, 0.229 + math.sin(Tick * 4 + 0.5) / 45, -0.46)) * CFAngles(Vector3.new(92.104 + math.sin(Tick * 4 + 1.7), -43.603 + math.sin(Tick * 4) * 2, -48.471 + math.sin(Tick * 4 + 1.4) * 1)), CFrame.new(Vector3.new(0.649, 0.049 + math.sin(Tick * 4 + 0.7) / 45, -0.97)) * CFAngles(Vector3.new(121.338 + math.sin(Tick * 4 + 1.5), 13.67, -50.552 + math.sin(Tick * 4 + 1.2) * 1.2)), CFrame.new(Vector3.new(-0.7 + math.sin(Tick * 2.5) / 3, -1.791 - math.cos(Tick * 2.5) / 35, -0.081 - math.sin(Tick * 2.5) / 35)) * CFAngles(Vector3.new(-2.819 - math.sin(Tick * 2.5) * 12, 35.424, -8.553 + math.sin(Tick * 2.5 + 0.1) * 14)), CFrame.new(Vector3.new(0.55 + math.sin(Tick * 2.5 + math.pi) / 3, -1.821 - math.cos(Tick * 2.5 + math.pi) / 20, -0.15)) * CFAngles(Vector3.new(-0.82, -20.773, 4.072 + math.sin(Tick * 2.5 + math.pi - 0.1) * 13))})
      else
        if Debounces.isAttacking == false and math.abs(root.Velocity.y) > 1 then
          if root.Velocity.y > 0 then
            Debounces.Speed = 0.9
            setLerp(0.1)
            setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -71, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(10.058, 50.565 + root.RotVelocity.y * 3, -9.426)), CFrame.new(Vector3.new(-1.671, 0.559, -0.46)) * CFAngles(Vector3.new(134.256, -65.009, -21.142)), CFrame.new(Vector3.new(0.649, 0.049, -0.97)) * CFAngles(Vector3.new(120.776, 14.331, -50.416)), CFrame.new(Vector3.new(-0.39, -2.021, -0.081)) * CFAngles(Vector3.new(-2.819, 35.424, 5.086)), CFrame.new(Vector3.new(0.6, -1.931, -0.15)) * CFAngles(Vector3.new(-2.057, -13.672, 9.265))})
          else
            setLerp(0.1)
            Debounces.Speed = 1.1
            setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -71, 0)), CFrame.new(Vector3.new(-0.031, 1.5, -0.01)) * CFAngles(Vector3.new(-10.332, 31.167 + root.RotVelocity.y * 3, 6.469)), CFrame.new(Vector3.new(-1.671, 0.229, -0.46)) * CFAngles(Vector3.new(101.838, -52.86, -49.259)), CFrame.new(Vector3.new(0.929, 0.149, -1.311)) * CFAngles(Vector3.new(95.716, 21.155, -49.455)), CFrame.new(Vector3.new(-0.8, -1.891, -0.081)) * CFAngles(Vector3.new(-10.964, 9.476, -6.771)), CFrame.new(Vector3.new(0.6, -1.881, -0.15)) * CFAngles(Vector3.new(-6.112, -7.568, 7.395))})
          end
        end
      end
    end
    human.WalkSpeed = Debounces.Speed * 16
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
  if not Debounces.isTyping then
    if InputObj.KeyCode == Enum.KeyCode.LeftShift then
      Debounces.isSprinting = true
    else
      if InputObj.KeyCode == Enum.KeyCode.Q and not Debounces.isAttacking then
        Debounces.isAttacking = true
        wait()
        Debounces.Speed = 0.3
        setLerp(0.5)
        sound(c.Torso, 280667448, 0.3, math.random(100, 110) / 100)
        setJointCFrames({CFrame.new(Vector3.new(0, -0.2 + sine / 45, 0)) * CFAngles(Vector3.new(0, -71, 3)), CFrame.new(Vector3.new(-0.031, 1.5 + math.sin(Tick + 1) / 65, -0.01)) * CFAngles(Vector3.new(2.959 + math.sin(Tick) * 2, 60.763, 1.105)), CFrame.new(Vector3.new(-1.621, 0.529, -0.46)) * CFAngles(Vector3.new(130.035, -58.975, -25.477)), CFrame.new(Vector3.new(0.649, 0.049 + math.sin(Tick + 0.7) / 25, -0.97)) * CFAngles(Vector3.new(121.338 + math.sin(Tick + 1.5) * 2, 13.67 + math.sin(Tick + 2.1), -50.552 + math.sin(Tick + 1.2) * 2)), CFrame.new(Vector3.new(-0.8, -1.891, -0.081)) * CFAngles(Vector3.new(-2.819, 35.424, -4.553)), CFrame.new(Vector3.new(0.6, -1.881, -0.15)) * CFAngles(Vector3.new(-0.82, -20.773, 4.072))})
        wait(0.05)
        setLerp(0.4)
        setJointCFrames({CFrame.new(Vector3.new(0, -0.2 + sine / 45, 0)) * CFAngles(Vector3.new(0, -71, 3)), CFrame.new(Vector3.new(-0.031, 1.5 + math.sin(Tick + 1) / 65, -0.01)) * CFAngles(Vector3.new(2.959 + math.sin(Tick) * 2, 60.763, -3.105)), CFrame.new(Vector3.new(-1.621, 0.229, -0.46)) * CFAngles(Vector3.new(92.104, -43.603, -48.471)), CFrame.new(Vector3.new(0.649, 0.049 + math.sin(Tick + 0.7) / 25, -0.97)) * CFAngles(Vector3.new(121.338 + math.sin(Tick + 1.5) * 2, 13.67 + math.sin(Tick + 2.1), -50.552 + math.sin(Tick + 1.2) * 2)), CFrame.new(Vector3.new(-0.8, -1.891, -0.081)) * CFAngles(Vector3.new(-2.819, 35.424, -4.553)), CFrame.new(Vector3.new(0.6, -1.881, -0.15)) * CFAngles(Vector3.new(-0.82, -20.773, 4.072))})
        wait(0.07)
        setLerp(0.5)
        sound(c.Torso, 280667448, 0.3, math.random(100, 110) / 100)
        setJointCFrames({CFrame.new(Vector3.new(0, -0.2 + sine / 45, 0)) * CFAngles(Vector3.new(0, -71, 3)), CFrame.new(Vector3.new(-0.031, 1.5 + math.sin(Tick + 1) / 65, -0.01)) * CFAngles(Vector3.new(2.959 + math.sin(Tick) * 2, 60.763, 1.105)), CFrame.new(Vector3.new(-1.621, 0.529, -0.46)) * CFAngles(Vector3.new(130.035, -58.975, -25.477)), CFrame.new(Vector3.new(0.649, 0.049 + math.sin(Tick + 0.7) / 25, -0.97)) * CFAngles(Vector3.new(121.338 + math.sin(Tick + 1.5) * 2, 13.67 + math.sin(Tick + 2.1), -50.552 + math.sin(Tick + 1.2) * 2)), CFrame.new(Vector3.new(-0.8, -1.891, -0.081)) * CFAngles(Vector3.new(-2.819, 35.424, -4.553)), CFrame.new(Vector3.new(0.6, -1.881, -0.15)) * CFAngles(Vector3.new(-0.82, -20.773, 4.072))})
        wait(0.08)
        Debounces.isAttacking = false
      else
        if InputObj.KeyCode == Enum.KeyCode.E and Debounces.canSpecial and not Debounces.isAttacking then
          Debounces.isAttacking = true
          Debounces.canSpecial = false
          Combo[#Combo]()
          Debounces.isAttacking = false
          wait(7)
          Debounces.canSpecial = true
        else
          if InputObj.KeyCode == Enum.KeyCode.X and Debounces.canNormal and not Debounces.isAttacking then
            Debounces.isAttacking = true
            Debounces.canNormal = false
            Combo[4]()
            Debounces.isAttacking = false
            wait(3.25)
            Debounces.canNormal = true
          else
            if InputObj.KeyCode == Enum.KeyCode.Z and Debounces.canNormal and not Debounces.isAttacking then
              Debounces.isAttacking = true
              Debounces.canNormal = false
              Combo[6]()
              Debounces.isAttacking = false
              wait(2.75)
              Debounces.canNormal = true
            end
          end
        end
      end
    end
  end
end)
uinps.InputEnded:connect(function(InputObj)
  if InputObj.KeyCode == Enum.KeyCode.LeftShift then
    Debounces.isSprinting = false
  end
end)
mouse.Button1Down:connect(function()
  if not Debounces.isAttacking then
    Debounces.isAttacking = true
    if Debounces.ComboTimer > 0 then
      Debounces.Combo = Debounces.Combo + 1
    else
      Debounces.Combo = 1
    end
    local hit = Combo[Debounces.Combo % #Combo + 1]()
    if hit then
      Debounces.ComboTimer = 1.25
    end
    Debounces.isAttacking = false
  end
end)
rs.RenderStepped:connect(function()
  Debounces.FPS = 1 / rs.RenderStepped:wait()
  if Debounces.FPS < 15 then
    Debounces.FPS = 15
  end
  for _,v in pairs(EfxModel:children()) do
    Effects[v.Name].move(v)
  end
  local FPSLerp = AnimStat.lerpSpeed / (Debounces.FPS / 60)
  for i = 1, #Joints do
    Joints[i].C0 = Joints[i].C0:lerp(JointTargets[i], FPSLerp)
  end
  local sineval = math.sin(tick() * 2) * 3
end)

