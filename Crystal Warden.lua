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
local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
clerp = function(a, b, t)
  return a:lerp(b, t)
end
swait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end
fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
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
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(CreatePart)
  CreatePart.TopSurface = 10
end
CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material, Parent = Parent})
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
CreateSound = function(id, par, vol, pit)
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
Damage = function(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
  for i,v in pairs(hit:GetChildren()) do
    if v:IsA("Humanoid") and hit.Name ~= Character.Name then
      local find = v:FindFirstChild("Hitz")
      if not find then
        if v.Parent:findFirstChild("Head") then
          local BillG = Create("BillboardGui")({Parent = v.Parent.Head, Size = UDim2.new(1, 0, 1, 0), Adornee = v.Parent.Head, StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3))})
          do
            local TL = Create("TextLabel")({Parent = BillG, Size = UDim2.new(3, 3, 3, 3), BackgroundTransparency = 1, Text = tostring(damage) .. "-", TextColor3 = Color1.Color, TextStrokeColor3 = Color2.Color, TextStrokeTransparency = 0, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, FontSize = Enum.FontSize.Size18, Font = "ArialBold"})
            coroutine.resume(coroutine.create(function()
    swait(2)
    for i = 0, 1, 0.1 do
      swait(2)
      BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, 0.1, 0)
    end
    BillG:Destroy()
  end))
          end
        end
        do
          HitHealth = v.Health
          v.Health = v.Health - damage
          if HitHealth ~= v.Health and HitHealth ~= 0 and v.Health <= 0 and v.Parent.Name ~= "Lost Soul" then
            print("gained spree")
            Player:FindFirstChild("leaderstats").Spree.Value = Player.leaderstats.Spree.Value + 1
          end
          do
            local bool = Create("BoolValue")({Parent = v, Name = "Hitz"})
            if HSound ~= nil and HPitch ~= nil then
              CreateSound(HSound, hit, 1, HPitch)
            end
            game:GetService("Debris"):AddItem(bool, cooldown)
            -- DECOMPILER ERROR at PC170: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC170: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC170: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC170: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC170: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end
MagnitudeDamage = function(Part, magni, mindam, maxdam)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damage(head.Parent, math.random(mindam, maxdam), 0.5, BrickColor.new("Institutional white"), BrickColor.new("Toothpaste"), "", 1)
        end
      end
    end
  end
