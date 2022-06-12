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
    d.Value = time or 0.055
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
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end
CFuncs = {
Part = {new = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end}
, 
Mesh = {new = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end}
, 
Mesh = {new = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end}
, 
Weld = {new = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end}
, 
Sound = {new = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId = id, Parent = par or workspace})
    wait()
    S:play()
    game:GetService("Debris"):AddItem(S, 6)
  end))
end}
}
local m = Instance.new("Model", c)
m.Name = "WeaponModel"
Handle = CFuncs.Part.new(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "Handle", Vector3.new(1, 2, 1))
HandleWeld = CFuncs.Weld.new(m, c["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Hitbox = CFuncs.Part.new(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "Hitbox", Vector3.new(1, 0.400000095, 1))
HitboxWeld = CFuncs.Weld.new(m, Handle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.20000029, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CFuncs.Part.new(m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(1.13000011, 0.2700001, 0.680000067))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00628662109, 0.935291767, 0.234018803, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(1.09000015, 0.310000271, 0.530000091))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00628662109, 0.335297108, 0.288942814, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 0.200000003, 0.560000002))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0128860474, 1.12596655, -0.359955788, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.229999989, 0.200000003, 0.590000033))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0138702393, 1.11102057, -0.360497475, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(1.11000013, 0.200000003, 0.530000091))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0020904541, -0.151069164, 0.29600811, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.680000186, 0.220000178, 0.280000031))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00286865234, -0.366393089, -0.562141895, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.410000265, 0.530000031, 0.840000033))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00244140625, -0.782339096, -0.21243906, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.54000026, 0.630000114, 0.900000036))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00863647461, -0.714685917, -0.176069736, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.24000001, 0.919999957, 0.420000017))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.027633667, 0.210770607, -0.377646923, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(1.24000001, 1.13, 0.219999999))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0117416382, -0.15815258, -0.230055332, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.870000243, 0.2700001, 0.860000014))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00363922119, 0.975282192, 0.0139846802, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1.62000012, 0.400000095))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.238723755, 0.107399464, 0.364008427, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.490000248, 0.540000081, 0.420000017))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0136032104, 0.850343227, -0.406029224, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(1.11000013, 0.210000008, 0.530000091))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0108261108, 0.336452961, 0.291498661, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(1.21000004, 1.63999999, 0.300000012))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00877380371, 0.0478525162, -0.226531029, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(1.13000011, 1.88000023, 0.680000067))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00626373291, 0.130330086, -0.225958824, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.379999936, 0.379999936, 0.379999936))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.851072311, 0.585458279, 0.0115356445, 3.42726736e-07, 1, -3.37138971e-07, -1.93715223e-07, 5.81145912e-07, -1.00000286, -1, -3.87430191e-07, -1.56462249e-07))
CFuncs.Mesh.new("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 1, 0.420000017))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.131408691, 0.0903525352, -0.406013012, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.79000026, 0.340000153, 0.49000001))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00364685059, -0.359667778, -0.441084862, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 1.77000022, 0.420000106))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.19871521, 0.0216679573, 0.355883121, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(1.13000011, 0.329999983, 1.1400001))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0093460083, -0.835298538, 0.0032749176, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.910000026, 0.47999987, 0.580000043))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00074005127, -0.35460186, -0.276175022, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(1.23000002, 0.340000063, 0.229999989))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00450134277, 0.662789822, -0.228302002, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(1.09000015, 0.310000271, 0.530000091))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00623321533, -0.154727459, 0.288996696, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Metal, 0, 0, "Dark stone grey", "Part", Vector3.new(0.490000248, 0.520000041, 0.420000017))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0135955811, -0.396072388, -0.850289822, 1.00000012, -1.01476926e-05, 4.99935777e-06, -4.65661287e-06, 1.56459919e-07, 1.00000286, -1.0818243e-05, -1.00000012, 1.15297803e-06))
CFuncs.Mesh.new("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.200000003, 1.05000007, 0.420000017))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.158599854, 0.0553216934, -0.405974865, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.629999995, 2.07999992, 0.899999976))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0092010498, 0.0362443924, -0.120284081, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
Part = CFuncs.Part.new(m, Enum.Material.Neon, 0, 0, "Royal purple", "Part", Vector3.new(0.750000298, 0.250000089, 0.74000001))
PartWeld = CFuncs.Weld.new(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00680541992, 1.00405645, 0.0256195068, 1, 3.57627869e-07, 1.78814076e-07, 3.57627869e-07, 1, -4.91738945e-07, 1.78814091e-07, -4.91738945e-07, 1.00000286))
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
AnimStat = {lerpSpeed = 0.3}
Joints = {c.Torso.Neck, c.Torso["Left Shoulder"], c.Torso["Left Hip"], c.Torso["Right Shoulder"], c.Torso["Right Hip"], c.HumanoidRootPart.RootJoint}
JointTargets = {CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero()}
Combo = {AttackOne = function()
  setLerp(0.3)
  Effects.Fire.new(Hitbox.Position, 4, 0.5, 0.04, 3, "Dark indigo")
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(-0.042, 1.494, -0.169)) * CFAngles(Vector3.new(-8.464, 44.765, 5.689)), CFrame.new(Vector3.new(-1.65, -0.013, -0.313)) * CFAngles(Vector3.new(25.529, -22.025, -13.993)), CFrame.new(Vector3.new(-0.754, -1.99, 0.055)) * CFAngles(Vector3.new(0, 44.999, -4.522)), CFrame.new(Vector3.new(1.704, 0.681, -0.205)) * CFAngles(Vector3.new(-0.001, 44.999, 105)), CFrame.new(Vector3.new(0.773, -1.996, -0.004)) * CFAngles(Vector3.new(-6.029, 44.734, 5.679)), CFrame.new(Vector3.new(0, 0, -0.001)) * CFAngles(Vector3.new(0, -44, 0))})
  wait(0.15)
  local hit = takeDamage(Hitbox.Position, math.random(13, 16), 5, false)
  setLerp(0.3)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0.02, 1.494, -0.17)) * CFAngles(Vector3.new(-8.44, -80.609, -6.241)), CFrame.new(Vector3.new(-1.69, 0.442, 0.324)) * CFAngles(Vector3.new(-16.591, 21.722, -44.118)), CFrame.new(Vector3.new(-0.72, -1.992, -0.004)) * CFAngles(Vector3.new(-2.004, -30.243, -7.537)), CFrame.new(Vector3.new(0.688, 0.29, -1.023)) * CFAngles(Vector3.new(-175.536, 30.412, -108.764)), CFrame.new(Vector3.new(0.683, -2.003, -0.023)) * CFAngles(Vector3.new(2.014, -44.983, 7.499)), CFrame.new(Vector3.new(0, 0, -0.001)) * CFAngles(Vector3.new(0, 80, 0))})
  wait(0.15)
  return hit[1]
