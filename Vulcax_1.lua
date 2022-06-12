--Same error as others.--

-Fix one, Fix the rest?--

script.Parent = nil
Character = game.Players.localPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
TagService = require(game:GetService("ReplicatedStorage"):WaitForChild("TagService"))
local ContentProvider = game:GetService("ContentProvider")
local LoadAssets = function(AssetList)
  for _,AssetId in pairs(AssetList) do
    ContentProvider:Preload("http://www.roblox.com/asset/?id=" .. AssetId)
  end
end
LoadAssets({10209780, 10209786, 10209788, 10209225, 20329976, 10209658})
clangsounds = {"199149119", "199149109", "199149072", "199149025", "199148971"}
wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
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
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 10
local co2 = 15
local co3 = 50
local co4 = 25
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
local maxstamina = 500
local stamina = 0
local skill1stam = 10
local skill2stam = 10
local skill3stam = 400
local skill4stam = 30
local recovermana = -1
local it = Instance.new
local vt = Vector3.new
local spinUp = false
local spining = false
local shooting = false
local firing = false
local defensevalue = 0.9
local speedvalue = 1
local mindamage = 5
local maxdamage = 7
local damagevalue = 0.7
local crit = false
local critchance = -1
local critdamageaddmin = 3
local critdamageaddmax = 7
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
Meshes = {Blast = "20329976", Crown = "1323306", Ring = "3270017", Claw = "10681506", Crystal = "9756362", Coil = "9753878", Cloud = "1095708"}
local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "RW"
RW.Part0 = Torso
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "LW"
LW.Part0 = Torso
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
makeframe = function(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end
makelabel = function(par, text)
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = ud(1, 0, 1, 0)
  label.Position = ud(0, 0, 0, 0)
  label.TextColor3 = c3(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end
framesk1 = makeframe(scrn, 0.5, ud(0.23, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, ud(0.5, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, ud(0.5, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, ud(0.23, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[c] Blast")
text2 = makelabel(framesk2, "[v] BFG")
text3 = makelabel(framesk3, "[x] Spin")
text4 = makelabel(framesk4, "[z] Shank")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(0.67058823529412, 0.67058823529412, 0.003921568627451))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0, 1, 0))
staminatext = makelabel(staminabar, "Heat")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.18039215686275, 0.1921568627451))
healthtext = makelabel(healthbar, "Health")
local stats = Instance.new("Folder", Character)
stats.Name = "Stats"
local block = Instance.new("BoolValue", stats)
block.Name = "Block"
block.Value = false
local stun = Instance.new("BoolValue", stats)
stun.Name = "Stun"
stun.Value = false
local defense = Instance.new("NumberValue", stats)
defense.Name = "Defence"
defense.Value = defensevalue
local speed = Instance.new("NumberValue", stats)
speed.Name = "Speed"
speed.Value = speedvalue
local damagea = Instance.new("NumberValue", stats)
damagea.Name = "Damage"
damagea.Value = damagevalue
turncrit = function()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(0.25)
    crit = false
  end))
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
swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").RenderStepped:wait(0)
  else
    for i = 0, num do
      game:service("RunService").RenderStepped:wait(0)
    end
  end
end
randomizer = function(percent)
  local randomized = math.random(0, 100)
  if randomized <= percent then
    return true
  else
    if percent <= randomized then
      return false
    end
  end
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end
CreatePart = function(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end
CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end
CreateWeld = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end
rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
CreateSound = function(id, par, vol, pit, lop, del)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    sou.Looped = lop
    wait()
    sou:play()
    if not del then
      game:GetService("Debris"):AddItem(sou, 6)
    end
  end))
end
pickrandom = function(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end
sound = function(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or Torso)
  s.SoundId = "rbxassetid://" .. id
  s.Pitch = pitch or 1
  s.Volume = volume or 1
  wait()
  s:play()
  game.Debris:AddItem(s, last or 120)
end
clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end)()
    end
  end)()
end
local getclosest = function(obj, distance)
  local last, lastx = distance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = t.Position - obj.Position.magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end