end
Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "Handle", Vector3.new(1.01999998, 2.00999999, 1.01999998))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.10351563e-05, -0.00500059128, -4.57763672e-05, 1, -9.14604001e-08, 5.96046377e-08, 9.14604001e-08, 1, 5.0481745e-08, -5.96046448e-08, -5.04817379e-08, 1))
Hitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "Hitbox", Vector3.new(1.01999998, 1.00999999, 1.01999998))
Hitboxweld = CreateWeld(m, Handle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.499997139, 0, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
MagicPrt = CreatePart(m, Enum.Material.Neon, 0, 0.80000001192093, "Toothpaste", "MagicPrt", Vector3.new(0.600000024, 0.400000036, 0.600000024))
MagicPrtweld = CreateWeld(m, Handle, MagicPrt, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.414996862, 0.510009766, 1.52587891e-05, 4.09648088e-15, -1, -7.10542736e-15, -1, -1.0114373e-14, 3.55271368e-15, 3.55271368e-15, 7.10542736e-15, -1))
CreateMesh("SpecialMesh", MagicPrt, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.210006714, 0.915004253, -3.05175781e-05, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.610000014, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409973145, 0.0999991894, -0.210037231, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-05, -0.294996262, -0.410003662, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0.69999998807907, "Toothpaste", "Part", Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.414996386, 0.530059814, -1.52587891e-05, 4.09648088e-15, -1, -7.10542736e-15, -1, -1.0114373e-14, 3.55271368e-15, 3.55271368e-15, 7.10542736e-15, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.20999992, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.209976196, 0.410007, -0.410018921, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.619999945, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.199981689, 0.914999247, -0.0100097656, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.01999998, 0.200000003, 0.600000024))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-05, -0.294999599, -0.00999450684, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.01999998, 0.200000003, 0.219999969))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-05, -0.294999599, 0.399993896, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.800000012, 0.200000003, 1))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.404997349, 0.409973145, 1.52587891e-05, 4.09648088e-15, -1, -7.10542736e-15, -1, -1.0114373e-14, 3.55271368e-15, 3.55271368e-15, 7.10542736e-15, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.01999998, 0.609999955, 1.01999998))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.699996233, 0, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0.5, "Toothpaste", "Part", Vector3.new(0.25999999, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.612922668, 0.420043945, 0.230499268, -1.0086417e-08, -0.821694076, 0.569928885, -1, 1.33874041e-08, 1.60360258e-09, -8.94753072e-09, -0.569928944, -0.821694136))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.50000006))
Part = CreatePart(m, Enum.Material.Neon, 0, 0.5, "Toothpaste", "Part", Vector3.new(0.25999999, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.80483532, 0.419967651, -0.0164337158, 1.27423683e-09, -0.999788642, -0.0205608252, -1, -1.27442534e-09, -4.51549909e-12, -2.16786589e-11, 0.0205608252, -0.999788582))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.400000095))
Part = CreatePart(m, Enum.Material.Neon, 0, 0.5, "Toothpaste", "Part", Vector3.new(0.25999999, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.802575111, 0.419998169, -0.126342773, 1.27423683e-09, -0.999788642, -0.0205608252, -1, -1.27442534e-09, -4.51549909e-12, -2.16786589e-11, 0.0205608252, -0.999788582))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.400000095))
Part = CreatePart(m, Enum.Material.Neon, 0, 0.5, "Toothpaste", "Part", Vector3.new(0.25999999, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.807302475, 0.419967651, 0.103515625, 1.27423683e-09, -0.999788642, -0.0205608252, -1, -1.27442534e-09, -4.51549909e-12, -2.16786589e-11, 0.0205608252, -0.999788582))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.400000095))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.610000014, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409988403, 0.100003958, 0.189987183, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.800000012, 0.200000003, 0.660000026))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.414997339, 0.420028687, -4.57763672e-05, 4.09648088e-15, -1, -7.10542736e-15, -1, -1.0114373e-14, 3.55271368e-15, 3.55271368e-15, 7.10542736e-15, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.Neon, 0, 0.5, "Toothpaste", "Part", Vector3.new(0.330000043, 0.200000003, 0.400000036))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.610003471, 0.41998291, 6.10351563e-05, 4.09648088e-15, -1, -7.10542736e-15, -1, -1.0114373e-14, 3.55271368e-15, 3.55271368e-15, 7.10542736e-15, -1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.210000008, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409973145, 0.710000515, -0.00997924805, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 1.20999992, 0.200000003))
Partweld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.209991455, 0.410007, 0.409988403, 1, 3.00894606e-15, -3.55271368e-15, 3.00894606e-15, 1, 0, -3.55271368e-15, 0, 1))
BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
  local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
