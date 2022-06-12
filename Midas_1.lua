--Userdata Error--
wait(0.016666666666667)
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

it = Instance.new
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
  local weld = it("Motor")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end

Handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 1, "New Yeller", "Handle", Vector3.new(1, 0.800000012, 1))
Handleweld = weld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.96453857e-005, 0.000481128693, -1.83582306e-005, 1, 1.92410751e-014, -4.42007258e-005, -1.93349195e-014, 0.999999881, -2.12312026e-012, 4.42007258e-005, 2.12312091e-012, 1))
Hitbox = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 1, "New Yeller", "Hitbox", Vector3.new(1.60000002, 3.4000001, 1))
Hitboxweld = weld(m, Handle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.300050735, 0.100232601, 3.57627869e-007, 1, 1.06558363e-014, -4.67116479e-009, -1.06558363e-014, 1, -7.35089073e-017, 4.67116479e-009, 7.35089073e-017, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1, 0.200000003, 1))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.20159912e-005, 1.10002291, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254525e-014, 0.999996662, -2.14035647e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.82012939e-005, -0.699694633, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.82012939e-005, -0.699361324, -0.40998435, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409914017, 0.000346660614, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409914017, 0.700180769, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.82012939e-005, 0.000400543213, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.800000012, 0.620000005))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410078049, 0.000326633453, 1.57356262e-005, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1.01999998, 0.800000012, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.82012939e-005, 0.000392436981, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.82012939e-005, 0.700207949, 0.410015702, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.410078049, -0.699380398, 1.56164169e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.4100914, 0.700154781, 1.57356262e-005, 1, -1.93349195e-014, 4.42007258e-005, 1.92409124e-014, 0.999991417, 2.12310291e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.82012939e-005, 0.700230837, -0.40998435, 1, -1.57821432e-014, 4.42007258e-005, 1.56883004e-014, 1, 2.12312091e-012, -4.42007258e-005, -2.12312026e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.400000006, 2, 1))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699924469, 4.14848328e-005, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1, 1.39999998, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.57356262e-005, -0.299851894, 0.999885559, -4.41999473e-005, -5.95854743e-008, 1, -2.60350986e-012, 1, 5.95854743e-008, -1, 3.01648321e-014, -4.41999473e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1, 0.600000024, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.57356262e-005, -0.700007677, 0.999902725, 4.41999473e-005, -2.13950775e-012, -1, -2.65373322e-014, -1, 2.13950667e-012, -1, 2.64427677e-014, -4.41999473e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.848457336, -0.300411701, -0.141453743, 0.707042813, -1.50516166e-012, -0.707170904, 1.1783393e-014, 1, -2.11664583e-012, 0.707170904, 1.48822632e-012, 0.707042813))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.6998806, -0.499980569, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699882507, 0.500019133, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.404000014, 0.400000006, 0.560000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699882507, 0.500019133, -0.399654627, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.404000014, 0.400000006, 0.995999992))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409921646, -0.699380398, 1.57356262e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1, 0.200000003, 0.400000006))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.56164169e-005, -1.10002637, 0.699918747, 4.41999473e-005, -2.14036427e-012, -1, -1.23254932e-014, -1, 2.14036362e-012, -1, 1.22308889e-014, -4.41999473e-005))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1, 0.200000003, 0.200000003))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.16960907e-005, -0.599924088, 1.49999762, 4.41999473e-005, -2.14036427e-012, -1, 1, -1.22308889e-014, 4.41999473e-005, -1.23254932e-014, -1, 2.14036362e-012))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.400000006, 1.39999998, 0.399999976))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.141283035, -0.300261259, -0.848459244, 0.707067847, -1.51049073e-012, -0.70714587, 1.20093924e-014, 1, -2.12403055e-012, 0.70714587, 1.49334115e-012, 0.707067847))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.6998806, -0.499980569, 1.00034523, 0.999999881, 3.17161053e-008, 4.20847573e-005, -4.21145523e-005, -2.83570323e-009, 0.999999762, 3.17162403e-008, -0.999999762, -2.83438673e-009))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.403999984, 0.399999976, 0.560000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(1, 0.200000003, 0.400000006))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.16960907e-005, -0.79992485, 1.19999647, 4.41999473e-005, -2.14036427e-012, -1, 0.999999821, 2.980231e-008, 4.419994e-005, 2.980231e-008, -0.999999821, 3.45762416e-012))
mesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.400000006, 1))
Partweld = weld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599924088, -1.19995832, 2.16960907e-005, 1, -1.22308889e-014, 4.41999473e-005, 1.23254932e-014, 1, -2.14036362e-012, -4.41999473e-005, 2.14036427e-012, 1))
Finger1Connector = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 1, "New Yeller", "Finger1Connector", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger1Connectorweld = weld(m, Handle, Finger1Connector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.399971008, 1.29990399, 0.200015664, 1, 1.78782017e-007, 4.41999473e-005, -1.7878321e-007, 0.999993324, -1.00110302e-011, -4.41999473e-005, 2.10883698e-012, 1))
Finger2Connector = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 1, "New Yeller", "Finger2Connector", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger2Connectorweld = weld(m, Handle, Finger2Connector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399934769, 1.29982674, 0.400015712, 1, 2.97982776e-008, 4.41999473e-005, -2.97984766e-008, 0.999993324, -3.43642345e-012, -4.41999473e-005, 2.11934723e-012, 1))
Finger3Connector = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 1, "New Yeller", "Finger3Connector", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger3Connectorweld = weld(m, Handle, Finger3Connector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399934769, 1.29971194, 0.140015721, 1, 8.93768473e-008, 4.421228e-005, -8.93774441e-008, 0.999993324, -1.82566007e-012, -4.421228e-005, -2.12587717e-012, 1))
Finger4Connector = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 1, "New Yeller", "Finger4Connector", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger4Connectorweld = weld(m, Handle, Finger4Connector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399930954, 1.29973722, -0.119984269, 1, 8.93806842e-008, 4.421228e-005, -8.9381281e-008, 0.999993324, -1.82601091e-012, -4.421228e-005, -2.12569589e-012, 1))
Finger5Connector = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 1, "New Yeller", "Finger5Connector", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger5Connectorweld = weld(m, Handle, Finger5Connector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399984121, -1.29981911, -0.399932861, -4.41701486e-005, 5.95858012e-008, 1, 4.58027785e-008, -0.999993324, 5.95882241e-008, 1, 4.58051019e-008, 4.41701486e-005))
Finger1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Finger1", Vector3.new(0.200000003, 0.400000006, 0.200000003))
Finger1weld = weld(m, Finger1Connector, Finger1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.10351563e-005, 0.100007057, 0, 1, 2.06483719e-011, -5.55111512e-017, -2.54232191e-011, 0.999986649, 4.50594423e-016, 5.55111512e-017, -4.49727061e-016, 1))
Finger2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Finger2", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger2weld = weld(m, Finger2Connector, Finger2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-006, 0.199999213, 1.1920929e-007, 1, 8.77520279e-013, 0, -1.67332814e-012, 0.999986649, 1.50920942e-016, 0, -1.50053581e-016, 1))
Finger3 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Finger3", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger3weld = weld(m, Finger3Connector, Finger3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-006, 0.200001121, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23739232e-016, 4.35207426e-013, 2.38535383e-016, 1))
Finger4 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Finger4", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger4weld = weld(m, Finger4Connector, Finger4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-006, 0.199998736, 1.1920929e-007, 1, 2.64321898e-012, -4.35207426e-013, -5.03064257e-012, 0.999986649, -1.23732138e-016, 4.35207426e-013, 2.38539513e-016, 1))
Finger5 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0.5, 0, "New Yeller", "Finger5", Vector3.new(0.200000003, 0.600000024, 0.200000003))
Finger5weld = weld(m, Finger5Connector, Finger5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.38418579e-007, -0.199927688, 9.53674316e-006, 1, -3.86535248e-012, -7.77482967e-010, 5.45696821e-012, 0.999986649, -1.35540613e-012, 7.77477638e-010, 2.57749442e-012, 1))
wait(0.016666666666667)
local player = game.Players.localPlayer
local char = player.Character
local mouse = player:GetMouse()
local m = Instance.new("Model", char)
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = char.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velderp = RootPart.Velocity.y
local sine = 0
local change = 1
local val = 0
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 10
local cooldown2 = 15
local cooldown3 = 10
local cooldown4 = 20
local inputserv = game:GetService("UserInputService")
local typing = false
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
RootCF = cf(0, -1, 0)
necko = cf(0, 1.5, 0)
Meshes = {Blast = "20329976", Crown = "1323306", Ring = "3270017", Claw = "10681506", Crystal = "9756362", Coil = "9753878", Cloud = "1095708"}
clangsounds = {"199149119", "199149109", "199149072", "199149025", "199148971"}
hitsounds = {"199149137", "199149186", "199149221", "199149235", "199149269", "199149297"}
blocksounds = {"199148933", "199148947"}
armorsounds = {"199149321", "199149338", "199149367", "199149409", "199149452"}
woosh = {Heavy1 = "320557353", Heavy2 = "320557382", Heavy3 = "320557453", Heavy4 = "199144226", Heavy5 = "203691447", Heavy6 = "203691467", Heavy7 = "203691492", Light1 = "320557413", Light2 = "320557487", Light3 = "199145095", Light4 = "199145146", Light5 = "199145887", Light6 = "199145913", Light7 = "199145841", Medium1 = "320557518", Medium2 = "320557537", Medium3 = "320557563", Medium4 = "199145204"}
music = {Breaking = "179281636", FinalReckoning = "357375770", NotDeadYet = "346175829", Intense = "151514610", JumpP1 = "160536628", JumpP2 = "60536666", SonsOfWar = "158929777", WrathOfSea = "165520893", ProtectorsOfEarth = "160542922", SkyTitans = "179282324", ArchAngel = "144043274", Anticipation = "168614529", TheMartyred = "186849544", AwakeP1 = "335631255", AwakeP2 = "335631297", ReadyAimFireP1 = "342455387", ReadyAimFireP2 = "342455399", DarkLordP1 = "209567483", DarkLordP2 = "209567529", BloodDrainP1 = "162914123", BloodDrainP2 = "162914203", DanceOfSwords = "320473062", Opal = "286415112", Calamity = "190454307", Hypnotica = "155968128", Nemisis = "160453802", Breathe = "276963903", GateToTheRift = "270655227", InfernalBeserking = "244143404", Trust = "246184492", AwakeningTheProject = "245121821", BloodPain = "242545577", Chaos = "247241693", NightmareFictionHighStake = "248062278", TheWhiteWeapon = "247236446", Gale = "256851659", ImperialCode = "256848383", Blitzkrieg = "306431437", RhapsodyRage = "348690251", TheGodFist = "348541501", BattleForSoul = "321185592", TheDarkColossus = "305976780", EmpireOfAngels = "302580452", Kronos = "302205297", Exorcist = "299796054", CrimsonFlames = "297799220", UltimatePower = "295753229", DrivingInTheDark = "295753229", AscendToPower = "293860654", GodOfTheSun = "293612495", DarkRider = "293861765", Vengeance = "293375555", SoundOfWar = "293376196", HellsCrusaders = "293012202", Legend = "293011823", RisingSouls = "290524959"}
misc = {GroundSlam = "199145477", LaserSlash = "199145497", RailGunFire = "199145534", Charge1 = "199145659", Charge2 = "169380469", Charge3 = "169380479", EmptyGun = "203691822", GunShoot = "203691837", Stomp1 = "200632875", Stomp2 = "200632561", TelsaCannonCharge = "169445572", TelsaCannonShoot = "169445602", AncientHymm = "245313442", Ha = "180840266"}
wait(0.016666666666667)
local player = game.Players.localPlayer
local char = player.Character
local mouse = player:GetMouse()
local m = Instance.new("Model", char)
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = char.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 14
local co2 = 15
local co3 = 22
local co4 = 30
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 3
local critdamageaddmax = 7
local maxstamina = 100
local stamina = 0
local skill1stam = 30
local skill2stam = 40
local skill3stam = 45
local skill4stam = 50
local recovermana = 7
local defensevalue = 1.3
local speedvalue = 1
local mindamage = 7
local maxdamage = 10
local damagevalue = 1
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
  local wld = Instance.new("Motor", wp1)
  wld.Name = "Weld"
  wld.Part0 = wp0
  wld.Part1 = wp1
  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
  return wld