makegui = function(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  local m = Instance.new("Model", Character)
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
  if crit == true then
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
tag = function(hum, player)
  local creator = Instance.new("ObjectValue", hum)
  creator.Value = player
  creator.Name = "creator"
end
untag = function(hum)
  if hum ~= nil then
    local tag = hum:findFirstChild("creator")
    if tag ~= nil then
      tag.Parent = nil
    end
  end
end
tagplayer = function(h)
  coroutine.wrap(function()
    tag(h, Player)
    wait(1)
    untag(h)
  end)()
end
damage = function(hit, mind, maxd, knock, type, prop, Delay)
  if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
    return 
  end
  do
    if hit.Name:lower() == "hitbox" then
      local pos = CFrame.new(0, 1, -1)
      do
        sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, Torso, 6)
        coroutine.wrap(function()
    for i = 1, 4 do
      clangy(Torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
    end
  end)()
      end
    end
    if hit.Parent == nil then
      return 
    end
    local h = hit.Parent:FindFirstChild("Humanoid")
    for i,v in pairs(hit.Parent:children()) do
      if v:IsA("Humanoid") then
        h = v
      end
    end
    if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
      h = hit.Parent.Parent:FindFirstChild("Humanoid")
    end
    if hit.Parent:IsA("Hat") then
      hit = hit.Parent.Parent:findFirstChild("Head")
    end
    local D = math.random(mind, maxd) * damagea.Value
    TagService:NewTag(h.Parent, Player, "Vulcax", D)
    if h then
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
    end
    if h.Parent:FindFirstChild("Stats") or h and h.Parent.Head then
      makegui(h.Parent.Head.CFrame, tostring(math.floor(D * 10) / 10))
    end
    if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
      if type == 1 then
        tagplayer(h)
        local asd = randomizer(critchance)
        if asd == true then
          turncrit()
        end
        if crit == false then
          h.Health = h.Health - D
        else
          h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
        end
        CreateSound("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
        local vp = Instance.new("BodyVelocity")
        vp.P = 500
        vp.maxForce = Vector3.new(math.huge, 0, math.huge)
        local aim = CFrame.new(prop.Position, hit.Parent.Torso.Position)
        vp.velocity = aim.lookVector * knock + prop.Velocity / 1.05
        if knock > 0 then
          vp.Parent = hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp, 0.5)
      else
        do
          if type == 2 then
            CreateSound("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
            local asd = randomizer(critchance)
            if asd == true then
              turncrit()
            end
            if crit == false then
              h.Health = h.Health - D
            else
              h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
            end
            tagplayer(h)
          else
            do
              if type == 3 then
                tagplayer(h)
                local asd = randomizer(critchance)
                if asd == true then
                  turncrit()
                end
                if crit == false then
                  h.Health = h.Health - D
                else
                  h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
                end
                Character.Humanoid.Health = Character.Humanoid.Health + D / 2
                CreateSound("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
                for i = 1, 10 do
                  firespaz1("Bright red", hit.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3)))
                end
              else
                do
                  if type == 4 then
                    h.Health = h.Health + D
                    CreateSound("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
                    circle("Dark green", h.Parent.Torso.CFrame * CFrame.new(0, -2.5, 0))
                  end
                  local debounce = Instance.new("BoolValue")
                  debounce.Name = "DebounceHit"
                  debounce.Parent = hit.Parent
                  debounce.Value = true
                  game:GetService("Debris"):AddItem(debounce, Delay)
                end
              end
            end
          end
        end
      end
    end
  end
end
local model = game:GetService("ReplicatedStorage").Weapons.Vulcax.Model
a = model:Clone()
a.Parent = m
for k,v in pairs(a:GetChildren()) do
  if v.Name == "bPart" then
    local w = Instance.new("ManualWeld")
    w.Name = "BarrelWeld"
    w.Part0 = v
    w.Part1 = a.bmPart
    w.C0 = v.CFrame:inverse() * a.bmPart.CFrame
    w.Parent = game.JointsService
    if v.Size.Z > 1.277 and v.Size.Z < 1.458 then
      v.Name = "gbPart"
    end
  else
    do
      if v.Name == "bmPart" then
        BM = Instance.new("Weld")
        BM.Name = "BM"
        BM.Part0 = a.Handle
        BM.C0 = a.Handle.CFrame:inverse() * a.bmPart.CFrame
        BM.Part1 = v
        BM.Parent = a.Handle
        BM.Parent = game.JointsService
      else
        if v.Name == "amPart" then
          local w = Instance.new("ManualWeld")
          w.Name = "WristWeld"
          w.Part0 = v
          w.Part1 = Character["Right Arm"]
          w.C0 = CFrame.new(0, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0))
          w.Parent = game.JointsService
        else
          do
            if v.Name == "aPart" then
              local w = Instance.new("ManualWeld")
              w.Name = "WristWeld"
              w.Part0 = v
              w.Part1 = a.amPart
              w.C0 = v.CFrame:inverse() * a.amPart.CFrame
              w.Parent = game.JointsService
            else
              do
                do
                  do
                    local w = Instance.new("ManualWeld")
                    w.Name = "HandleWeld"
                    w.Part0 = v
                    w.Part1 = a.Handle
                    w.C0 = v.CFrame:inverse() * a.Handle.CFrame
                    w.Parent = game.JointsService
                    v.Anchored = false
                    v.CanCollide = false
                    v.Anchored = false
                    v.CanCollide = false
                    v.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
                    if v.BrickColor.Name == "Maroon" then
                      v.BrickColor = Torso.BrickColor
                    end
                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                    -- DECOMPILER ERROR at PC861: LeaveBlock: unexpected jumping out IF_STMT

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
local w = Instance.new("Weld")
w.Name = "HandleWeld"
w.Part0 = a.Handle
w.Part1 = Character["Right Arm"]
w.C0 = CFrame.new(-0.55, -0.3, -0.4) * angles(math.rad(225), math.rad(-25), math.rad(30))
w.Parent = game.JointsService
local sParent = a.bmPart
local tParent = game.Lighting
BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end
SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

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
  local TrailColor = "Dark Stone grey"
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new(TrailColor)
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    RemoveOutlines(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.01})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new(TrailColor)
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      RemoveOutlines(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
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
makeeffect = function(par, size, pos1, trans, trans1, howmuch, delay1, id, type, col)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = trans
  p.BrickColor = col
  RemoveOutlines(p)
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  if id ~= nil and type == nil then
    mesh.MeshId = "rbxassetid://" .. id
  else
    if id == nil and type ~= nil then
      mesh.MeshType = type
    else
      if id == nil and type == nil then
        mesh.MeshType = "Brick"
      end
    end
  end
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end)()
  return p
