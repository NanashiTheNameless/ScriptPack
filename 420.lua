
plr = game.Players.LocalPlayer
char = plr.Character
torso = char.Torso
head = char.Head
hed = char.Head
neck = torso.Neck
mouse = plr:GetMouse()
larm = char["Left Arm"]
rarm = char["Right Arm"]
lleg = char["Left Leg"]
rleg = char["Right Leg"]
local Player = game:service("Players").LocalPlayer
local Char = Player.Character
local mouse = Player:GetMouse()
local Humanoid = Char:findFirstChild("Humanoid")
local Torso = Char:findFirstChild("Torso")
head.face:Destroy()
ypcall(function()
  local shirt = Char:FindFirstChild("Shirt") or Instance.new("Shirt", Char)
  local pants = Char:FindFirstChild("Pants") or Instance.new("Pants", Char)
  shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=181769528"
  pants.PantsTemplate = "http://www.roblox.com/asset/?id=167384966"
end)
Humanoid.MaxHealth = math.huge
wait()
Humanoid.Health = math.huge
for i, v in pairs(char:GetChildren()) do
  if v:IsA("Hat") then
    v.Handle.Transparency = 1
    v:Destroy()
  end
end
char["Body Colors"].HeadColor = BrickColor.new("Nougat")
char["Body Colors"].TorsoColor = BrickColor.new("Nougat")
char["Body Colors"].LeftArmColor = BrickColor.new("Nougat")
char["Body Colors"].RightArmColor = BrickColor.new("Nougat")
local Head = Char.Head
local ra = Char:findFirstChild("Right Arm")
local la = Char:findFirstChild("Left Arm")
local rl = Char:findFirstChild("Right Leg")
local ll = Char:findFirstChild("Left Leg")
local rs = Torso:findFirstChild("Right Shoulder")
local ls = Torso:findFirstChild("Left Shoulder")
local rh = Torso:findFirstChild("Right Hip")
local lh = Torso:findFirstChild("Left Hip")
local neck = Torso:findFirstChild("Neck")
local rp = Char:findFirstChild("HumanoidRootPart")
rp.Archivable = true
local rj = rp:findFirstChild("RootJoint")
rj.Archivable = true
local animate = Char:findFirstChild("Animate")
local rootpart = Char:findFirstChild("HumanoidRootPart")
local Camera = workspace.CurrentCamera
local CF = CFrame.new
local components = CF().components
rootpart.CanCollide = false
Humanoid:findFirstChild("Animator"):Destroy()
local debounce = false
function Random(num)
  local section = num % 1 * 3
  local secondary = 0.5 * math.pi * (section % 1)
  if section < 1 then
    return 1, 1 - math.cos(secondary), 1 - math.sin(secondary)
  elseif section < 2 then
    return 1 - math.sin(secondary), 1, 1 - math.cos(secondary)
  else
    return 1 - math.cos(secondary), 1 - math.sin(secondary), 1
  end
end
local txtfag = Instance.new("BillboardGui", head)
txtfag.Adornee = suckadick
txtfag.Name = "kys nigga"
txtfag.Size = UDim2.new(2, 0, 1.2, 0)
txtfag.StudsOffset = Vector3.new(-5, 3, 0)
local textfag = Instance.new("TextLabel", txtfag)
textfag.Size = UDim2.new(6, 0, 1, 0)
textfag.FontSize = "Size8"
textfag.TextScaled = true
textfag.TextTransparency = 0
textfag.BackgroundTransparency = 1
textfag.TextTransparency = 0
textfag.TextStrokeTransparency = 0
textfag.Font = "SciFi"
textfag.TextStrokeColor3 = Color3.new(0, 1, 0)
textfag.Text = "420"
v = Instance.new("Part")
v.Name = "ColorBrick"
v.Parent = part
v.FormFactor = "Symmetric"
v.Anchored = true
v.CanCollide = false
v.BottomSurface = "Smooth"
v.TopSurface = "Smooth"
v.Size = Vector3.new(10, 5, 3)
v.Transparency = 0.7
v.CFrame = head.CFrame
v.BrickColor = BrickColor.new("Really black")
v.Transparency = 1
textfag.TextColor3 = v.BrickColor.Color
textfag.TextStrokeColor3 = Color3.new(0, 0, 0)
v.Shape = "Block"
game:GetService("RunService").RenderStepped:connect(function()
  textfag.TextColor = BrickColor.new(Random(tick()))
end)
sine = 100
angle = 100
anglespeed = 100
local anim = false
local walking = false
local sprinting = false
local superspeed = false
local superspeed2 = false
local debounce = false
function Lerp(a, b, c)
  return a + (b - a) * c