end

newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.65, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.65, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(RootPart, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
RW = rarm.Weld
LW = larm.Weld
RH = rleg.Weld
LH = lleg.Weld
local scrn = Instance.new("ScreenGui", player.PlayerGui)
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
text1 = makelabel(framesk1, "[C] Gold Clap")
text2 = makelabel(framesk2, "[V] Grab n\' Slam")
text3 = makelabel(framesk3, "[X] Hammerfist")
text4 = makelabel(framesk4, "[Z] Golden Punch")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(0.23921568627451, 0.67058823529412, 1))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0.23921568627451, 0.67058823529412, 1))
staminatext = makelabel(staminabar, "Stamina")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.18039215686275, 0.1921568627451))
healthtext = makelabel(healthbar, "Health")
local stats = Instance.new("Folder", char)
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
CheckClose = function(Obj, Dist)
  for _,v in pairs(workspace:GetChildren()) do
    if v:FindFirstChild("Humanoid") and v:FindFirstChild("Torso") and v ~= char then
      local DistFromTorso = v.Torso.Position - Obj.Position.magnitude
      if DistFromTorso < Dist then
        return v
      end
    end
  end
end

begoneoutlines = function(part)
  part.BottomSurface = 10
end

flame = function(color, pos, size)
  local rng = Instance.new("Part", m)
  rng.Anchored = true
  rng.BrickColor = BrickColor.new(color)
  rng.FormFactor = "Custom"
  rng.Size = Vector3.new(1, 1, 1)
  rng.CanCollide = false
  rng.Transparency = 0.35
  rng.TopSurface = 0
  rng.BottomSurface = 0
  rng.CFrame = pos
  local rngm = Instance.new("SpecialMesh", rng)
  rngm.MeshType = "Sphere"
  rngm.Scale = size
  if CheckClose(rng, 4) then
    CheckClose(rng, 4).Humanoid:TakeDamage(15)
    CheckClose(rng, 4).Torso.Velocity = Vector3.new(0, 100, 0)
  end
  coroutine.wrap(function()
    for i = 0, 1, 0.1 do
      wait(0.033333333333333)
      rngm.Scale = rngm.Scale + Vector3.new(-1, 3, -1)
      rng.Transparency = rng.Transparency + i / 10
    end
    rng:Destroy()
  end
)()
end

