Player=game.Players.LocalPlayer
Character=Player.Character
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack
Torso=Character.Torso
Head=Character.Head
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
LS=Torso["Left Shoulder"]
LH=Torso["Left Hip"]
RS=Torso["Right Shoulder"]
RH=Torso["Right Hip"]
Face=Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1=cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0=cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1=cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57, 0, 3.14)
attack=false
attackdebounce=false
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local Effects = {}
local gun = false
local shoot = false
player = nil
mana = 0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
TorsoColor=Torso.BrickColor
NoOutline=function(Part)
 Part.TopSurface=10
end

player = Player
ch = Character
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
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

  nooutline = function(part)
    part.TopSurface = 10
  end

  part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
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

  mesh = function(Mesh, part, meshtype, meshid, offset, scale)
    local mesh = it(Mesh)
    mesh.Parent = part
    if Mesh == "SpecialMesh" then
      mesh.MeshType = meshtype
      mesh.MeshId = meshid
    end
    mesh.Offset = offset
    mesh.Scale = scale
    return mesh
  end

  weld = function(parent, part0, part1, c0, c1)
    local weld = it("Weld")
    weld.Parent = parent
    weld.Part0 = part0
    weld.Part1 = part1
    weld.C0 = c0
    weld.C1 = c1
    return weld
  end

  local CFrameFromTopBack = function(at, top, back)
    local right = top:Cross(back)
    return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
  end

  Triangle = function(a, b, c)
    coroutine.resume(coroutine.create(function()
      local edg1 = c - a:Dot(b - a.unit)
      local edg2 = a - b:Dot(c - b.unit)
      local edg3 = b - c:Dot(a - c.unit)
      if edg1 <= b - a.magnitude and edg1 >= 0 then
        a = a
      else
        if edg2 <= c - b.magnitude and edg2 >= 0 then
          a = b
        else
          if edg3 <= a - c.magnitude and edg3 >= 0 then
            a = c
          else
            assert(false, "unreachable")
          end
        end
      end
      local len1 = c - a:Dot(b - a.unit)
      local len2 = b - a.magnitude - len1
      local width = a + b - a.unit * len1 - c.magnitude
      local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
      local list = {}
      local TrailColor = "Navy blue"
      if len1 > 0.01 then
        local w1 = Instance.new("WedgePart", m)
        game:GetService("Debris"):AddItem(w1, 0.25)
        w1.Material = "SmoothPlastic"
        w1.FormFactor = "Custom"
        w1.BrickColor = BrickColor.new(TrailColor)
        w1.Transparency = 0
        w1.Reflectance = 0
        w1.Material = "Neon"
        w1.CanCollide = false
        NoOutline(w1)
        local sz = Vector3.new(0.2, width, len1)
        w1.Size = sz
        local sp = Instance.new("SpecialMesh", w1)
        sp.MeshType = "Wedge"
        sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
        w1:BreakJoints()
        w1.Anchored = true
        w1.Parent = Character
        w1.Transparency = 0.7
        table.insert(Effects, {w1, "Disappear", 0.01})
        w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
        table.insert(list, w1)
      end
      do
        if len2 > 0.01 then
          local w2 = Instance.new("WedgePart", m)
          game:GetService("Debris"):AddItem(w2, 0.25)
          w2.Material = "SmoothPlastic"
          w2.FormFactor = "Custom"
          w2.BrickColor = BrickColor.new(TrailColor)
          w2.Transparency = 0
          w2.Reflectance = 0
          w2.Material = "Neon"
          w2.CanCollide = false
          NoOutline(w2)
          local sz = Vector3.new(0.2, width, len2)
          w2.Size = sz
          local sp = Instance.new("SpecialMesh", w2)
          sp.MeshType = "Wedge"
          sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
          w2:BreakJoints()
          w2.Anchored = true
          w2.Parent = Character
          w2.Transparency = 0.7
          table.insert(Effects, {w2, "Disappear", 0.01})
          w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
          table.insert(list, w2)
        end
        do
          return unpack(list)
        end
      end
    end
))
  end

  so = function(id, par, vol, pit)
    coroutine.resume(coroutine.create(function()
      local sou = Instance.new("Sound", par or Character)
      sou.Volume = vol
      sou.Pitch = pit or 1
      sou.SoundId = id
      swait()
      sou:play()
      game:GetService("Debris"):AddItem(sou, 6)
    end
))
  end

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

  rayCast = function(Pos, Dir, Max, Ignore)
    return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
  end

  Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
    if hit.Parent == nil then
      return 
    end
    local h = hit.Parent:FindFirstChild("Humanoid")
    for _,v in pairs(hit.Parent:children()) do
      if v:IsA("Humanoid") then
        h = v
      end
    end
    if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
      h = hit.Parent.Parent:FindFirstChild("Humanoid")
    end
    if hit.Parent.className == "Hat" then
      hit = hit.Parent.Parent:findFirstChild("Head")
    end
    if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil and hit.Parent:FindFirstChild("Armed") ~= nil then
      if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
        return 
      end
      local c = Instance.new("ObjectValue")
      c.Name = "creator"
      c.Value = Value
      c.Parent = h
      game:GetService("Debris"):AddItem(c, 0.5)
      local Damage = math.random(minim, maxim)
      local blocked = false
      local block = hit.Parent:findFirstChild("Block")
      if block ~= nil then
        if block.className == "NumberValue" and block.Value > 0 then
          blocked = true
          if decreaseblock == nil then
            block.Value = block.Value - 1
          end
        end
        if block.className == "IntValue" and block.Value > 0 then
          blocked = true
          if decreaseblock ~= nil then
            block.Value = block.Value - 1
          end
        end
      end
      if blocked == false then
        h.Health = h.Health - Damage
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
      else
        h.Health = h.Health - Damage / 2
        ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Bright blue").Color)
      end
      if Type == "Knockdown" then
        local hum = hit.Parent.Humanoid
        hum.PlatformStand = true
        coroutine.resume(coroutine.create(function(HHumanoid)
      swait(1)
      HHumanoid.PlatformStand = false
    end
), hum)
        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
        local bodvol = Instance.new("BodyVelocity")
        bodvol.velocity = angle * knockback
        bodvol.P = 5000
        bodvol.maxForce = Vector3.new(8000, 8000, 8000)
        bodvol.Parent = hit
        local rl = Instance.new("BodyAngularVelocity")
        rl.P = 3000
        rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
        rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        rl.Parent = hit
        game:GetService("Debris"):AddItem(bodvol, 0.5)
        game:GetService("Debris"):AddItem(rl, 0.5)
      else
        do
          if Type == "Normal" then
            local vp = Instance.new("BodyVelocity")
            vp.P = 500
            vp.maxForce = Vector3.new(math.huge, 0, math.huge)
            if KnockbackType == 1 then
              vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
            else
              if KnockbackType == 2 then
                vp.velocity = Property.CFrame.lookVector * knockback
              end
            end
            if knockback > 0 then
              vp.Parent = hit.Parent.Torso
            end
            game:GetService("Debris"):AddItem(vp, 0.5)
          else
            do
              if Type == "Up" then
                local bodyVelocity = Instance.new("BodyVelocity")
                bodyVelocity.velocity = vt(0, 60, 0)
                bodyVelocity.P = 5000
                bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
                bodyVelocity.Parent = hit
                game:GetService("Debris"):AddItem(bodyVelocity, 1)
                local rl = Instance.new("BodyAngularVelocity")
                rl.P = 3000
                rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                rl.Parent = hit
                game:GetService("Debris"):AddItem(rl, 0.5)
              else
                do
                  if Type == "Snare" then
                    local bp = Instance.new("BodyPosition")
                    bp.P = 2000
                    bp.D = 100
                    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bp.position = hit.Parent.Torso.Position
                    bp.Parent = hit.Parent.Torso
                    game:GetService("Debris"):AddItem(bp, 1)
                  else
                    do
                      if Type == "Target" then
                        local Targetting = false
                        if Targetting == false then
                          ZTarget = hit.Parent.Torso
                          coroutine.resume(coroutine.create(function(Part)
      so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
      swait(5)
      so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
    end
), ZTarget)
                          local TargHum = ZTarget.Parent:findFirstChild("Humanoid")
                          local targetgui = Instance.new("BillboardGui")
                          targetgui.Parent = ZTarget
                          targetgui.Size = UDim2.new(10, 100, 10, 100)
                          local targ = Instance.new("ImageLabel")
                          targ.Parent = targetgui
                          targ.BackgroundTransparency = 1
                          targ.Image = "rbxassetid://4834067"
                          targ.Size = UDim2.new(1, 0, 1, 0)
                          cam.CameraType = "Scriptable"
                          cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                          local dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                          workspace.CurrentCamera.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                          Targetting = true
                          RocketTarget = ZTarget
                          for i = 1, Property do
                            if Humanoid.Health > 0 and Character.Parent ~= nil and TargHum.Health > 0 and TargHum.Parent ~= nil and Targetting == true then
                              swait()
                            end
                            cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                            dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                            cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position) * cf(0, 5, 10) * euler(-0.3, 0, 0)
                          end
                          Targetting = false
                          RocketTarget = nil
                          targetgui.Parent = nil
                          cam.CameraType = "Custom"
                        end
                      end
                      do
                        local debounce = Instance.new("BoolValue")
                        debounce.Name = "DebounceHit"
                        debounce.Parent = hit.Parent
                        debounce.Value = true
                        game:GetService("Debris"):AddItem(debounce, Delay)
                        c = Instance.new("ObjectValue")
                        c.Name = "creator"
                        c.Value = Player
                        c.Parent = h
                        game:GetService("Debris"):AddItem(c, 0.5)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end

  ShowDamage = function(Pos, Text, Time, Color)
    local Rate = 0.033333333333333
    if not Pos then
      local Pos = Vector3.new(0, 0, 0)
    end
    local Text = Text or ""
    local Time = Time or 2
    if not Color then
      local Color = Color3.new(1, 0, 0)
    end
    local EffectPart = part("Custom", Character, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
    EffectPart.Anchored = true
    local BillboardGui = Instance.new("BillboardGui")
    BillboardGui.Size = UDim2.new(3, 0, 3, 0)
    BillboardGui.Adornee = EffectPart
    local TextLabel = Instance.new("TextLabel")
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Text = Text
    TextLabel.TextColor3 = Color
    TextLabel.TextScaled = true
    TextLabel.Font = Enum.Font.ArialBold
    TextLabel.Parent = BillboardGui
    BillboardGui.Parent = EffectPart
    game.Debris:AddItem(EffectPart, Time + 0.1)
    EffectPart.Parent = Character
    Delay(0, function()
      local Frames = Time / Rate
      for Frame = 1, Frames do
        wait(Rate)
        local Percent = Frame / Frames
        EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
        TextLabel.TextTransparency = Percent
      end
      if EffectPart and EffectPart.Parent then
        EffectPart:Destroy()
      end
    end
)
  end

  handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Handle", Vector3.new(0.416514248, 1.4000001, 0.416514456))
  handleweld = weld(m, Character["Right Arm"], handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.05613828, -0.0183410645, 0.000350952148, 1.87702778e-006, 0.999999523, 1.76214598e-012, 1.14752652e-012, 1.32871481e-012, -0.999993563, -0.999993443, 1.84723399e-006, -9.5567998e-013))
  mesh("CylinderMesh", handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.694191515, 1))
  Hitbox = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Navy blue", "Hitbox", Vector3.new(1.0941906, 5.3651495, 0.200000003))
  Hitboxweld = weld(m, handle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, -4.55644989, 0.00016784668, 0.999999285, 4.60235669e-011, -1.72535329e-006, -4.68979022e-011, 0.999987125, 1.07980942e-012, 1.66581015e-006, -1.39247641e-012, 0.999986887))
  mesh("BlockMesh", Hitbox, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.694190681))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000274658203, 0.000577092171, 1.45775223, -1.76544672e-005, -6.57531132e-008, 0.999993443, -0.999999464, 1.02817339e-005, -1.76243502e-005, -1.02966969e-005, -0.999993443, -6.59328947e-008))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.272122681, 0.505371451, 0.201315284))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.416514248, 0.200000003, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, -0.694141388, 0, 0.999999285, -4.3341795e-013, -2.97819724e-008, -4.3341795e-013, 0.999987125, -1.91842744e-013, -2.97819724e-008, -1.91842744e-013, 0.999986887))
  mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.694191515, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000289916992, 1.03119278, 1.03037834, -1.92463904e-005, -7.25203245e-006, 0.999993443, -0.707113385, -0.70709455, -1.87159931e-005, 0.707098842, -0.707109213, 8.4597923e-006))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.283229738, 0.238801882, 0.201315284))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.416514248, 0.416515023, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, -0.416484833, 0, 0.999999285, -4.3341795e-013, -2.97819724e-008, -4.3341795e-013, 0.999987125, -1.91842744e-013, -2.97819724e-008, -1.91842744e-013, 0.999986887))
  mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000274658203, -1.45775223, 0.000576972961, -1.94078439e-005, -7.46359137e-006, 0.999993443, 1.03413868e-005, 0.999993145, 7.46378964e-006, -0.999999166, 1.03562397e-005, -1.93776359e-005))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.272122681, 0.505371451, 0.201315284))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.416514248, 0.277676612, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, -0.902637482, 0.000198364258, 0.999999285, -1.23285471e-009, -1.15901048e-006, 1.23199539e-009, 0.999987125, -1.96591137e-012, 1.09946052e-006, 1.65200525e-012, 0.999986887))
  mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000274658203, -1.45775223, 0.000577092171, -1.75918103e-005, 6.84275614e-009, 0.999993443, 1.02860358e-005, 0.999993563, -6.66296662e-009, -0.999999523, 1.0285974e-005, -1.75616969e-005))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.252685368, 0.505371451, 0.24018997))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Navy blue", "Part", Vector3.new(0.416514367, 4.16514921, 0.200000003))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, -3.95612335, 0.000137329102, 0.999999285, 3.38785076e-011, -1.69563759e-006, -3.47526452e-011, 0.999987125, 5.6136931e-013, 1.636094e-006, -8.74058096e-013, 0.999986887))
  mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.763609767))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 4.16514921, 0.200000003))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, -3.95633316, 0.000137329102, 0.999999285, 3.7068789e-011, -1.57651493e-006, -3.79429578e-011, 0.999987125, 1.16532055e-012, 1.5169702e-006, -1.47800847e-012, 0.999986887))
  mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.833028972))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000274658203, -1.03037643, 1.03119469, -1.9352392e-005, -7.44054114e-006, 0.999993443, -0.707098842, 0.707109272, -8.40144912e-006, -0.707113445, -0.70709461, -1.89242419e-005))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.283229738, 0.238801882, 0.201315284))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.416514248, 0.200000003, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, -0.138824463, 0, 0.999999285, -4.3341795e-013, -2.97819724e-008, -4.3341795e-013, 0.999987125, -1.91842744e-013, -2.97819724e-008, -1.91842744e-013, 0.999986887))
  mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.694191515, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.416514367, 0.416514784, 0.971866965))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000274658203, 0.000551462173, 3.9567337, -1.76544672e-005, -6.57531132e-008, 0.999993443, -0.999999464, 1.02817339e-005, -1.76243502e-005, -1.02966969e-005, -0.999993443, -6.59328947e-008))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.252685368, 0.390135646, 1.46335411))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000259399414, -1.31884766, -0.0006057024, -1.94158456e-005, -7.18334013e-006, 0.999993443, -1.02519798e-005, -0.999992967, -7.18353886e-006, 0.999999046, -1.03413386e-005, 1.93856376e-005))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.283229738, 0.431787163, 0.201315284))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.416514248, 0.200000003, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, 0.694160461, 0, 0.999999285, -4.3341795e-013, -2.97819724e-008, -4.3341795e-013, 0.999987125, -1.91842744e-013, -2.97819724e-008, -1.91842744e-013, 0.999986887))
  mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.694191515, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000274658203, 0.000551462173, 3.9567337, -1.76544672e-005, -6.57531132e-008, 0.999993443, -0.999999464, 1.02817339e-005, -1.76243502e-005, -1.02966969e-005, -0.999993443, -6.59328947e-008))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.280452967, 0.39568913, 0.630325258))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000274658203, 0.000577092171, 1.45775223, -1.76544672e-005, -6.57531132e-008, 0.999993443, -0.999999464, 1.02817339e-005, -1.76243502e-005, -1.02966969e-005, -0.999993443, -6.59328947e-008))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.252685368, 0.505371451, 0.24018997))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000274658203, -0.000605583191, 1.31885147, -1.89684615e-005, -7.36040192e-006, 0.999993443, 0.999998748, -1.01476244e-005, 1.89382463e-005, 1.00731659e-005, 0.999992669, 7.36059474e-006))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.297113568, 0.184654936, 0.399853855))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Navy blue", "Part", Vector3.new(0.416514367, 0.416514784, 0.971866965))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000274658203, 0.000551462173, 3.9567337, -1.76544672e-005, -6.57531132e-008, 0.999993443, -0.999999464, 1.02817339e-005, -1.76243502e-005, -1.02966969e-005, -0.999993443, -6.59328947e-008))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.273511082, 0.337377071, 1.46335411))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.416514248, 0.200000003, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, 0.138820648, 0, 0.999999285, -4.3341795e-013, -2.97819724e-008, -4.3341795e-013, 0.999987125, -1.91842744e-013, -2.97819724e-008, -1.91842744e-013, 0.999986887))
  mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.694191515, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.416514248, 0.416514963, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, 0.416496277, 0, 0.999999285, -4.3341795e-013, -2.97819724e-008, -4.3341795e-013, 0.999987125, -1.91842744e-013, -2.97819724e-008, -1.91842744e-013, 0.999986887))
  mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Part", Vector3.new(0.694190562, 4.16514921, 0.200000003))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, -3.95645905, 0.00016784668, 0.999999285, 4.60235669e-011, -1.72535329e-006, -4.68979022e-011, 0.999987125, 1.07980942e-012, 1.66581015e-006, -1.39247641e-012, 0.999986887))
  mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.694190681))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.416514367, 0.416514784, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000259399414, -1.31884766, -0.0006057024, -1.94158456e-005, -7.18334013e-006, 0.999993443, -1.02519798e-005, -0.999992967, -7.18353886e-006, 0.999999046, -1.03413386e-005, 1.93856376e-005))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.297113568, 0.201315522, 0.22630617))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.416514933, 0.277676314))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.5335356, 0.000442504883, 1.45762634, 0.999999285, -6.16546174e-008, 3.0441106e-007, -3.63979211e-007, -4.47085071e-008, 0.999986887, -6.16544824e-008, -0.999987125, -4.47081341e-008))
  mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.416514248, 0.200000003, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000615000725, 0.833026886, 0, 0.999999285, -4.33418167e-013, -2.97819724e-008, -4.33418167e-013, 0.999987125, -1.91842744e-013, -2.97817451e-008, -1.91842744e-013, 0.999986887))
  mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.694191515, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.416514933, 0.277676314))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.531595826, 0.000442504883, 1.45762634, 0.999999285, -6.16546174e-008, 3.0441106e-007, -3.63979211e-007, -4.47085071e-008, 0.999986887, -6.16544824e-008, -0.999987125, -4.47081341e-008))
  mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.694190562, 0.833029866, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000592112541, 1.3187561, -0.000228881836, -0.999999642, -1.32871492e-012, -1.84723422e-006, -1.76214598e-012, 0.999993563, 9.5567998e-013, 1.87702778e-006, 1.14752652e-012, -0.999993443))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.72195822, 0.708075464, 2.87394953))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.694190562, 0.833029866, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000592112541, -1.45798492, -0.000228881836, -0.999999642, -1.32871492e-012, -1.84723422e-006, -1.76214598e-012, 0.999993563, 9.5567998e-013, 1.87702778e-006, 1.14752652e-012, -0.999993443))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.860796332, 0.791378319, 3.47095394))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.694190562, 0.833029866, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000592112541, 1.3187561, -0.000228881836, -0.999999642, -1.32871492e-012, -1.84723422e-006, -1.76214598e-012, 0.999993563, 9.5567998e-013, 1.87702778e-006, 1.14752652e-012, -0.999993443))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.777493417, 0.805262208, 2.81841445))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.416514248, 0.200000003, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000592112541, 0, 0, 0.999999285, -4.3341795e-013, -2.97819724e-008, -4.3341795e-013, 0.999987125, -1.91842744e-013, -2.97819724e-008, -1.91842744e-013, 0.999986887))
  mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.694191515, 1))
  Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.694190562, 0.833029866, 0.416514456))
  Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000592112541, -1.45798492, -0.000228881836, -0.999999642, -1.32871492e-012, -1.84723422e-006, -1.76214598e-012, 0.999993563, 9.5567998e-013, 1.87702778e-006, 1.14752652e-012, -0.999993443))
  mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.888563931, 0.846913636, 3.47095394))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514903, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000442504883, -1.8045578, 0.531616807, 1.86565353e-006, 3.00202354e-012, -0.999986887, 1.23146959e-009, 0.999987125, 2.62061076e-012, 0.999999285, -1.2323218e-009, 1.80606696e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.139251709, -1.88124084, 0.139439583, 2.08563165e-006, 2.04154253e-006, -0.999986887, -4.47091253e-008, -0.999987125, -2.04154207e-006, -0.999999106, 4.47126496e-008, -1.86213424e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138305664, 1.24959183, 0.531638741, -2.40202917e-006, -6.47374876e-010, 0.999986887, -8.5167251e-009, -0.999987125, -6.47013942e-010, 0.999999285, -8.51749071e-009, 2.34243612e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 0.694191515, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.139251709, -1.88122559, 0.139439464, 2.47306866e-006, 2.04154298e-006, -0.999986887, -4.47106316e-008, -0.999987125, -2.04154253e-006, -0.999999106, 4.47149411e-008, -2.24956648e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.139251709, -1.88124084, 0.138231158, -2.44327907e-006, 9.98428391e-007, 0.999986887, 1.34124434e-007, -0.999987125, 9.98428618e-007, 0.999999106, 1.34125216e-007, 2.21977734e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000381469727, -1.88122559, 0.139450312, 3.33738035e-006, 2.83158215e-007, -0.999986887, -7.45189013e-008, -0.999987125, -2.831583e-007, -0.999999106, 7.45189865e-008, -3.11386771e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.138305664, -0.809320569, -1.52706146, 2.19357685e-006, -1.31811859e-008, -0.999986887, -0.999999285, -4.34657004e-008, -2.1339863e-006, -4.34670788e-008, 0.999987125, -1.31816593e-008))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000503540039, -0.809320569, -1.52706146, 2.22339054e-006, -1.31811859e-008, -0.999986887, -0.999999285, -4.34651177e-008, -2.16379954e-006, -4.34664962e-008, 0.999987125, -1.31816593e-008))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.138366699, -0.554747701, 1.38837814, 2.32405114e-006, -6.39080383e-007, -0.999986768, -0.999993086, -3.58865634e-007, -2.27935357e-006, -4.63172427e-007, 0.999992907, -8.47690558e-007))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.139373779, -0.809320569, -1.52708435, 2.16376361e-006, -1.31811611e-008, -0.999986887, -0.999999285, -4.34667946e-008, -2.10417352e-006, -4.34681731e-008, 0.999987125, -1.31816309e-008))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000442504883, -0.554747701, 1.38838196, 2.29424859e-006, -1.29473938e-006, -0.999986768, -0.999993086, -1.94942373e-007, -2.24955124e-006, -2.99247716e-007, 0.999992907, -1.50334529e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514903, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.139282227, -1.8045578, 0.533523798, -1.76147296e-006, -3.09794616e-012, 0.999986887, 1.22528787e-009, 0.999987125, 2.71652232e-012, -0.999999285, 1.22614729e-009, -1.70188764e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 1.11070645, 0.694190741))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000335693359, -6.59405136, -0.000592112541, 2.40226973e-006, -1.28490068e-012, -0.999986887, 1.24207178e-009, 0.999987125, -1.59473465e-012, 0.999999285, -1.24293043e-009, 2.342676e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 1))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.139266968, -1.52720642, 0.417087913, 1.89191633e-006, 1.53486269e-006, -0.999986768, 2.68221385e-007, -0.999992907, -1.32623961e-006, -0.999993086, -1.63910158e-007, -1.84722228e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138381958, -1.52720642, 0.415901303, -1.99622514e-006, 2.04153935e-006, 0.999986768, 4.47095587e-008, -0.999992907, 2.25013991e-006, 0.999993086, -5.95946332e-008, 1.95153007e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000442504883, -1.52720642, 0.415933371, -1.99622536e-006, 2.83158755e-007, 0.999986768, 7.45203863e-008, -0.999992907, 4.91770265e-007, 0.999993086, -2.97872873e-008, 1.95153052e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000442504883, -1.52720642, 0.417108774, 1.87701528e-006, 2.83121381e-007, -0.999986768, 1.3411227e-007, -0.999992907, -7.45059623e-008, -0.999993086, -2.98034593e-008, -1.832321e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.139282227, -0.555932999, 1.38837814, -2.35764037e-006, -2.2180609e-007, 0.999986768, 0.999993086, -1.50227194e-007, 2.31294325e-006, 4.59184264e-008, 0.999992907, 1.31914391e-008))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.138397217, -1.52720642, 0.417087793, 2.24954783e-006, 1.53481187e-006, -0.999986768, 3.8743238e-007, -0.999992907, -1.32618845e-006, -0.999993086, -2.83120642e-007, -2.20485163e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000381469727, -1.88124084, 0.13823092, -2.27936425e-006, 2.8315867e-007, 0.999986887, 7.4524543e-008, -0.999987125, 2.83158727e-007, 0.999999106, 7.45245003e-008, 2.05586457e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138381958, -1.88122559, 0.138230681, -3.30758758e-006, 2.04154298e-006, 0.999986887, 4.4711939e-008, -0.999987125, 2.04154276e-006, 0.999999106, 4.47181385e-008, 3.08407539e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138381958, -0.555933237, 1.38837814, -2.32782918e-006, -2.21806104e-007, 0.999986768, 0.999993086, -1.50227706e-007, 2.28313206e-006, 4.59189664e-008, 0.999992907, 1.31914248e-008))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.139282227, -0.554747581, 1.38838196, 2.7860026e-006, -2.21841574e-007, -0.999986768, -0.999993086, -1.50245711e-007, -2.74130252e-006, -2.54553385e-007, 0.999992907, -4.30454008e-007))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.139282227, -1.52721786, 0.415923357, -1.96642259e-006, 9.98427936e-007, 0.999986768, 1.34116647e-007, -0.999992907, 1.20703544e-006, 0.999993086, 2.98103267e-008, 1.92172752e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000381469727, -1.88124084, 0.13823092, -2.27936425e-006, 2.8315867e-007, 0.999986887, 7.4524543e-008, -0.999987125, 2.83158727e-007, 0.999999106, 7.45245003e-008, 2.05586457e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000442504883, -0.555933475, 1.38838196, -2.70038345e-006, -4.3042246e-007, 0.999986768, 0.999993086, -2.54535934e-007, 2.65568406e-006, 1.50226569e-007, 0.999992907, 2.21807127e-007))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000335693359, 1.80414963, 0.278218031, 6.87196416e-006, -3.6487404e-006, -0.999986887, -1.46187795e-005, -0.999987125, 3.64864036e-006, -0.999999285, 1.46185776e-005, -6.81236816e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 0.694191515, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000335693359, 1.80420685, 0.277124286, -6.72330088e-006, 3.02124909e-006, 0.999986887, -1.33900166e-005, -0.999987125, 3.02115996e-006, 0.999999285, -1.33898347e-005, 6.66369306e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 0.694191515, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.694191575, 0.416514456))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000335693359, -6.385952, -0.000623106956, 2.52171731e-006, -6.87521763e-013, -0.999986887, 1.240405e-009, 0.999987125, -9.97211536e-013, 0.999999285, -1.24126354e-009, 2.46212267e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.763609767, 1, 1))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514903, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.138381958, -1.8045311, 0.531616807, 1.86565364e-006, 3.00912897e-012, -0.999986887, 1.23146959e-009, 0.999987125, 2.62771619e-012, 0.999999285, -1.2323218e-009, 1.80606708e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138381958, -1.88122559, 0.138230681, -2.89033301e-006, 2.04154185e-006, 0.999986887, 4.47129906e-008, -0.999987125, 2.04154139e-006, 0.999999106, 4.47183233e-008, 2.66682559e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.138381958, -1.88122559, 0.139439583, 2.47306866e-006, 9.98429982e-007, -0.999986887, -1.34122885e-007, -0.999987125, -9.98429982e-007, -0.999999106, 1.34123553e-007, -2.24956648e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138381958, -1.52720642, 0.415901303, -1.99622514e-006, 2.04153935e-006, 0.999986768, 4.47095587e-008, -0.999992907, 2.25013991e-006, 0.999993086, -5.95946332e-008, 1.95153007e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514903, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.139282227, -1.80462265, 0.531616807, 1.74643674e-006, 2.98781269e-012, -0.999986887, 1.23137012e-009, 0.999987125, 2.6063999e-012, 0.999999285, -1.23222943e-009, 1.68685165e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.694191575, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138305664, 1.24956894, 0.6704638, -2.46169611e-006, -6.48390952e-010, 0.999986887, -8.51392912e-009, -0.999987125, -6.48026466e-010, 0.999999285, -8.51469117e-009, 2.40210238e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.694191575, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000503540039, 1.2496109, 0.67046392, -2.52148266e-006, -6.47641329e-010, 0.999986887, -8.50918624e-009, -0.999987125, -6.47276843e-010, 0.999999285, -8.50995541e-009, 2.46188779e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Wedge", Vector3.new(0.200000003, 0.277676582, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000335693359, -6.17771149, -0.000592112541, 2.78921061e-006, -1.21371468e-012, -0.999986887, 1.2474618e-009, 0.999987125, -1.52305284e-012, 0.999999285, -1.24832034e-009, 2.72961233e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.833028793, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000381469727, -1.88124084, 0.139450431, 2.08563165e-006, 2.83160801e-007, -0.999986887, -7.45207913e-008, -0.999987125, -2.83160887e-007, -0.999999106, 7.45205213e-008, -1.86213424e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.694191575, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.139282227, 1.24953461, 0.67046392, -2.10415715e-006, -6.47310927e-010, 0.999986887, -8.51068549e-009, -0.999987125, -6.46946441e-010, 0.999999285, -8.5114511e-009, 2.04456774e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.139282227, 1.24956894, 0.531616807, -2.0742898e-006, -6.4645117e-010, 0.999986887, -8.51314752e-009, -0.999987125, -6.46086684e-010, 0.999999285, -8.51391313e-009, 2.01470061e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 0.694191515, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000442504883, -1.52720642, 0.415933371, -1.99622536e-006, 2.83158755e-007, 0.999986768, 7.45203863e-008, -0.999992907, 4.91770265e-007, 0.999993086, -2.97872873e-008, 1.95153052e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000503540039, 1.2496109, 0.531616807, -2.43205386e-006, -6.47012499e-010, 0.999986887, -8.51063575e-009, -0.999987125, -6.46651566e-010, 0.999999285, -8.51139781e-009, 2.37246036e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 0.694191515, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.138305664, 1.24954987, 0.53352356, 2.11587303e-006, -6.32865649e-010, -0.999986887, 8.54560156e-009, -0.999987125, 6.33265052e-010, -0.999999285, -8.54462634e-009, -2.05628339e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 0.694191515, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.694191575, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.138381958, 1.24946213, 0.672370553, 1.89562525e-006, -6.37729314e-010, -0.999986887, 6.0633063e-009, -0.999987125, 6.38124165e-010, -0.999999285, -6.06236128e-009, -1.83603845e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.694191575, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000442504883, 1.24946213, 0.672370553, 1.95524262e-006, -6.37736419e-010, -0.999986887, 6.06350525e-009, -0.999987125, 6.3813127e-010, -0.999999285, -6.06256023e-009, -1.89565515e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514903, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138381958, -1.80463409, 0.53352356, -1.58262162e-006, -3.13347265e-012, 0.999986887, 1.22538735e-009, 0.999987125, 2.75204946e-012, -0.999999285, 1.22624677e-009, -1.52303869e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138381958, -0.811196804, -1.52706528, -2.07450216e-006, -1.31914533e-008, 0.999986887, 0.999999285, -4.59201956e-008, 2.01491321e-006, 4.59198546e-008, 0.999987125, 1.31911575e-008))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000442504883, -0.811196804, -1.52706528, -2.13412386e-006, -1.31914391e-008, 0.999986887, 0.999999285, -4.59191298e-008, 2.074534e-006, 4.59187888e-008, 0.999987125, 1.31911468e-008))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.416514903, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000442504883, -1.80457306, 0.53352356, -1.70185444e-006, -3.1121568e-012, 0.999986887, 1.22531629e-009, 0.999987125, 2.73073317e-012, -0.999999285, 1.22616861e-009, -1.64226992e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000503540039, 1.24959183, 0.53352356, 2.42881674e-006, -6.3343053e-010, -0.999986887, 8.54309334e-009, -0.999987125, 6.33833486e-010, -0.999999285, -8.54211812e-009, -2.36922324e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 0.694191515, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.694191575, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.139282227, 1.24946213, 0.672370553, 1.92543371e-006, -6.37729314e-010, -0.999986887, 6.06340578e-009, -0.999987125, 6.38120612e-010, -0.999999285, -6.06246076e-009, -1.86584657e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.416514933, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.139282227, -0.811196804, -1.52706528, -2.1043129e-006, -1.31914355e-008, 0.999986887, 0.999999285, -4.59196663e-008, 2.04472349e-006, 4.59193217e-008, 0.999987125, 1.31911433e-008))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 1, 0.694190681))
  Wedge = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Wedge", Vector3.new(0.200000003, 0.200000003, 0.200000003))
  Wedgeweld = weld(m, handle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.139282227, 1.24956894, 0.53352356, 2.42881697e-006, -6.3379646e-010, -0.999986887, 8.54917559e-009, -0.999987125, 6.34199415e-010, -0.999999285, -8.54820037e-009, -2.36922347e-006))
  mesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.694190621, 0.694191515, 0.694190681))
  MagniDamage = function(Hit, Part, magni, mindam, maxdam, knock, Type)
    for _,c in pairs(workspace:children()) do
      local hum = c:findFirstChild("Humanoid")
      if hum ~= nil then
        local head = c:findFirstChild("Torso")
        if head ~= nil then
          local targ = head.Position - Part.Position
          local mag = targ.magnitude
          if mag <= magni and c.Name ~= Player.Name then
            Damagefunc(Hit, head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3)
          end
        end
      end
    end
  end

  magicring = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3)
    local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
    prt.Anchored = true
    prt.CFrame = cframe
    prt.Touched:connect(function(hit)
    end
)
    local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
    local ref = Instance.new("Part", Character)
    ref.Anchored = true
    ref.Size = Vector3.new(5, 5, 5)
    ref.CFrame = Torso.CFrame * CFrame.new(-5, 0, 0)
    ref.CanCollide = false
    ref.Transparency = 1
    MagniDamage(prt, ref, 10, 5, 10, 0, "Knockdown")
    coroutine.resume(coroutine.create(function(Part, Mesh)
      for i = 0, 1, 0.03 do
        wait()
        Part.CFrame = Part.CFrame
        Part.Transparency = i
        Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
      end
      Part.Parent = nil
      ref.Parent = nil
    end
), prt, msh)
  end

  attackone = function()
    attack = true
    for i = 0, 1, 0.1 do
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
      handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    end
    local con = Hitbox.Touched:connect(function(hit)
      Damagefunc(Hitbox, hit, 10, 20, math.random(5, 10), "Normal", RootPart, 0.2, 1)
    end
)
    so("http://roblox.com/asset/?id=199150686", Hitbox, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      local blcf = Hitbox.CFrame * CFrame.new(0, 0.5, 0)
      if scfr and Hitbox.Position - scfr.p.magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            if not scfr then
              scfr = blcf
            end
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-80)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-90), math.rad(-130)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
            handleweld.C0 = clerp(handleweld.C0, cf(0, -1, -1) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.3)
            -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC525: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    scfr = nil
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(50)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
      handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    end
    so("http://roblox.com/asset/?id=199146359", Hitbox, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      local blcf = Hitbox.CFrame * CFrame.new(0, 0.5, 0)
      if scfr and Hitbox.Position - scfr.p.magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            if not scfr then
              scfr = blcf
            end
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(50)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(130)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
            handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(0)), 0.3)
            -- DECOMPILER ERROR at PC1046: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC1046: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC1046: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    scfr = nil
    attack = false
    con:disconnect()
    scfr = nil
  end

  attacktwo = function()
    attack = true
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
      handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    end
    local con = Hitbox.Touched:connect(function(hit)
      Damagefunc(Hitbox, hit, 10, 20, math.random(5, 10), "Normal", RootPart, 0.2, 1)
    end
)
    so("http://roblox.com/asset/?id=199150686", Hitbox, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-80)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-190), math.rad(-90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
      handleweld.C0 = clerp(handleweld.C0, cf(0, -1, -1) * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.3)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
      handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    end
    so("http://roblox.com/asset/?id=199150686", Hitbox, 1, 0.9)
    for i = 0, 1, 0.1 do
      swait()
      local blcf = Hitbox.CFrame * CFrame.new(0, 0.5, 0)
      if scfr and Hitbox.Position - scfr.p.magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            if not scfr then
              scfr = blcf
            end
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(90)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
            handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            -- DECOMPILER ERROR at PC927: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC927: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC927: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    scfr = nil
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
      handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    end
    so("http://roblox.com/asset/?id=199146359", Hitbox, 1, 0.9)
    for i = 0, 1, 0.1 do
      swait()
      local blcf = Hitbox.CFrame * CFrame.new(0, 0.5, 0)
      if scfr and Hitbox.Position - scfr.p.magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            if not scfr then
              scfr = blcf
            end
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-20)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
            handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            -- DECOMPILER ERROR at PC1448: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC1448: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC1448: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    scfr = nil
    attack = false
    con:disconnect()
    scfr = nil
  end

  Spin = function()
    attack = true
    local con = Hitbox.Touched:connect(function(hit)
      Damagefunc(Hitbox, hit, 10, 20, math.random(5, 10), "Normal", RootPart, 0.2, 1)
    end
)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(120)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
      handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    end
    Humanoid.Jump = true
    for i = 0, 1 do
      so("http://roblox.com/asset/?id=234365573", Torso, 1, 1)
      swait()
      for i = 0, 1, 0.1 do
        swait()
        local blcf = Hitbox.CFrame * CFrame.new(0, 0.5, 0)
        if scfr and Hitbox.Position - scfr.p.magnitude > 0.1 then
          local h = 5
          local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
          if a then
            game.Debris:AddItem(a, 1)
          end
          if b then
            game.Debris:AddItem(b, 1)
          end
          local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
          if a then
            game.Debris:AddItem(a, 1)
          end
          if b then
            game.Debris:AddItem(b, 1)
          end
          scfr = blcf
        else
          do
            do
              if not scfr then
                scfr = blcf
              end
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * euler(0, -1.2, 6 * i), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-70)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(80)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-70)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(60), math.rad(-10)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(10)), 0.3)
              handleweld.C0 = clerp(handleweld.C0, cf(0, -1, -1) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
              -- DECOMPILER ERROR at PC524: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC524: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC524: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
    scfr = nil
    attack = false
    con:disconnect()
    scfr = nil
  end

  StunTarget = function()
    attack = true
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
      handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    end
    so("http://roblox.com/asset/?id=228343249", Torso, 1, 1)
    for i = 1, 2 do
      magicring(BrickColor.new("Navy blue"), Torso.CFrame * CFrame.new(-5, 0, 0) * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 1, 1, 0.05)
      magicring(BrickColor.new("Navy blue"), Torso.CFrame * CFrame.new(-5, 0, 0) * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 1, 1, 0.05)
    end
    attack = false
  end

  mouse.Button1Down:connect(function()
    if attack == false and attacktype == 1 then
      attacktype = 2
      attackone()
    else
      if attack == false and attacktype == 2 then
        attacktype = 1
        attacktwo()
      end
    end
  end
)
  mouse.KeyDown:connect(function(k)
    k = k:lower()
    if attack == false and k == "q" then
      Spin()
    else
      if attack == false and k == "e" then
        StunTarget()
      end
    end
  end
)
  local sine = 0
  local change = 1
  local val = 0
  while 1 do
    sine = sine + change
    local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
    local velderp = RootPart.Velocity.y
    hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if equipped == true or equipped == false then
      if attack == false then
        idle = idle + 1
      else
        idle = 0
      end

      if ((500 <= idle and attack ~= false) or 1 < RootPart.Velocity.y) and hitfloor == nil and attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-20)), 0.2)
        handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
      end
    end
    if RootPart.Velocity.y < -1 and hitfloor == nil then
      Anim = "Fall"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(40)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.2)
        handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
      end
    else
      if torvel < 1 and hitfloor ~= nil then
        Anim = "Idle"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(40)), 0.2)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.2)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.2)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.2)
          handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
        end
      else
        if 2 < torvel and hitfloor ~= nil then
          Anim = "Walk"
          if attack == false then
            change = 3
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.2)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-15)), 0.2)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.2)
            handleweld.C0 = clerp(handleweld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
          end
        end
      end
    end
    if 0 < #Effects then
      for e = 1, #Effects do
        if Effects[e] ~= nil then
          local Thing = Effects[e]
          if Thing ~= nil then
            local Part = Thing[1]
            local Mode = Thing[2]
            local Delay = Thing[3]
            local IncX = Thing[4]
            local IncY = Thing[5]
            local IncZ = Thing[6]
            if Thing[1].Transparency <= 1 then
              if Thing[2] == "Block1" then
                Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                Mesh = Thing[1].Mesh
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              else
                if Thing[2] == "Cylinder" then
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Blood" then
                    Mesh = Thing[7]
                    Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Elec" then
                      Mesh = Thing[1].Mesh
                      Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      end
                    end
                  end
                end
              end
            else
              Part.Parent = nil
              table.remove(Effects, e)
            end
          end
        end
      end
    end
  end