end, AttackTwo = function()
  setLerp(0.3)
  Effects.Fire.new(Hitbox.Position, 4, 0.5, 0.04, 3, "Dark indigo")
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0.002, 1.491, -0.085)) * CFAngles(Vector3.new(-11.924, -23.595, -4.872)), CFrame.new(Vector3.new(-1.486, 0.102, 0.34)) * CFAngles(Vector3.new(-16.591, 21.722, -14.497)), CFrame.new(Vector3.new(-0.645, -2, -0.026)) * CFAngles(Vector3.new(-2.004, -30.243, -5.548)), CFrame.new(Vector3.new(0.334, 0.245, -0.983)) * CFAngles(Vector3.new(175.782, 17.662, -101.756)), CFrame.new(Vector3.new(0.64, -2.004, 0.02)) * CFAngles(Vector3.new(2.014, -44.983, 5.232)), CFrame.new(Vector3.new(0, 0, -0.001)) * CFAngles(Vector3.new(0, 44, 0))})
  wait(0.15)
  local hit = takeDamage(Hitbox.Position, math.random(13, 16), 5, false)
  setLerp(0.3)
  Effects.Fire.new(Hitbox.Position, 4, 0.5, 0.04, 3, "Dark indigo")
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(-0.043, 1.494, -0.087)) * CFAngles(Vector3.new(-8.53, 47.856, 6.6)), CFrame.new(Vector3.new(-1.575, 0.072, -0.08)) * CFAngles(Vector3.new(15.663, -6.451, -24.734)), CFrame.new(Vector3.new(-0.645, -2, -0.026)) * CFAngles(Vector3.new(4.34, 36.408, -5.956)), CFrame.new(Vector3.new(1.87, 0.68, -0.052)) * CFAngles(Vector3.new(-14.368, 29.909, 102.941)), CFrame.new(Vector3.new(0.714, -1.999, -0.032)) * CFAngles(Vector3.new(-4.271, 34.862, 5.647)), CFrame.new(Vector3.new(0, 0, -0.001)) * CFAngles(Vector3.new(0, -50, 0))})
  wait(0.15)
  return hit[1]