atktype = function(s, e)
  coroutine.resume(coroutine.create(function()
    attacktype = e
    wait(1.5)
    attacktype = s
  end
))
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
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
end
)
Lerp = function(a, b, i)
  return a:lerp(b, i)
end

local Lerp = CFrame.new().lerp
rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

flame2 = function(color, pos, size)
  local rng = Instance.new("Part", m)
  rng.Anchored = true
  rng.BrickColor = BrickColor.new(color)
  rng.FormFactor = "Custom"
  rng.Size = Vector3.new(1, 1, 1)
  rng.CanCollide = false
  rng.Transparency = 0.35
  rng.TopSurface = 0
  rng.BottomSurface = 0
  rng.CFrame = pos
  local rngm = Instance.new("SpecialMesh", rng)
  rngm.MeshType = "Sphere"
  rngm.Scale = size
  coroutine.wrap(function()
    for i = 0, 1, 0.1 do
      wait(0.033333333333333)
      rngm.Scale = rngm.Scale + Vector3.new(-1, 3, -1)
      rng.Transparency = rng.Transparency + i / 5
    end
    rng:Destroy()
  end
)()
end

blocks = function(pos1, size1, breaka)
  hit = rayCast(torso.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, char)
  local p = Instance.new("Part", m)
  p.Material = hit.Material
  p.Color = hit.Color
  p.CFrame = pos1
  p.Size = size1
  p.Anchored = true
  p.CanCollide = false
  p.TopSurface = 0
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  if breaka == true then
    flame2("Black", p.CFrame, Vector3.new(1, 1, 1))
  end
  coroutine.wrap(function()
    for i = 0, 25, 0.1 do
      wait(0.033333333333333)
      p.CFrame = p.CFrame * CFrame.Angles(math.rad(-1), math.rad(1), math.rad(2))
      p.Position = p.Position + Vector3.new(0, 0.1, 0)
      p.Transparency = p.Transparency + 0.0025
    end
    p:Destroy()
  end
)()
end

