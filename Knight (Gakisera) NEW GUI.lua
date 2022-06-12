wait(0.016666666666666666)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local effect = Instance.new("Model", Character)
effect.Name = "Effect"
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
local mananum = 0
xenabled = true
cenabled = true
venabled = true
zenabled = true
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
vt = Vector3.new
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it = Instance.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
RSH, LSH = nil, nil
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
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "LW"
LW.Part0 = Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso
function clerp(a, b, t)
  return a:lerp(b, t)
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({
    Parent = Parent,
    Reflectance = Reflectance,
    Transparency = Transparency,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(BColor)),
    Name = Name,
    Size = Size,
    Material = Material
  })
  RemoveOutlines(Part)
  return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({
    Parent = Part,
    Offset = OffSet,
    Scale = Scale
  })
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if tf >= frame then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end)
function swait(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({
    Parent = Parent,
    Part0 = Part0,
    Part1 = Part1,
    C0 = C0,
    C1 = C1
  })
  return Weld
end
it = Instance.new
local co1 = 20
local co2 = 10
local co3 = 15
local co4 = 45
local cooco = 50
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local coolcool = 0
local skill1stam = 10
local skill2stam = 50
local skill3stam = 60
local skill4stam = 100
local skill5stam = 100
local recovermana = 5
local skillcolorscheme = BrickColor.new("Pastel blue-green").Color
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end
function makelabel(par, text)
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = UDim2.new(1, 0, 1, 0)
  label.Position = UDim2.new(0, 0, 0, 0)
  label.TextColor3 = Color3.new(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansLight
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end
framesk1 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.85, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.74, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.63, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.52, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = Instance.new("TextLabel", framesk1)
text1.BackgroundTransparency = 1
text1.Size = UDim2.new(1, 0, 1, 0)
text1.Position = UDim2.new(0, 0, 0, 0)
text1.TextColor3 = Color3.new(255, 255, 255)
text1.TextStrokeTransparency = 0
text1.FontSize = Enum.FontSize.Size18
text1.Font = Enum.Font.SourceSansLight
text1.BorderSizePixel = 0
text1.TextScaled = true
text1.Text = [[
[Z]
 Pure Teleportation]]
text2 = Instance.new("TextLabel", framesk2)
text2.BackgroundTransparency = 1
text2.Size = UDim2.new(1, 0, 1, 0)
text2.Position = UDim2.new(0, 0, 0, 0)
text2.TextColor3 = Color3.new(255, 255, 255)
text2.TextStrokeTransparency = 0
text2.FontSize = Enum.FontSize.Size18
text2.Font = Enum.Font.SourceSansLight
text2.BorderSizePixel = 0
text2.TextScaled = true
text2.Text = [[
[X]
 Purity Storm]]
text3 = Instance.new("TextLabel", framesk3)
text3.BackgroundTransparency = 1
text3.Size = UDim2.new(1, 0, 1, 0)
text3.Position = UDim2.new(0, 0, 0, 0)
text3.TextColor3 = Color3.new(255, 255, 255)
text3.TextStrokeTransparency = 0
text3.FontSize = Enum.FontSize.Size18
text3.Font = Enum.Font.SourceSansLight
text3.BorderSizePixel = 0
text3.TextScaled = false
text3.Text = [[
[C]
 Purity Strike]]
text4 = Instance.new("TextLabel", framesk4)
text4.BackgroundTransparency = 1
text4.Size = UDim2.new(1, 0, 1, 0)
text4.Position = UDim2.new(0, 0, 0, 0)
text4.TextColor3 = Color3.new(255, 255, 255)
text4.TextStrokeTransparency = 0
text4.FontSize = Enum.FontSize.Size18
text4.Font = Enum.Font.SourceSansLight
text4.BorderSizePixel = 0
text4.TextScaled = true
text4.Text = [[
[V]
 Repent]]
function rayCast(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
function CreateSound(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end))
end
local function getclosest(obj, distance)
  local last, lastx = distance + 1, nil
  for i, v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = (t.Position - obj.Position).magnitude
      if distance >= dist and last > dist then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end
function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    local c = Create("ObjectValue")({
      Name = "creator",
      Value = game:service("Players").LocalPlayer,
      Parent = h
    })
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CreateSound(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
        swait(1)
        HHumanoid.PlatformStand = false
      end), hum)
      local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
      local bodvol = Create("BodyVelocity")({
        velocity = angle * knockback,
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      local rl = Create("BodyAngularVelocity")({
        P = 3000,
        maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
        angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Normal" then
      local vp = Create("BodyVelocity")({
        P = 500,
        maxForce = Vector3.new(math.huge, 0, math.huge),
        velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      })
      if knockback > 0 then
        vp.Parent = hit.Parent.Torso
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif Type == "Up" then
      local bodyVelocity = Create("BodyVelocity")({
        velocity = vt(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
    elseif Type == "DarkUp" then
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.1 do
          swait()
          BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
        end
      end))
      local bodyVelocity = Create("BodyVelocity")({
        velocity = vt(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Snare" then
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Freeze" then
      local BodPos = Create("BodyPosition")({
        P = 50000,
        D = 1000,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      local BodGy = Create("BodyGyro")({
        maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
        P = 20000,
        Parent = hit.Parent.Torso,
        cframe = hit.Parent.Torso.CFrame
      })
      hit.Parent.Torso.Anchored = true
      coroutine.resume(coroutine.create(function(Part)
        swait(1.5)
        Part.Anchored = false
      end), hit.Parent.Torso)
      game:GetService("Debris"):AddItem(BodPos, 3)
      game:GetService("Debris"):AddItem(BodGy, 3)
    end
    local debounce = Create("BoolValue")({
      Name = "DebounceHit",
      Parent = hit.Parent,
      Value = true
    })
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
  end
end
function ShowDamage(Pos, Text, Time, Color)
  local Rate = 0.03333333333333333
  local Pos = Pos or Vector3.new(0, 0, 0)
  local Text = Text or ""
  local Time = Time or 2
  local Color = Color or Color3.new(1, 0, 1)
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({
    Size = UDim2.new(3, 0, 3, 0),
    Adornee = EffectPart,
    Parent = EffectPart
  })
  local TextLabel = Create("TextLabel")({
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Text = Text,
    TextColor3 = Color,
    TextScaled = true,
    Font = Enum.Font.ArialBold,
    Parent = BillboardGui
  })
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
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
  end)
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type, ID)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=" .. ID, 1)
        end
      end
    end
  end
end
function MagniDamage2(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=199149221", 1)
        end
      end
    end
  end
end
function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {
      prt,
      "Block1",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  elseif Type == 2 then
    table.insert(Effects, {
      prt,
      "Block2",
      delay,
      x3,
      y3,
      z3,
      msh
    })
  end
end
function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh, (math.random(0, 1) + math.random()) / 5)
end
function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function SlashEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=448386996", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh, (math.random(0, 1) + math.random()) / 5)
end
function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Cylinder",
    delay,
    x3,
    y3,
    z3,
    msh
  })
end
function BreakEffect(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {
    prt,
    "Shatter",
    num,
    prt.CFrame,
    math.random() - math.random(),
    0,
    math.random(50, 100) / 100
  })
end
Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "FakeHandle", Vector3.new(0.209999964, 2.47000051, 0.210000098))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.954962969, 0.124997139, 0.0483036041, 3.26636873E-5, -1, -9.29513355E-10, -4.31581502E-5, -4.80190998E-10, -1, 1, 3.26636873E-5, -4.31581502E-5))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "FakeHandle", Vector3.new(0.209999964, 2.47000051, 0.210000098))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.210000575, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.07000017, -1.51000023, -1.01089478E-4, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1, 1.10000002))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.269999892, 0.250000685, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.69141531, -0.351466775, 0.00504875183, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(6.36999989, 0.350000679, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.94141245, 0.298535109, 0.00514984131, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.680000305, 0.350000679, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.73901224, 5.92544556, 0.00482368469, 0.707070887, 0.70714277, 3.77016768E-5, 0.70714277, -0.707070827, -5.3613112E-5, -1.12543603E-5, 6.45687396E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.240000725, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.873248935, 1.15607548, 0.0299739838, 0.707070887, 0.70714277, 3.77016768E-5, 0.70714277, -0.707070827, -5.3613112E-5, -1.12543603E-5, 6.45687396E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(6.36999989, 0.350000679, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.94141197, 0.296805978, -0.00483131409, 1.92629956E-9, 1, 7.3674797E-5, -1, 4.0164414E-9, -2.8368675E-5, -2.8368675E-5, -7.3674797E-5, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Part", Vector3.new(0.680000305, 0.200000003, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.73998213, 4.31269073, 4.30618477, -0.707100451, 0.707113087, 8.41308211E-5, -0.500024736, -0.499931633, -0.707137764, -0.499984294, -0.500059485, 0.707075953))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.349999994, 0.349999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.210000575, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00999749, -1.51000023, -3.24249268E-5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1, 1.10000002))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.820000708, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.51000023, 0.635001779, 8.39233398E-5, 1.92629956E-9, 1, 7.3674797E-5, -1, 4.0164414E-9, -2.8368675E-5, -2.8368675E-5, -7.3674797E-5, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.339999974, 0.310000002, 0.230000019))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.46499395, 0.00499796867, -0.00513267517, 3.91968946E-9, 1, 1.3470251E-4, 1, 4.79829343E-10, -3.26553054E-5, -3.26553054E-5, 1.3470251E-4, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 3))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.209999964, 2.47000051, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.810000658, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.51000023, -0.640000105, 5.7220459E-6, 1.92629956E-9, 1, 7.3674797E-5, -1, 4.0164414E-9, -2.8368675E-5, -2.8368675E-5, -7.3674797E-5, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Part", Vector3.new(6.67000008, 0.200000003, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.79141092, 0.327487946, 0.335111618, -1.75938719E-9, 1, -3.91626454E-5, 0.707132816, 2.76923965E-5, 0.707080722, 0.707080781, -2.76919527E-5, -0.707132816))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.349999994, 0.349999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.640000582, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.914999723, 0, -2.86102295E-5, 1.92629956E-9, 1, 7.3674797E-5, -1, 4.0164414E-9, -2.8368675E-5, -2.8368675E-5, -7.3674797E-5, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.290000588, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.914999962, -0.00496864319, -2.38418579E-7, 1.99638395E-9, 1, 7.5820426E-5, 1.04939791E-5, 7.5820426E-5, -1, -1, 2.79204171E-9, -1.04939791E-5))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.37641573, 0.00353312492, 0.00506973267, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.36640215, 0.00353312492, 0.00522232056, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Part", Vector3.new(0.680000305, 0.200000003, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.73857307, 4.30648804, 4.31436348, 0.707122087, 0.70709157, -4.6048066E-5, 0.500017762, -0.499993294, 0.707098961, 0.499960661, -0.500028312, -0.707114577))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.349999994, 0.349999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.269999892, 0.250000685, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.69141531, 0.348534107, 0.00504875183, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.229999989, 0.359999806, 0.230000019))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00505638123, 1.69396782, -0.185147405, 6.31807998E-5, -1.26401064E-5, 1, 3.05181093E-5, -1, -1.26420346E-5, 1, 3.05189096E-5, -6.31804141E-5))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.449999988, 0.400000006, 0.550000012))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.88641405, 0.00353312492, 0.00508499146, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.85640955, 0.00353312492, 0.00520706177, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.680000305, 0.350000679, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.74009323, 5.92436028, -0.00534820557, -0.707087398, 0.70712626, 5.08724588E-5, -0.7071262, -0.707087338, 4.88799087E-5, 7.05355342E-5, -1.4108773E-6, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.83641577, 0.00353312492, 0.00511360168, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.86641836, 0.00353312492, 0.00505447388, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Part", Vector3.new(6.67000008, 0.200000003, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.79139757, 0.333590508, 0.326548576, 8.39953052E-10, 0.999997258, 4.04162165E-5, -0.707107663, 3.32596901E-5, -0.70710218, -0.707099378, -3.05167996E-5, 0.707107663))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.349999994, 0.349999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.34641123, 0.00353312492, 0.00513076782, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.78640413, 0.00353312492, 0.005235672, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.229999989, 0.359999806, 0.230000019))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0049533844, 1.69397926, -0.18485117, -2.14657484E-6, 7.3676194E-5, -1, 3.05161175E-5, -1, -7.36762595E-5, -1, -3.05162757E-5, 2.14432657E-6))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.449999988, 0.400000006, 0.550000012))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.34641123, 0.00353312492, 0.00519180298, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.39641333, 0.00353312492, 0.00510025024, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.83641291, 0.00353312492, 0.00517463684, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.240000725, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.21970224, -0.965162754, -0.0300598145, 0.707087398, 0.70712626, 4.68029612E-6, -0.70712626, 0.707087398, -2.68303847E-6, -5.20662797E-6, -1.41241617E-6, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.240000725, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.23390102, -0.950969219, 0.0301017761, -0.707103848, 0.707109749, -2.87066287E-5, 0.707109749, 0.707103908, 7.42527664E-6, 2.55490522E-5, -1.50483029E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.33641291, 0.00353312492, 0.00515937805, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.82641077, 0.00353312492, 0.00514411926, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.240000725, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.887447834, 1.14186776, -0.0300674438, -0.707087398, 0.70712626, 5.08724588E-5, -0.7071262, -0.707087338, 4.88799087E-5, 7.05355342E-5, -1.4108773E-6, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.200000733, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.04292846, -1.0653758, -0.0300636292, 0.707087398, 0.70712626, 4.68029612E-6, -0.70712626, 0.707087398, -2.68303847E-6, -5.20662797E-6, -1.41241617E-6, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Hitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 1, "Institutional white", "Hitbox", Vector3.new(6.97999954, 0.960000634, 0.200000092))
HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.05641317, 0.0435330868, 0.0051612854, -6.73336942E-11, 1, 1.26396408E-5, 1, 4.80150808E-10, -3.2662756E-5, -3.2662756E-5, 1.26396408E-5, -1))
MagniHit = CreatePart(m, Enum.Material.Plastic, 0, 1, "Medium stone grey", "MagniHit", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MagniHitWeld = CreateWeld(m, Character.HumanoidRootPart, MagniHit, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.01003361, -0.230025291, 0.070048213, 0, 0, -1, 0, 1, 0, 1, 0, 0))
function IceMortar()
  cooldown1 = cooldown1 - 5
  local dacf = Handle.CFrame * angles(-1.57 + math.random(40, 80) / 100, 0, math.random(-80, 80) / 100)
  local icepart1 = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Cyan"), "Ice", vt())
  icepart1.Anchored = true
  i1msh = CreateMesh("SpecialMesh", icepart1, "Sphere", "", vt(0, 0, 0), vt(5, 5, 5))
  icepart1.CFrame = dacf
  for i = 0, 1, 0.1 do
    swait()
    icepart1.CFrame = dacf
  end
  local cfinc = 99999
  icepart1.Transparency = 1
  CreateSound("rbxassetid://334325056", icepart1, 1, 1)
  game:GetService("Debris"):AddItem(icepart1, 1)
  local spread = vt((math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16) * (icepart1.Position - (icepart1.Position + vt(0, -1, 0))).magnitude / 100
  local TheHit = mouse.Hit.p
  local MouseLook = cf((icepart1.Position + TheHit) / 2, TheHit + spread)
  local hit, pos = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
  local target1, distance1 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
  local test1, dist1 = mouse.Hit.p, nil
  if target1 ~= nil then
    cfda = target1.Position + vt(math.random(-3000, 3000) / 100, 20, math.random(-3000, 3000) / 100)
    local hit2, pos2 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
    local d1 = CreatePart(effect, "SmoothPlastic", 0, 0.5, BrickColor.new("White"), "Effect", vt())
    d1.Anchored = true
    d1.CFrame = cf(pos2)
    MagniDamage(d1, 10, 12, 15, -10, "Normal", "231917784")
    SphereEffect(BrickColor.new("White"), cf(pos2), 100, 100, 100, 10, 10, 10, 0.07)
    msh = CreateMesh("SpecialMesh", d1, "Sphere", "", vt(0, 0, 0), vt(80, 80, 80))
    d2 = d1:Clone()
    d2.Parent = d1
    d2.CFrame = cf(d1.Position)
    d2.BrickColor = BrickColor.new("Toothpaste")
    d2.Mesh.Scale = vt(0, 5, 0)
    table.insert(Effects, {
      d1,
      "SatelliteStrike",
      d2,
      d2.Mesh,
      0
    })
  end
end
function attackone()
  attack = true
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(100), math.rad(-80)), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(100), math.rad(-80)), 0.3)
  end
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(120)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
  end
  MagniDamage(MagniHit, 6, 13, 15, 0, "Normal", "199149221")
  CreateSound("rbxassetid://231917950", Torso, 1, 2)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.7)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
  end
  attack = false
