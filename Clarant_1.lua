
--Runs with no error. Still no actual script running--
script.Parent = nil
Character = game.Players.localPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
TagService = require(game:GetService("ReplicatedStorage"):WaitForChild("TagService"))
local Sword = game:service("ReplicatedStorage").Weapons.Clarant.Clarant:Clone()
Sword.Parent = game:service("Players").LocalPlayer.Character
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
    if (v.ClassName == "Part" or v.Name == "Part" or v:isA("WedgePart") or v:isA("UnionOperation")) and v ~= weldTo then
      makeWeld(v, weldTo)
      v.Anchored = false
      v.CanCollide = false
      v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
    end
  end
  weldTo.Anchored = false
  weldTo.CanCollide = false
  weldTo.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
end
newMotor = function(p0, p1)
  local motor = Instance.new("Motor", p1)
  motor.Part0 = p0
  motor.Part1 = p1
  return motor
end
Stat = Sword.Stats
Base = Sword.Base
Blade = Sword.Blade
InL = Sword.InnerL
OutL = Sword.OuterL
InR = Sword.InnerR
OutR = Sword.OuterR
BladeBase = Blade.Base
LBase = Base.LBase
RBase = Base.RBase
Handle = Base.Handle
Hitbox = Blade.Hitbox
Light = BladeBase.Light
weldScript(Handle)
weldScript(BladeBase)
weldScript(InL.Base)
weldScript(OutL.Base)
weldScript(InR.Base)
weldScript(OutR.Base)
BladeMotor = newMotor(Base.BladeBase, Blade.Base)
InLMotor = newMotor(LBase, InL.Base)
OutLMotor = newMotor(LBase, OutL.Base)
InRMotor = newMotor(RBase, InR.Base)
OutRMotor = newMotor(RBase, OutR.Base)
Gui = Sword.ScreenGui
Gui.Parent = game:service("Players").LocalPlayer.PlayerGui
Main = Gui.Main
Status = Main.Box
Blood = Main.Blood
ComboBox = Main.ComboBox.Combo
Camera = Status.Camera
Movement = Status.Movement
Keys = Status.Keys
CameraBox = {Dot = Camera.Dot, Base = Camera}
MovementBox = {Dot = Movement.Dot, Base = Movement}
Atk1 = {Button = Keys.Atk1, Charge = Keys.Atk1.Status.Reload, ChargePercent = Keys.Atk1.Status.Percent}
Atk2 = {Button = Keys.Atk2, Charge = Keys.Atk2.Status.Reload, ChargePercent = Keys.Atk2.Status.Percent}
Atk3 = {Button = Keys.Atk3, Charge = Keys.Atk3.Status.Reload, ChargePercent = Keys.Atk3.Status.Percent}
pls = game:GetService("Players")
rs = game:GetService("RunService")
uinps = game:GetService("UserInputService")
lp = pls.LocalPlayer
mouse = lp:GetMouse()
c = lp.Character
human = c.Humanoid
health = 100
root = c.HumanoidRootPart
ComboTrans = 1
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
Sphere = {new = function(pos, radius, time, size, color, trans, material, distime)
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
    return e
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
Variables = {minDmg = 1, maxDmg = 2, rageMult = 1.3, ComboTimer = 0.5, AttackBoost = 18, dSpeed = 75, usingGamepad = game:service("UserInputService").GamepadEnabled}
cooldowns = {cd1 = -0.01, cd2 = -0.01, cd3 = -0.01, cdt1 = 4, cdt2 = 5, cdt3 = 6}
Grapple = {Target = nil, Cable = nil, Gyro = nil, Attached = false, Return = false, Corner = Vector3.new(), tPos = Vector3.new(), aPos = Vector3.new(), cSpeed = 165, gSpeed = 65, angle = 0}
Colors = {["Brick yellow"] = Color3.new(1, 0.96078431372549, 0.66274509803922), Maroon = Color3.new(0.75686274509804, 0, 0)}
Debounces = {FPS = 0, Speed = 1, Defense = 0.6, Attack = 1, isBlocking = false, isStunned = false, isAttacking = false, isMoving = false, isTyping = false, isPassive = true, isRaging = false, canSpecial = true, Idle = true, grappleMode = false, Combo = 1, ComboTimer = 0, ComboCycles = 0}
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
local handWeld = Instance.new("Motor", Handle)
handWeld.Part0 = c.Torso
handWeld.Part1 = Handle
allChildren = {}
Crystals = {}
Colorable = {}
for _,v in pairs(Base:children()) do
  table.insert(allChildren, #allChildren + 1, v)
  if v.Name == "Crystal" then
    table.insert(Crystals, #Crystals + 1, v)
    v.Transparency = 1
  end
end
for _,v in pairs(Blade:children()) do
  table.insert(allChildren, #allChildren + 1, v)
end
for _,v in pairs(InL:children()) do
  table.insert(allChildren, #allChildren + 1, v)
end
for _,v in pairs(OutL:children()) do
  table.insert(allChildren, #allChildren + 1, v)
end
for _,v in pairs(InR:children()) do
  table.insert(allChildren, #allChildren + 1, v)
end
for _,v in pairs(OutR:children()) do
  table.insert(allChildren, #allChildren + 1, v)
end
Glow = {}
for _,x in pairs(allChildren) do
  if x.Name == "Glow" then
    table.insert(Glow, #Glow + 1, x)
  end
  if x.BrickColor == BrickColor.new("Brick yellow") then
    table.insert(Colorable, #Colorable + 1, x)
    x.BrickColor = BrickColor.new("Maroon")
  end
end
AnimStat = {lerpSpeed = 0.2}
Joints = {c.HumanoidRootPart.RootJoint, c.Torso.Neck, c.Torso["Left Shoulder"], c.Torso["Right Shoulder"], c.Torso["Left Hip"], c.Torso["Right Hip"], handWeld}
JointTargets = {CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero()}
Combo = {function(notCombo)
  local hit = nil
  setLerp(0.3 + Debounces.ComboCycles / 10)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 45, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.07, -27.677, -0.1)), CFrame.new(Vector3.new(-1.94, 0.27, -0.351)) * CFAngles(Vector3.new(29.971, -14.944, -70.318)), CFrame.new(Vector3.new(1, 0.169, -0.521)) * CFAngles(Vector3.new(72.262, 1.485, -34.576)), CFrame.new(Vector3.new(-0.72, -1.791, -0.04)) * CFAngles(Vector3.new(-7.911, 16.048, -13.146)), CFrame.new(Vector3.new(0.519, -1.851, -0.17)) * CFAngles(Vector3.new(-8.897, -19.314, 1.107)), CFrame.new(Vector3.new(-0.311, 0.049, -1.72)) * CFAngles(Vector3.new(175.328, 8.918, 106.964))})
  wait(0.15 - Debounces.ComboCycles / 9)
  if notCombo then
    takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) * 2, 5, false)
  else
    hit = takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg), 5, false)
  end
  setLerp(0.22 + Debounces.ComboCycles / 10)
  Debounces.Speed = 1.3
  moveVel(root.CFrame.lookVector, Variables.AttackBoost, 0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -25, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.192, 40.553, -0.117)), CFrame.new(Vector3.new(-1.511, 0.02, 0.339)) * CFAngles(Vector3.new(-32.124, 23.957, -11.5)), CFrame.new(Vector3.new(1.709, 0.169, -0.351)) * CFAngles(Vector3.new(53.7, -10.743, 27.775)), CFrame.new(Vector3.new(-0.41, -1.89, -0.15)) * CFAngles(Vector3.new(-8.186, 28.56, -0.014)), CFrame.new(Vector3.new(0.7, -1.871, -0.04)) * CFAngles(Vector3.new(-9.479, 11.694, 7.34)), CFrame.new(Vector3.new(2.009, -0.611, -1.48)) * CFAngles(Vector3.new(-29.685, 38.085, -75.113))})
  sound(c.Torso, 320557413, math.random(72, 97) / 100, math.random(85, 115) / 100)
  local bladePos = rBladePos()
  Effects.Spark2.new(bladePos, bladePos + rDirection(true), 6, 0.3, 3, 0.07, 4, "Lily white", 0.2, "Neon")
  Effects.Fire.new(bladePos, 3, 0.3, 0.04, 3, "Lily white", 0.2)
  wait(0.22 - Debounces.ComboCycles / 9)
  if hit ~= nil then
    return hit[1]
  end