end
function phaseclone()
  Char.Archivable = true
  local Clone1 = Char:Clone()
  Clone1.Parent = game.Workspace
  for i, v in pairs(Clone1:GetChildren()) do
    if v.ClassName == "BodyColors" then
      B = "Really red"
      v.HeadColor = BrickColor.new(B)
      v.LeftArmColor = BrickColor.new(B)
      v.RightArmColor = BrickColor.new(B)
      v.TorsoColor = BrickColor.new(B)
      v.LeftLegColor = BrickColor.new(B)
      v.RightLegColor = BrickColor.new(B)
    elseif not v:IsA("Part") then
      v:Destroy()
    end
    if v.ClassName ~= "Part" or v.Name == "HumanoidRootPart" then
      v:Destroy()
    end
    if v:IsA("Part") then
      v.Transparency = 0.5
      v.TopSurface = "Smooth"
      v.BottomSurface = "Smooth"
      v.LeftSurface = "Smooth"
      v.RightSurface = "Smooth"
      Bl = "New Yeller"
      v.BrickColor = BrickColor.new(Bl)
      v.Anchored = true
      v.CanCollide = false
    end
  end
  for i, v in pairs(Clone1:GetChildren()) do
    if v:FindFirstChild("roblox") then
      v.roblox:Destroy()
    end
    if v:FindFirstChild("face") then
      v.face:Destroy()
    end
    if v.Name == "Part" or v.Name == "Hold" or v.Name == "Circle" then
      v:Remove()
    end
  end
  wait(0.3)
  for i = 1, 5 do
    for _, v in pairs(Clone1:GetChildren()) do
      if v:IsA("Part") then
        v.Transparency = 0.5 + i / 5
        wait()
      end
    end
  end
  Clone1:Destroy()
end
function ctlerp(c1, c2, al)
  local com1 = {
    c1:components()
  }
  local com2 = {
    c2:components()
  }
  for i, v in pairs(com1) do
    com1[i] = Lerp(v, com2[i], al)
  end
  return CF(unpack(com1))