end
local huphup = false
function Counter()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(80), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(70), math.rad(20)), 0.3)
  end
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(-10), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(80), math.rad(-150)), 0.3)
  end
  ripostestance = true
  con1 = Torso.Touched:connect(function(hit)
    if hit.Parent.Parent:findFirstChild("Torso") ~= nil then
      hit = hit.Parent.Parent.Torso
    end
    if hit.Parent:findFirstChild("Torso") ~= nil and hit ~= Character and ripostestance == true then
      RiposteAttack(hit)
    end
  end)
  coroutine.resume(coroutine.create(function()
    while ripostestance == true do
      swait()
      if Humanoid:findFirstChild("creator") ~= nil then
        Targ = Humanoid.creator.Value
        if Targ.Character ~= nil then
          RiposteAttack(Targ.Character.Torso)
          ripostestance = false
          attack = false
        elseif Targ:findFirstChild("Torso") ~= nil then
          RiposteAttack(Targ.Torso)
          ripostestance = false
          attack = false
        end
      end
    end
  end))
  huphup = true
end
function RiposteAttack(hit)
  ripostestance = false
  attack = true
  Humanoid.WalkSpeed = 0
  Tors = hit.Parent.Torso
  cooldown4 = 0
  print("boop")
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  BlockEffect(BrickColor.new("Toothpaste"), Torso.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 3, 3, 1, 1, 1, 0.02, 1)
  local LastPoint = Torso.CFrame
  local Point = Torso.CFrame
  Torso.CFrame = Tors.CFrame * cf(0, 0, 5)
  BlockEffect(BrickColor.new("White"), Torso.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 3, 3, 1, 1, 1, 0.02, 1)
  CreateSound("http://roblox.com/asset/?id=2767090", Torso, 1, 1.5)
  swait(10)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.002, 0.002, 0.07)
  if Character.Humanoid == nil then
    MagniDamage2(Tors, 10, 30, 50, "Knockdown")
  else
    MagniDamage2(Tors, 10, 30, 50, "Knockdown")
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.7)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.7)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.7)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.7)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=161006195", Torso, 1, 1)
  CreateSound("rbxasset://sounds\\unsheath.wav", Torso, 1, 1.5)
  CreateSound("http://www.roblox.com/asset/?id=28144425", Tors, 1, 1)
  CreateSound("http://www.roblox.com/asset/?id=28144425", Tors, 1, 0.7)
  swait(10)
  attack = false
  huphup = false
  Humanoid.WalkSpeed = 16