end, function()
  setLerp(0.3 + Debounces.ComboCycles / 10)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -55, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.184, 37.216, -0.112)), CFrame.new(Vector3.new(-1.67, 0.06, -0.341)) * CFAngles(Vector3.new(25.13, -16.552, -18.209)), CFrame.new(Vector3.new(1.99, 0.329, 0.199)) * CFAngles(Vector3.new(53.985, -14.197, 92.784)), CFrame.new(Vector3.new(-0.63, -1.92, -0.13)) * CFAngles(Vector3.new(-9.54, 14.86, 1.081)), CFrame.new(Vector3.new(0.67, -2, 0)) * CFAngles(Vector3.new(-1.298, -33.83, 8.273)), CFrame.new(Vector3.new(3.149, -0.061, 0.35)) * CFAngles(Vector3.new(-2.383, -22.819, -80.659))})
  wait(0.15 - Debounces.ComboCycles / 9)
  local hit = takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) + 1, 5, false)
  setLerp(0.22 + Debounces.ComboCycles / 10)
  Debounces.Speed = 1.3
  moveVel(root.CFrame.lookVector, Variables.AttackBoost, 0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 30, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.07, -27.677, -0.1)), CFrame.new(Vector3.new(-1.94, 0.27, -0.351)) * CFAngles(Vector3.new(29.971, -14.944, -70.318)), CFrame.new(Vector3.new(1, 0.169, -0.521)) * CFAngles(Vector3.new(72.262, 1.485, -34.576)), CFrame.new(Vector3.new(-0.72, -1.791, -0.04)) * CFAngles(Vector3.new(-7.911, 16.048, -13.146)), CFrame.new(Vector3.new(0.519, -1.851, -0.17)) * CFAngles(Vector3.new(-8.897, -19.314, 1.107)), CFrame.new(Vector3.new(-0.071, -0.131, -1.6)) * CFAngles(Vector3.new(-178.964, 39.12, 78.88))})
  sound(c.Torso, 199145913, math.random(72, 97) / 100, math.random(85, 115) / 100)
  wait(0.22 - Debounces.ComboCycles / 9)
  return hit[1]
end, function(notCombo)
  local hit = nil
  setLerp(0.3 + Debounces.ComboCycles / 10)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 45, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.07, -27.677, -0.1)), CFrame.new(Vector3.new(-1.94, 0.27, -0.351)) * CFAngles(Vector3.new(29.971, -14.944, -70.318)), CFrame.new(Vector3.new(1, 0.169, -0.521)) * CFAngles(Vector3.new(72.262, 1.485, -34.576)), CFrame.new(Vector3.new(-0.72, -1.791, -0.04)) * CFAngles(Vector3.new(-7.911, 16.048, -13.146)), CFrame.new(Vector3.new(0.519, -1.851, -0.17)) * CFAngles(Vector3.new(-8.897, -19.314, 1.107)), CFrame.new(Vector3.new(-0.311, 0.049, -1.72)) * CFAngles(Vector3.new(175.328, 8.918, 106.964))})
  wait(0.15 - Debounces.ComboCycles / 9)
  if notCombo then
    takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) * 2, 5, false)
  else
    hit = takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) + 2, 5, false)
  end
  setLerp(0.22 + Debounces.ComboCycles / 10)
  Debounces.Speed = 1.3
  moveVel(root.CFrame.lookVector, Variables.AttackBoost, 0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -25, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.192, 40.553, -0.117)), CFrame.new(Vector3.new(-1.511, 0.02, 0.339)) * CFAngles(Vector3.new(-32.124, 23.957, -11.5)), CFrame.new(Vector3.new(1.709, 0.169, -0.351)) * CFAngles(Vector3.new(53.7, -10.743, 27.775)), CFrame.new(Vector3.new(-0.41, -1.89, -0.15)) * CFAngles(Vector3.new(-8.186, 28.56, -0.014)), CFrame.new(Vector3.new(0.7, -1.871, -0.04)) * CFAngles(Vector3.new(-9.479, 11.694, 7.34)), CFrame.new(Vector3.new(2.009, -0.611, -1.48)) * CFAngles(Vector3.new(-29.685, 38.085, -75.113))})
  local bladePos = rBladePos()
  Effects.Spark2.new(bladePos, bladePos + rDirection(true), 6, 0.3, 3, 0.07, 4, "Lily white", 0.2, "Neon")
  Effects.Fire.new(bladePos, 3, 0.3, 0.04, 3, "Lily white", 0.2)
  sound(c.Torso, 199145095, math.random(72, 97) / 100, math.random(85, 115) / 100)
  wait(0.22 - Debounces.ComboCycles / 9)
  if hit ~= nil then
    return hit[1]
  end
end, function()
  setLerp(0.3 + Debounces.ComboCycles / 10)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -10, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.143, 16.801, -0.093)), CFrame.new(Vector3.new(-1.341, -0.13, -0.591)) * CFAngles(Vector3.new(25.13, -16.552, 18.966)), CFrame.new(Vector3.new(1.76, -0.061, 0.199)) * CFAngles(Vector3.new(39.061, -24.855, 64.779)), CFrame.new(Vector3.new(-0.63, -1.92, -0.13)) * CFAngles(Vector3.new(-9.54, 14.86, 1.081)), CFrame.new(Vector3.new(0.67, -2, 0)) * CFAngles(Vector3.new(-1.298, -33.83, 8.273)), CFrame.new(Vector3.new(3.029, -0.781, 0.35)) * CFAngles(Vector3.new(-1.524, -32.594, -109.394))})
  wait(0.15 - Debounces.ComboCycles / 9)
  local hit = takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg), 5, false)
  setLerp(0.22 + Debounces.ComboCycles / 10)
  Debounces.Speed = 1.3
  moveVel(root.CFrame.lookVector, Variables.AttackBoost, 0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 55, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.06, -32.13, -0.105)), CFrame.new(Vector3.new(-2.061, 0.46, -0.141)) * CFAngles(Vector3.new(24.893, -7.402, -88.576)), CFrame.new(Vector3.new(0.46, 0.369, -0.95)) * CFAngles(Vector3.new(53.022, -32.554, -63.06)), CFrame.new(Vector3.new(-0.821, -1.92, 0.17)) * CFAngles(Vector3.new(-8.568, 10.45, -10.697)), CFrame.new(Vector3.new(0.36, -2, -0.05)) * CFAngles(Vector3.new(-2.927, -23.491, -1.506)), CFrame.new(Vector3.new(-0.431, 0.489, -2.27)) * CFAngles(Vector3.new(162.899, 44.33, 131.29))})
  local bladePos = rBladePos()
  Effects.Spark2.new(bladePos, bladePos + rDirection(true), 6, 0.3, 3, 0.07, 4, "Lily white", 0.2, "Neon")
  Effects.Fire.new(bladePos, 3, 0.3, 0.04, 3, "Lily white", 0.2)
  sound(c.Torso, 199145841, math.random(72, 97) / 100, math.random(85, 115) / 100)
  wait(0.22 - Debounces.ComboCycles / 9)
  return hit[1]
end, function(notCombo)
  local hit = nil
  setLerp(0.2 + Debounces.ComboCycles / 10)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 42, 2)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.022, -46.682, -0.129)), CFrame.new(Vector3.new(-1.561, 1.41, 0.309)) * CFAngles(Vector3.new(-49.577, 71.866, -114.898)), CFrame.new(Vector3.new(0.25, 1.069, -0.95)) * CFAngles(Vector3.new(110.771, -52.32, -58.496)), CFrame.new(Vector3.new(-0.651, -1.92, 0.17)) * CFAngles(Vector3.new(-8.568, 10.45, -10.697)), CFrame.new(Vector3.new(0.49, -2, -0.05)) * CFAngles(Vector3.new(-2.927, -23.491, -1.506)), CFrame.new(Vector3.new(-0.431, 1.939, -0.77)) * CFAngles(Vector3.new(92.549, -20.76, 46.298))})
  wait(0.3 - Debounces.ComboCycles / 9)
  if notCombo then
    takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) * 3, 5, false)
  else
    hit = takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) + 4, 5, false)
  end
  setLerp(0.25 + Debounces.ComboCycles / 10)
  Debounces.Speed = 1.3
  moveVel(root.CFrame.lookVector, Variables.AttackBoost, 0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 42, -2)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(-14.723, -27.765, -4.916)), CFrame.new(Vector3.new(-0.471, 0.29, -1.401)) * CFAngles(Vector3.new(-15.195, 37.121, 93.187)), CFrame.new(Vector3.new(1.26, -0.031, -0.95)) * CFAngles(Vector3.new(89.031, -45.061, 37.807)), CFrame.new(Vector3.new(-0.851, -2, 0.22)) * CFAngles(Vector3.new(-16.596, 8.188, -11.362)), CFrame.new(Vector3.new(0.49, -2, -0.05)) * CFAngles(Vector3.new(-2.804, -19.087, -1.461)), CFrame.new(Vector3.new(1.659, -0.451, -2.27)) * CFAngles(Vector3.new(-97.907, 2.29, -41.919))})
  sound(c.Torso, 320557487, math.random(72, 97) / 100, math.random(85, 115) / 100)
  if notCombo then
    spawn(function()
    for i = 1, 3 do
      wait()
      local bladePos = rBladePos()
      Effects.Spark2.new(bladePos, bladePos + rDirection(true), 6, 0.3, 3, 0.07, 4, "Lily white", 0.2, "Neon")
      Effects.Fire.new(bladePos, 3, 0.3, 0.04, 3 + i, "Lily white", 0.2)
    end
  end)
  end
  wait(0.25 - Debounces.ComboCycles / 9)
  if hit ~= nil then
    return hit[1]
  end