end
do
  local QuaternionFromCFrame = function(cf)
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
  local function QuaternionToCFrame(px, py, pz, x, y, z, w)
    local xs, ys, zs = x + x, y + y, z + z
    local wx, wy, wz = w * xs, w * ys, w * zs
    local xx = x * xs
    local xy = x * ys
    local xz = x * zs
    local yy = y * ys
    local yz = y * zs
    local zz = z * zs
    return CF(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
  end
  local QuaternionSlerp = function(a, b, t)
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
end
rm = Instance.new("Weld", Torso)
rm.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0, 0, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = Torso
rm.Part1 = ra
lm = Instance.new("Weld", Torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0, 0, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = Torso
lm.Part1 = la
rlegm = Instance.new("Weld", Torso)
rlegm.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = Torso
rlegm.Part1 = rl
llegm = Instance.new("Weld", Torso)
llegm.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = Torso
llegm.Part1 = ll
neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)
game:GetService("RunService").Stepped:connect(function()
  angle = angle % 100 + anglespeed / 10
  rootpart.CanCollide = false
  local speed = Vector3.new(rootpart.Velocity.X, 0, rootpart.Velocity.Z).magnitude
  if Humanoid.Jump and Torso.Velocity.Y > 1 and speed < 2 then
    animpose = "Jump"
  elseif speed < 1 then
    animpose = "Idle"
  elseif sprinting == true then
    animpose = "Sprinting"
  elseif superspeed == true then
    animpose = "SuperSpeed"
  elseif superspeed2 == true then
    animpose = "SuperSpeed2"
  elseif speed > 2 then
    walking = true
    animpose = "Moving"
  end
  if animpose == "Idle" and anim == false then
    anglespeed = 0.5
    rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.6, -0.15) * CFrame.Angles(math.rad(80) + math.sin(angle) * 0.02, math.rad(-15), math.rad(-80) + math.sin(angle) * 0.02), 0.1)
    lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.6, 0.15) * CFrame.Angles(math.rad(15) + math.sin(angle) * 0.02, math.rad(20), math.rad(-30) + -math.sin(angle) * 0.02), 0.1)
    rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.9, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 0.1)
    llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.9, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.1)
    neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-6.5), math.rad(0), math.sin(angle) * 0.01), 0.1)
    rj.C0 = clerp(rj.C0, CFrame.new(0, -0.1, 0) * CFrame.Angles(math.rad(-90), 0, math.rad(180)), 0.1)
  elseif animpose == "Moving" and anim == false and walking == true then
    anglespeed = 0.5
    rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-10) + -math.sin(angle * 3), math.rad(12) + math.sin(angle) * 0.02, math.rad(8)), 0.1)
    lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.6, 0.15) * CFrame.Angles(math.rad(15) + math.sin(angle) * 0.02, math.rad(0), math.rad(-15) + -math.sin(angle) * 0.02), 0.1)
    rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.8, 0) * CFrame.Angles(math.rad(-7) + math.sin(angle * 3), math.rad(0), 0), 0.1)
    llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.8, 0) * CFrame.Angles(math.rad(-7) + -math.sin(angle * 3), math.rad(0), 0), 0.1)
    neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(5), Head.RotVelocity.Y / 25, 0), 0.1)
    rj.C0 = clerp(rj.C0, CFrame.new(0, -0.1, 0) * CFrame.Angles(math.rad(-90), -rootpart.RotVelocity.Y / 25, math.rad(180)), 0.1)
    Humanoid.WalkSpeed = 20
  elseif animpose == "Sprinting" and anim == false then
    anglespeed = 0.5
    rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(-45), math.rad(8)), 0.1)
    lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(45), math.rad(-8)), 0.1)
    rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.8, 0) * CFrame.Angles(math.rad(20) + math.sin(angle * 10), math.rad(0), 0), 0.1)
    llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.8, 0) * CFrame.Angles(math.rad(20) + -math.sin(angle * 10), math.rad(0), 0), 0.1)
    neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(40), Head.RotVelocity.Y / 15, 0), 0.1)
    rj.C0 = clerp(rj.C0, CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(-135), -rootpart.RotVelocity.Y / 15, math.rad(180)), 0.1)
    Humanoid.WalkSpeed = 50
  elseif animpose == "SuperSpeed" and anim == false then
    anglespeed = 0.5
    rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(-45), math.rad(8)), 0.1)
    lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(45), math.rad(-8)), 0.1)
    rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.8, 0) * CFrame.Angles(math.rad(-20), math.rad(-15), 0), 0.1)
    llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.8, 0) * CFrame.Angles(math.rad(-20), math.rad(15), 0), 0.1)
    neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(40), Head.RotVelocity.Y / 15, 0), 0.1)
    rj.C0 = clerp(rj.C0, CFrame.new(0, 4 + math.sin(angle), 0) * CFrame.Angles(math.rad(-135), -rootpart.RotVelocity.Y / 15, math.rad(180)), 0.1)
    Humanoid.WalkSpeed = 80
  elseif animpose == "SuperSpeed2" and anim == false then
    anglespeed = 0.5
    rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(-45), math.rad(8)), 0.1)
    lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(45), math.rad(-8)), 0.1)
    rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.8, 0) * CFrame.Angles(math.rad(-20), math.rad(-15), 0), 0.1)
    llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.8, 0) * CFrame.Angles(math.rad(-20), math.rad(15), 0), 0.1)
    neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(40), Head.RotVelocity.Y / 15, 0), 0.1)
    rj.C0 = clerp(rj.C0, CFrame.new(0, 4 + math.sin(angle), 0) * CFrame.Angles(math.rad(-135), -rootpart.RotVelocity.Y / 15, math.rad(180)), 0.1)
    Humanoid.WalkSpeed = 300
  elseif animpose == "Smoke" and anim == false then
    anglespeed = 0.5
    rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.6, -0.15) * CFrame.Angles(math.rad(80) + math.sin(angle) * 0.02, math.rad(-15), math.rad(80) + math.sin(angle) * 0.02), 0.1)
    lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.6, 0.15) * CFrame.Angles(math.rad(15) + math.sin(angle) * 0.02, math.rad(20), math.rad(-30) + -math.sin(angle) * 0.02), 0.1)
    rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.9, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 0.1)
    llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.9, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.1)
    neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-6.5), math.rad(0), math.sin(angle) * 0.01), 0.1)
    rj.C0 = clerp(rj.C0, CFrame.new(0, -0.1, 0) * CFrame.Angles(math.rad(-90), 0, math.rad(180)), 0.1)
  end