fireout = function(color, pos1)
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
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.01, 0.01, 0.01)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end
)()
end

firein = function(color, pos1)
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
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale - Vector3.new(0.01, 0.01, 0.01)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end
)()
end

firespaz1 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = color
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
  end
)()
end

firespaz2 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(0.8, 0.8, 0.8)
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  local mesh = Instance.new("BlockMesh", p)
  mesh.Scale = Vector3.new(1, 1, 1)
  coroutine.wrap(function()
    for i = 0, 1, 0.1 do
      wait(0.033333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
    end
    p:Destroy()
  end
)()
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
  end
)()
end

blast = function(size, pos1, trans, howmuch, delay1)
  hit = rayCast(torso.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, char)
  local p = Instance.new("Part", m)
  p.BrickColor = hit.BrickColor
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans
    end
    p:Destroy()
  end
)()
  return p
end

ring = function(size, pos1, trans, howmuch, delay1)
  hit = rayCast(torso.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, char)
  local p = Instance.new("Part", m)
  p.BrickColor = hit.BrickColor
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans
    end
    p:Destroy()
  end
)()
end

subtractstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end

sphere = function(size, pos1, trans, howmuch, delay1)
  hit = rayCast(torso.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, char)
  local p = Instance.new("Part", m)
  p.BrickColor = hit.BrickColor
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  mesh.MeshType = "Sphere"
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans
    end
    p:Destroy()
  end
)()
  return p
end

crown = function(size, pos1, trans, howmuch, delay1)
  hit = rayCast(torso.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, char)
  local p = Instance.new("Part", m)
  p.BrickColor = hit.BrickColor
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  mesh.MeshId = "http://www.roblox.com/asset/?id=1323306"
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans
    end
    p:Destroy()
  end
)()
end

so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

local GetClosest = function(obj, MaxDistance)
  local Last, Lastx = MaxDistance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = t.Position - obj.Position.magnitude
      if dist <= MaxDistance and dist < Last then
        Last = dist
        Lastx = v
      end
    end
  end
  return Lastx
end

FindNearestTorso = function(Position, Distance, SinglePlayer)
  if SinglePlayer.Torso.CFrame.p - Position.magnitude >= Distance then
    do return not SinglePlayer end
    do
      local List = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char and v.Torso.Position - Position.magnitude <= Distance then
          table.insert(List, v)
        end
      end
      do return List end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end

makeeffect = function(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = trans
  p.FormFactor = "Custom"
  begoneoutlines(p)
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
  game:GetService("Debris"):AddItem(p, delay1)
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end
)()
  return p
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
    end
)()
    end
  end
)()
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
  end
)()
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
  end
)()
end

pickrandom = function(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end

sound = function(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or torso)
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
    end
)()
    end
  end
)()
end

so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

getclosest = function(obj, dis, player)
  if player.Torso.CFrame.p - obj.magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char and v.Torso.Position - obj.magnitude <= dis then
          table.insert(list, v)
        end
      end
      do return list end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end

getclosest_angled = function(obj, dis, player, max_deg)
  if not max_deg then
    max_deg = 49.333
  end
  if player.Torso.CFrame.p - obj.magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char then
          if v.Torso.Position - obj.magnitude <= dis then
            local lv = -torso.CFrame.lookVector * Vector3.new(1, 0, 1).unit
            do
              local to = (torso.Position - v.Torso.Position) * Vector3.new(1, 0, 1).unit
              if math.deg(math.acos(lv:Dot(to))) <= max_deg then
                print("it worked")
                table.insert(list, v)
              else
                do
                  print("nope", math.deg(math.acos(lv:Dot(to))))
                  -- DECOMPILER ERROR at PC98: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC98: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          else
            print("no distance")
          end
        end
        if v:IsA("Part") and v.Name:lower() == "hitbox" and v.Parent.Parent ~= char and v.Position - obj.magnitude <= dis * 1.55 then
          local pos = CFrame.new(0, 1, -1)
          sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, torso, 6)
          coroutine.wrap(function()
    for i = 1, 4 do
      clangy(torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
    end
  end
)()
        end
      end
      do return list end
      -- DECOMPILER ERROR: 6 unprocessed JMP targets
    end
  end
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
  game:GetService("Debris"):AddItem(bg, 6.5)
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
      fat.Event:wait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end
)()
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
    tag(h, player)
    wait(1)
    untag(h)
  end
)()
end