end
function attacktwo()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
  end
  CreateSound("rbxassetid://231917950", Torso, 1, 2.3)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.47, 0), 0.001, 0.1, 0.1, 0, 0.002, 0.002, 0.07)
  MagniDamage(MagniHit, 6, 13, 15, 0, "Normal", "199149221")
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.7)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
  end
  attack = false
end
function PurityStorm()
  attack = true
  for i = 1, 5 do
    swait()
    CreateSound("rbxassetid://231917950", Torso, 1, 2.5)
    SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.47, 0), 0.001, 0.1, 0.1, 0, 0.002, 0.002, 0.07)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.7)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-100)), 0.7)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
    end
    MagniDamage(MagniHit, 6, 13, 15, 0, "Normal", "199149221")
    CreateSound("rbxassetid://231917950", Torso, 1, 2.7)
    SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.7)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(30)), 0.7)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
    end
  end
  attack = false
end
function TakeDown()
  attack = true
  for i = 0, 1, 0.05 do
    swait()
    if i <= 0.5 then
      WaveEffect(BrickColor.new("White"), RootPart.CFrame, 20, 5, 20, -1, 0, -1, 0.07)
    end
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.8, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -1) * angles(math.rad(170), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 10, 10, 33, 0, "Normal", "199149221")
  CreateSound("rbxassetid://231917950", Torso, 1, 1.3)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), -0.5, 0), 0.002, 0.15, 0.15, 0, 0.002, 0.002, 0.07)
  SlashEffect(BrickColor.new("Toothpaste"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), -0.5, 0), 0.002, 0.15, 0.15, 0, 0.005, 0.002, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, -0.5) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.4, -0.5) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  attack = false