end, function(notCombo)
  local hit = nil
  setLerp(0.3 + Debounces.ComboCycles / 10)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 45, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.07, -27.677, -0.1)), CFrame.new(Vector3.new(-1.94, 0.27, -0.351)) * CFAngles(Vector3.new(29.971, -14.944, -70.318)), CFrame.new(Vector3.new(1, 0.169, -0.521)) * CFAngles(Vector3.new(72.262, 1.485, -34.576)), CFrame.new(Vector3.new(-0.72, -1.791, -0.04)) * CFAngles(Vector3.new(-7.911, 16.048, -13.146)), CFrame.new(Vector3.new(0.519, -1.851, -0.17)) * CFAngles(Vector3.new(-8.897, -19.314, 1.107)), CFrame.new(Vector3.new(-0.311, 0.049, -1.72)) * CFAngles(Vector3.new(175.328, 8.918, 106.964))})
  wait(0.15 - Debounces.ComboCycles / 9)
  if notCombo then
    takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) * 3, 5, false)
  else
    hit = takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) + 2, 5, false)
  end
  setLerp(0.22 + Debounces.ComboCycles / 10)
  Debounces.Speed = 1.3
  moveVel(root.CFrame.lookVector, Variables.AttackBoost, 0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -25, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.192, 40.553, -0.117)), CFrame.new(Vector3.new(-1.511, 0.02, 0.339)) * CFAngles(Vector3.new(-32.124, 23.957, -11.5)), CFrame.new(Vector3.new(1.709, 0.169, -0.351)) * CFAngles(Vector3.new(53.7, -10.743, 27.775)), CFrame.new(Vector3.new(-0.41, -1.89, -0.15)) * CFAngles(Vector3.new(-8.186, 28.56, -0.014)), CFrame.new(Vector3.new(0.7, -1.871, -0.04)) * CFAngles(Vector3.new(-9.479, 11.694, 7.34)), CFrame.new(Vector3.new(2.009, -0.611, -1.48)) * CFAngles(Vector3.new(-29.685, 38.085, -75.113))})
  if notCombo then
    spawn(function()
    for i = 1, 3 do
      wait()
      local bladePos = rBladePos()
      Effects.Spark2.new(bladePos, bladePos + rDirection(true), 6, 0.3, 3, 0.07, 4, "Lily white", 0.2, "Neon")
      Effects.Fire.new(bladePos, 3, 0.3, 0.04, 3 + i, "Lily white", 0.2)
    end
  end)
  else
    local bladePos = rBladePos()
    Effects.Spark2.new(bladePos, bladePos + rDirection(true), 6, 0.3, 3, 0.07, 4, "Lily white", 0.2, "Neon")
    Effects.Fire.new(bladePos, 3, 0.3, 0.04, 3, "Lily white", 0.2)
  end
  do
    sound(c.Torso, 199145146, math.random(72, 97) / 100, math.random(85, 115) / 100)
    wait(0.22 - Debounces.ComboCycles / 9)
    if hit ~= nil then
      return hit[1]
    end
  end