end
circle = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("CylinderMesh", p)
  mesh.Scale = Vector3.new(0, 0, 0)
  coroutine.wrap(function()
    for i = 0, 5, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
firespaz1 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  local mesh = Instance.new("BlockMesh", p)
  mesh.Scale = Vector3.new(1, 1, 1)
  coroutine.wrap(function()
    for i = 0, 15, 0.1 do
      wait(0.033333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
attackone = function()
  attack = true
  local con = a.hbPart.Touched:connect(function(hit)
    damage(hit, 2, 3, math.random(10, 15), 1, RootPart, 0.5)
  end)
  for i = 0, 5, 0.3 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.3) * angles(math.rad(5), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1 + 0.1 * math.cos(sine / 3), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.1 * math.cos(sine / 3), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
    else
      if Torsovelocity <= 2 then
        LH.C0 = clerp(LH.C0, cn(-1, -0.7, -0.5) * angles(math.rad(0), math.rad(-60), math.rad(-10)), 0.5)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-40)), 0.5)
      end
    end
  end
  CreateSound("http://www.roblox.com/asset/?id=243711349", a.bmPart, 1, 1.2)
  for i = 0, 5, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.3) * angles(math.rad(5), math.rad(0), math.rad(90)), 0.1)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1 + 0.1 * math.cos(sine / 3), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.1 * math.cos(sine / 3), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
    else
      if Torsovelocity <= 2 then
        RH.C0 = clerp(RH.C0, cn(1, -0.7, 0) * angles(math.rad(0), math.rad(60), math.rad(10)), 0.5)
        LH.C0 = clerp(LH.C0, cn(-1.1, -1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(40)), 0.5)
      end
    end
  end
  attack = false
  con:disconnect()
end
attacktwo = function()
  attack = true
  local con = a.hbPart.Touched:connect(function(hit)
    damage(hit, 2, 3, math.random(10, 15), 1, RootPart, 0.5)
  end)
  for i = 0, 5, 0.3 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.3) * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1 + 0.1 * math.cos(sine / 3), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.1 * math.cos(sine / 3), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
    else
      if Torsovelocity <= 2 then
        RH.C0 = clerp(RH.C0, cn(1, -0.7, 0) * angles(math.rad(0), math.rad(60), math.rad(10)), 0.5)
        LH.C0 = clerp(LH.C0, cn(-1.1, -1, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(40)), 0.5)
      end
    end
  end
  CreateSound("http://www.roblox.com/asset/?id=243711349", a.bmPart, 1, 1.2)
  for i = 0, 5, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.3) * angles(math.rad(5), math.rad(0), math.rad(-90)), 0.1)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    if Torsovelocity > 2 then
      RH.C0 = clerp(RH.C0, cn(1, -1 + 0.1 * math.cos(sine / 3), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.1 * math.cos(sine / 3), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
    else
      if Torsovelocity <= 2 then
        LH.C0 = clerp(LH.C0, cn(-1, -0.7, -0.5) * angles(math.rad(0), math.rad(-60), math.rad(-10)), 0.5)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-40)), 0.5)
      end
    end
  end
  attack = false
  con:disconnect()