end)
local sound = Instance.new("Sound", head)
sound.SoundId = "rbxassetid://684566406"
sound.Name = "Mesh"
sound.Looped = true
sound.Volume = 1
sound:Play()
function part(name, parent, size, brickcolor, material)
  local part = Instance.new("Part")
  part.Name = name
  part.Parent = parent
  part.Size = size
  part.BrickColor = brickcolor
  part.Material = material
  part.CanCollide = false
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
  part:BreakJoints()
  return part
end
function weld(parent, part0, part1, c0)
  local weld = Instance.new("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end
Hat = part("", torso, Vector3.new(0.1, 0.1, 0.1), BrickColor.new("Black"), "Slate")
Weld = weld(torso, head, Hat, CFrame.new(0, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
local HatMesh = Instance.new("SpecialMesh", Hat)
HatMesh.MeshId = "rbxassetid://10495042"
HatMesh.TextureId = "rbxassetid://10494528"
HatMesh.Scale = Vector3.new(1, 1, 1)
Dreadlocks = part("", torso, Vector3.new(0.1, 0.1, 0.1), BrickColor.new("Black"), "Slate")
Weld = weld(torso, head, Dreadlocks, CFrame.new(0, -0.2, 0.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
local DreadlocksMesh = Instance.new("SpecialMesh", Dreadlocks)
DreadlocksMesh.MeshId = "rbxassetid://26768783"
DreadlocksMesh.TextureId = "rbxassetid://26768766"
DreadlocksMesh.Scale = Vector3.new(1, 1, 1)
Cig = part("", head, Vector3.new(1, 1, 1), BrickColor.new("Bronze"), "Slate")
Cig.FormFactor = "Custom"
local Mesh = Instance.new("CylinderMesh", Cig)
Cig.Mesh.Scale = Vector3.new(0.1, 0.7, 0.7)
Weld = weld(head, rarm, Cig, CFrame.new(0.4, -1, -0.3) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)))
Cig2 = part("", head, Vector3.new(1, 1, 1), BrickColor.new("Camo"), "Grass")
Cig2.FormFactor = "Custom"
local Mesh = Instance.new("CylinderMesh", Cig2)
Cig2.Mesh.Scale = Vector3.new(0.1, 0.01, 0.7)
Weld = weld(head, Cig, Cig2, CFrame.new(0, -0.35, 0))
Cig3 = part("", head, Vector3.new(0.001, 0.001, 0.001), BrickColor.new("Really red"), "SmoothPlastic")
Cig3.Transparency = 1
Weld = weld(head, Cig, Cig3, CFrame.new(0, -0.35, 0) * CFrame.Angles(math.rad(-90), math.rad(20), math.rad(20)))
Eye1 = part("", head, Vector3.new(1, 1, 1), BrickColor.new("Pastel orange"), "SmoothPlastic")
local Mesh = Instance.new("SpecialMesh", Eye1)
Mesh.MeshType = Enum.MeshType.Sphere
Mesh.Scale = Vector3.new(0.1, 0.2, 0.05)
Weld = weld(head, head, Eye1, CFrame.new(0.15, 0.25, -0.58) * CFrame.Angles(math.rad(0), math.rad(-18), math.rad(0)))
Eye1 = part("", head, Vector3.new(1, 1, 1), BrickColor.new("Pastel orange"), "SmoothPlastic")
local Mesh = Instance.new("SpecialMesh", Eye1)
Mesh.MeshType = Enum.MeshType.Sphere
Mesh.Scale = Vector3.new(0.1, 0.2, 0.05)
Weld = weld(head, head, Eye1, CFrame.new(-0.15, 0.25, -0.58) * CFrame.Angles(math.rad(0), math.rad(18), math.rad(0)))
Eye1 = part("", head, Vector3.new(1, 1, 1), BrickColor.new("Really black"), "SmoothPlastic")
local Mesh = Instance.new("SpecialMesh", Eye1)
Mesh.MeshType = Enum.MeshType.Sphere
Mesh.Scale = Vector3.new(0.05, 0.1, 0.02)
Weld = weld(head, head, Eye1, CFrame.new(0.15, 0.25, -0.6) * CFrame.Angles(math.rad(0), math.rad(-18), math.rad(0)))
Eye1 = part("", head, Vector3.new(1, 1, 1), BrickColor.new("Really black"), "SmoothPlastic")
local Mesh = Instance.new("SpecialMesh", Eye1)
Mesh.MeshType = Enum.MeshType.Sphere
Mesh.Scale = Vector3.new(0.05, 0.1, 0.02)
Weld = weld(head, head, Eye1, CFrame.new(-0.15, 0.25, -0.6) * CFrame.Angles(math.rad(0), math.rad(18), math.rad(0)))
Jetpack = part("", torso, Vector3.new(1, 1, 1), BrickColor.new("Gold"), "SmoothPlastic")
Jetpack.FormFactor = "Custom"
local Mesh = Instance.new("CylinderMesh", Jetpack)
Jetpack.Mesh.Scale = Vector3.new(1, 2, 1)
Weld = weld(head, torso, Jetpack, CFrame.new(0, 0, 1.2) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)))
Jetpack2 = part("", torso, Vector3.new(1, 1, 1), BrickColor.new("Really black"), "SmoothPlastic")
Jetpack2.FormFactor = "Custom"
local Mesh = Instance.new("SpecialMesh", Jetpack2)
Mesh.MeshId = "rbxassetid://1778999"
Mesh.Scale = Vector3.new(0.8, 0.6, 0.8)
Weld = weld(head, Jetpack, Jetpack2, CFrame.new(0, -0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
Jetpack = part("", torso, Vector3.new(1, 1, 1), BrickColor.new("Really black"), "SmoothPlastic")
Jetpack.FormFactor = "Custom"
local Mesh = Instance.new("CylinderMesh", Jetpack)
Jetpack.Mesh.Scale = Vector3.new(1.2, 1.8, 1.2)
Weld = weld(head, torso, Jetpack, CFrame.new(0, 0, 1.2) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)))
JetpackHold = part("", torso, Vector3.new(0.8, 1.9, 1), BrickColor.new("Really black"), "SmoothPlastic")
Weld = weld(head, torso, JetpackHold, CFrame.new(0, 0, 0.05) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
JetpackHold = part("", torso, Vector3.new(2.02, 0.8, 1.02), BrickColor.new("Really black"), "SmoothPlastic")
Weld = weld(head, torso, JetpackHold, CFrame.new(0, -0.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
JetpackHold = part("", torso, Vector3.new(0.5, 0.5, 0.5), BrickColor.new("Gold"), "SmoothPlastic")
Weld = weld(head, torso, JetpackHold, CFrame.new(0, 0.5, 0.6) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
JetpackHold = part("", torso, Vector3.new(0.5, 0.5, 0.5), BrickColor.new("Gold"), "SmoothPlastic")
Weld = weld(head, torso, JetpackHold, CFrame.new(0, -0.5, 0.6) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
JetpackHolder = part("", torso, Vector3.new(0.2, 2.02, 1.01), BrickColor.new("Gold"), "SmoothPlastic")
Weld = weld(head, torso, JetpackHolder, CFrame.new(0.7, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
JetpackHolder = part("", torso, Vector3.new(0.2, 2.02, 1.01), BrickColor.new("Gold"), "SmoothPlastic")
Weld = weld(head, torso, JetpackHolder, CFrame.new(-0.7, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
Bag = part("", torso, Vector3.new(0.3, 0.3, 0.9), BrickColor.new("Bronze"), "Plastic")
Weld = weld(torso, torso, Bag, CFrame.new(-1, -0.8, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(30)))
Kush = part("", torso, Vector3.new(0.3, 0.3, 0.3), BrickColor.new("Camo"), "Grass")
Weld = weld(torso, torso, Kush, CFrame.new(-1.1, -0.6, 0) * CFrame.Angles(math.rad(-35), math.rad(0), math.rad(55)))
Kush = part("", torso, Vector3.new(0.3, 0.3, 0.3), BrickColor.new("Camo"), "Grass")
Weld = weld(torso, torso, Kush, CFrame.new(-1.1, -0.6, -0.2) * CFrame.Angles(math.rad(-65), math.rad(0), math.rad(70)))
Kush = part("", torso, Vector3.new(0.3, 0.3, 0.3), BrickColor.new("Camo"), "Grass")
Weld = weld(torso, torso, Kush, CFrame.new(-1.1, -0.6, 0.2) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(25)))
Kush = part("", torso, Vector3.new(0.3, 0.3, 0.3), BrickColor.new("Camo"), "Grass")
Weld = weld(torso, torso, Kush, CFrame.new(-1.1, -0.6, -0.3) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(20)))
Kush = part("", torso, Vector3.new(0.3, 0.3, 0.3), BrickColor.new("Camo"), "Grass")
Weld = weld(torso, torso, Kush, CFrame.new(-1.1, -0.6, 0.3) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(80)))
function SmokeDamage()
  if debounce == false then
    debounce = true
    part = Instance.new("Part")
    game.Debris:AddItem(part, 3)
    part.Size = Vector3.new(3, 3, 1)
    part.CFrame = torso.CFrame * CFrame.new(0, 1, -2)
    part.Transparency = 1
    part.CanCollide = false
    part.Parent = head
    local v = Instance.new("BodyVelocity", part)
    v.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    v.Velocity = torso.CFrame.lookVector * 5
    part.Touched:connect(function(hit)
      if hit.Parent:FindFirstChild("Humanoid") then
        cough = Instance.new("Sound", hit.Parent.Head)
        cough.SoundId = "rbxassetid://289001712"
        cough.Volume = 3
        while wait() do
          hit.Parent.Humanoid:TakeDamage(1)
          if hit.Parent.Humanoid.Health <= 5 then
            cough:Play()
            break
          end
        end
        bg:Destroy()
      end
    end)
    wait()
    debounce = false
  end
end
local CigSmoke = Instance.new("ParticleEmitter", Cig3)
CigSmoke.VelocitySpread = 5
CigSmoke.Size = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.01),
  NumberSequenceKeypoint.new(1, 1)
})
CigSmoke.Rate = math.huge
CigSmoke.Speed = NumberRange.new(4, 4)
CigSmoke.Lifetime = NumberRange.new(1, 1)
CigSmoke.Transparency = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.9),
  NumberSequenceKeypoint.new(1, 1)
})
CigSmoke.Rotation = NumberRange.new(0, 360)
CigSmoke.Name = "Smoke"
CigSmoke.LightEmission = 999
CigSmoke.Texture = "http://www.roblox.com/asset/?id=243728104"
CigSmoke.Color = ColorSequence.new(Color3.new(0.5, 0.5, 0.5), Color3.new(0.5, 0.5, 0.5))
CigSmoke.LockedToPart = false
RunSmoke1 = part("", head, Vector3.new(0.1, 0.1, 0.1), BrickColor.new("Really black"), "SmoothPlastic")
RunSmoke1.Transparency = 0
Weld = weld(head, rleg, RunSmoke1, CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
local RunSmokee = Instance.new("ParticleEmitter", RunSmoke1)
RunSmokee.VelocitySpread = 0
RunSmokee.Size = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.01),
  NumberSequenceKeypoint.new(1, 10)
})
RunSmokee.Rate = 0
RunSmokee.Speed = NumberRange.new(0, 0)
RunSmokee.Lifetime = NumberRange.new(2, 2)
RunSmokee.Transparency = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.9),
  NumberSequenceKeypoint.new(1, 1)
})
RunSmokee.Rotation = NumberRange.new(0, 360)
RunSmokee.Name = "Smoke"
RunSmokee.LightEmission = 999
RunSmokee.Texture = "http://www.roblox.com/asset/?id=243728104"
RunSmokee.Color = ColorSequence.new(Color3.new(0.5, 0.5, 0.5), Color3.new(0.5, 0.5, 0.5))
RunSmokee.LockedToPart = false
RunSmoke2 = part("", head, Vector3.new(0.1, 0.1, 0.1), BrickColor.new("Really black"), "SmoothPlastic")
RunSmoke2.Transparency = 0
Weld = weld(head, lleg, RunSmoke2, CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)))
local RunSmokeee = Instance.new("ParticleEmitter", RunSmoke2)
RunSmokeee.VelocitySpread = 0
RunSmokeee.Size = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.01),
  NumberSequenceKeypoint.new(1, 10)
})
RunSmokeee.Rate = 0
RunSmokeee.Speed = NumberRange.new(0, 0)
RunSmokeee.Lifetime = NumberRange.new(2, 2)
RunSmokeee.Transparency = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.9),
  NumberSequenceKeypoint.new(1, 1)
})
RunSmokeee.Rotation = NumberRange.new(0, 360)
RunSmokeee.Name = "Smoke"
RunSmokeee.LightEmission = 999
RunSmokeee.Texture = "http://www.roblox.com/asset/?id=243728104"
RunSmokeee.Color = ColorSequence.new(Color3.new(0.5, 0.5, 0.5), Color3.new(0.5, 0.5, 0.5))
RunSmokeee.LockedToPart = false
FlyFire = part("", head, Vector3.new(0.1, 0.1, 0.1), BrickColor.new("Really black"), "SmoothPlastic")
FlyFire.Transparency = 1
Weld = weld(head, rleg, FlyFire, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)))
FlyFire2 = part("", head, Vector3.new(0.1, 0.1, 0.1), BrickColor.new("Really black"), "SmoothPlastic")
FlyFire2.Transparency = 1
Weld = weld(head, lleg, FlyFire2, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)))
if sprinting == true then
  RunSmokee.Rate = math.huge
  RunSmokeee.Rate = math.huge