turncrit = function()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(0.5)
    crit = false
  end
))
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

damage = function(hit, mind, maxd, knock, type, prop)
  do
    if hit.Name:lower() == "hitbox" then
      local pos = CFrame.new(0, 1, -1)
      do
        sound(pickrandom(clangsounds), math.random(100, 150) / 100, 1, torso, 6)
        coroutine.wrap(function()
    for i = 1, 4 do
      clangy(torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
    end
  end
)()
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
    if h then
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
    end
    if h.Parent:FindFirstChild("Stats") or h and h.Parent.Head then
      makegui(h.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
    end
    TagService:NewTag(h.Parent, Player, "Midas", D)
    if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
      if type == 1 then
        tagplayer(h)
        local asd = randomizer(critchance)
        if asd == true then
          turncrit()
        end
        if crit == false then
          game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
        else
          game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D + math.random(critdamageaddmin, critdamageaddmax), 1)
        end
        so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
        local vp = Instance.new("BodyVelocity")
        vp.P = 500
        vp.maxForce = Vector3.new(math.huge, 0, math.huge)
        vp.velocity = prop.CFrame.lookVector * knock + prop.Velocity / 1.05
        if knock > 0 then
          vp.Parent = hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp, 0.5)
      else
        do
          if type == 2 then
            so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
            local asd = randomizer(critchance)
            if asd == true then
              turncrit()
            end
            if crit == false then
              game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
            else
              game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D + math.random(critdamageaddmin, critdamageaddmax), 1)
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
                  game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
                else
                  game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D + math.random(critdamageaddmin, critdamageaddmax), 1)
                end
                char.Humanoid.Health = char.Humanoid.Health + D / 2
                so("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
                for i = 1, 10 do
                  firespaz1("Bright red", hit.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3)))
                end
              else
                do
                  if type == 4 then
                    h.Health = h.Health + D
                    so("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
                    circle("Dark green", h.Parent.Torso.CFrame * CFrame.new(0, -2.5, 0))
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

subtrackstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end

attackone = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-15)), 0.3)
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
    if torvel > 2 and torvel < 18 and hitfloor ~= nil then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
    else
      if torvel < 1 and hitfloor ~= nil then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
      end
    end
  end
  for i,v in pairs(getclosest(Hitbox.CFrame.p, 5)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, mindamage, maxdamage, 1, 1, RootPart)
    end
  end
  so("http://roblox.com/asset/?id=200632136", Hitbox, 1, 0.9)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(60), math.rad(0)), 0.4)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.3, 0.5, 0.5) * angles(math.rad(90), math.rad(0), math.rad(120)), 0.4)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
    if torvel > 2 and torvel < 18 and hitfloor ~= nil then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
    else
      if torvel < 1 and hitfloor ~= nil then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
      end
    end
  end
  attack = false
  atktype(1, 2)
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(60), math.rad(0)), 0.3)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-90)), 0.3)
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
    if torvel > 2 and torvel < 18 and hitfloor ~= nil then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
    else
      if torvel < 1 and hitfloor ~= nil then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
      end
    end
  end
  for i,v in pairs(getclosest(Hitbox.CFrame.p, 5)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, mindamage, maxdamage, 1, 1, RootPart)
    end
  end
  so("http://roblox.com/asset/?id=200632136", Hitbox, 1, 0.8)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(-80), math.rad(0)), 0.4)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-40 * i)), 0.4)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
    if torvel > 2 and torvel < 18 and hitfloor ~= nil then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
    else
      if torvel < 1 and hitfloor ~= nil then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
      end
    end
  end
  attack = false
  atktype(1, 1)
end

eat = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-170)), 0.3)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
    if torvel > 2 and torvel < 18 and hitfloor ~= nil then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
    else
      if torvel < 1 and hitfloor ~= nil then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
      end
    end
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.01 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-130), math.rad(-150)), 0.3)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.3)
    if torvel > 2 and torvel < 18 and hitfloor ~= nil then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
    else
      if torvel < 1 and hitfloor ~= nil then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
      end
    end
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