end
FindNearestTorso = function(Position, Distance, SinglePlayer)
  if SinglePlayer.Torso.CFrame.p - Position.magnitude >= Distance then
    do return not SinglePlayer end
    do
      local List = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= Character and v.Torso.Position - Position.magnitude <= Distance then
          table.insert(List, v)
        end
      end
      do return List end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end
smashy = function()
  subtractstamina(skill3stam)
  local asd = makeeffect(workspace, Vector3.new(8, 10, 8), RootPart.CFrame * CFrame.new(1, -1, -4), 0.35, 0.025, Vector3.new(1, 1, 1), 3, Meshes.Blast, nil, BrickColor.new(Torso.BrickColor.Color))
  local asd = makeeffect(workspace, Vector3.new(10, 10, 10), RootPart.CFrame * CFrame.new(1, -1, -4), 0.35, 0.025, Vector3.new(1, 0, 1), 3, Meshes.Blast, nil, BrickColor.new(Torso.BrickColor.Color))
  local asd = makeeffect(workspace, Vector3.new(10, 4, 10), RootPart.CFrame * CFrame.new(1, -2, -4), 0.35, 0.025, Vector3.new(1, 0, 1), 3, Meshes.Blast, nil, BrickColor.new(Torso.BrickColor.Color))
  CreateSound("http://roblox.com/asset/?id=183763515", a.sPart, 1, 1)
  CreateSound("http://roblox.com/asset/?id=183763512", a.sPart, 1, 1)
  CreateSound("http://roblox.com/asset/?id=183763506", a.sPart, 1, 1)
  CreateSound("http://roblox.com/asset/?id=183763498", a.sPart, 1, 1)
  CreateSound("http://roblox.com/asset/?id=183763493", a.sPart, 1, 1)
  CreateSound("http://roblox.com/asset/?id=192410070", a.sPart, 1, 1)
  for i,v in pairs(FindNearestTorso(Torso.CFrame.p, 25)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, 7, 8, math.random(100, 150), 1, RootPart, 0.5)
    end
  end
end
supersmash = function()
  skill3 = true
  attack = true
  Character.Humanoid.WalkSpeed = 0
  Character.Humanoid.Jump = true
  for i = 0, 6, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 7.65) * angles(math.rad(8.7), math.rad(0), math.rad(0)), 0.1)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(20), math.rad(40), math.rad(0)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(100), math.rad(30), math.rad(50)), 0.1)
    RH.C0 = clerp(RH.C0, cn(1, 0, -0.8) * RHCF * angles(math.rad(-20), math.rad(0), math.rad(1)), 0.1)
    LH.C0 = clerp(LH.C0, cn(-1, -0.9, 0) * LHCF * angles(math.rad(1), math.rad(0), math.rad(-40)), 0.1)
    w.C0 = clerp(w.C0, CFrame.new(-0.55, 0, -0.3) * angles(math.rad(-100), math.rad(220), math.rad(0)), 0.5)
  end
  Character.Humanoid.Jump = true
  Torso.Velocity = Vector3.new(0, 200, 0)
  smashy()
  Character.Humanoid.WalkSpeed = 16
  for i = 0, 2, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.1)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(100), math.rad(-50), math.rad(50)), 0.1)
    RH.C0 = clerp(RH.C0, cn(1, -0.9, -0.3) * RHCF * angles(math.rad(3), math.rad(0), math.rad(0)), 0.1)
    LH.C0 = clerp(LH.C0, cn(-1, -0.7, -0.5) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.1)
    w.C0 = clerp(w.C0, CFrame.new(-0.55, -0.3, -0.4) * angles(math.rad(225), math.rad(-25), math.rad(30)), 0.5)
  end
  attack = false
  wait(cooldown3)
  skill3 = false