end, function(notCombo)
  local hit = nil
  setLerp(0.3 + Debounces.ComboCycles / 10)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -55, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.184, 37.216, -0.112)), CFrame.new(Vector3.new(-1.67, 0.06, -0.341)) * CFAngles(Vector3.new(25.13, -16.552, -18.209)), CFrame.new(Vector3.new(1.99, 0.329, 0.199)) * CFAngles(Vector3.new(53.985, -14.197, 92.784)), CFrame.new(Vector3.new(-0.63, -1.92, -0.13)) * CFAngles(Vector3.new(-9.54, 14.86, 1.081)), CFrame.new(Vector3.new(0.67, -2, 0)) * CFAngles(Vector3.new(-1.298, -33.83, 8.273)), CFrame.new(Vector3.new(3.149, -0.061, 0.35)) * CFAngles(Vector3.new(-2.383, -22.819, -80.659))})
  wait(0.15 - Debounces.ComboCycles / 9)
  if notCombo then
    takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) * 2.25, 5, false)
  else
    hit = takeDamage(root.CFrame:toWorldSpace(CFrame.new(0, 0, -3)).p, math.random(Variables.minDmg, Variables.maxDmg) + 3, 5, false)
  end
  setLerp(0.22 + Debounces.ComboCycles / 10)
  Debounces.Speed = 1.3
  moveVel(root.CFrame.lookVector, Variables.AttackBoost, 0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 30, 0)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(0.07, -27.677, -0.1)), CFrame.new(Vector3.new(-1.94, 0.27, -0.351)) * CFAngles(Vector3.new(29.971, -14.944, -70.318)), CFrame.new(Vector3.new(1, 0.169, -0.521)) * CFAngles(Vector3.new(72.262, 1.485, -34.576)), CFrame.new(Vector3.new(-0.72, -1.791, -0.04)) * CFAngles(Vector3.new(-7.911, 16.048, -13.146)), CFrame.new(Vector3.new(0.519, -1.851, -0.17)) * CFAngles(Vector3.new(-8.897, -19.314, 1.107)), CFrame.new(Vector3.new(-0.071, -0.131, -1.6)) * CFAngles(Vector3.new(-178.964, 39.12, 78.88))})
  sound(c.Torso, 320557518, math.random(72, 97) / 100, math.random(85, 115) / 100)
  if not notCombo then
    local bladePos = rBladePos()
    do
      Effects.Spark2.new(bladePos, bladePos + rDirection(true), 6, 0.3, 3, 0.07, 4, "Lily white", 0.2, "Neon")
      Effects.Fire.new(bladePos, 3, 0.3, 0.04, 3, "Lily white", 0.2)
    end
  else
    do
      CEfx.Spark2Sphere(c.Torso.Position, 15, 15, 5, 0.3, 2, 0.03, 3, "Institutional white")
      local p2 = root.CFrame
      local p1 = root.CFrame
      do
        local explosionSounds = {260429964, 260429995, 260430015}
        spawn(function()
    for i = 1, 5 do
      wait(0.07)
      p1 = p1:toWorldSpace(CFrame.new(4, 0, 0))
      takeDamage(p1.p, math.random(1, 2) * Debounces.Attack, 1, false)
      local p = Effects.Sphere.new(p1.p + rDirection(), 3, 0.4, 0.2, "Institutional white", 0.1)
      sound(p, explosionSounds[math.random(1, #explosionSounds)], 0.4, math.random(80, 110) / 100)
    end
  end)
        spawn(function()
    for i = 1, 5 do
      wait(0.07)
      p2 = p2:toWorldSpace(CFrame.new(-4, 0, 0))
      takeDamage(p2.p, math.random(1, 2) * Debounces.Attack, 1, false)
      local p = Effects.Sphere.new(p2.p + rDirection(), 3, 0.4, 0.2, "Institutional white", 0.1)
      sound(p, explosionSounds[math.random(1, #explosionSounds)], 0.4, math.random(80, 110) / 100)
    end
  end)
        wait(0.22 - Debounces.ComboCycles / 9)
        if hit ~= nil then
          return hit[1]
        end
      end
    end
  end
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
  spawn(function()
    wait(0.1)
    for _,v in pairs(c.Head:children()) do
      if v:isA("Sound") then
        v:Destroy()
      end
    end
  end)
  for _,x in pairs(Joints) do
    x.C1 = CFrameZero()
  end
  Stat.Parent = c
  Defense = Stat.Defence
  Attack = Stat.Damage
  Speed = Stat.Speed
  Stun = Stat.Stun
  Block = Stat.Block
end
setJointCFrames = function(table)
  for i = 1, #table do
    JointTargets[i] = table[i]
  end
end
setLerp = function(speed)
  AnimStat.lerpSpeed = speed
end
newCable = function()
  local cable = Instance.new("Part", Sword)
  cable.Anchored = true
  cable.Material = "Neon"
  cable.BrickColor = BrickColor.new("Institutional white")
  cable.CanCollide = false
  cable.Locked = true
  cable.Size = Vector3.new(1, 0.7, 0.7)
  local gyro = Instance.new("BodyGyro", root)
  gyro.D = 125
  gyro.P = 10000000
  gyro.MaxTorque = Vector3.new(1000, 10000000, 1000)
  return cable, gyro
end
takeDamage = function(position, damage, distance, platformStand)
  local hitPlrs = {}
  for i,v in pairs(pls:children()) do
    if v:isA("Player") and workspace:FindFirstChild(v.Name) and v ~= lp then
      local tor = workspace[v.Name]
      if tor and tor:FindFirstChild("HumanoidRootPart") and tor:FindFirstChild("Humanoid") and tor.HumanoidRootPart.Position - position.magnitude < distance then
        if tor:FindFirstChild("Stats") and tor.Stats:FindFirstChild("Defence") then
          damage = damage / tor.Stats.Defence.Value
        end
        tor.Humanoid:TakeDamage(damage * Debounces.Attack)
        table.insert(hitPlrs, #hitPlrs + 1, v)
        sound(tor.HumanoidRootPart, 131237241, math.random(4, 7) / 10, math.random(85, 115) / 100)
        TagService:NewTag(tor, lp, "Clarant", damage)
        if platformStand then
          v.Character.PlatformStand = platformStand
        end
      end
    end
  end
  return hitPlrs
end
getClosestCorner = function(part, pos)
  local Corners = {}
  local closest = Vector3.new()
  local cDis = 10000000000
  local size = part.Size / 2
  table.insert(Corners, 1, part.CFrame:toWorldSpace(CFrame.new(size.x, size.y, size.z)).p)
  table.insert(Corners, 2, part.CFrame:toWorldSpace(CFrame.new(size.x, -size.y, size.z)).p)
  table.insert(Corners, 3, part.CFrame:toWorldSpace(CFrame.new(size.x, -size.y, -size.z)).p)
  table.insert(Corners, 4, part.CFrame:toWorldSpace(CFrame.new(size.x, size.y, -size.z)).p)
  table.insert(Corners, 5, part.CFrame:toWorldSpace(CFrame.new(-size.x, size.y, size.z)).p)
  table.insert(Corners, 6, part.CFrame:toWorldSpace(CFrame.new(-size.x, -size.y, size.z)).p)
  table.insert(Corners, 7, part.CFrame:toWorldSpace(CFrame.new(-size.x, -size.y, -size.z)).p)
  table.insert(Corners, 8, part.CFrame:toWorldSpace(CFrame.new(-size.x, size.y, -size.z)).p)
  for _,v in pairs(Corners) do
    if v - pos.magnitude < cDis then
      closest = v
      cDis = v - pos.magnitude
    end
  end
  return closest
end
moveVel = function(dir, speed, time)
  spawn(function()
    local e = Instance.new("BodyVelocity", root)
    e.P = 1000000
    e.MaxForce = Vector3.new(100000, 100000, 100000)
    e.Velocity = dir.unit * speed
    wait(time)
    e:Destroy()
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
rBladePos = function()
  local bladePos = Hitbox.CFrame:toWorldSpace(CFrame.new(Vector3.new(math.random(-Hitbox.Size.x * 10, Hitbox.Size.x * 10), math.random(-Hitbox.Size.y * 10, Hitbox.Size.y * 10), math.random(-Hitbox.Size.z * 10, Hitbox.Size.z * 10)) / 12)).p
  return bladePos
end
rDirection = function(onlyUp)
  if onlyUp then
    return Vector3.new(math.random(-5, 5), math.random(0, 5), math.random(-5, 5)).unit
  else
    return Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)).unit
  end
end
moveCable = function()
  local point = nil
  if Grapple.angle < 0 then
    point = c["Left Arm"].CFrame:toWorldSpace(CFrame.new(0, -1, 0)).p
  else
    point = c["Right Arm"].CFrame:toWorldSpace(CFrame.new(0, -1, 0)).p
  end
  if Grapple.Return then
    Grapple.tPos = point
    if Grapple.aPos - Grapple.tPos.magnitude < Grapple.gSpeed then
      Grapple.aPos = Grapple.tPos
      Grapple.Return = false
    else
      Grapple.aPos = Grapple.aPos + Grapple.tPos - Grapple.aPos.unit * Grapple.gSpeed / (Debounces.FPS / 60)
    end
  else
    if Grapple.aPos ~= Grapple.tPos then
      if Grapple.aPos - Grapple.tPos.magnitude < Grapple.gSpeed then
        Grapple.aPos = Grapple.tPos
        Grapple.Attached = true
      else
        Grapple.aPos = Grapple.aPos + Grapple.tPos - Grapple.aPos.unit * Grapple.gSpeed / (Debounces.FPS / 60)
      end
    end
  end
  local c = Grapple.Cable
  c.Size = Vector3.new(point - Grapple.aPos.magnitude, 0.7, 0.7)
  c.CFrame = CFrame.new(point:lerp(Grapple.aPos, 0.5), Grapple.tPos) * CFrame.Angles(0, math.pi / 2, 0)
end
grappleOn = function()
  local corner, h, gpos = nil, nil, nil
  local angle = 0
  if Variables.usingGamepad then
    local dir = c.Humanoid.MoveDirection
    local ray = Ray.new(root.CFrame.p, dir * 999)
    h = workspace:findPartOnRay(ray, c)
    if h then
      sound(root, 280667448, 0.8, math.random(130, 150) / 100)
      corner = getClosestCorner(h, gpos)
    else
      Debounces.grappleMode = false
      return 
    end
  else
    do
      local dir = mouse.Hit.p - root.Position.unit
      do
        local ray = Ray.new(root.CFrame.p, dir * 999)
        -- DECOMPILER ERROR at PC64: Overwrote pending register: R2 in 'AssignReg'

        h = workspace:findPartOnRay(ray, c)
        if h then
          sound(root, 280667448, 0.8, math.random(130, 150) / 100)
          corner = getClosestCorner(h, gpos)
        else
          Debounces.grappleMode = false
          return 
        end
        local rotCFrame = CFrame.new(root.CFrame.p, corner * Vector3.new(1, 0, 1) + Vector3.new(0, root.Position.y, 0))
        root.CFrame = rotCFrame
        Grapple.angle = root.CFrame:toObjectSpace(CFrame.new(corner)).p.x
        Grapple.Cable = newCable()
        Grapple.Gyro.CFrame = rotCFrame
        Grapple.Corner = corner
        Grapple.Target = h
        Grapple.tPos = corner
        Grapple.aPos = root.Position
        Debounces.Speed = 0.1
      end
    end
  end
end
grappleOff = function(move)
  if Grapple.Cable then
    Grapple.Attached = false
    Grapple.Return = true
    wait(0.05)
    if Grapple.Gyro then
      Grapple.Gyro:Destroy()
      Grapple.Gyro = nil
    end
    if move then
      local gSounds = {199145913, 320557487}
      sound(root, gSounds[math.random(1, #gSounds)], 0.5, math.random(140, 150) / 100)
      moveVel(Grapple.Corner - root.Position.unit * Vector3.new(0.4, 1, 0.4), Grapple.cSpeed, 0.1)
    else
      do
        sound(root, 280667448, 0.8, math.random(130, 150) / 100)
        wait(0.05)
        while 1 do
        end
        if wait() and Grapple.Return then
          Grapple.Cable:Destroy()
          Grapple.Corner = Vector3.new()
          Debounces.grappleMode = false
        end
      end
    end
  end
end
prepareCharacter()
spawn(function()
  local Tick = 0
  local sine = 0
  local Cycles = 0
  while 1 do
    while 1 do
      while 1 do
        local waittime = wait()
        if cooldowns.cd1 > 0 then
          cooldowns.cd1 = cooldowns.cd1 - waittime
        end
        if cooldowns.cd2 > 0 then
          cooldowns.cd2 = cooldowns.cd2 - waittime
        end
        if cooldowns.cd3 > 0 then
          cooldowns.cd3 = cooldowns.cd3 - waittime
        end
        if Debounces.ComboTimer < 0 then
          Debounces.Combo = 1
          Debounces.ComboCycles = 0
          Debounces.ComboTimer = 0
        else
          Debounces.ComboTimer = Debounces.ComboTimer - waittime
        end
        Tick = tick() * 4.5
        sine = math.sin(Tick)
        Cycles = Cycles + 1
        if Debounces.isAttacking == false and Debounces.Idle and Debounces.isMoving == false and math.abs(root.Velocity.y) < 1 and not Debounces.grappleMode then
          if Debounces.isPassive then
            setLerp(0.16)
            setJointCFrames({CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 4 + 1) / 45, 0)) * CFAngles(Vector3.new(0, 0, 0)), CFrame.new(Vector3.new(-0.001, 1.5 + math.sin(tick() * 4 + 2) / 55, 0)) * CFAngles(Vector3.new(math.sin(tick() * 4 + 0.5) * 3, -3.677, 0)), CFrame.new(Vector3.new(-1.481, -0.001 + math.sin(tick() * 4 + 1.5) / 35, 0.029)) * CFAngles(Vector3.new(-0.001, 5.799, -3.111)), CFrame.new(Vector3.new(1.499, -0.001 + math.sin(tick() * 4 + 1.5) / 35, 0.079)) * CFAngles(Vector3.new(-0.001, -7.394, 4.585)), CFrame.new(Vector3.new(-0.561, -2.001 - math.sin(tick() * 4 + 1) / 45, -0.001)) * CFAngles(Vector3.new(-1.403, 6.154, -2.811)), CFrame.new(Vector3.new(0.559, -2.001 - math.sin(tick() * 4 + 1) / 45, -0.001)) * CFAngles(Vector3.new(-1.756, -3.906, 2.639)), CFrame.new(Vector3.new(2.121, 1.505 + math.sin(tick() * 4 + 1.5) / 35, 0.669)) * CFAngles(Vector3.new(89.999, 29.583, 90))})
          else
            setLerp(0.19)
            if not Debounces.isRaging then
              setJointCFrames({CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 4 + 1) / 45, 0)) * CFAngles(Vector3.new(0, 0, 0)), CFrame.new(Vector3.new(-0.071, 1.5 + math.sin(tick() * 4 + 2) / 55, -0.11)) * CFAngles(Vector3.new(-7.084 + math.sin(tick() * 4 + 0.5) * 3, 31.115, 1.274)), CFrame.new(Vector3.new(-1.561, 0.079 + math.sin(tick() * 4 + 1.5) / 35, 0.049)) * CFAngles(Vector3.new(5.991, 20.248, -13.485)), CFrame.new(Vector3.new(1.629, 0.339 + math.sin(tick() * 4 + 1.5) / 35, -0.401)) * CFAngles(Vector3.new(70.681, 11.049, 16.008)), CFrame.new(Vector3.new(-0.651, -1.941 - math.sin(tick() * 4 + 1) / 45, -0.071)) * CFAngles(Vector3.new(2.214, 13.033, -1.574)), CFrame.new(Vector3.new(0.549, -2.001 - math.sin(tick() * 4 + 1) / 45, -0.001)) * CFAngles(Vector3.new(2.701, -17.016, 1.379)), CFrame.new(Vector3.new(1.58, 0.934 + math.sin(tick() * 4 + 1.5) / 35, -0.742)) * CFAngles(Vector3.new(63.537, 6.027, 9.96))})
            else
              setJointCFrames({CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 3 + 1) / 35, 0)) * CFAngles(Vector3.new(0, 0, 0)), CFrame.new(Vector3.new(-0.021, 1.53 + math.sin(tick() * 3 + 2) / 45, -0.08)) * CFAngles(Vector3.new(-7.996 + math.sin(tick() * 3 + 0.5) * 5, 25.528, 0.801)), CFrame.new(Vector3.new(-1.641, -0.001 + math.sin(tick() * 3 + 1.5) / 25, -0.301)) * CFAngles(Vector3.new(19.011, 2.513, -18.441)), CFrame.new(Vector3.new(1.539, 0.119 + math.sin(tick() * 3 + 1.5) / 25, 0.289)) * CFAngles(Vector3.new(-11.729, -31.906, 14.534)), CFrame.new(Vector3.new(-0.681, -2.021 - math.sin(tick() * 3 + 1) / 35, -0.041)) * CFAngles(Vector3.new(-1.78, 10.765, -3.825)), CFrame.new(Vector3.new(0.699, -2.001 - math.sin(tick() * 3 + 1) / 35, -0.001)) * CFAngles(Vector3.new(-4.701, -17.016, 3.153)), CFrame.new(Vector3.new(1.88, -0.896 + math.sin(tick() * 3 + 1.5) / 25, 0.648)) * CFAngles(Vector3.new(-82.868, -12.408, 165.851))})
            end
          end
        else
          if Debounces.isAttacking == false and Debounces.Idle and Debounces.isMoving == true and math.abs(root.Velocity.y) < 1 and not Debounces.grappleMode then
            setLerp(0.3)
            if Debounces.isPassive then
              Debounces.Speed = 0.9
              setJointCFrames({CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 14) / 35, 0)) * CFAngles(Vector3.new(0, math.sin(tick() * 7) * 2 - math.sin(tick() * 7) * 3, root.RotVelocity.y / 1.3 - math.sin(tick() * 7))), CFrame.new(Vector3.new(-0.001, 1.5 - math.sin(tick() * 14 + 2) / 85, 0)) * CFAngles(Vector3.new(-7.5, -3.677 + math.sin(tick() * 7) * 3 + root.RotVelocity.y * 3, 0)), CFrame.new(Vector3.new(-1.481, -0.001, 0.029 + math.sin(tick() * 7 + math.pi / 2) / 7)) * CFAngles(Vector3.new(-0.001 - math.sin(tick() * 7 + math.pi / 2) * 6, 5.799, -3.111)), CFrame.new(Vector3.new(1.499, -0.001, 0.079 + math.sin(tick() * 7 - math.pi / 2) / 7)) * CFAngles(Vector3.new(-0.001 - math.sin(tick() * 7 - math.pi / 2) * 6, -7.394, 4.585)), CFrame.new(Vector3.new(-0.561, -2.001 - math.cos(tick() * 7) / 24, 0.15 + math.sin(tick() * 7) / 1.7)) * CFAngles(Vector3.new(-8 - math.sin(tick() * 7) * 35, 6.154, -2.811)), CFrame.new(Vector3.new(0.559, -2.001 - math.cos(tick() * 7 + math.pi) / 24, 0.15 + math.sin(tick() * 7 + math.pi) / 1.7)) * CFAngles(Vector3.new(-8.756 - math.sin(tick() * 7 + math.pi) * 35, -3.906, 2.639)), CFrame.new(Vector3.new(2.121, 1.505, 0.669)) * CFAngles(Vector3.new(89.999, 29.583, 90))})
            else
              if not Debounces.isRaging then
                Debounces.Speed = 1
                setJointCFrames({CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 14) / 35, 0)) * CFAngles(Vector3.new(-2, math.sin(tick() * 7) * 2 - math.sin(tick() * 7) * 3, root.RotVelocity.y / 1.3 - math.sin(tick() * 7))), CFrame.new(Vector3.new(-0.071, 1.5 - math.sin(tick() * 14 + 2) / 85, -0.11)) * CFAngles(Vector3.new(-7.084, 2.115 + math.sin(tick() * 7) * 3 + root.RotVelocity.y * 3, 1.274)), CFrame.new(Vector3.new(-1.561, 0.079 + math.cos(tick() * 4.5) / 35, 0.049 + math.sin(tick() * 7 + math.pi / 2) / 3.5)) * CFAngles(Vector3.new(5.991 - math.sin(tick() * 7 + math.pi / 2) * 20, 20.248, -13.485)), CFrame.new(Vector3.new(1.629, 0.339, -0.401 + math.sin(tick() * 7 - math.pi / 2) / 7)) * CFAngles(Vector3.new(70.681 - math.sin(tick() * 7 - math.pi / 2) * 6, 11.049, 16.008)), CFrame.new(Vector3.new(-0.541, -1.941 - math.cos(tick() * 7) / 24, 0.121 + math.sin(tick() * 7) / 1.7)) * CFAngles(Vector3.new(-7.214 - math.sin(tick() * 7) * 35, 6.033, -1.574)), CFrame.new(Vector3.new(0.489, -2.001 - math.cos(tick() * 7 + math.pi) / 24, 0.11 + math.sin(tick() * 7 + math.pi) / 1.7)) * CFAngles(Vector3.new(-7.701 - math.sin(tick() * 7 + math.pi) * 35, -5.016, 1.379)), CFrame.new(Vector3.new(1.58, 0.934, -0.742 + math.sin(tick() * 7 - math.pi / 2) / 7)) * CFAngles(Vector3.new(63.537 - math.sin(tick() * 7 - math.pi / 2) * 1.5, 6.027, 9.96))})
              else
                Debounces.Speed = 1.25
                setJointCFrames({CFrame.new(Vector3.new(0, 0 + math.sin(tick() * 16) / 35, 0)) * CFAngles(Vector3.new(-3, math.sin(tick() * 8) * 2 - math.sin(tick() * 8) * 3, root.RotVelocity.y / 1.3 - math.sin(tick() * 8))), CFrame.new(Vector3.new(-0.021, 1.53 - math.sin(tick() * 16 + 2) / 85, -0.08)) * CFAngles(Vector3.new(-7.996, 2.528 + math.sin(tick() * 8) * 3 + root.RotVelocity.y * 3, 0.801)), CFrame.new(Vector3.new(-1.541, -0.001 + math.cos(tick() * 4) / 35, -0.101 + math.sin(tick() * 8 + math.pi / 2) / 3.5)) * CFAngles(Vector3.new(5.011 - math.sin(tick() * 8 + math.pi / 2) * 20, 2.513, -4.441)), CFrame.new(Vector3.new(1.539, 0.119, 0.289 + math.sin(tick() * 8 - math.pi / 2) / 7)) * CFAngles(Vector3.new(-11.729 - math.sin(tick() * 8 - math.pi / 2) * 6, -31.906, 14.534)), CFrame.new(Vector3.new(-0.541, -1.941 - math.cos(tick() * 8) / 24, 0.121 + math.sin(tick() * 8) / 1.7)) * CFAngles(Vector3.new(-13.214 - math.sin(tick() * 8) * 39, 6.033, -1.574)), CFrame.new(Vector3.new(0.489, -2.001 - math.cos(tick() * 8 + math.pi) / 24, 0.11 + math.sin(tick() * 8 + math.pi) / 1.7)) * CFAngles(Vector3.new(-13.701 - math.sin(tick() * 8 + math.pi) * 39, -5.016, 1.379)), CFrame.new(Vector3.new(1.88, -0.896, 0.648 + math.sin(tick() * 8 - math.pi / 2) / 7)) * CFAngles(Vector3.new(-77.868, -12.408, 165.851))})
              end
            end
          else
            if Debounces.isAttacking == false and Debounces.Idle and math.abs(root.Velocity.y) > 1 and not Debounces.grappleMode then
              if root.Velocity.y > 0 then
                if Debounces.isPassive then
                  Debounces.Speed = 1
                  setLerp(0.1)
                  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-10, 0, root.RotVelocity.y / 1.3)), CFrame.new(Vector3.new(-0.001, 1.5, 0.07)) * CFAngles(Vector3.new(6.288, 0, 0)), CFrame.new(Vector3.new(-1.651, -0.001, 0.089)) * CFAngles(Vector3.new(-4.123, 9.689, -0.634)), CFrame.new(Vector3.new(1.629, -0.001, -0.001)) * CFAngles(Vector3.new(-4.304, -10.103, 11.272)), CFrame.new(Vector3.new(-0.641, -2.001, -0.001)) * CFAngles(Vector3.new(-2.225, 8.065, -4.435)), CFrame.new(Vector3.new(0.699, -2.001, -0.001)) * CFAngles(Vector3.new(-2.727, -6.087, 5.559)), CFrame.new(Vector3.new(2.121, 1.505, 0.669)) * CFAngles(Vector3.new(89.999, 29.583, 90))})
                else
                  if Debounces.isRaging then
                    Debounces.Speed = 1.3
                    setLerp(0.1)
                    setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-10, 0, root.RotVelocity.y / 1.3)), CFrame.new(Vector3.new(-0.001, 1.55, 0.03)) * CFAngles(Vector3.new(1.444, 7.045, 0.266)), CFrame.new(Vector3.new(-1.671, 0.129, 0.069)) * CFAngles(Vector3.new(8.44, 9.482, -30.284)), CFrame.new(Vector3.new(1.629, 0.139, 0.339)) * CFAngles(Vector3.new(-10.423, -21.726, 26.245)), CFrame.new(Vector3.new(-0.641, -1.921, 0.039)) * CFAngles(Vector3.new(-9.671, 1.468, -5.747)), CFrame.new(Vector3.new(0.669, -1.921, -0.071)) * CFAngles(Vector3.new(-2.841, -5.346, 8.668)), CFrame.new(Vector3.new(2.121, -1.025, 0.389)) * CFAngles(Vector3.new(-74.041, -9.339, 167.331))})
                  else
                    Debounces.Speed = 1.1
                    setLerp(0.1)
                    setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-10, 0, root.RotVelocity.y / 1.3)), CFrame.new(Vector3.new(-0.001, 1.55, 0)) * CFAngles(Vector3.new(9.615, -0.001, 0)), CFrame.new(Vector3.new(-1.671, 0.129, 0.229)) * CFAngles(Vector3.new(-8.124, 18.205, -26.282)), CFrame.new(Vector3.new(1.629, 0.559, -0.471)) * CFAngles(Vector3.new(58.863, 23.219, 8.3)), CFrame.new(Vector3.new(-0.641, -1.921, 0.039)) * CFAngles(Vector3.new(-6.502, 1.147, -5.82)), CFrame.new(Vector3.new(0.669, -1.921, 0.009)) * CFAngles(Vector3.new(-2.841, -5.346, 8.668)), CFrame.new(Vector3.new(1.351, 1.065, -0.8)) * CFAngles(Vector3.new(68.057, 27.364, 5.761))})
                  end
                end
              else
                if Debounces.isPassive then
                  Debounces.Speed = 0.9
                  setLerp(0.15)
                  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(5, 0, root.RotVelocity.y / 1.3)), CFrame.new(Vector3.new(-0.001, 1.49, -0.2)) * CFAngles(Vector3.new(-25.025, -0.001, 0)), CFrame.new(Vector3.new(-1.651, 0.129, -0.261)) * CFAngles(Vector3.new(13.951, -7.666, -13.875)), CFrame.new(Vector3.new(1.629, -0.001, -0.191)) * CFAngles(Vector3.new(12.325, 5.21, 17.445)), CFrame.new(Vector3.new(-0.641, -1.921, -0.171)) * CFAngles(Vector3.new(-13.575, 8.774, -2.768)), CFrame.new(Vector3.new(0.699, -1.871, -0.241)) * CFAngles(Vector3.new(-2.727, -6.087, 5.559)), CFrame.new(Vector3.new(2.121, 1.505, 0.669)) * CFAngles(Vector3.new(89.999, 29.583, 90))})
                else
                  if Debounces.isRaging then
                    Debounces.Speed = 1.25
                    setLerp(0.15)
                    setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(5, 0, root.RotVelocity.y / 1.3)), CFrame.new(Vector3.new(-0.001, 1.55, -0.12)) * CFAngles(Vector3.new(-14.168, 4.316, 2.15)), CFrame.new(Vector3.new(-1.671, 0.129, -0.321)) * CFAngles(Vector3.new(17.744, -31.078, -36.676)), CFrame.new(Vector3.new(1.629, 0.139, 0.429)) * CFAngles(Vector3.new(-21.097, -26.1, 21.904)), CFrame.new(Vector3.new(-0.641, -1.811, -0.191)) * CFAngles(Vector3.new(-13.94, 1.893, -5.622)), CFrame.new(Vector3.new(0.669, -1.711, -0.071)) * CFAngles(Vector3.new(-12.446, -6.719, 7.656)), CFrame.new(Vector3.new(1.951, -0.775, 1.109)) * CFAngles(Vector3.new(-95.614, -17.467, 162.458))})
                  else
                    Debounces.Speed = 1
                    setLerp(0.15)
                    setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(5, 0, root.RotVelocity.y / 1.3)), CFrame.new(Vector3.new(-0.001, 1.49, -0.22)) * CFAngles(Vector3.new(-15.813, -0.001, 0)), CFrame.new(Vector3.new(-1.671, 0.129, -0.261)) * CFAngles(Vector3.new(13.951, -7.666, -24.491)), CFrame.new(Vector3.new(1.629, 0.559, -0.471)) * CFAngles(Vector3.new(83.88, 18.169, 0.725)), CFrame.new(Vector3.new(-0.641, -1.921, -0.171)) * CFAngles(Vector3.new(-13.575, 8.774, -4.736)), CFrame.new(Vector3.new(0.749, -1.871, -0.241)) * CFAngles(Vector3.new(-2.727, -6.087, 8.679)), CFrame.new(Vector3.new(1.461, 1.065, -0.8)) * CFAngles(Vector3.new(71.841, 19.927, 4.049))})
                  end
                end
              end
            else
              if Debounces.grappleMode and not Grapple.Attached and not Grapple.Return and Debounces.Idle then
                setLerp(0.3)
                if 0 < Grapple.angle then
                  setJointCFrames({CFrame.new(Vector3.new(0, -0.1, 0)) * CFAngles(Vector3.new(0, 45, 10)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(-0.001, -40.451, -0.001)), CFrame.new(Vector3.new(-1.74, 0.149, 0)) * CFAngles(Vector3.new(20.665, 26.062, -27.496)), CFrame.new(Vector3.new(1.989, 0.439, -0.52)) * CFAngles(Vector3.new(66.262, 11.731, 62.527)), CFrame.new(Vector3.new(-0.88, -1.921, 0)) * CFAngles(Vector3.new(-2.286, 17.512, -14.604)), CFrame.new(Vector3.new(0.62, -1.891, -0.12)) * CFAngles(Vector3.new(-13.736, -1.699, 5.118)), CFrame.new(Vector3.new(3.199, 0.359, -1.23)) * CFAngles(Vector3.new(-17.631, 30.854, -82.032))})
                else
                  setJointCFrames({CFrame.new(Vector3.new(0, -0.1, 0)) * CFAngles(Vector3.new(0, -45, -10)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-0.001, 40.45, 0)), CFrame.new(Vector3.new(-1.99, 0.439, -0.52)) * CFAngles(Vector3.new(66.262, -11.732, -62.528)), CFrame.new(Vector3.new(1.739, 0.149, 0)) * CFAngles(Vector3.new(20.665, -26.063, 27.495)), CFrame.new(Vector3.new(-0.62, -1.891, -0.12)) * CFAngles(Vector3.new(-13.736, 1.698, -5.119)), CFrame.new(Vector3.new(0.879, -1.921, 0)) * CFAngles(Vector3.new(-2.286, -17.513, 14.603)), CFrame.new(Vector3.new(-3.2, 0.359, -1.23)) * CFAngles(Vector3.new(-17.631, -30.855, 82.031))})
                end
              else
                if Debounces.grappleMode and Grapple.Attached and Debounces.Idle then
                  setLerp(0.3)
                  if 0 < Grapple.angle then
                    setJointCFrames({CFrame.new(Vector3.new(0, -0.15, 0)) * CFAngles(Vector3.new(0, 45, 10)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(-0.001, -26.867, -0.001)), CFrame.new(Vector3.new(-1.74, 0.149, 0)) * CFAngles(Vector3.new(20.665, 26.062, -50.457)), CFrame.new(Vector3.new(1.56, 0.569, -0.52)) * CFAngles(Vector3.new(-16.241, 61.843, 159.27)), CFrame.new(Vector3.new(-0.81, -1.841, 0)) * CFAngles(Vector3.new(-2.286, 17.512, -14.604)), CFrame.new(Vector3.new(0.62, -1.731, -0.22)) * CFAngles(Vector3.new(-13.736, -1.699, 2.624)), CFrame.new(Vector3.new(1.889, 0.929, -1.44)) * CFAngles(Vector3.new(-13.111, -10.402, 29.706))})
                  else
                    setJointCFrames({CFrame.new(Vector3.new(0, -0.15, 0)) * CFAngles(Vector3.new(0, -45, -10)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-0.001, 26.866, 0)), CFrame.new(Vector3.new(-1.56, 0.569, -0.52)) * CFAngles(Vector3.new(-16.241, -61.844, -159.271)), CFrame.new(Vector3.new(1.739, 0.149, 0)) * CFAngles(Vector3.new(20.665, -26.063, 50.456)), CFrame.new(Vector3.new(-0.62, -1.731, -0.22)) * CFAngles(Vector3.new(-13.736, 1.698, -2.625)), CFrame.new(Vector3.new(0.809, -1.841, 0)) * CFAngles(Vector3.new(-2.286, -17.513, 14.603)), CFrame.new(Vector3.new(-1.89, 0.929, -1.44)) * CFAngles(Vector3.new(-13.111, 10.401, -29.707))})
                  end
                else
                  if Debounces.grappleMode and Grapple.Return and Debounces.Idle then
                    setLerp(0.3)
                    if 0 < Grapple.angle then
                      setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 45, -10)), CFrame.new(Vector3.new(0, 1.5, -0.001)) * CFAngles(Vector3.new(-0.001, -26.867, -0.001)), CFrame.new(Vector3.new(-2.02, 0.429, 0.38)) * CFAngles(Vector3.new(20.665, 26.062, -90.864)), CFrame.new(Vector3.new(0.34, 0.489, -1.1)) * CFAngles(Vector3.new(92.78, -0.103, -56.333)), CFrame.new(Vector3.new(-0.66, -1.841, 0)) * CFAngles(Vector3.new(-2.286, 17.512, -7.954)), CFrame.new(Vector3.new(0.62, -1.281, -0.22)) * CFAngles(Vector3.new(-21.705, -2.046, 2.364)), CFrame.new(Vector3.new(-0.601, 0.569, -1.91)) * CFAngles(Vector3.new(10.492, 7.071, 89.498))})
                    else
                      setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -45, 10)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-0.001, 26.866, 0)), CFrame.new(Vector3.new(-0.341, 0.489, -1.1)) * CFAngles(Vector3.new(92.78, 0.102, 56.332)), CFrame.new(Vector3.new(2.019, 0.429, 0.379)) * CFAngles(Vector3.new(20.665, -26.063, 90.863)), CFrame.new(Vector3.new(-0.62, -1.281, -0.22)) * CFAngles(Vector3.new(-21.705, 2.045, -2.365)), CFrame.new(Vector3.new(0.659, -1.841, 0)) * CFAngles(Vector3.new(-2.286, -17.513, 7.953)), CFrame.new(Vector3.new(0.6, 0.569, -1.91)) * CFAngles(Vector3.new(10.492, -7.072, -89.499))})
                    end
                  end
                end
              end
            end
          end
        end
        human.WalkSpeed = Debounces.Speed * 16
        do
          if Debounces.isRaging and not Debounces.isAttacking and (Cycles) % math.random(30, 70) == 1 then
            local bladePos = rBladePos()
            Effects.Spark2.new(bladePos, bladePos + rDirection(true), 6, 0.3, 3, 0.07, 4, "Lily white", 0.2, "Neon")
            Effects.Fire.new(bladePos, 3, 0.3, 0.04, 3, "Lily white", 0.2)
          end
          Block.Value = Debounces.isBlocking
          Attack.Value = Debounces.Attack
          Defense.Value = Debounces.Defense
          Speed.Value = Debounces.Speed
          Debounces.isStunned = Stun.Value
          Debounces.Attack = 1 + Debounces.ComboCycles / 2
          if Debounces.isPassive then
            Debounces.Defense = 0.6
            -- DECOMPILER ERROR at PC3436: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC3436: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC3436: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
      if Debounces.isRaging then
        Debounces.Defense = 0.4
        -- DECOMPILER ERROR at PC3445: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC3445: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
    Debounces.Defense = 0.5
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
cooldif = function(num)
  if num == 1 then
    return cooldowns.cdt1 - cooldowns.cd1 - 0.01
  else
    if num == 2 then
      return cooldowns.cdt2 - cooldowns.cd2 - 0.01
    else
      return cooldowns.cdt3 - cooldowns.cd3 - 0.01
    end
  end