hammerfist = function()
  attack = true
  skill1 = true
  char.Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = Lerp(RH.C0, cf(0.5, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(5)) * angles(math.rad(-2), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = Lerp(LH.C0, cf(-0.5, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632875", torso, 1, 0.9)
  so("http://roblox.com/asset/?id=263610131", torso, 1, 1)
  so("http://roblox.com/asset/?id=263610111", torso, 1, 1)
  local asd = sphere(Vector3.new(1, 0.25, 1), RootPart.CFrame * CFrame.new(0, -2, 0), 0.025, Vector3.new(1, 1, 1), 3)
  asd.BrickColor = BrickColor.new("New Yeller")
  local asd = blast(Vector3.new(1, 2, 1), RootPart.CFrame * CFrame.new(0, -2, 0), 0.025, Vector3.new(1, 0, 1), 3)
  asd.BrickColor = BrickColor.new("New Yeller")
  for i,v in pairs(FindNearestTorso(torso.CFrame.p, 15)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, 10, 15, 1, 1, RootPart)
    end
  end
  local hit, pos = rayCast(Hitbox.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
  if hit ~= nil then
    local ref = part(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", Vector3.new())
    ref.Anchored = true
    ref.CFrame = cf(pos)
    game:GetService("Debris"):AddItem(ref, 3)
    for i = 1, 5 do
      local Col = hit.BrickColor
      local groundpart = part(3, workspace, hit.Material, 0.5, 0, Col, "Ground", Vector3.new(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
      groundpart.Anchored = true
      groundpart.CanCollide = false
      groundpart.CFrame = cf(pos) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      game:GetService("Debris"):AddItem(groundpart, 5)
    end
  end
  do
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, -1.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(0)), 0.5)
      hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = Lerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), 0.5)
      LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-30)), 0.3)
      RH.C0 = Lerp(RH.C0, cf(0.5, -1, -0.2) * angles(math.rad(-40), math.rad(0), math.rad(0)) * angles(math.rad(2), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = Lerp(LH.C0, cf(-0.5, 0.5, -0.5) * angles(math.rad(40), math.rad(0), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.3)
      Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
      Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
    end
    attack = false
    char.Humanoid.WalkSpeed = 16
    skill1 = false
  end
end

weld5 = function(part0, part1, c0, c1)
  local weeld = Instance.new("Weld", part0)
  weeld.Part0 = part0
  weeld.Part1 = part1
  weeld.C0 = c0
  weeld.C1 = c1
  return weeld
end

grabMove = function(follow, target, offset, delay)
  coroutine.resume(coroutine.create(function()
    local timer = time()
    target.Anchored = true
    while game:service("RunService").RenderStepped:wait(0) do
      target.CFrame = follow.CFrame * offset
      if timer + delay < time() then
        target.Anchored = false
        break
      end
    end
  end
))
end

grabsmash = function()
  attack = true
  so("http://roblox.com/asset/?id=200632211", Hitbox, 1, 0.9)
  local target = CheckClose(rarm, 7)
  if grabbed == false then
    if target then
      target.Humanoid.PlatformStand = true
      if target ~= nil then
        grabbed = true
        subtractstamina(skill4stam)
        cooldown4 = 0
        grabMove(rarm, target:FindFirstChild("HumanoidRootPart"), CFrame.new(0, -1.7, 0) * CFrame.Angles(math.rad(-90), 0, -1.57), 0.9)
        so("http://roblox.com/asset/?id=200632821", torso, 1, 0.9)
        coroutine.wrap(function()
    wait(2)
    target.Humanoid.PlatformStand = false
  end
)()
      end
    else
      if target == nil then
        subtractstamina(skill4stam / 2)
        cooldown4 = cooldown4 / 2
      end
    end
  end
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(-40), math.rad(0)), 0.5)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.4)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = Lerp(RH.C0, cf(0.5, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(10)) * angles(math.rad(-2), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = Lerp(LH.C0, cf(-0.5, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(-10)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.4)
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(-10), math.rad(0), math.rad(50)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
  end
  if grabbed == true then
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(-50), math.rad(0)), 0.4)
      hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(40), math.rad(0)), 0.5)
      RW.C0 = Lerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.4)
      LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
      RH.C0 = Lerp(RH.C0, cf(0.5, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(10)) * angles(math.rad(-2), math.rad(0), math.rad(0)), 0.4)
      LH.C0 = Lerp(LH.C0, cf(-0.5, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(10)) * angles(math.rad(-3), math.rad(0), math.rad(0)), 0.4)
      Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
      Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
      Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.3)
      Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(-10), math.rad(0), math.rad(50)), 0.3)
      Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
    end
    so("rbxassetid://" .. misc.GroundSlam, torso, 1, 0.9)
    local asd = sphere(Vector3.new(1, 0.25, 1), RootPart.CFrame * CFrame.new(0, -2, 0), 0.025, Vector3.new(1, 1, 1), 3)
    asd.BrickColor = BrickColor.new("New Yeller")
    local asd = blast(Vector3.new(1, 2, 1), RootPart.CFrame * CFrame.new(0, -2, 0), 0.025, Vector3.new(1, 0, 1), 3)
    asd.BrickColor = BrickColor.new("New Yeller")
    for i,v in pairs(FindNearestTorso(torso.CFrame.p, 15)) do
      if v:FindFirstChild("Humanoid") then
        damage(v.Torso, 15, 21, 1, 1, RootPart)
      end
    end
    for i = 0, 1, 0.1 do
      fat.Event:wait()
      torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-50), math.rad(70), math.rad(0)), 0.4)
      hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.5)
      RW.C0 = Lerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.4)
      LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-70)), 0.3)
      RH.C0 = Lerp(RH.C0, cf(0.5, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(50)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.4)
      LH.C0 = Lerp(LH.C0, cf(-0.5, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(-50)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
      Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
      Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
      Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.3)
      Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(-10), math.rad(0), math.rad(50)), 0.3)
      Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
    end
  end
  do
    grabbed = false
    attack = false
  end
end

goldenpunch = function()
  attack = true
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)), 0.3)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(60), math.rad(0)), 0.3)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.3, 0.5, -0.5) * angles(math.rad(-50), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-90)), 0.3)
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
    if torvel > 2 and torvel < 18 and hitfloor ~= nil then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
    else
      if torvel < 1 and hitfloor ~= nil then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
      end
    end
  end
  for i,v in pairs(getclosest(Hitbox.CFrame.p, 5)) do
    if v:FindFirstChild("Humanoid") then
      damage(v.Torso, mindamage + 5, maxdamage + 5, 1, 1, RootPart)
    end
  end
  so("http://roblox.com/asset/?id=200632211", Hitbox, 1, 0.5)
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    torso.Weld.C0 = Lerp(torso.Weld.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(70), math.rad(0)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, necko * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.5)
    RW.C0 = Lerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(80)), 0.4)
    LW.C0 = Lerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
    if torvel > 2 and torvel < 18 and hitfloor ~= nil then
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(40 * math.cos(sine / 10)), math.rad(-20), 0), 0.4)
    else
      if torvel < 1 and hitfloor ~= nil then
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
      end
    end
  end
  attack = false
  atktype(1, 3)