end
laser = function()
  local Part = Instance.new("Part")
  Part.Parent = a
  Part.Reflectance = 0
  Part.Transparency = 0
  Part.CanCollide = false
  Part.Locked = true
  Part.Anchored = true
  Part.Color = Color3.new(1, 1, 1)
  Part.Name = "laser"
  Part.Size = Vector3.new(1000, 1, 1)
  Part.Material = "Neon"
  Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
  Part.CFrame = a.bmPart.CFrame * CFrame.new(500, 0, 0)
  local con = Part.Touched:connect(function(hit)
    damage(hit, 7, 8, math.random(10, 15), 1, RootPart, 0.1)
  end)
  wait(0.01)
  Part.Parent = nil
end
bfg = function()
  stamina = 500
  skill4 = true
  Character.Humanoid.WalkSpeed = 0
  CreateSound("http://roblox.com/asset/?id=10209788", Player.Character:WaitForChild("WeaponModel").Model.bmPart, 1, 0.5)
  for i = 0, 6, 0.1 do
    swait()
    BM.C0 = clerp(BM.C0, a.Handle.CFrame:inverse() * a.bmPart.CFrame * angles(math.rad(45), math.rad(0), math.rad(0)), 1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -1.1 + 0.1 * math.cos(sine / sine)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(130), math.rad(0), math.rad(40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1.4 - 0.1 * math.cos(sine / sine), -0.5) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(-90 + 0 * math.cos(sine / sine))), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, 0.1 - 0.1 * math.cos(sine / sine), -0.9) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 0 * math.cos(sine / sine))), 0.3)
    w.C0 = clerp(w.C0, CFrame.new(0, 0.5, 0) * angles(math.rad(-90), math.rad(180), math.rad(0)), 0.5)
    for k,v in pairs(a:GetChildren()) do
      if v.Name == "bPart" and v.BrickColor ~= "Really black" then
        v.Color = Color3.new(i / 10 + 0.388235, 0.372549, 0.384314)
      end
    end
    local offset = (Torso.Position.y - mouse.Hit.p.y) / 60
    local mag = Torso.Position - mouse.Hit.p.magnitude / 80
    offset = offset / mag
    RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), 0.5)
  end
  for k,v in pairs(a:GetChildren()) do
    if (v.Name == "bPart" or v.Name == "gbPart") and v.BrickColor ~= "Really black" then
      v.Material = "Neon"
    end
  end
  for i = 0, 6, 0.1 do
    swait()
    BM.C0 = clerp(BM.C0, a.Handle.CFrame:inverse() * a.bmPart.CFrame * angles(math.rad(45), math.rad(0), math.rad(0)), 1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -1.1 + 0.1 * math.cos(sine / sine)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(130), math.rad(0), math.rad(40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1.4 - 0.1 * math.cos(sine / sine), -0.5) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(-90 + 0 * math.cos(sine / sine))), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, 0.1 - 0.1 * math.cos(sine / sine), -0.9) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 0 * math.cos(sine / sine))), 0.3)
    w.C0 = clerp(w.C0, CFrame.new(0, 0.5, 0) * angles(math.rad(-90), math.rad(180), math.rad(0)), 0.5)
    for k,v in pairs(a:GetChildren()) do
      if v.Name == "bPart" and v.BrickColor ~= "Really black" then
        v.Color = Color3.new(1, i / 20 + 0.384314, i / 20 + 0.384314)
      end
    end
    local offset = (Torso.Position.y - mouse.Hit.p.y) / 60
    local mag = Torso.Position - mouse.Hit.p.magnitude / 80
    offset = offset / mag
    RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), 0.5)
  end
  for i = 0, 10, 0.1 do
    swait()
    BM.C0 = clerp(BM.C0, a.Handle.CFrame:inverse() * a.bmPart.CFrame * angles(math.rad(45), math.rad(0), math.rad(0)), 1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -1.1 + 0.1 * math.cos(sine / sine)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(130), math.rad(0), math.rad(40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1.4 - 0.1 * math.cos(sine / sine), -0.5) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(-90 + 0 * math.cos(sine / sine))), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, 0.1 - 0.1 * math.cos(sine / sine), -0.9) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 0 * math.cos(sine / sine))), 0.3)
    w.C0 = clerp(w.C0, CFrame.new(0, 0.5, 0) * angles(math.rad(-90), math.rad(180), math.rad(0)), 0.5)
    local offset = Torso.Position.y - mouse.Hit.p.y
    local mag = Torso.Position - mouse.Hit.p.magnitude
    offset = offset / mag
    RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), 0.5)
    CreateSound("http://roblox.com/asset/?id=10209658", Player.Character:WaitForChild("WeaponModel").Model.bmPart, 1, 1)
    laser()
    stamina = stamina - 4.8
  end
  CreateSound("http://roblox.com/asset/?id=10209786", Player.Character:WaitForChild("WeaponModel").Model.bmPart, 1, 0.5)
  for k,v in pairs(a:GetChildren()) do
    if (v.Name == "bPart" or v.Name == "gbPart") and v.BrickColor ~= "Really black" then
      v.Material = "Plastic"
      v.Color = Color3.new(0.388235, 0.372549, 0.384314)
    end
  end
  for i = 0, 6, 0.1 do
    swait()
    BM.C0 = clerp(BM.C0, a.Handle.CFrame:inverse() * a.bmPart.CFrame * angles(math.rad(45), math.rad(0), math.rad(0)), 1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -1.1 + 0.1 * math.cos(sine / sine)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(130), math.rad(0), math.rad(40)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1.4 - 0.1 * math.cos(sine / sine), -0.5) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(-90 + 0 * math.cos(sine / sine))), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, 0.1 - 0.1 * math.cos(sine / sine), -0.9) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 0 * math.cos(sine / sine))), 0.3)
    w.C0 = clerp(w.C0, CFrame.new(0, 0.5, 0) * angles(math.rad(-90), math.rad(180), math.rad(0)), 0.5)
    local offset = Torso.Position.y - mouse.Hit.p.y
    local mag = Torso.Position - mouse.Hit.p.magnitude
    offset = offset / mag
    RW.C1 = clerp(RW.C1, cn(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), 0.5)
  end
  Character.Humanoid.WalkSpeed = 16
  for i = 0, 1.5, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(100), math.rad(-50), math.rad(50)), 0.1)
    RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.cos(sine / 25), 0) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 2 * math.cos(sine / sine))), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.cos(sine / 25), 0) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 2 * math.cos(sine / sine))), 0.3)
    w.C0 = clerp(w.C0, CFrame.new(-0.55, -0.3, -0.4) * angles(math.rad(225), math.rad(-25), math.rad(30)), 0.5)
  end
  skill4 = false
  spinUp = false