end
Smokee = part("", head, Vector3.new(0.1, 0.1, 0.1), BrickColor.new("Really black"), "SmoothPlastic")
Smokee.Transparency = 0
Weld = weld(head, head, Smokee, CFrame.new(0, -0.25, -0.1) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)))
local Smoke = Instance.new("ParticleEmitter", Smokee)
Smoke.VelocitySpread = 10
Smoke.Size = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.01),
  NumberSequenceKeypoint.new(1, 2)
})
Smoke.Rate = 0
Smoke.Speed = NumberRange.new(8, 8)
Smoke.Lifetime = NumberRange.new(2, 2)
Smoke.Transparency = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.6),
  NumberSequenceKeypoint.new(1, 1)
})
Smoke.Rotation = NumberRange.new(0, 360)
Smoke.Name = "Smoke"
Smoke.LightEmission = 999
Smoke.Texture = "http://www.roblox.com/asset/?id=243728104"
Smoke.Color = ColorSequence.new(Color3.new(0.5, 0.5, 0.5), Color3.new(0.5, 0.5, 0.5))
Smoke.LockedToPart = false
Smokee2 = part("", head, Vector3.new(1, 1, 1), BrickColor.new("Cyan"), "Neon")
Smokee2.Transparency = 0
local Mesh = Instance.new("SpecialMesh", Smokee2)
Mesh.MeshType = Enum.MeshType.Sphere
Mesh.Scale = Vector3.new(0.6, 0.25, 0.6)
Weld = weld(head, Jetpack2, Smokee2, CFrame.new(0, -0.25, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)))
Smokee3 = part("", head, Vector3.new(1, 1, 1), BrickColor.new("Really black"), "SmoothPlastic")
Smokee3.Transparency = 0
local Mesh = Instance.new("SpecialMesh", Smokee3)
Mesh.MeshType = Enum.MeshType.Sphere
Mesh.Scale = Vector3.new(0.7, 0.2, 0.7)
Weld = weld(head, Jetpack2, Smokee3, CFrame.new(0, -0.25, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)))
local JetFire = Instance.new("ParticleEmitter", Smokee2)
JetFire.VelocitySpread = 0
JetFire.Size = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 1),
  NumberSequenceKeypoint.new(1, 0.5)
})
JetFire.Rate = 40
JetFire.Speed = NumberRange.new(2, 2)
JetFire.Lifetime = NumberRange.new(0.5, 0.5)
JetFire.Transparency = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.9),
  NumberSequenceKeypoint.new(1, 1)
})
JetFire.Rotation = NumberRange.new(0, 360)
JetFire.Name = "Smoke"
JetFire.LightEmission = 999
JetFire.Texture = "http://www.roblox.com/asset/?id=243728104"
JetFire.Color = ColorSequence.new(Color3.new(1, 1, 0), Color3.new(1, 0, 0))
JetFire.LockedToPart = true
local Exhale = Instance.new("Sound", head)
Exhale.SoundId = "rbxassetid://267313517"
Exhale.Pitch = 0.7
Exhale.Volume = 3
function smoke()
  if animpose == "Idle" and debounce == false then
    debounce = true
    Exhale:Play()
    rs = game:GetService("RunService")
    con = rs.Stepped:connect(function()
      textfag.Text = "Blaze It"
      Smoke.Rate = math.huge
      anglespeed = 0.2
      rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.6, -0.15) * CFrame.Angles(math.rad(80) + math.sin(angle) * 0.02, math.rad(40), math.rad(90) + -math.sin(angle) * 0.02), 0.1)
      neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(30), Head.RotVelocity.Y / 15, 0), 0.1)
      wait(2)
      con:disconnect()
    end)
    wait(2.1)
    debounce = false
    Smoke.Rate = 0
    textfag.Text = "420"
  end