end

goldclap = function()
  attack = true
  local las = speed.Value
  speed.Value = 0
  for i = 0, 1, 0.1 do
    wait(0.016666666666667)
    torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, 0, 0), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0, 0, 0), 0.4)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.51, 0.1) * angles(1.57, 0, -0.5), 0.4)
    larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.51, 0.1) * angles(1.57, 0, 0.5), 0.4)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1, 0) * angles(0, 0, -0.1), 0.4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(0, 0, 0.1), 0.4)
    Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
    Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
    Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.3)
    Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(-10), math.rad(0), math.rad(50)), 0.3)
    Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
  end
  local a = makeeffect(workspace, Vector3.new(3, 1, 3), RootPart.CFrame * cn(0, -2, 0), 0.35, 0.025, Vector3.new(1, 0.1, 1), 10, Meshes.Blast, nil)
  a.BrickColor = BrickColor.new("New Yeller")
  local a = makeeffect(workspace, Vector3.new(3, 3, 3), RootPart.CFrame * angles(0, 1.57, 0), 0.35, 0.025, Vector3.new(1, 1, 1), 10, Meshes.Ring, nil)
  a.BrickColor = BrickColor.new("New Yeller")
  local a = makeeffect(workspace, Vector3.new(3, 3, 3), RootPart.CFrame * angles(1.57, 0, 0), 0.35, 0.025, Vector3.new(1, 1, 1), 10, Meshes.Ring, nil)
  a.BrickColor = BrickColor.new("New Yeller")
  local a = makeeffect(workspace, Vector3.new(3, 3, 3), RootPart.CFrame * angles(0, 0, 0), 0.35, 0.025, Vector3.new(1, 1, 1), 10, Meshes.Ring, nil)
  do
    a.BrickColor = BrickColor.new("New Yeller")
    so("rbxassetid://180204501", a, 1, 1)
    so("rbxassetid://180204586", a, 1, 1)
    so("rbxassetid://180204603", a, 1, 1)
    for i,v in pairs(getclosest(torso.CFrame.p, 15)) do
      if v:FindFirstChild("Humanoid") then
        damage(v.Torso, mindamage + 7, maxdamage + 7, 1, 1, RootPart)
        coroutine.wrap(function()
    if v:FindFirstChild("Stats") then
      local lasasdf = v.Stats.Speed.Value
      v.Stats.Speed.Value = v.Stats.Speed.Value - 0.5
      wait(3)
      v.Stats.Speed.Value = lasasdf
    end
  end
)()
      end
    end
    for i = 0, 1, 0.1 do
      wait(0.016666666666667)
      torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0, 0, 0), 0.8)
      hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, -0.1) * angles(-0.2, 0, 0), 0.8)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.2, 0.5, -0.5) * angles(1.57, 0, -1), 0.8)
      larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.2, 0.5, -0.5) * angles(1.57, 0, 1), 0.8)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1, 0) * angles(0, 0, -0.1), 0.8)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(0, 0, 0.1), 0.8)
      Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.3)
      Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(20), math.rad(0), math.rad(50)), 0.3)
      Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.3)
      Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(-10), math.rad(0), math.rad(50)), 0.3)
      Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
    end
    speed.Value = 1
    attack = false
  end
end

equip = function()
  equipped = true
end

unequip = function()
  equipped = false
end

equipped = true
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.Z and attack == false and equipped == true and typing == false and co1 <= cooldown1 and skill1stam <= stamina then
    subtractstamina(skill1stam)
    cooldown1 = 0
    goldenpunch()
  else
    if k.KeyCode == Enum.KeyCode.X and attack == false and equipped == true and typing == false and co2 <= cooldown2 and skill2stam <= stamina then
      subtractstamina(skill2stam)
      cooldown2 = 0
      hammerfist()
    else
      if k.KeyCode == Enum.KeyCode.C and attack == false and equipped == true and typing == false and co3 <= cooldown3 and skill3stam <= stamina then
        subtractstamina(skill3stam)
        cooldown3 = 0
        goldclap()
      else
        if k.KeyCode == Enum.KeyCode.V and attack == false and equipped == true and typing == false and co4 <= cooldown4 and skill4stam <= stamina then
          grabsmash()
        end
      end
    end
  end
end
)
inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.Slash then
    local fin = nil
    do
      typing = true
      fin = inputserv.InputBegan:connect(function(k)
    if k.KeyCode == Enum.KeyCode.Return or k.UserInputType == Enum.UserInputType.MouseButton1 then
      typing = false
      fin:disconnect()
    end
  end
)
    end
  end
