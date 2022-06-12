--Runs with no error. Still no actual script running--
wait(0.016666666666667)
local Player = game.Players.localPlayer
local Character = Player.Character
local red = 255
local green = 255
local blue = 255
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local lim = 0
local st = 0
local necko = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local attacktype = 1
local ZTarget, RocketTarget = nil, nil
local euler = CFrame.fromEulerAnglesXYZ
clerp = function(a, b, t)
  local qa = {QuaternionFromCFrame(a)}
  local qb = {QuaternionFromCFrame(b)}
  local ax, ay, az = a.x, a.y, a.z
  local bx, by, bz = b.x, b.y, b.z
  local _t = 1 - t
  return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
QuaternionFromCFrame = function(cf)
  local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
  local trace = m00 + m11 + m22
  if trace > 0 then
    local s = math.sqrt(1 + trace)
    local recip = 0.5 / s
    return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
  else
    do
      local i = 0
      if m00 < m11 then
        i = 1
      end
      if i == 0 and m00 or m11 < m22 then
        i = 2
      end
      if i == 0 then
        local s = math.sqrt(m00 - m11 - m22 + 1)
        local recip = 0.5 / s
        return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
      else
        do
          if i == 1 then
            local s = math.sqrt(m11 - m22 - m00 + 1)
            local recip = 0.5 / s
            return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
          else
            do
              if i == 2 then
                local s = math.sqrt(m22 - m00 - m11 + 1)
                local recip = 0.5 / s
                return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
              end
            end
          end
        end
      end
    end
  end
end
QuaternionToCFrame = function(px, py, pz, x, y, z, w)
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
QuaternionSlerp = function(a, b, t)
  local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
  local startInterp, finishInterp = nil, nil
  if cosTheta >= 0.0001 then
    if 1 - cosTheta > 0.0001 then
      local theta = math.acos(cosTheta)
      local invSinTheta = 1 / math.sin(theta)
      startInterp = math.sin((1 - t) * theta) * invSinTheta
      finishInterp = math.sin(t * theta) * invSinTheta
    else
      do
        startInterp = 1 - t
        finishInterp = t
        if 1 + cosTheta > 0.0001 then
          local theta = math.acos(-cosTheta)
          local invSinTheta = 1 / math.sin(theta)
          startInterp = math.sin((t - 1) * theta) * invSinTheta
          finishInterp = math.sin(t * theta) * invSinTheta
        else
          do
            startInterp = t - 1
            finishInterp = t
            return a[1] * (startInterp) + b[1] * finishInterp, a[2] * (startInterp) + b[2] * finishInterp, a[3] * (startInterp) + b[3] * finishInterp, a[4] * (startInterp) + b[4] * finishInterp
          end
        end
      end
    end
  end