end
atk3 = function()
  if cooldowns.cd3 <= 0 and not Debounces.isAttacking and not Debounces.isPassive and not Debounces.grappleMode then
    Debounces.isAttacking = true
    Combo[#Combo](true)
    Debounces.isAttacking = false
    cooldowns.cd3 = cooldowns.cdt3
  end
end
atk2 = function()
  if cooldowns.cd2 <= 0 and not Debounces.isAttacking and not Debounces.isPassive and not Debounces.grappleMode then
    Debounces.isAttacking = true
    Combo[#Combo - 2](true)
    Debounces.isAttacking = false
    cooldowns.cd2 = cooldowns.cdt2
  end
end
atk1 = function()
  if cooldowns.cd1 <= 0 and not Debounces.isAttacking and not Debounces.isPassive and not Debounces.grappleMode then
    Debounces.isAttacking = true
    Combo[#Combo - 1](true)
    Debounces.isAttacking = false
    cooldowns.cd1 = cooldowns.cdt1
  end
end
atk1Power = function()
  if cooldowns.cd1 ~= -0.01 then
    sound(lp, 410814187, 0.3, math.random(90, 110) / 100)
    cooldowns.cd1 = cooldowns.cd1 - (cooldif(2) + cooldif(3))
    cooldowns.cd2 = -0.01
    cooldowns.cd3 = -0.01
    if cooldowns.cd1 < -0.01 then
      local diff = (-cooldowns.cd1 + 0.01) / 2
      cooldowns.cd1 = -0.01
      cooldowns.cd2 = cooldowns.cd2 + diff
      cooldowns.cd3 = cooldowns.cd3 + diff
    end
  end
end
atk2Power = function()
  if cooldowns.cd2 ~= -0.01 then
    sound(lp, 410814187, 0.3, math.random(90, 110) / 100)
    cooldowns.cd2 = cooldowns.cd2 - (cooldif(1) + cooldif(3))
    cooldowns.cd1 = -0.01
    cooldowns.cd3 = -0.01
    if cooldowns.cd2 < -0.01 then
      local diff = (-cooldowns.cd2 + 0.01) / 2
      cooldowns.cd2 = -0.01
      cooldowns.cd1 = cooldowns.cd1 + diff
      cooldowns.cd3 = cooldowns.cd3 + diff
    end
  end
end
atk3Power = function()
  if cooldowns.cd3 ~= -0.01 then
    sound(lp, 410814187, 0.3, math.random(90, 110) / 100)
    cooldowns.cd3 = cooldowns.cd3 - (cooldif(2) + cooldif(1))
    cooldowns.cd2 = -0.01
    cooldowns.cd1 = -0.01
    if cooldowns.cd3 < -0.01 then
      local diff = (-cooldowns.cd3 + 0.01) / 2
      cooldowns.cd3 = -0.01
      cooldowns.cd2 = cooldowns.cd2 + diff
      cooldowns.cd1 = cooldowns.cd1 + diff
    end
  end
end
uinps.InputBegan:connect(function(InputObj)
  if not Debounces.isTyping then
    if InputObj.KeyCode == Enum.KeyCode.F and not Debounces.isRaging and not Debounces.grappleMode then
      Debounces.isPassive = not Debounces.isPassive
    else
      if InputObj.KeyCode == Enum.KeyCode.LeftShift and not Debounces.grappleMode and not Debounces.isAttacking then
        Debounces.grappleMode = true
        grappleOn()
      else
        if InputObj.KeyCode == Enum.KeyCode.LeftControl then
          grappleOff(false)
        else
          if InputObj.KeyCode == Enum.KeyCode.V then
            atk3()
          else
            if InputObj.KeyCode == Enum.KeyCode.C then
              atk2()
            else
              if InputObj.KeyCode == Enum.KeyCode.X then
                atk1()
              else
                if InputObj.KeyCode == Enum.KeyCode.E and not Debounces.isPassive and not Debounces.grappleMode then
                  Debounces.isRaging = not Debounces.isRaging
                  if Debounces.isRaging then
                    Debounces.Attack = Variables.rageMult
                    BladeMotor.C0 = CFrame.new(0, 0.7, 0)
                    InLMotor.C0 = CFrame.new(0, -0.7, 0.2) * CFrame.Angles(rad(-12), 0, 0)
                    InRMotor.C0 = CFrame.new(0, -0.7, 0.2) * CFrame.Angles(rad(-12), 0, 0)
                    OutLMotor.C0 = CFrame.new(0, 0.1, 0) * CFrame.Angles(rad(-17), 0, 0)
                    OutRMotor.C0 = CFrame.new(0, 0.1, 0) * CFrame.Angles(rad(-17), 0, 0)
                    sound(c.Torso, 199149072, math.random(80, 90) / 100, math.random(85, 115) / 100)
                    for _,v in pairs(Glow) do
                      v.Material = "Neon"
                    end
                    for _,v in pairs(Crystals) do
                      v.Transparency = 0
                    end
                    for _,v in pairs(Colorable) do
                      v.BrickColor = BrickColor.new("Brick yellow")
                    end
                    Camera.BorderColor3 = Colors["Brick yellow"]
                    Movement.BorderColor3 = Colors["Brick yellow"]
                    Atk1.Button.BorderColor3 = Colors["Brick yellow"]
                    Atk2.Button.BorderColor3 = Colors["Brick yellow"]
                    Atk3.Button.BorderColor3 = Colors["Brick yellow"]
                    Blood.ImageColor3 = Colors["Brick yellow"]
                    ComboBox.TextStrokeColor3 = Colors["Brick yellow"]
                    Light.Enabled = true
                  else
                    Debounces.Attack = 1
                    BladeMotor.C0 = CFrameZero()
                    InLMotor.C0 = CFrameZero()
                    InRMotor.C0 = CFrameZero()
                    OutLMotor.C0 = CFrameZero()
                    OutRMotor.C0 = CFrameZero()
                    sound(c.Torso, 199149119, math.random(80, 90) / 100, math.random(85, 115) / 100)
                    for _,v in pairs(Glow) do
                      v.Material = "SmoothPlastic"
                    end
                    for _,v in pairs(Crystals) do
                      v.Transparency = 1
                    end
                    for _,v in pairs(Colorable) do
                      v.BrickColor = BrickColor.new("Maroon")
                    end
                    Camera.BorderColor3 = Colors.Maroon
                    Movement.BorderColor3 = Colors.Maroon
                    Atk1.Button.BorderColor3 = Colors.Maroon
                    Atk2.Button.BorderColor3 = Colors.Maroon
                    Atk3.Button.BorderColor3 = Colors.Maroon
                    Blood.ImageColor3 = Colors.Maroon
                    ComboBox.TextStrokeColor3 = Color3.new(1, 0.33333333333333, 0)
                    Light.Enabled = false
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end)
uinps.InputEnded:connect(function(InputObj)
  if InputObj.KeyCode == Enum.KeyCode.LeftShift and Debounces.grappleMode then
    grappleOff(true)
  end
end)
mouse.Button1Down:connect(function()
  if not Debounces.isAttacking and not Debounces.isPassive and not Debounces.grappleMode then
    Debounces.isAttacking = true
    Debounces.Idle = false
    if Debounces.ComboTimer > 0 then
      Debounces.Combo = Debounces.Combo + 1
    else
      Debounces.Combo = 1
    end
    local hit = Combo[Debounces.Combo % #Combo + 1]()
    Debounces.ComboCycles = #Combo / Debounces.Combo
    if hit then
      Debounces.ComboTimer = Variables.ComboTimer
    end
    Debounces.isAttacking = false
    wait(0.12)
    Debounces.Idle = true
  end
end)
Main.Visible = true
Atk1.Button.MouseButton1Click:connect(function()
  atk1Power()
end)
Atk2.Button.MouseButton1Click:connect(function()
  atk2Power()
end)
Atk3.Button.MouseButton1Click:connect(function()
  atk3Power()
end)
rs.RenderStepped:connect(function()
  Debounces.FPS = 1 / rs.RenderStepped:wait()
  ComboTrans = (1 - Debounces.ComboTimer / Variables.ComboTimer - Blood.ImageTransparency) * 0.1 / (Debounces.FPS / 60) + Blood.ImageTransparency
  ComboBox.Position = UDim2.new(0, math.random(-Debounces.Combo, Debounces.Combo) / (ComboTrans * 2), 0, math.random(-Debounces.Combo, Debounces.Combo) / (ComboTrans * 2))
  ComboBox.TextTransparency = ComboTrans
  ComboBox.TextStrokeTransparency = ComboTrans * 1.5
  ComboBox.Text = tostring(Debounces.Combo) .. "x"
  Atk1.Charge:TweenSizeAndPosition(UDim2.new(1 - cooldowns.cd1 / cooldowns.cdt1, 0, 1, 0), UDim2.new(), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.1, true)
  Atk1.ChargePercent.Text = tostring(99 - math.floor(cooldowns.cd1 / cooldowns.cdt1 * 100)) .. " %"
  Atk2.Charge:TweenSizeAndPosition(UDim2.new(1 - cooldowns.cd2 / cooldowns.cdt2, 0, 1, 0), UDim2.new(), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.1, true)
  Atk2.ChargePercent.Text = tostring(99 - math.floor(cooldowns.cd2 / cooldowns.cdt2 * 100)) .. " %"
  Atk3.Charge:TweenSizeAndPosition(UDim2.new(1 - cooldowns.cd3 / cooldowns.cdt3, 0, 1, 0), UDim2.new(), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.1, true)
  Atk3.ChargePercent.Text = tostring(99 - math.floor(cooldowns.cd3 / cooldowns.cdt3 * 100)) .. " %"
  Blood.ImageTransparency = ComboTrans
  if Debounces.FPS < 20 then
    Debounces.FPS = 20
  end
  if Debounces.isRaging then
    Light.Range = 8 + math.sin(tick() * 2) * 3
    Atk3.Charge.BackgroundColor3 = Color3.new(1, 1 - cooldowns.cd3 / cooldowns.cdt3, 0)
    Atk2.Charge.BackgroundColor3 = Color3.new(1, 1 - cooldowns.cd2 / cooldowns.cdt2, 0)
    Atk1.Charge.BackgroundColor3 = Color3.new(1, 1 - cooldowns.cd1 / cooldowns.cdt1, 0)
  else
    Atk3.Charge.BackgroundColor3 = Color3.new(cooldowns.cd3 / cooldowns.cdt3, 1 - cooldowns.cd3 / cooldowns.cdt3, 0)
    Atk2.Charge.BackgroundColor3 = Color3.new(cooldowns.cd2 / cooldowns.cdt2, 1 - cooldowns.cd2 / cooldowns.cdt2, 0)
    Atk1.Charge.BackgroundColor3 = Color3.new(cooldowns.cd1 / cooldowns.cdt1, 1 - cooldowns.cd1 / cooldowns.cdt1, 0)
  end
  local moveVector = Vector2.new(human.MoveDirection.x, human.MoveDirection.z) * 30
  MovementBox.Dot.Position = UDim2.new(0.475, moveVector.x, 0.475, moveVector.y)
  local camVector = Vector2.new(math.sin(workspace.CurrentCamera.CFrame.lookVector.y * math.pi * 2), math.cos(workspace.CurrentCamera.CFrame.lookVector.y * math.pi * 2)) * 30
  CameraBox.Dot.Position = UDim2.new(0.475, camVector.x, 0.475, camVector.y)
  if Grapple.Cable then
    moveCable()
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