Animate = Character.Animate
Animator = Humanoid.Animator
Equip = function()
  attack = true
  equipped = true
  RSH.Parent = nil
  LSH.Parent = nil
  Animator.Parent = nil
  Animate.Disabled = true
  RW = Create("Weld")({Name = "Right Shoulder", Part0 = Torso, C0 = CFrame.new(1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = RightArm, Parent = Torso})
  LW = Create("Weld")({Name = "Left Shoulder", Part0 = Torso, C0 = CFrame.new(-1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = LeftArm, Parent = Torso})
  attack = false
end
Unequip = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
  end
  equipped = false
  RW.Parent = nil
  LW.Parent = nil
  RSH.Parent = Torso
  LSH.Parent = Torso
  Torso.Neck.C0 = NeckCF
  RootJoint.C0 = RootCF
  Animator.Parent = Humanoid
  Animate.Disabled = false
  RW.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  LW.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
  attack = false
end
local Crystals = {}
local CrystalNumb = 0
local crystalhold = false
MakeCrystals = function()
  attack = true
  Humanoid.WalkSpeed = 6
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.5) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(60), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.3)
  end
  do
    while crystalhold==true do
      if crystalhold == true then
        if CrystalNumb < 8 then
          SphereEffect(MagicPrt.BrickColor, MagicPrt.CFrame, 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.05)
          CreateSound("http://www.roblox.com/asset/?id=306247678", Torso, 1, 1.3)
          CrystalNumb = CrystalNumb + 1
          print(CrystalNumb)
          local base = CreatePart(m, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Part1", Vector3.new(1, 1, 1))
          base.Anchored = true
          base.CFrame = MagicPrt.CFrame
          local crystall = CreatePart(base, "SmoothPlastic", 0.4, 0.3, MagicPrt.BrickColor, "Crystal", Vector3.new(2, 2, 2))
          local msh = CreateMesh("SpecialMesh", crystall, "FileMesh", "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2, 2, 2))
          crystall.Anchored = false
          crystall.CFrame = base.CFrame
          table.insert(Crystals, crystall)
        end
        do
          wait(0.5)
          -- DECOMPILER ERROR at PC450: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC450: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC450: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    Humanoid.WalkSpeed = 16
    attack = false
  end
end
attackone = function()
  attack = true
  hitted = false
  local randomnumb = math.random(1, #Crystals)
  local item = Crystals[randomnumb]
  item.CFrame = LeftArm.CFrame
  CrystalNumb = CrystalNumb - 1
  table.remove(Crystals, randomnumb)
  Cryst = item
  for i = 0, 1, 0.1 do
    swait()
    item.CFrame = clerp(item.CFrame, RootPart.CFrame * CFrame.new(10, 0, -2), 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://roblox.com/asset/?id=320557413", RightArm, 1, 1)
  local con1 = Cryst.Touched:connect(function(hit)
    MagnitudeDamage(Cryst, 4, 5, 15)
    if hit ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
      CreateSound("http://www.roblox.com/asset/?id=12222005", Torso, 1, 1.5)
      Cryst.Parent = nil
      hitted = true
      for i = 1, math.random(4, 8) do
        local brokecryst = CreatePart(workspace, "SmoothPlastic", 0.4, 0.5, Cryst.BrickColor, "Crystal", Vector3.new(1, 1, 1))
        local mshh = CreateMesh("SpecialMesh", brokecryst, "FileMesh", "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(math.random() - math.random(), math.random() + math.random(0, 1), math.random() - math.random()))
        brokecryst.CanCollide = false
        brokecryst.CFrame = Cryst.CFrame * cn(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3)) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        brokecryst.Velocity = Vector3.new(math.random(-40, 40), math.random(-40, 40), math.random(-40, 40))
        game:GetService("Debris"):AddItem(brokecryst, 4)
      end
    end
  end)
  for i = 0, 1, 0.1 do
    swait()
    item.CFrame = clerp(item.CFrame, RootPart.CFrame * CFrame.new(-5, 0, -5), 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.5) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -0.8, 0) * RHCF * angles(math.rad(-3), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -0.8, 0) * LHCF * angles(math.rad(-10), math.rad(-30), math.rad(0)), 0.3)
  end
  con1:disconnect()
  if hitted == true then
    item.Parent = nil
  else
    if hitted == false then
      CrystalNumb = CrystalNumb + 1
      table.insert(Crystals, item)
    end
  end
  attack = false
end
ShardWave = function()
  attack = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.7) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-60), math.rad(30)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.2)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(30), math.rad(-10)), 0.2)
    LH.C0 = clerp(LH.C0, cn(-1, -0.3, 0) * LHCF * angles(math.rad(-10), math.rad(30), math.rad(-30)), 0.2)
  end
  local MainCF = RootPart.CFrame * CFrame.new(0, -3, -1)
  do
    for i = 1, 10 do
      MainCF = MainCF * CFrame.new(0, 0, -2)
      local CrystDerp = CreatePart(workspace, "SmoothPlastic", 0.4, 0.5, MagicPrt.BrickColor, "Crystal", Vector3.new(5, 5, 5))
      local mshh = CreateMesh("SpecialMesh", CrystDerp, "FileMesh", "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1 + math.random(), math.random(3, 8) + math.random(), 1 + math.random()))
      CrystDerp.CFrame = MainCF * CFrame.new(math.random(-5, 5), math.random(-20, -15), math.random(-5, 5))
      CrystDerp.Anchored = true
      game:GetService("Debris"):AddItem(CrystDerp, 4)
      coroutine.resume(coroutine.create(function(Part)
    for i = 1, 10 do
      swait(1.5)
      Part.CFrame = Part.CFrame * CFrame.new(0, 2, 0)
    end
    wait(0.5)
    MagnitudeDamage(CrystDerp, 15, 15, 25)
    CreateSound("http://www.roblox.com/asset/?id=12222005", Part, 1, 1.5)
    for i = 1, math.random(2, 6) do
      local brokecryst = CreatePart(workspace, "SmoothPlastic", 0.4, 0.5, MagicPrt.BrickColor, "Crystal", Vector3.new(1, 1, 1))
      local mshh = CreateMesh("SpecialMesh", brokecryst, "FileMesh", "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(math.random() - math.random(), math.random() + math.random(0, 1), math.random() - math.random()))
      brokecryst.CanCollide = false
      brokecryst.CFrame = Part.CFrame * CFrame.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3)) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      brokecryst.Velocity = Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))
      game:GetService("Debris"):AddItem(brokecryst, 4)
    end
    Part.Transparency = 1
  end), CrystDerp)
    end
  end
  SphereEffect(MagicPrt.BrickColor, MagicPrt.CFrame, 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.05)
  for i = 0, 1, 0.03 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(-90), math.rad(-120)), 0.15)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), 0.15)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
  end
  SphereEffect(MagicPrt.BrickColor, MagicPrt.CFrame, 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.05)
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, -0.2) * angles(math.rad(0), math.rad(-80), math.rad(-150)), 0.15)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-20)), 0.15)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
  end
  Humanoid.WalkSpeed = 16
  attack = false