end, AttackThree = function()
  setLerp(0.3)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(-0.042, 1.494, -0.169)) * CFAngles(Vector3.new(-8.464, 44.765, 5.689)), CFrame.new(Vector3.new(-1.784, 0.136, -0.301)) * CFAngles(Vector3.new(25.529, -22.025, -43.993)), CFrame.new(Vector3.new(-0.754, -1.99, 0.055)) * CFAngles(Vector3.new(0, 44.999, -4.522)), CFrame.new(Vector3.new(0.977, 0.593, -0.769)) * CFAngles(Vector3.new(-158.476, 28.315, -102.178)), CFrame.new(Vector3.new(0.773, -1.996, -0.004)) * CFAngles(Vector3.new(-6.029, 44.734, 5.679)), CFrame.new(Vector3.new(0, 0, -0.001)) * CFAngles(Vector3.new(0, -44, 0))})
  wait(0.15)
  Effects.Fire.new(Hitbox.Position, 4, 0.5, 0.04, 3, "Dark indigo")
  local hit = takeDamage(Hitbox.Position, math.random(13, 16), 5, false)
  Debounces.isAttacking = true
  setLerp(0.3)
  Debounces.Speed = 0.7
  setJointCFrames({CFrame.new(Vector3.new(0.019, 1.494, -0.14)) * CFAngles(Vector3.new(-8.098, -42.11, -5.742)), CFrame.new(Vector3.new(-1.529, 0.141, -0.424)) * CFAngles(Vector3.new(25.529, -22.025, -13.993)), CFrame.new(Vector3.new(-0.754, -1.99, 0.055)) * CFAngles(Vector3.new(-6.382, -44.822, -4.508)), CFrame.new(Vector3.new(1.774, 0.59, -0.771)) * CFAngles(Vector3.new(-53.789, 36.425, 129.654)), CFrame.new(Vector3.new(0.773, -1.996, -0.004)) * CFAngles(Vector3.new(4.952, -59.879, 8.053)), CFrame.new(Vector3.new(0, 0, -0.001)) * CFAngles(Vector3.new(0, 44, 0))})
  wait(0.15)
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
  local hitPlrs = {}
  for i,v in pairs(pls:children()) do
    if v:isA("Player") and workspace:FindFirstChild(v.Name) and v ~= lp then
      local tor = workspace[v.Name]
      if tor and tor:FindFirstChild("HumanoidRootPart") and tor:FindFirstChild("Humanoid") and tor.HumanoidRootPart.Position - position.magnitude < distance then
        tor.Humanoid:TakeDamage(damage)
        table.insert(hitPlrs, #hitPlrs + 1, v)
        TagService:NewTag(tor, lp, "Aurum", damage)
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
prepareCharacter()
local sine = 0
local change = 1
spawn(function()
  while wait() do
    sine = sine + change
    if Debounces.isAttacking == false and Debounces.isMoving == false and math.abs(root.Velocity.y) < 1 then
      change = 1
      setLerp(0.2)
      setJointCFrames({CFrame.new(Vector3.new(0.003, 1.5, 0)) * CFAngles(Vector3.new(-3 - 2 * math.sin(sine / 27), 30, 0)), CFrame.new(Vector3.new(-1.502, -0.008, -0.199)) * CFAngles(Vector3.new(7.005, -11.731, -8.413 - 2 * math.sin(sine / 27))), CFrame.new(Vector3.new(-0.594, -1.9 - 0.1 * math.sin(sine / 27), -0.072)) * CFAngles(Vector3.new(-0.001, 36.747, -1.165 + 2 * math.sin(sine / 25))), CFrame.new(Vector3.new(1.579, 0.119, -0.351)) * CFAngles(Vector3.new(27.663 + 2 * math.sin(sine / 27), 14.756, 14.132 + 2 * math.sin(sine / 27))), CFrame.new(Vector3.new(0.644, -1.9 - 0.1 * math.sin(sine / 27), -0.008)) * CFAngles(Vector3.new(0, 25.852, 2.906 - 2 * math.sin(sine / 25))), CFrame.new(Vector3.new(0, -0.1 + 0.1 * math.sin(sine / 27), 0)) * CFAngles(Vector3.new(0, -30, 0))})
    else
      if Debounces.isAttacking == false and Debounces.isMoving == true and math.abs(root.Velocity.y) < 1 then
        change = 2.5
        setLerp(0.2)
        Debounces.Speed = 0.9
        setJointCFrames({CFrame.new(Vector3.new(-0.011, 1.5, 0.009)) * CFAngles(Vector3.new(5, -4 * math.sin(sine / 8), 0)), CFrame.new(Vector3.new(-1.5, 0.019, 0.109 * math.sin(sine / 8))) * CFAngles(Vector3.new(-10.959 * math.sin(sine / 8), 0.719, -8.235)), CFrame.new(Vector3.new(-0.5, -1.9 + 0.4 * math.cos(sine / 8) / 2, 0 - 1.4 * math.sin(sine / 8) / 2)) * CFAngles(Vector3.new(40 * math.sin(sine / 8), 0, -2)), CFrame.new(Vector3.new(1.5, 0, -0.201)) * CFAngles(Vector3.new(21.246 + 2 * math.sin(sine / 8), -15.792 - 2 * math.sin(sine / 8), 8.909)), CFrame.new(Vector3.new(0.5, -1.9 - 0.4 * math.cos(sine / 8) / 2, 0 + 1.4 * math.sin(sine / 8) / 2)) * CFAngles(Vector3.new(-40 * math.sin(sine / 8), 0, 2)), CFrame.new(Vector3.new(0, 0, -0.001)) * CFAngles(Vector3.new(-10, 4 * math.sin(sine / 8), 0))})
      else
        if Debounces.isAttacking == false and math.abs(root.Velocity.y) > 1 then
          change = 1
          if root.Velocity.y > 0 then
            Debounces.Speed = 0.9
            setLerp(0.2)
            setJointCFrames({CFrame.new(Vector3.new(-0.011, 1.527, -0.115)) * CFAngles(Vector3.new(-9.493, 0, 0)), CFrame.new(Vector3.new(-1.814, 0.289, -0.265)) * CFAngles(Vector3.new(-2.521, -18.772, -41.571)), CFrame.new(Vector3.new(-0.503, -1.906, -0.014)) * CFAngles(Vector3.new(-8.209, 9.003, 1.293)), CFrame.new(Vector3.new(1.766, 0.255, -0.163)) * CFAngles(Vector3.new(6.91, 11.513, 29.448)), CFrame.new(Vector3.new(0.5, -1.28, -0.401)) * CFAngles(Vector3.new(-15.906, -11.514, -4.528)), CFrame.new(Vector3.new(0, 0, -0.001)) * CFAngles(Vector3.new(0, 0, 0))})
          else
            change = 1
            setLerp(0.2)
            Debounces.Speed = 1.1
            setJointCFrames({CFrame.new(Vector3.new(-0.011, 1.51, -0.295)) * CFAngles(Vector3.new(-17.477, 0, 0)), CFrame.new(Vector3.new(-1.814, 0.289, -0.465)) * CFAngles(Vector3.new(-1.38, -39.839, -42.989)), CFrame.new(Vector3.new(-0.503, -1.776, -0.224)) * CFAngles(Vector3.new(6.661, 9.034, -1.051)), CFrame.new(Vector3.new(1.766, 0.255, -0.363)) * CFAngles(Vector3.new(13.022, 31.837, 29.138)), CFrame.new(Vector3.new(0.5, -1.47, -0.401)) * CFAngles(Vector3.new(12.837, -12.269, 1.516)), CFrame.new(Vector3.new(0, 0, -0.001)) * CFAngles(Vector3.new(0, 0, 0))})
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
uinps.InputEnded:connect(function(InputObj)
  if InputObj.KeyCode == Enum.KeyCode.LeftShift then
    Debounces.isSprinting = false
  end
end)
mouse.Button1Down:connect(function()
  if Debounces.Combo == 1 and Debounces.isAttacking == false then
    Debounces.isAttacking = true
    Debounces.Combo = 2
    Combo.AttackOne()
    Debounces.isAttacking = false
  else
    if Debounces.Combo == 2 and Debounces.isAttacking == false then
      Debounces.isAttacking = true
      Debounces.Combo = 3
      Combo.AttackTwo()
      Debounces.isAttacking = false
    else
      if Debounces.Combo == 3 and Debounces.isAttacking == false then
        Debounces.isAttacking = true
        Debounces.Combo = 1
        Combo.AttackThree()
        Debounces.isAttacking = false
      end
    end
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