end
mouse.KeyDown:connect(function(key)
  if key == string.char(50) and sprinting == false then
    sprinting = true
    Humanoid.WalkSpeed = 50
    RunSmokee.Rate = 50
    RunSmokeee.Rate = 50
    RunSmokee.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.01),
      NumberSequenceKeypoint.new(1, 10)
    })
    RunSmokeee.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.01),
      NumberSequenceKeypoint.new(1, 10)
    })
    RunSmokee.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.01),
      NumberSequenceKeypoint.new(1, 10)
    })
    RunSmokeee.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 0.01),
      NumberSequenceKeypoint.new(1, 10)
    })
    RunSmokee.Lifetime = NumberRange.new(2, 2)
    RunSmokeee.Lifetime = NumberRange.new(2, 2)
    RunSmokee.Color = ColorSequence.new(Color3.new(0.5, 0.5, 0.5), Color3.new(0.5, 0.5, 0.5))
    RunSmokeee.Color = ColorSequence.new(Color3.new(0.5, 0.5, 0.5), Color3.new(0.5, 0.5, 0.5))
    RunSmokee.LockedToPart = false
    RunSmokeee.LockedToPart = false
    RunSmokee.Parent = RunSmoke1
    RunSmokeee.Parent = RunSmoke2
    RunSmokee.Speed = NumberRange.new(0, 0)
    RunSmokeee.Speed = NumberRange.new(0, 0)
  end