end
Shatter = function()
  attack = true
  Humanoid.WalkSpeed = 4
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.2)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-50)), 0.2)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.5) * angles(math.rad(0), math.rad(130), math.rad(90)), 0.2)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.2)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.2)
  end
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  for e = 1, #Crystals do
    CreateSound("http://www.roblox.com/asset/?id=12222005", Torso, 1, 1.5)
    CrystalNumb = CrystalNumb - 1
    Crystals[e].Parent = nil
    for i = 1, math.random(4, 10) do
      local brokecryst = CreatePart(workspace, "SmoothPlastic", 0.4, 0.5, MagicPrt.BrickColor, "Crystal", Vector3.new(1, 1, 1))
      local mshh = CreateMesh("SpecialMesh", brokecryst, "FileMesh", "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(math.random() - math.random(), math.random() + math.random(0, 1), math.random() - math.random()))
      brokecryst.CanCollide = false
      brokecryst.CFrame = Crystals[e].CFrame * CFrame.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3)) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      brokecryst.Velocity = Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))
      game:GetService("Debris"):AddItem(brokecryst, 4)
    end
  end
  MagnitudeDamage(Torso, 25, 15, 17)
  for i = 1, 10 do
    print("nou")
    for e = 1, #Crystals do
      print(#Crystals)
      table.remove(Crystals, e)
    end
  end
  CrystalNumb = 0
  Humanoid.WalkSpeed = 16
  attack = false
end
SummonShards = function()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
  end
  do
    for i = 1, 5 do
      local Shard = CreatePart(m, "Neon", 0, 0.5, MagicPrt.BrickColor, "Shard", Vector3.new(5, 5, 5))
      Shard.CanCollide = true
      local smsh = CreateMesh("SpecialMesh", Shard, "FileMesh", "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 3))
      Shard.Anchored = true
      local newCF = CFrame.new(math.random(-600, 600) / 100, math.random(500, 1000) / 100, math.random(-600, 600) / 100)
      Shard.CFrame = CFrame.new(RootPart.Position) * newCF
      Shard.CFrame = CFrame.new(Shard.Position, mouse.Hit.p) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
      SphereEffect(MagicPrt.BrickColor, Shard.CFrame, 5, 5, 10, 1, 1, 3, 0.5)
      CreateSound("http://roblox.com/asset/?id=278596476", Shard, 1, 1.5)
      game:GetService("Debris"):AddItem(Shard, 10)
      local hitt = false
      local con = Shard.Touched:connect(function(hit)
    hitt = true
    if hit.Name ~= "Shard" then
      Shard.Parent = nil
      print("hit")
      local ref = CreatePart(workspace, "Neon", 0, 1, BrickColor.new("Toothpaste"), "Effect", Vector3.new())
      ref.Anchored = true
      ref.CFrame = CFrame.new(Shard.Position)
      game:GetService("Debris"):AddItem(ref, 1)
      for i = 1, math.random(4, 10) do
        local brokecryst = CreatePart(workspace, "SmoothPlastic", 0.4, 0.5, MagicPrt.BrickColor, "Crystal", Vector3.new(1, 1, 1))
        local mshh = CreateMesh("SpecialMesh", brokecryst, "FileMesh", "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(math.random() - math.random(), math.random() + math.random(0, 1), math.random() - math.random()))
        brokecryst.CanCollide = false
        brokecryst.CFrame = ref.CFrame * CFrame.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3)) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        brokecryst.Velocity = Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))
        game:GetService("Debris"):AddItem(brokecryst, 4)
      end
      CreateSound("http://www.roblox.com/asset/?id=12222005", ref, 1, 1.5)
      MagnitudeDamage(Shard, 5, 15, 17)
    end
  end)
      coroutine.resume(coroutine.create(function(Part, Cframe, numb)
    while Part.Parent ~= nil do
      while Part.Parent ~= nil do
        if Part.Parent ~= nil then
          wait()
          numb = numb - 1
          if numb <= 0 then
            Part.CFrame = Part.CFrame * CFrame.new(0, 0, 5)
            -- DECOMPILER ERROR at PC17: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC17: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC17: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC17: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      Part.CFrame = CFrame.new(RootPart.Position) * Cframe
      Part.CFrame = CFrame.new(Part.Position, mouse.Hit.p) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
    end
  end), Shard, newCF, i)
    end
  end
  wait(0.5)
  Humanoid.WalkSpeed = 16
  attack = false