end
Shoot = function(asd, spread1, spread2)
  local MainPos = asd.Position
  local MainPos2 = mouse.Hit.p
  local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * asd.Position - mouse.Hit.p.magnitude / 100
  local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2 + spread)
  num = 10
  coroutine.resume(coroutine.create(function(Spreaded)
    repeat
      local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, user)
      local TheHit = mouse.Hit.p
      local mag = MainPos - pos.magnitude
      CylinderEffect(BrickColor.new(Torso.BrickColor.Color), CFrame.new((MainPos + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 1.5, 0.5)
      MainPos = MainPos + MouseLook.lookVector * 10
      num = num - 1
      if hit ~= nil and hit.Name ~= "Effect" then
        num = 0
        damage(hit, 0.7, 1.3, 0, 1, RootPart, 0.1)
      end
    until num <= 0
  end))
end
spin = function()
  attack = true
  local stest = 0
  for i,v in pairs(a.bmPart:GetChildren()) do
    v.Volume = 0
    v.Parent = game.Lighting
    v.Parent = nil
  end
  Character.Humanoid.WalkSpeed = 5
  defense.Value = 1.4
  while 1 do
    while 1 do
      while 1 do
        if wait() then
          if spinUp == true then
            local aim = CFrame.new(RootPart.Position, mouse.Hit.p)
            local direction = aim.lookVector
            local headingA = math.atan2(direction.x, direction.z)
            headingA = math.deg(headingA)
            local offset = CFrame.new(Torso.Position, RootPart.Position)
            local directionO = offset.lookVector
            local headingO = math.atan2(directionO.x, directionO.z)
            headingO = math.deg(headingO)
            local heading = math.floor(headingA) - math.floor(headingO)
            local limit = lim - headingO
            lim = headingO
            local fol = CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(headingA - 215), math.rad(0))
            Humanoid.AutoRotate = false
            RootPart.CFrame = CFrame.new(RootPart.Position) * angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
            BM.C0 = clerp(BM.C0, a.Handle.CFrame:inverse() * a.bmPart.CFrame * angles(math.rad(45), math.rad(0), math.rad(0)), 1)
            if skill4 == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(-35)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(30)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(35), math.rad(0), math.rad(0)), 0.5)
              LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(80), math.rad(-70), math.rad(50)), 0.5)
            end
            if stest == 0 then
              CreateSound("http://roblox.com/asset/?id=10209788", Player.Character:WaitForChild("WeaponModel").Model.bmPart, 1, 1)
              stest = 1
            end
            local p = a.bmPart:FindFirstChild("Sound")
            if p ~= nil and stest == 1 and p.TimePosition > 0.953 then
              CreateSound("http://roblox.com/asset/?id=10209780", a.bmPart, 0.799, 1, true, true)
              stest = 2
              spining = true
            end
            -- DECOMPILER ERROR at PC365: Unhandled construct in 'MakeBoolean' P1

            if stest ~= 2 or Torsovelocity > 2 and skill4 == false then
              RH.C0 = clerp(RH.C0, cn(1, -1 + 0.1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 15))), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 15))), 0.3)
              -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC406: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
      if Torsovelocity > 2 or skill4 == false then
        RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.cos(sine / 25), 0) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 2 * math.cos(sine / sine))), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.cos(sine / 25), 0) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 2 * math.cos(sine / sine))), 0.3)
      end
    end
    do
      if spinUp == false then
        attack = false
        Humanoid.AutoRotate = true
        for i,v in pairs(a.bmPart:GetChildren()) do
          v.Volume = 0
          v.Parent = game.Lighting
          game:GetService("Debris"):AddItem(v, 6)
        end
        spining = false
        Character.Humanoid.WalkSpeed = 16
        defense.Value = defensevalue
        CreateSound("http://roblox.com/asset/?id=10209786", Player.Character:WaitForChild("WeaponModel").Model.Handle, 1, 1)
        break
      end
      -- DECOMPILER ERROR at PC561: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