end)
mouse.KeyUp:connect(function(key)
  if key == string.char(50) and sprinting == true then
    sprinting = false
    Humanoid.WalkSpeed = 20
    RunSmokee.Rate = 0
    RunSmokeee.Rate = 0
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "x" and superspeed == false then
    superspeed = true
    RunSmokee.Rate = math.huge
    RunSmokeee.Rate = math.huge
    RunSmokee.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1),
      NumberSequenceKeypoint.new(1, 0.5)
    })
    RunSmokeee.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1),
      NumberSequenceKeypoint.new(1, 0.5)
    })
    RunSmokee.Lifetime = NumberRange.new(0.5, 0.5)
    RunSmokeee.Lifetime = NumberRange.new(0.5, 0.5)
    RunSmokee.Color = ColorSequence.new(Color3.new(1, 1, 0), Color3.new(1, 0, 0))
    RunSmokeee.Color = ColorSequence.new(Color3.new(1, 1, 0), Color3.new(1, 0, 0))
    RunSmokee.LockedToPart = true
    RunSmokeee.LockedToPart = true
    RunSmokee.Parent = FlyFire
    RunSmokeee.Parent = FlyFire2
    RunSmokee.Speed = NumberRange.new(5, 5)
    RunSmokeee.Speed = NumberRange.new(5, 5)
    JetFire.Rate = math.huge
    JetFire.Speed = NumberRange.new(5, 5)
    JetFire.Color = ColorSequence.new(Color3.new(1, 1, 0), Color3.new(1, 0, 0))
  end