end
)
mouse.Button1Down:connect(function()
  if attack == false and equipped == true then
    if attacktype == 1 then
      attackone()
    else
      if attacktype == 2 then
        attacktwo()
      end
    end
  end
end
)
updateskills = function()
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.033333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.033333333333333
  end
  if cooldown3 <= co3 then
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
  if stamina <= skill3stam then
    bar1.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar1.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= skill4stam then
    bar2.BackgroundColor3 = c3(0.4078431372549, 0.4078431372549, 0.4078431372549)
  else
    bar2.BackgroundColor3 = skillcolorscheme
  end
  if stamina <= maxstamina then
    stamina = stamina + recovermana / 30
  end
end

sine = 0
change = 1
fat.Event:connect(function()
  updateskills()
  healthcover:TweenSize(ud(1 * (char.Humanoid.Health / char.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velderp = RootPart.Velocity.y
  sine = sine + change
  hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
  char.Humanoid.WalkSpeed = 16 * speed.Value
  if equipped == true or equipped == false then
    if attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if ((idle >= 500 and attack ~= false) or RootPart.Velocity.y > 1) and hitfloor == nil and state == "none" then
      Anim = "Jump"
      if attack == false then
        torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(0.3, 0, 0), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(0.3, 0, 0), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(-0.4, 0, 0.3), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(-0.4, 0, -0.3), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1, 0) * angles(-0.4, 0, -0.3), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(-0.4, 0, 0.3), 0.2)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil and stun.Value ~= true then
        Anim = "Fall"
        if attack == false then
          torso.Weld.C0 = Lerp(torso.Weld.C0, cn(0, -1, 0) * angles(-0.1, 0, 0), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, cn(0, 1.5, 0) * angles(-0.1, 0, 0), 0.2)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, cn(1.5, 0.65, 0) * angles(0, 0, 0.7), 0.2)
          larm.Weld.C0 = Lerp(larm.Weld.C0, cn(-1.5, 0.65, 0) * angles(0, 0, -0.7), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, cn(-0.5, -1, 0) * angles(0, 0, -0.1), 0.2)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, cn(0.5, -1, 0) * angles(0, 0, 0.1), 0.2)
        end
      else
        if torvel < 1 and hitfloor ~= nil and state == "none" then
          Anim = "Idle"
          if attack == false then
            if not equipped then
              change = 1
              torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
              hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(5 * math.cos(sine / 25)), math.rad(0), 0), 0.2)
              rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(10) + math.sin(sine / 22) / 5, 0, 0), 0.2)
              larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(10) + math.sin(sine / 22) / 5, 0, 0), 0.2)
              lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
              rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.2)
              Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
              Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
              Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
              Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
              Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
            else
              if equipped == true then
                change = 1
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.1, 0) * CFrame.Angles(0, math.rad(-20), 0), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-1) + math.sin(sine / 22) / 15, math.rad(20), 0), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(-5) + math.sin(sine / 35) / 10, math.rad(-30), math.rad(30)), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(10) + math.sin(sine / 22) / 5, 0, math.rad(-10)), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(5)), 0.2)
                Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
                Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
                Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
                Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
                Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
              end
            end
          end
        else
          if torvel > 2 and torvel < 18 and hitfloor ~= nil and state == "none" then
            Anim = "Walk"
            if attack == false then
              if not equipped then
                change = 3
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(3 * math.cos(sine / 10)), 0), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(35 * math.cos(sine / 15)), math.rad(0), 0), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(-35 * math.cos(sine / 15)), math.rad(0), 0), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(35 * math.cos(sine / 15)), 0, 0), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-35 * math.cos(sine / 15)), 0, 0), 0.2)
                Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
                Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
                Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
                Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
                Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
              else
                if equipped == true then
                  change = 1
                  torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(-0.1, math.rad(0), 0), 0.2)
                  hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(0.1, math.rad(0), 0), 0.2)
                  rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(20)), 0.4)
                  larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-20)), 0.2)
                  lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, math.rad(0), 0) * CFrame.Angles(math.rad(90 * math.cos(sine / 3)), 0, 0), 0.2)
                  rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, math.rad(0), 0) * CFrame.Angles(math.rad(-90 * math.cos(sine / 3)), 0, 0), 0.2)
                  Finger1weld.C0 = Lerp(Finger1weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
                  Finger2weld.C0 = Lerp(Finger2weld.C0, cf(0, 0.07, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
                  Finger3weld.C0 = Lerp(Finger3weld.C0, cf(0, 0.08, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
                  Finger4weld.C0 = Lerp(Finger4weld.C0, cf(0, 0.09, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
                  Finger5weld.C0 = Lerp(Finger5weld.C0, cf(0, -0.1, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
                end
              end
            end
          else
            if torvel >= 18 and hitfloor ~= nil and state == "none" then
              Anim = "Run"
              if attack == false then
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(55 * math.cos(sine / 10)), math.rad(55 * math.cos(sine / 10)), 0), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(-55 * math.cos(sine / 10)), math.rad(55 * math.cos(sine / 10)), 0), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(55 * math.cos(sine / 10)), 0, 0), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-55 * math.cos(sine / 10)), 0, 0), 0.2)
              end
            else
              if state == "Sit" and attack == false then
                char.Humanoid.WalkSpeed = 0
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(40), math.rad(0), 0), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(-50), 0, math.rad(0)), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65, 0) * CFrame.Angles(math.rad(-50), math.rad(0), 0), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.3, -0.7) * CFrame.Angles(math.rad(-10), 0, 0), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(50), math.rad(0), 0), 0.2)
              end
            end
          end
        end
      end
    end
  end
end
)