end
ob1u = function()
end
ob1d = function()
  if (attack == true and equipped == true) or CrystalNumb == 0 then
    return 
  end
  attackone()
end
key = function(k)
  k = k:lower()
  if attack == false and equipped == false and k == "f" then
    Equip()
  else
    if attack == false and equipped == true and k == "f" then
      Unequip()
    else
      if attack == false and equipped == true and k == "v" then
        crystalhold = true
        MakeCrystals()
      else
        if attack == false and equipped == true and k == "c" then
          ShardWave()
        else
          if attack == false and equipped == true and k == "x" and CrystalNumb >= 1 then
            Shatter()
          else
            if attack == false and equipped == true and k == "z" then
              SummonShards()
            end
          end
        end
      end
    end
  end
end
keyup = function(k)
  if attack == true and equipped == true and k == "v" and crystalhold == true then
    crystalhold = false
  end
end
Tool = Instance.new("HopperBin")
Tool.Parent = Player.Backpack
Tool.Name = "Crystal Warden"
Bin = Tool
ds = function(mouse)
end
s = function(mouse)
  print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(keyup)
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
numbb = 0
datnumb = 0
local walk = 0
local walkforw = false
while 1 do
  swait()
  for i,v in pairs(Character:GetChildren()) do
    if v:IsA("Part") then
      v.Material = "SmoothPlastic"
    else
      if v:IsA("Hat") then
        v:WaitForChild("Handle").Material = "SmoothPlastic"
      end
    end
  end
  walk = walk + 0.55
  if 15 - 5 * (Humanoid.WalkSpeed / 16) <= walk then
    walk = 0
    if walkforw == true then
      walkforw = false
    else
      if walkforw == false then
        walkforw = true
      end
    end
  end
  Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true then
    if RootPart.Velocity.y > 1 and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.2)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-20)), 0.2)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(20)), 0.2)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.2)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.2)
          RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-10)), 0.2)
          LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(10)), 0.2)
        end
      else
        if Torsovelocity < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.sin((sine) / 27)) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.2)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 + 3 * math.sin((sine) / 26)), math.rad(0), math.rad(30)), 0.2)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(-30), math.rad(20 + 3 * math.sin((sine) / 26))), 0.2)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10 + 3 * math.sin((sine) / 26)), math.rad(0), math.rad(-5 - 2 * math.sin((sine) / 26))), 0.2)
            RH.C0 = clerp(RH.C0, cn(1, -0.9 - 0.1 * math.sin((sine) / 27), 0) * RHCF * angles(math.rad(-3 + 1 * math.sin((sine) / 27)), math.rad(10), math.rad(0)), 0.2)
            LH.C0 = clerp(LH.C0, cn(-1, -0.9 - 0.1 * math.sin((sine) / 27), 0) * LHCF * angles(math.rad(-3 + 1 * math.sin((sine) / 27)), math.rad(10), math.rad(0)), 0.2)
          end
        else
          if 2 < Torsovelocity and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10 + 3 * math.sin((sine) / 25)), math.rad(0), math.rad(0)), 0.2)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5 - 3 * math.sin((sine) / 25)), math.rad(0), math.rad(0)), 0.2)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(-40), math.rad(40 + 3 * math.sin((sine) / 26))), 0.2)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(-5 + 3 * math.sin((sine) / 20))), 0.2)
              if walkforw == true then
                RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(60)), 0.1)
                LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(60)), 0.1)
              else
                RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(-60)), 0.1)
                LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-60)), 0.12)
              end
            end
          end
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
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            else
              if Thing[2] == "Block2" then
                Thing[1].CFrame = Thing[1].CFrame
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              else
                if Thing[2] == "Cylinder" then
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Blood" then
                    Mesh = Thing[7]
                    Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Elec" then
                      Mesh = Thing[1].Mesh
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
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
  do
    datnumb = 0
    BaseNumb = 6.28
    BaseNumb = BaseNumb / CrystalNumb
    for d,Crystal in pairs(Crystals) do
      datnumb = datnumb + BaseNumb
      Crystal.Anchored = true
      if Crystal.ClassName == "Part" and #Crystals ~= 0 then
        Crystal.CFrame = Crystal.CFrame:lerp(CFrame.new(RootPart.Position) * CFrame.Angles(0, math.rad(360) / #Crystals * d, 0) * CFrame.new(0, 0, 5 + #Crystals / 3), 0.1)
        numbb = numbb + 0.05
      end
    end
  end
end