end)
mouse.KeyUp:connect(function(key)
  if key == "x" and superspeed == true then
    superspeed = false
    RunSmokee.Rate = 0
    RunSmokeee.Rate = 0
    JetFire.Rate = 40
    JetFire.Speed = NumberRange.new(2, 2)
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "c" and superspeed2 == false then
    superspeed2 = true
    RunSmokee.Rate = math.huge
    RunSmokeee.Rate = math.huge
    RunSmokee.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1),
      NumberSequenceKeypoint.new(1, 0.5)
    })
    RunSmokeee.Size = NumberSequence.new({
      NumberSequenceKeypoint.new(0, 1),
      NumberSequenceKeypoint.new(1, 0.5)
    })
    RunSmokee.Lifetime = NumberRange.new(0.5, 0.5)
    RunSmokeee.Lifetime = NumberRange.new(0.5, 0.5)
    RunSmokee.Color = ColorSequence.new(Color3.new(0, 0, 1), Color3.new(0, 1, 1))
    RunSmokeee.Color = ColorSequence.new(Color3.new(0, 0, 1), Color3.new(0, 1, 1))
    RunSmokee.LockedToPart = true
    RunSmokeee.LockedToPart = true
    RunSmokee.Parent = FlyFire
    RunSmokeee.Parent = FlyFire2
    RunSmokee.Speed = NumberRange.new(5, 5)
    RunSmokeee.Speed = NumberRange.new(5, 5)
    JetFire.Rate = math.huge
    JetFire.Speed = NumberRange.new(7, 7)
    JetFire.Color = ColorSequence.new(Color3.new(0, 0, 1), Color3.new(0, 1, 1))
  end
end)
mouse.KeyUp:connect(function(key)
  if key == "c" and superspeed2 == true then
    superspeed2 = false
    Humanoid.WalkSpeed = 20
    RunSmokee.Rate = 0
    RunSmokeee.Rate = 0
    JetFire.Rate = 40
    JetFire.Speed = NumberRange.new(2, 2)
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "e" and animpose == "Idle" then
    SmokeDamage()
    smoke()
  end
end)