fire = function()
  local fSound = 0
  coroutine.resume(coroutine.create(function()
    while wait() do
      if shooting == true and spining == true and stamina < maxstamina then
        if fSound == 0 then
          for i,v in pairs(a.hbPart:GetChildren()) do
            if v.Name == "Sound" then
              v.Volume = 0
              v.Parent = game.Lighting
              game:GetService("Debris"):AddItem(v, 6)
            end
          end
          CreateSound("http://roblox.com/asset/?id=10209776", a.hbPart, 1, 1, true, true)
          fSound = 1
        end
        stamina = stamina + 1
        Shoot(a.sPart, 1, 1)
      end
      if maxstamina <= stamina and fSound == 1 and spining == true then
        for i,v in pairs(a.hbPart:GetChildren()) do
          if v.Name == "Sound" then
            v.Volume = 0
            v.Parent = game.Lighting
            game:GetService("Debris"):AddItem(v, 6)
          end
        end
        CreateSound("http://roblox.com/asset/?id=10209225", a.hbPart, 1, 0.8, true, true)
        fSound = 0
      end
      if spining == false then
        for i,v in pairs(a.hbPart:GetChildren()) do
          if v.Name == "Sound" then
            v.Volume = 0
            v.Parent = game.Lighting
            game:GetService("Debris"):AddItem(v, 6)
          end
        end
        fSound = 0
      end
      if shooting == false then
        for i,v in pairs(a.hbPart:GetChildren()) do
          if v.Name == "Sound" then
            v.Volume = 0
            v.Parent = game.Lighting
            game:GetService("Debris"):AddItem(v, 6)
          end
        end
        break
      end
    end
  end))
end
subtractstamina = function(k)
  if stamina <= maxstamina - k then
    stamina = stamina + k
  end
end
mouse.Button1Down:connect(function()
  shooting = true
  fire()
  if attack == false then
    if attacktype == 1 then
      attackone()
      attacktype = 2
    else
      if attacktype == 2 then
        attacktwo()
        attacktype = 1
      end
    end
  end
end)
mouse.Button1Up:connect(function()
  shooting = false
end)
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "e" and skill4 == false then
    if spinUp == false and attack == false then
      spinUp = true
      spin()
    else
      spinUp = false
    end
  else
    -- DECOMPILER ERROR at PC38: Unhandled construct in 'MakeBoolean' P1

    if k == "c" and attack == false and co3 <= cooldown3 and stamina <= maxstamina - skill3stam then
      cooldown3 = 0
      supersmash()
    end
  end
  if k == "v" and maxstamina <= stamina and spinUp == true and co4 <= cooldown4 then
    cooldown4 = 0
    bfg()
  end