end
function attackthree()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  MagniDamage(MagniHit, 6, 7, 13, 0, "Normal", "199149221")
  CreateSound("rbxassetid://231917950", Torso, 1, 1.5)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.002, 0.002, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.7)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.7)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.7)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.7)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  attack = false
end
function ob1u()
end
function ob1d()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
    attackthree()
  end
end
function key(k)
  k = k:lower()
  if attack == false and k == "z" and cooldown1 >= 5 then
    IceMortar()
  elseif attack == false and k == "x" and cooldown2 >= co2 then
    cooldown2 = 0
    PurityStorm()
  elseif attack == false and k == "c" and cooldown3 >= co3 then
    cooldown3 = 0
    TakeDown()
  elseif attack == false and k == "v" and huphup == false and cooldown4 >= co4 then
    Counter()
  elseif attack == true and k == "v" and huphup == true then
    huphup = false
    attack = false
    ripostestance = false
    Humanoid.WalkSpeed = 16
  end
end
Bin = Instance.new("HopperBin", Player.Backpack)
Bin.Name = "Gakisera"
function ds(mouse)
end

function s(mouse)
  print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end)
  mouse.KeyDown:connect(key)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
function updateskills()
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.03333333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.03333333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.03333333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.03333333333333333
  end
end
while true do
  swait()
  updateskills()
  bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(10), math.rad(-5), math.rad(-30)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.2, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(50), math.rad(120)), 0.3)
      end
    elseif RootPart.Velocity.y < -1 and hit == nil then
      Anim = "Fall"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(10), math.rad(-5), math.rad(-30)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(-10)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.2, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(50), math.rad(120)), 0.3)
      end
    elseif Torsovelocity < 1 and hit ~= nil then
      Anim = "Idle"
      if attack == false then
        change = 1
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 - 0.1 * math.cos(sine / 9)) * angles(math.rad(20), math.rad(-20), math.rad(-80)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10 + 1 * math.cos(sine / 9)), math.rad(-10 + 1 * math.cos(sine / 9)), math.rad(80)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.2, -0.5) * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1.2 + 0.1 * math.cos(sine / 9), 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(20)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1.3, -1 + 0.1 * math.cos(sine / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(70 - 1 * math.cos(sine / 9)), math.rad(70)), 0.3)
      end
    elseif Torsovelocity > 2 and hit ~= nil then
      Anim = "Walk"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 - 0.1 * math.cos(sine / 9)) * angles(math.rad(10), math.rad(-5), math.rad(-30)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5 + 1 * math.cos(sine / 9)), math.rad(-10 + 1 * math.cos(sine / 9)), math.rad(30)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.2, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0 + 0.5 * math.cos(sine / 5)) * RHCF * angles(math.rad(0), math.rad(0), math.rad(10 - 50 * math.cos(sine / 5))), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5 - 0.5 * math.cos(sine / 5)) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-10 - 50 * math.cos(sine / 5))), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(50 - 1 * math.cos(sine / 9)), math.rad(120)), 0.3)
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
          if 1 >= Thing[1].Transparency then
            if Thing[2] == "SatelliteStrike" then
              if Thing[5] < 80 then
                Thing[5] = Thing[5] + 1
                Thing[4].Scale = vt(Thing[5], Thing[5], Thing[5])
              else
                refda = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Reference", vt())
                refda.Anchored = true
                refda.CFrame = cf(Thing[1].Position)
                game:GetService("Debris"):AddItem(refda, 1)
                CreateSound("rbxassetid://334325056", refda, 1, 1)
                MagniDamage(refda, 20, 5, 8, 0, "Normal", "231917784")
                Torso.CFrame = cf(refda.Position)
                BlockEffect(BrickColor.new("Toothpaste"), cf(refda.Position), 120, 120, 120, -5, -5, -5, 0.07, 1)
                RingEffect(BrickColor.new("Teal"), cf(refda.Position) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 0, 3, 3, 0, 0.07)
                RingEffect(BrickColor.new("Teal"), cf(refda.Position) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 0, 3, 3, 0, 0.07)
                RingEffect(BrickColor.new("Teal"), cf(refda.Position) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 0, 3, 3, 0, 0.07)
                cooldown1 = 0
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Block2" then
              Thing[1].CFrame = Thing[1].CFrame
              Mesh = Thing[7]
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Cylinder" then
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Blood" then
              Mesh = Thing[7]
              Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Elec" then
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Disappear" then
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            elseif Thing[2] == "Shatter" then
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
              Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
              Thing[6] = Thing[6] + Thing[5]
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