end
rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local v = game.Players.localPlayer
local torso = v.Character.Torso
local check = v.Character:FindFirstChild("kit")
wait(1)
local p = Instance.new("Part", v.Character)
p.Name = "kit"
p.Anchored = true
p.Transparency = 0
p.Material = "Plastic"
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.Size = Vector3.new(0.2, 0.2, 0.2)
p.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local msh = Instance.new("SpecialMesh", p)
msh.Scale = Vector3.new(-2, 2, 2)
msh.MeshId = "http://www.roblox.com/asset/?id=188635159"
msh.TextureId = "http://www.roblox.com/asset/?id=188539332"
msh.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn = Instance.new("Part", v.Character.kit)
pn.Name = "tail"
pn.Anchored = true
pn.Transparency = 0
pn.Material = "Plastic"
pn.CanCollide = false
pn.TopSurface = 0
pn.BottomSurface = 0
pn.Size = Vector3.new(5, 3, 3)
pn.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn = Instance.new("SpecialMesh", pn)
mshn.Scale = Vector3.new(2, 2, 2)
mshn.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn3 = Instance.new("Part", v.Character.kit)
pn3.Name = "tail"
pn3.Anchored = true
pn3.Transparency = 0
pn3.Material = "Plastic"
pn3.CanCollide = false
pn3.TopSurface = 0
pn3.BottomSurface = 0
pn3.Size = Vector3.new(0.2, 0.2, 0.2)
pn3.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn3 = Instance.new("SpecialMesh", pn3)
mshn3.Scale = Vector3.new(2, 2, 2)
mshn3.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn3.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn3.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn4 = Instance.new("Part", v.Character.kit)
pn4.Name = "tail"
pn4.Anchored = true
pn4.Transparency = 0
pn4.Material = "Plastic"
pn4.CanCollide = false
pn4.TopSurface = 0
pn4.BottomSurface = 0
pn4.Size = Vector3.new(0.2, 0.2, 0.2)
pn4.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn4 = Instance.new("SpecialMesh", pn4)
mshn4.Scale = Vector3.new(-2, 2, 2)
mshn4.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn4.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn4.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn5 = Instance.new("Part", v.Character.kit)
pn5.Name = "tail"
pn5.Anchored = true
pn5.Transparency = 0
pn5.Material = "Plastic"
pn5.CanCollide = false
pn5.TopSurface = 0
pn5.BottomSurface = 0
pn5.Size = Vector3.new(0.2, 0.2, 0.2)
pn5.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn5 = Instance.new("SpecialMesh", pn5)
mshn5.Scale = Vector3.new(2, 2, 2)
mshn5.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn5.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn5.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn6 = Instance.new("Part", v.Character.kit)
pn6.Name = "tail"
pn6.Anchored = true
pn6.Transparency = 0
pn6.Material = "Plastic"
pn6.CanCollide = false
pn6.TopSurface = 0
pn6.BottomSurface = 0
pn6.Size = Vector3.new(0.2, 0.2, 0.2)
pn6.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn6 = Instance.new("SpecialMesh", pn6)
mshn6.Scale = Vector3.new(2, 2, 2)
mshn6.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn6.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn6.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn7 = Instance.new("Part", v.Character.kit)
pn7.Name = "tail"
pn7.Anchored = true
pn7.Transparency = 0
pn7.Material = "Plastic"
pn7.CanCollide = false
pn7.TopSurface = 0
pn7.BottomSurface = 0
pn7.Size = Vector3.new(0.2, 0.2, 0.2)
pn7.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn7 = Instance.new("SpecialMesh", pn7)
mshn7.Scale = Vector3.new(2, 2, 2)
mshn7.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn7.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn7.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn8 = Instance.new("Part", v.Character.kit)
pn8.Name = "tail"
pn8.Anchored = true
pn8.Transparency = 0
pn8.Material = "Plastic"
pn8.CanCollide = false
pn8.TopSurface = 0
pn8.BottomSurface = 0
pn8.Size = Vector3.new(0.2, 0.2, 0.2)
pn8.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn8 = Instance.new("SpecialMesh", pn8)
mshn8.Scale = Vector3.new(-2, 2, 2)
mshn8.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn8.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn8.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn9 = Instance.new("Part", v.Character.kit)
pn9.Name = "tail"
pn9.Anchored = true
pn9.Transparency = 0
pn9.Material = "Plastic"
pn9.CanCollide = false
pn9.TopSurface = 0
pn9.BottomSurface = 0
pn9.Size = Vector3.new(0.2, 0.2, 0.2)
pn9.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn9 = Instance.new("SpecialMesh", pn9)
mshn9.Scale = Vector3.new(-2, 2, 2)
mshn9.MeshId = "http://www.roblox.com/asset/?id=188635159"
mshn9.TextureId = "http://www.roblox.com/asset/?id=188539332"
mshn9.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
local pn0 = Instance.new("Part", v.Character.kit)
pn0.Name = "ears"
pn0.Anchored = true
pn0.Transparency = 0
pn0.Material = "Plastic"
pn0.CanCollide = false
pn0.TopSurface = 0
pn0.BottomSurface = 0
pn0.Size = Vector3.new(0.2, 0.2, 0.2)
pn0.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn0 = Instance.new("SpecialMesh", pn0)
mshn0.Scale = Vector3.new(0.5, 0.5, 0.5)
mshn0.MeshId = "http://www.roblox.com/asset/?id=361948302"
mshn0.TextureId = "http://www.roblox.com/asset/?id=50657528"
mshn0.VertexColor = Vector3.new(torso.BrickColor.r, torso.BrickColor.g, torso.BrickColor.b)
p.Anchored = false
local motor1 = Instance.new("Weld", p)
motor1.Part0 = p
motor1.Part1 = torso
motor1.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor1.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn.Anchored = false
local motor2 = Instance.new("Weld", pn)
motor2.Part0 = pn
motor2.Part1 = torso
motor2.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor2.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn3.Anchored = false
local motor3 = Instance.new("Weld", pn3)
motor3.Part0 = pn3
motor3.Part1 = torso
motor3.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor3.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn4.Anchored = false
local motor4 = Instance.new("Weld", pn4)
motor4.Part0 = pn4
motor4.Part1 = torso
motor4.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor4.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn5.Anchored = false
local motor5 = Instance.new("Weld", pn5)
motor5.Part0 = pn5
motor5.Part1 = torso
motor5.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor5.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn6.Anchored = false
local motor6 = Instance.new("Weld", pn6)
motor6.Part0 = pn6
motor6.Part1 = torso
motor6.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor6.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn7.Anchored = false
local motor7 = Instance.new("Weld", pn7)
motor7.Part0 = pn7
motor7.Part1 = torso
motor7.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor7.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn8.Anchored = false
local motor8 = Instance.new("Weld", pn8)
motor8.Part0 = pn8
motor8.Part1 = torso
motor8.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor8.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn9.Anchored = false
local motor9 = Instance.new("Weld", pn9)
motor9.Part0 = pn9
motor9.Part1 = torso
motor9.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor9.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pn0.Anchored = false
local motor0 = Instance.new("Weld", pn0)
motor0.Part0 = pn0
motor0.Part1 = v.Character.Head
motor0.C0 = CFrame.new(0, -0.8, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
game:GetService("RunService").Stepped:connect(function()
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if RootPart.Velocity.y > 1 and hit == nil then
      Anim = "Jump"
      if attack == false then
        motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(-90 + 0 * math.cos(sine / 10)), math.rad(80 + 0 * math.cos(sine / 25))), 0.1)
        motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-80 + 0 * math.cos(sine / 25))), 0.1)
        motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-110 + 0 * math.cos(sine / 25))), 0.1)
        motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(-90 + 0 * math.cos(sine / 10)), math.rad(110 + 0 * math.cos(sine / 25))), 0.1)
        motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-80 + 0 * math.cos(sine / 25))), 0.1)
        motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-80 + 0 * math.cos(sine / 25))), 0.1)
        motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(90 + 0 * math.cos(sine / 10)), math.rad(-80 + 0 * math.cos(sine / 25))), 0.1)
        motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(-90 + 0 * math.cos(sine / 10)), math.rad(80 + 0 * math.cos(sine / 25))), 0.1)
        motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + 0 * math.cos(sine / 10)), math.rad(-90 + 0 * math.cos(sine / 10)), math.rad(80 + 0 * math.cos(sine / 25))), 0.1)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
          motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
          motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(-70 + 0 * math.cos(sine / 25))), 0.1)
          motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
          motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-45 + 0 * math.cos(sine / 10)), math.rad(0 + 0 * math.cos(sine / 10)), math.rad(70 + 0 * math.cos(sine / 25))), 0.1)
        end
      else
        if Torsovelocity < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-5 + 5 * math.cos(sine / 50)), math.rad(0 + 5 * math.cos(sine / 80)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-5 + -5 * math.cos(sine / 70)), math.rad(0 + -5 * math.cos(sine / 50)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-5 + -5 * math.cos(sine / 80)), math.rad(0 + 5 * math.cos(sine / 65)), math.rad(-50 + 0 * math.cos(sine / 25))), 0.1)
            motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(0 + 5 * math.cos(sine / 40)), math.rad(0 + 5 * math.cos(sine / 70)), math.rad(-40 + 0 * math.cos(sine / 25))), 0.1)
            motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(0 + 5 * math.cos(sine / 60)), math.rad(0 + 5 * math.cos(sine / 65)), math.rad(40 + 0 * math.cos(sine / 25))), 0.1)
            motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 35)), math.rad(0 + 5 * math.cos(sine / 70)), math.rad(0 + 0 * math.cos(sine / 25))), 0.1)
            motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 70)), math.rad(0 + 5 * math.cos(sine / 35)), math.rad(-45 + 0 * math.cos(sine / 25))), 0.1)
            motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 55)), math.rad(0 + 5 * math.cos(sine / 55)), math.rad(-10 + 0 * math.cos(sine / 25))), 0.1)
            motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-50 + 5 * math.cos(sine / 65)), math.rad(0 + 5 * math.cos(sine / 60)), math.rad(35 + 0 * math.cos(sine / 25))), 0.1)
          end
        else
          if Torsovelocity > 2 and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              motor1.C0 = clerp(motor1.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
              motor2.C0 = clerp(motor2.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor3.C0 = clerp(motor3.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor4.C0 = clerp(motor4.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
              motor5.C0 = clerp(motor5.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor6.C0 = clerp(motor6.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor7.C0 = clerp(motor7.C0, CFrame.new(-2.36, -1.8, -0.87) * angles(math.rad(-60 + 10 * math.cos(sine / 10)), math.rad(45 + 10 * math.cos(sine / 10)), math.rad(-45 + 0 * math.cos(sine / 10))), 0.1)
              motor8.C0 = clerp(motor8.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
              motor9.C0 = clerp(motor9.C0, CFrame.new(2.36, -1.8, -0.87) * angles(math.rad(-60 + -10 * math.cos(sine / 10)), math.rad(-45 + 10 * math.cos(sine / 10)), math.rad(45 + 0 * math.cos(sine / 10))), 0.1)
            end
          end
        end
      end
    end
  end
end)