end)
mouse.KeyUp:connect(function(k)
  k = k:lower()
  if attack ~= true or k == "" then
  end
end)
updateskills = function()
  -- DECOMPILER ERROR at PC14: Unhandled construct in 'MakeBoolean' P1

  if (cooldown1 <= co1 and cooldown2 > co2) or cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.033333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.033333333333333
  end
  if stamina <= skill1stam then
    bar4.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar4.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill2stam then
    bar3.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar3.BackgroundColor3 = skillcolorscheme
  end
  if maxstamina - skill3stam <= stamina then
    bar1.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar1.BackgroundColor3 = skillcolorscheme
  end
  if stamina < maxstamina then
    bar2.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar2.BackgroundColor3 = skillcolorscheme
  end
  if stamina > 0 then
    staminacover.BackgroundColor3 = Color3.new(stamina * 2 / maxstamina, (maxstamina - stamina) / maxstamina ^ 0.25, 0)
    if stamina > 250 then
      for k,v in pairs(a:GetChildren()) do
        if v.Name == "gbPart" then
          v.Color = Color3.new((stamina - 200) / 300 + 0.388235, 0.372549, 0.384314)
        end
      end
    else
      do
        for k,v in pairs(a:GetChildren()) do
          if v.Name == "gbPart" then
            v.Color = Color3.new(0.388235, 0.372549, 0.384314)
          end
        end
        do
          if spinUp == false then
            stamina = stamina + recovermana
          end
        end
      end
    end
  end
end
game:GetService("RunService").Stepped:connect(function()
  updateskills()
  healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if RootPart.Velocity.y > 1 and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.1)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(100), math.rad(-50), math.rad(50)), 0.1)
        RH.C0 = clerp(RH.C0, cn(1, -0.9, -0.3) * RHCF * angles(math.rad(3), math.rad(0), math.rad(0)), 0.1)
        LH.C0 = clerp(LH.C0, cn(-1, -0.7, -0.5) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.1)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.5)
          LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(100), math.rad(-50), math.rad(50)), 0.1)
          RH.C0 = clerp(RH.C0, cn(1, -1, -0.3) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.1)
          LH.C0 = clerp(LH.C0, cn(-1, -0.8, -0.3) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.1)
        end
      else
        if Torsovelocity < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(50)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.5)
            LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(100), math.rad(-50), math.rad(50)), 0.1)
            RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.cos(sine / 25), 0) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 2 * math.cos(sine / sine))), 0.3)
            LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.cos(sine / 25), 0) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / sine)), math.rad(5), math.rad(0 + 2 * math.cos(sine / sine))), 0.3)
          end
        else
          if Torsovelocity > 2 and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + 0.1 * math.cos(sine / 5)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(-50 + 1 * math.cos(sine / 10))), 0.2)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(50 - 1 * math.cos(sine / 5)) + RootPart.RotVelocity.Y / 9), 0.2)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.1) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.5)
              LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(100), math.rad(-50), math.rad(50)), 0.1)
              RH.C0 = clerp(RH.C0, cn(1, -1 + 0.1 * math.cos(sine / 3), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1, -1 + 0.1 * math.cos(sine / 3), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 10))), 0.3)
            end
          end
        end
      end
    end
  end
  if #Effects > 0 then
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
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              local Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            else
              do
                if Thing[2] == "Block2" then
                  Thing[1].CFrame = Thing[1].CFrame
                  local Mesh = Thing[7]
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  do
                    if Thing[2] == "Cylinder" then
                      local Mesh = Thing[1].Mesh
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      do
                        if Thing[2] == "Blood" then
                          local Mesh = Thing[7]
                          Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                          Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        else
                          do
                            if Thing[2] == "Elec" then
                              local Mesh = Thing[1].Mesh
                              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                            else
                              do
                                do
                                  if Thing[2] == "Disappear" then
                                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                  else
                                    if Thing[2] == "Shatter" then
                                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                      Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                                      Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                                      Thing[6] = Thing[6] + Thing[5]
                                    end
                                  end
                                  Part.Parent = nil
                                  table.remove(Effects, e)
                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out DO_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out DO_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out DO_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out DO_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out DO_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                  -- DECOMPILER ERROR at PC1182: LeaveBlock: unexpected jumping out IF_STMT

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
          end
        end
      end
    end
  end
end)

