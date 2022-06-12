--Made by N3xul
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Tool")
o2 = Instance.new("Part")
o3 = Instance.new("CylinderMesh")
o4 = Instance.new("ManualWeld")
o5 = Instance.new("ManualWeld")
o6 = Instance.new("ManualWeld")
o7 = Instance.new("Part")
o8 = Instance.new("CylinderMesh")
o9 = Instance.new("Part")
o10 = Instance.new("BlockMesh")
o11 = Instance.new("Part")
o12 = Instance.new("SpecialMesh")
o13 = Instance.new("Part")
o14 = Instance.new("BlockMesh")
o15 = Instance.new("Part")
o16 = Instance.new("SpecialMesh")
o17 = Instance.new("Part")
o18 = Instance.new("SpecialMesh")
o19 = Instance.new("ManualWeld")
o20 = Instance.new("ManualWeld")
o21 = Instance.new("Part")
o22 = Instance.new("SpecialMesh")
o23 = Instance.new("Part")
o24 = Instance.new("BlockMesh")
o25 = Instance.new("Part")
o26 = Instance.new("SpecialMesh")
o27 = Instance.new("Part")
o28 = Instance.new("SpecialMesh")
o29 = Instance.new("Part")
o30 = Instance.new("SpecialMesh")
o31 = Instance.new("Part")
o32 = Instance.new("BlockMesh")
o33 = Instance.new("Part")
o34 = Instance.new("BlockMesh")
o35 = Instance.new("Part")
o36 = Instance.new("CylinderMesh")
o37 = Instance.new("ManualWeld")
o38 = Instance.new("Part")
o39 = Instance.new("CylinderMesh")
o40 = Instance.new("ManualWeld")
o41 = Instance.new("Part")
o42 = Instance.new("CylinderMesh")
o43 = Instance.new("Part")
o44 = Instance.new("Part")
o45 = Instance.new("BlockMesh")
o46 = Instance.new("Part")
o47 = Instance.new("BlockMesh")
o48 = Instance.new("Sound")
o49 = Instance.new("Sound")
o50 = Instance.new("Part")
o51 = Instance.new("BlockMesh")
o52 = Instance.new("Part")
o53 = Instance.new("BlockMesh")
o54 = Instance.new("Part")
o55 = Instance.new("BlockMesh")
o56 = Instance.new("Part")
o57 = Instance.new("SpecialMesh")
o58 = Instance.new("Part")
o59 = Instance.new("SpecialMesh")
o60 = Instance.new("Part")
o61 = Instance.new("BlockMesh")
o62 = Instance.new("Part")
o63 = Instance.new("CylinderMesh")
o64 = Instance.new("Part")
o65 = Instance.new("SpecialMesh")
o66 = Instance.new("Part")
o67 = Instance.new("SpecialMesh")
o68 = Instance.new("Part")
o69 = Instance.new("SpecialMesh")
o70 = Instance.new("Part")
o71 = Instance.new("BlockMesh")
o72 = Instance.new("Part")
o73 = Instance.new("BlockMesh")
o74 = Instance.new("Part")
o75 = Instance.new("BlockMesh")
o76 = Instance.new("Part")
o77 = Instance.new("BlockMesh")
o78 = Instance.new("Sound")
o79 = Instance.new("Sound")
o81 = Instance.new("LocalScript")
o82 = Instance.new("LocalScript")
o83 = Instance.new("NumberValue")
o84 = Instance.new("NumberValue")
o85 = Instance.new("ScreenGui")
o86 = Instance.new("Frame")
o87 = Instance.new("TextLabel")
o88 = Instance.new("Smoke")
o89 = Instance.new("Smoke")
o1.Name = "MP5"
o1.Parent = mas
o2.Parent = o1
o2.BrickColor = BrickColor.new("Black")
o2.Position = Vector3.new(64.7997589, 3.5600841, 189.739914)
o2.Rotation = Vector3.new(-97.6669846, 89.8186951, -172.333023)
o2.Anchored = true
o2.CanCollide = false
o2.Elasticity = 0
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(1, 2, 1)
o2.CFrame = CFrame.new(64.7997589, 3.5600841, 189.739914, -9.45850287e-010, 1.27329008e-010, 0.999994993, -1.00000024, 3.38244291e-007, 9.45850287e-010, 3.38244291e-007, -0.999994755, -1.27329008e-010)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.105882, 0.164706, 0.207843)
o2.Position = Vector3.new(64.7997589, 3.5600841, 189.739914)
o3.Parent = o2
o3.Scale = Vector3.new(0.142857149, 0.880952358, 0.190476194)
o4.Name = "Part-to-Part Strong Joint"
o4.Parent = o2
o4.C0 = CFrame.new(-0.5, 1, 0.5, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o4.C1 = CFrame.new(-0.564376831, 0.565850854, 0.548950195, 1.81213945e-005, 5.34667051e-005, 0.999997377, 1.00000012, -3.05161284e-005, -1.76968824e-005, 3.05162503e-005, 0.999997497, -5.3467098e-005)
o4.Part0 = o2
o4.Part1 = o17
o5.Name = "Part-to-Part Strong Joint"
o5.Parent = o2
o5.C0 = CFrame.new(-0.5, 1, 0.5, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o5.C1 = CFrame.new(0.559365273, 0.565933347, -0.453689575, -6.12972653e-005, -3.26609079e-005, -0.999997318, 1, 1.26418627e-005, -6.08810406e-005, 1.26429768e-005, -0.999997497, 3.26599547e-005)
o5.Part0 = o2
o5.Part1 = o11
o6.Name = "Part-to-Part Strong Joint"
o6.Parent = o2
o6.C0 = CFrame.new(-0.5, 1, 0.5, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o6.C1 = CFrame.new(0.499984741, 0.526150346, 0.28585434, -1.82973925e-009, 0.999997497, -3.0515117e-005, 1.00000024, 1.89564053e-009, -3.04229325e-005, -3.07655209e-005, -3.05152644e-005, -0.999997258)
o6.Part0 = o2
o6.Part1 = o68
o7.Name = "Cylinder"
o7.Parent = o1
o7.BrickColor = BrickColor.new("Really black")
o7.Position = Vector3.new(64.7997589, 3.44087291, 191.011887)
o7.Rotation = Vector3.new(-89.9911804, -89.8197784, -179.994919)
o7.Anchored = true
o7.CanCollide = false
o7.Elasticity = 0
o7.FormFactor = Enum.FormFactor.Plate
o7.Size = Vector3.new(1, 0.400000006, 1)
o7.CFrame = CFrame.new(64.7997589, 3.44087291, 191.011887, -6.10338793e-005, 5.42600276e-009, -0.999995053, -1.00000012, -6.14777164e-005, 6.10322968e-005, -6.06677968e-005, 0.999994695, 9.39564693e-009)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o7.Position = Vector3.new(64.7997589, 3.44087291, 191.011887)
o8.Parent = o7
o8.Offset = Vector3.new(0, -0.0185714271, 0)
o8.Scale = Vector3.new(0.0666666627, 0.0476190485, 0.0666666627)
o9.Parent = o1
o9.BrickColor = BrickColor.new("Black")
o9.Position = Vector3.new(64.7992706, 3.16922092, 187.78215)
o9.Rotation = Vector3.new(-167.695038, 89.8186951, -12.3031311)
o9.Anchored = true
o9.CanCollide = false
o9.Elasticity = 0
o9.FormFactor = Enum.FormFactor.Custom
o9.Size = Vector3.new(1, 0.800000012, 1)
o9.CFrame = CFrame.new(64.7992706, 3.16922092, 187.78215, 0.000139941694, 3.05202338e-005, 0.999994993, -1.83277425e-005, -1.00000024, 3.05248468e-005, 0.999994636, -1.75277128e-005, -0.000139941418)
o9.BottomSurface = Enum.SurfaceType.Smooth
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0.105882, 0.164706, 0.207843)
o9.Position = Vector3.new(64.7992706, 3.16922092, 187.78215)
o10.Parent = o9
o10.Scale = Vector3.new(0.190439999, 0.761759996, 0.190439999)
o11.Parent = o1
o11.BrickColor = BrickColor.new("Black")
o11.Position = Vector3.new(64.8461456, 3.49419403, 188.180588)
o11.Rotation = Vector3.new(-158.83873, -89.8186951, -158.839691)
o11.Anchored = true
o11.CanCollide = false
o11.Elasticity = 0
o11.FormFactor = Enum.FormFactor.Custom
o11.Size = Vector3.new(1.13, 1, 1)
o11.CFrame = CFrame.new(64.8461456, 3.49419403, 188.180588, -3.26608897e-005, 1.26423038e-005, -0.999994993, -6.1466395e-005, 1.00000012, 1.26425111e-005, 0.999994695, 6.07117581e-005, -3.26598056e-005)
o11.BottomSurface = Enum.SurfaceType.Smooth
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.105882, 0.164706, 0.207843)
o11.Position = Vector3.new(64.8461456, 3.49419403, 188.180588)
o12.Parent = o11
o12.Scale = Vector3.new(0.856980026, 0.0476099998, 0.0952199996)
o12.MeshType = Enum.MeshType.Wedge
o13.Parent = o1
o13.BrickColor = BrickColor.new("Black")
o13.Position = Vector3.new(64.7992706, 3.37131, 188.282333)
o13.Rotation = Vector3.new(154.251129, 89.8186951, -31.5058155)
o13.Anchored = true
o13.CanCollide = false
o13.Elasticity = 0
o13.FormFactor = Enum.FormFactor.Custom
o13.Size = Vector3.new(0.800000012, 1, 1)
o13.CFrame = CFrame.new(64.7992706, 3.37131, 188.282333, 2.77469381e-009, 1.7007219e-009, 0.999994993, 1.00000012, -6.14777164e-005, -9.45762024e-010, 6.07115689e-005, 0.999994695, -1.96086525e-009)
o13.BottomSurface = Enum.SurfaceType.Smooth
o13.TopSurface = Enum.SurfaceType.Smooth
o13.Color = Color3.new(0.105882, 0.164706, 0.207843)
o13.Position = Vector3.new(64.7992706, 3.37131, 188.282333)
o14.Parent = o13
o14.Scale = Vector3.new(0.238049999, 0.809369981, 0.190439999)
o15.Parent = o1
o15.BrickColor = BrickColor.new("Black")
o15.Position = Vector3.new(64.7992706, 3.07010794, 188.322067)
o15.Rotation = Vector3.new(-179.99823, 0.00174844847, -0.00349692325)
o15.Anchored = true
o15.CanCollide = false
o15.Elasticity = 0
o15.FormFactor = Enum.FormFactor.Custom
o15.Size = Vector3.new(1, 0.800000012, 1)
o15.CFrame = CFrame.new(64.7992706, 3.07010794, 188.322067, 0.999994993, 6.10325187e-005, 3.0516183e-005, 6.10337447e-005, -1.00000036, 3.09346469e-005, 3.05177819e-005, -3.02527915e-005, -0.999994636)
o15.BottomSurface = Enum.SurfaceType.Smooth
o15.TopSurface = Enum.SurfaceType.Smooth
o15.Color = Color3.new(0.105882, 0.164706, 0.207843)
o15.Position = Vector3.new(64.7992706, 3.07010794, 188.322067)
o16.Parent = o15
o16.Scale = Vector3.new(0.189999998, 0.523999989, 0.899999976)
o16.MeshType = Enum.MeshType.Wedge
o17.Parent = o1
o17.BrickColor = BrickColor.new("Black")
o17.Position = Vector3.new(64.7509308, 3.49422503, 188.175644)
o17.Rotation = Vector3.new(-29.7159615, 89.8186951, 29.7151585)
o17.Anchored = true
o17.CanCollide = false
o17.Elasticity = 0
o17.FormFactor = Enum.FormFactor.Custom
o17.Size = Vector3.new(1.12, 1, 1)
o17.CFrame = CFrame.new(64.7509308, 3.49422503, 188.175644, 5.34666324e-005, -3.05155791e-005, 0.999994993, 1.82905187e-005, 1.00000024, 3.05167177e-005, -0.999994755, 1.75277128e-005, 5.3466887e-005)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.105882, 0.164706, 0.207843)
o17.Position = Vector3.new(64.7509308, 3.49422503, 188.175644)
o18.Parent = o17
o18.Scale = Vector3.new(0.856980026, 0.0476099998, 0.0952199996)
o18.MeshType = Enum.MeshType.Wedge
o19.Name = "Part-to-Handle Strong Joint"
o19.Parent = o17
o19.C0 = CFrame.new(-0.560000002, -0.5, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o19.C1 = CFrame.new(0.548812866, -0.374901772, 0.481560707, -0.999997377, 8.81552187e-005, 4.9373557e-005, 8.81582018e-005, 1, 4.09365093e-005, -4.94189371e-005, 4.13915914e-005, -0.999996901)
o19.Part0 = o17
o19.Part1 = o46
o20.Name = "Part-to-Handle Strong Joint"
o20.Parent = o17
o20.C0 = CFrame.new(-0.560000002, -0.5, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o20.C1 = CFrame.new(0.548706055, 0.0250977278, 0.481554985, -0.999997377, 8.81552187e-005, 4.9373557e-005, 8.81582018e-005, 1, 4.09365093e-005, -4.94189371e-005, 4.13915914e-005, -0.999996901)
o20.Part0 = o17
o20.Part1 = o76
o21.Name = "Ring"
o21.Parent = o1
o21.BrickColor = BrickColor.new("Black")
o21.Position = Vector3.new(64.7997589, 3.03610396, 189.001877)
o21.Rotation = Vector3.new(-43.0563164, 89.8186951, -136.944794)
o21.Anchored = true
o21.CanCollide = false
o21.Elasticity = 0
o21.FormFactor = Enum.FormFactor.Symmetric
o21.Size = Vector3.new(1, 1, 1)
o21.CFrame = CFrame.new(64.7997589, 3.03610396, 189.001877, -3.26607951e-005, 3.05155791e-005, 0.999994993, -1.82977292e-005, -1.00000024, 3.05169906e-005, 0.999994755, -1.75277128e-005, 3.26610425e-005)
o21.BottomSurface = Enum.SurfaceType.Smooth
o21.TopSurface = Enum.SurfaceType.Smooth
o21.Color = Color3.new(0.105882, 0.164706, 0.207843)
o21.Position = Vector3.new(64.7997589, 3.03610396, 189.001877)
o22.Parent = o21
o22.MeshId = "http://www.roblox.com/asset/?id=3270017"
o22.Scale = Vector3.new(0.190476194, 0.142857149, 0.142857149)
o22.MeshType = Enum.MeshType.FileMesh
o23.Parent = o1
o23.BrickColor = BrickColor.new("Black")
o23.Position = Vector3.new(64.7997589, 3.4409349, 190.430832)
o23.Rotation = Vector3.new(-153.430954, -89.8197784, 116.566055)
o23.Anchored = true
o23.CanCollide = false
o23.Elasticity = 0
o23.FormFactor = Enum.FormFactor.Symmetric
o23.Size = Vector3.new(1, 1, 1)
o23.CFrame = CFrame.new(64.7997589, 3.4409349, 190.430832, -6.10394636e-005, -0.000122073558, -0.999995053, -1.00000012, -6.13757948e-005, 6.10454299e-005, -6.06677968e-005, 0.999994695, -0.00012206957)
o23.BottomSurface = Enum.SurfaceType.Smooth
o23.TopSurface = Enum.SurfaceType.Smooth
o23.Color = Color3.new(0.105882, 0.164706, 0.207843)
o23.Position = Vector3.new(64.7997589, 3.4409349, 190.430832)
o24.Parent = o23
o24.Scale = Vector3.new(0.190476194, 0.285714298, 0.190476194)
o25.Parent = o1
o25.BrickColor = BrickColor.new("Black")
o25.Position = Vector3.new(64.7997589, 3.10703397, 188.668991)
o25.Rotation = Vector3.new(0.00177023129, 0.00174864498, 180)
o25.Anchored = true
o25.CanCollide = false
o25.Elasticity = 0
o25.FormFactor = Enum.FormFactor.Symmetric
o25.Size = Vector3.new(1, 1, 1)
o25.CFrame = CFrame.new(64.7997589, 3.10703397, 188.668991, -0.999994993, -1.43723955e-009, 3.05196118e-005, -1.50779e-009, -1.00000036, -3.08961971e-005, 3.05198337e-005, -3.02537301e-005, 0.999994636)
o25.BottomSurface = Enum.SurfaceType.Smooth
o25.TopSurface = Enum.SurfaceType.Smooth
o25.Color = Color3.new(0.105882, 0.164706, 0.207843)
o25.Position = Vector3.new(64.7997589, 3.10703397, 188.668991)
o26.Parent = o25
o26.Scale = Vector3.new(0.190476194, 0.190476194, 0.095238097)
o26.MeshType = Enum.MeshType.Wedge
o27.Parent = o1
o27.BrickColor = BrickColor.new("Black")
o27.Position = Vector3.new(64.7997589, 3.24986506, 190.049835)
o27.Rotation = Vector3.new(-89.9946518, 0.000724241894, -180)
o27.Anchored = true
o27.CanCollide = false
o27.Elasticity = 0
o27.FormFactor = Enum.FormFactor.Symmetric
o27.Size = Vector3.new(1, 1, 1)
o27.CFrame = CFrame.new(64.7997589, 3.24986506, 190.049835, -0.999994993, 2.26459185e-009, 1.26404057e-005, 1.26386749e-005, -9.40069585e-005, 1.00000012, 3.64128883e-009, 0.999994636, 9.34047712e-005)
o27.BottomSurface = Enum.SurfaceType.Smooth
o27.TopSurface = Enum.SurfaceType.Smooth
o27.Color = Color3.new(0.105882, 0.164706, 0.207843)
o27.Position = Vector3.new(64.7997589, 3.24986506, 190.049835)
o28.Parent = o27
o28.Scale = Vector3.new(0.190476194, 0.476190478, 0.095238097)
o28.MeshType = Enum.MeshType.Wedge
o29.Parent = o1
o29.BrickColor = BrickColor.new("Black")
o29.Position = Vector3.new(64.7997589, 3.32202888, 190.43071)
o29.Rotation = Vector3.new(-89.9946518, 0.000724241894, -180)
o29.Anchored = true
o29.CanCollide = false
o29.Elasticity = 0
o29.FormFactor = Enum.FormFactor.Symmetric
o29.Size = Vector3.new(1, 1, 1)
o29.CFrame = CFrame.new(64.7997589, 3.32202888, 190.43071, -0.999994993, 2.26459185e-009, 1.26404057e-005, 1.26386749e-005, -9.40069585e-005, 1.00000012, 3.64128883e-009, 0.999994636, 9.34047712e-005)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.105882, 0.164706, 0.207843)
o29.Position = Vector3.new(64.7997589, 3.32202888, 190.43071)
o30.Parent = o29
o30.Scale = Vector3.new(0.190476194, 0.285714298, 0.0476190485)
o30.MeshType = Enum.MeshType.Wedge
o31.Parent = o1
o31.BrickColor = BrickColor.new("Black")
o31.Position = Vector3.new(64.8002548, 2.87211609, 188.769821)
o31.Rotation = Vector3.new(15.0020313, -90, 0)
o31.Anchored = true
o31.CanCollide = false
o31.Elasticity = 0
o31.FormFactor = Enum.FormFactor.Symmetric
o31.Size = Vector3.new(1, 1, 1)
o31.CFrame = CFrame.new(64.8002548, 2.87211609, 188.769821, -4.58633258e-005, 7.67308029e-006, -1.00000036, -0.258853376, 0.965916991, 1.78985865e-005, 0.96591717, 0.25885129, -4.25535036e-005)
o31.BottomSurface = Enum.SurfaceType.Smooth
o31.TopSurface = Enum.SurfaceType.Smooth
o31.Color = Color3.new(0.105882, 0.164706, 0.207843)
o31.Position = Vector3.new(64.8002548, 2.87211609, 188.769821)
o32.Parent = o31
o32.Scale = Vector3.new(0.238095239, 0.476190478, 0.190476194)
o33.Parent = o1
o33.BrickColor = BrickColor.new("Black")
o33.Position = Vector3.new(64.7997589, 3.1309669, 189.144821)
o33.Rotation = Vector3.new(-89.9911804, -89.8197784, -179.994919)
o33.Anchored = true
o33.CanCollide = false
o33.Elasticity = 0
o33.FormFactor = Enum.FormFactor.Symmetric
o33.Size = Vector3.new(1, 1, 1)
o33.CFrame = CFrame.new(64.7997589, 3.1309669, 189.144821, -6.10338793e-005, 5.42600276e-009, -0.999995053, -1.00000012, -6.14777164e-005, 6.10322968e-005, -6.06677968e-005, 0.999994695, 9.39564693e-009)
o33.BottomSurface = Enum.SurfaceType.Smooth
o33.TopSurface = Enum.SurfaceType.Smooth
o33.Color = Color3.new(0.105882, 0.164706, 0.207843)
o33.Position = Vector3.new(64.7997589, 3.1309669, 189.144821)
o34.Parent = o33
o34.Scale = Vector3.new(0.142857149, 0.857142866, 0.190476194)
o35.Parent = o1
o35.BrickColor = BrickColor.new("Black")
o35.Position = Vector3.new(64.7997589, 3.41701007, 189.239914)
o35.Rotation = Vector3.new(-97.6669846, 89.8186951, -172.333023)
o35.Anchored = true
o35.CanCollide = false
o35.Elasticity = 0
o35.FormFactor = Enum.FormFactor.Symmetric
o35.Size = Vector3.new(1, 1, 1)
o35.CFrame = CFrame.new(64.7997589, 3.41701007, 189.239914, -9.45850287e-010, 1.27329008e-010, 0.999994993, -1.00000024, 3.38244291e-007, 9.45850287e-010, 3.38244291e-007, -0.999994755, -1.27329008e-010)
o35.BottomSurface = Enum.SurfaceType.Smooth
o35.TopSurface = Enum.SurfaceType.Smooth
o35.Color = Color3.new(0.105882, 0.164706, 0.207843)
o35.Position = Vector3.new(64.7997589, 3.41701007, 189.239914)
o36.Parent = o35
o36.Scale = Vector3.new(0.238095239, 1.23809528, 0.285714298)
o37.Name = "Part-to-Part Strong Joint"
o37.Parent = o35
o37.C0 = CFrame.new(-0.5, 0.5, 0.5, -1, 0, 0, 0, 0, 1, 0, 1, -0)
o37.C1 = CFrame.new(0.499938965, 0.383073211, 0.285767555, -1.82973925e-009, 0.999997497, -3.0515117e-005, 1.00000024, 1.89564053e-009, -3.04229325e-005, -3.07655209e-005, -3.05152644e-005, -0.999997258)
o37.Part0 = o35
o37.Part1 = o68
o38.Parent = o1
o38.BrickColor = BrickColor.new("Black")
o38.Position = Vector3.new(64.7997589, 3.44089389, 190.787766)
o38.Rotation = Vector3.new(-166.438477, 89.8186951, 105.015259)
o38.Anchored = true
o38.CanCollide = false
o38.Elasticity = 0
o38.FormFactor = Enum.FormFactor.Symmetric
o38.Size = Vector3.new(1, 1, 1)
o38.CFrame = CFrame.new(64.7997589, 3.44089389, 190.787766, -9.65567626e-010, -3.59971342e-009, 0.999994993, -1.00000036, 0.000122408586, 9.17020848e-010, -0.000121761404, -0.999994695, -3.80167808e-009)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.TopSurface = Enum.SurfaceType.Smooth
o38.Color = Color3.new(0.105882, 0.164706, 0.207843)
o38.Position = Vector3.new(64.7997589, 3.44089389, 190.787766)
o39.Parent = o38
o39.Scale = Vector3.new(0.095238097, 0.428571433, 0.095238097)
o40.Name = "Part-to-SmokePart Strong Joint"
o40.Parent = o38
o40.C0 = CFrame.new(0.5, -0.5, 0.5, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o40.C1 = CFrame.new(0.49979198, -0.100028992, -0.500137329, 0.999999881, -0.000346633024, 4.77284084e-005, -4.75942979e-005, -1.53355468e-005, 0.999998391, -0.000346632412, -0.999998689, -1.53520814e-005)
o40.Part0 = o38
o40.Part1 = o41
o41.Name = "SmokePart"
o41.Parent = o1
o41.BrickColor = BrickColor.new("Black")
o41.Transparency = 1
o41.Position = Vector3.new(64.7997589, 3.44079804, 191.387741)
o41.Rotation = Vector3.new(-92.5283127, -89.8417435, 177.467407)
o41.Anchored = true
o41.CanCollide = false
o41.FormFactor = Enum.FormFactor.Custom
o41.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o41.CFrame = CFrame.new(64.7997589, 3.44079804, 191.387741, -0.000346632645, -1.53318979e-005, -0.999996185, -0.999999881, -7.46749211e-005, 0.000346633838, -7.41725598e-005, 0.999995828, -1.53059973e-005)
o41.BottomSurface = Enum.SurfaceType.Smooth
o41.TopSurface = Enum.SurfaceType.Smooth
o41.Color = Color3.new(0.105882, 0.164706, 0.207843)
o41.Position = Vector3.new(64.7997589, 3.44079804, 191.387741)
o42.Parent = o41
o42.Scale = Vector3.new(0.600000024, 1, 0.600000024)
o43.Name = "AimPart"
o43.Parent = o1
o43.BrickColor = BrickColor.new("Black")
o43.Transparency = 1
o43.Position = Vector3.new(64.8009796, 3.73413992, 188.265549)
o43.Rotation = Vector3.new(-179.995712, 0.000878453022, -179.980148)
o43.Anchored = true
o43.CanCollide = false
o43.FormFactor = Enum.FormFactor.Custom
o43.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o43.CFrame = CFrame.new(64.8009796, 3.73413992, 188.265549, -0.999996185, 0.000346632645, 1.53318979e-005, 0.000346633838, 0.999999881, 7.46749211e-005, -1.53059973e-005, 7.41725598e-005, -0.999995828)
o43.BottomSurface = Enum.SurfaceType.Smooth
o43.TopSurface = Enum.SurfaceType.Smooth
o43.Color = Color3.new(0.105882, 0.164706, 0.207843)
o43.Position = Vector3.new(64.8009796, 3.73413992, 188.265549)
o44.Name = "Block"
o44.Parent = o1
o44.BrickColor = BrickColor.new("Black")
o44.Position = Vector3.new(64.7997589, 3.04699206, 189.01207)
o44.Rotation = Vector3.new(14.8787241, -89.9115295, 136.456451)
o44.Anchored = true
o44.CanCollide = false
o44.Elasticity = 0
o44.FormFactor = Enum.FormFactor.Plate
o44.Size = Vector3.new(1, 0.400000006, 1)
o44.CFrame = CFrame.new(64.7997589, 3.04699206, 189.01207, -4.60980118e-005, -4.38120223e-005, -0.999998808, 0.866055429, -0.499959826, -1.46961384e-005, -0.499953657, -0.866050363, 5.5314802e-005)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.105882, 0.164706, 0.207843)
o44.Position = Vector3.new(64.7997589, 3.04699206, 189.01207)
o45.Parent = o44
o45.Scale = Vector3.new(0.095238097, 0.0476190485, 0.0476190485)
o46.Name = "Handle2"
o46.Parent = o1
o46.BrickColor = BrickColor.new("Black")
o46.Position = Vector3.new(64.7997589, 3.36904407, 189.217087)
o46.Rotation = Vector3.new(-179.996597, 0.000231844577, -179.996704)
o46.Anchored = true
o46.CanCollide = false
o46.Elasticity = 0
o46.FormFactor = Enum.FormFactor.Symmetric
o46.Size = Vector3.new(1, 1, 1)
o46.CFrame = CFrame.new(64.7997589, 3.36904407, 189.217087, -0.999994874, 5.76396233e-005, 4.04645107e-006, 5.76382517e-005, 1.00000012, 5.94268422e-005, -4.09197901e-006, 5.87225804e-005, -0.999994278)
o46.BottomSurface = Enum.SurfaceType.Smooth
o46.TopSurface = Enum.SurfaceType.Smooth
o46.Color = Color3.new(0.105882, 0.164706, 0.207843)
o46.Position = Vector3.new(64.7997589, 3.36904407, 189.217087)
o47.Parent = o46
o47.Scale = Vector3.new(0.189999998, 0.333000004, 1.19000006)
o48.Name = "Shoot"
o48.Parent = o46
o48.Pitch = 1.25
o48.SoundId = "http://www.roblox.com/asset/?id=97852331"
o48.Volume = 1
o49.Name = "Reload"
o49.Parent = o46
o49.SoundId = "http://www.roblox.com/asset/?id=2691591"
o49.Volume = 0.10000000149012
o50.Name = "Mag1"
o50.Parent = o1
o50.BrickColor = BrickColor.new("Black")
o50.Position = Vector3.new(64.8000031, 2.50102401, 189.563995)
o50.Rotation = Vector3.new(-29.9793606, 0.00228532869, -89.9719467)
o50.Anchored = true
o50.CanCollide = false
o50.Elasticity = 0
o50.FormFactor = Enum.FormFactor.Symmetric
o50.Size = Vector3.new(1, 1, 1)
o50.CFrame = CFrame.new(64.8000031, 2.50102401, 189.563995, 0.000489678059, 0.999993145, 3.98865086e-005, -0.866204798, 0.000404494232, 0.499685794, 0.49968347, -0.000278345484, 0.866201699)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(0.105882, 0.164706, 0.207843)
o50.Position = Vector3.new(64.8000031, 2.50102401, 189.563995)
o51.Parent = o50
o51.Scale = Vector3.new(0.285714298, 0.142857149, 0.238095239)
o52.Name = "Mag1"
o52.Parent = o1
o52.BrickColor = BrickColor.new("Black")
o52.Position = Vector3.new(64.8002548, 2.76496911, 189.462082)
o52.Rotation = Vector3.new(-14.9799595, -0.00165438349, -89.9693985)
o52.Anchored = true
o52.CanCollide = false
o52.Elasticity = 0
o52.FormFactor = Enum.FormFactor.Symmetric
o52.Size = Vector3.new(1, 1, 1)
o52.CFrame = CFrame.new(64.8002548, 2.76496911, 189.462082, 0.000534141553, 0.999994874, -2.88744395e-005, -0.966016829, 0.000523457886, 0.258479834, 0.25847891, -0.000110172186, 0.966011345)
o52.BottomSurface = Enum.SurfaceType.Smooth
o52.TopSurface = Enum.SurfaceType.Smooth
o52.Color = Color3.new(0.105882, 0.164706, 0.207843)
o52.Position = Vector3.new(64.8002548, 2.76496911, 189.462082)
o53.Parent = o52
o53.Scale = Vector3.new(0.380952388, 0.142857149, 0.238095239)
o54.Name = "Mag1"
o54.Parent = o1
o54.BrickColor = BrickColor.new("Black")
o54.Position = Vector3.new(64.8002548, 2.99808002, 189.416794)
o54.Rotation = Vector3.new(111.803017, -89.8176193, 21.7998009)
o54.Anchored = true
o54.CanCollide = false
o54.Elasticity = 0
o54.FormFactor = Enum.FormFactor.Symmetric
o54.Size = Vector3.new(1, 1, 1)
o54.CFrame = CFrame.new(64.8002548, 2.99808002, 189.416794, 0.000305180816, -0.000122062389, -0.999994934, -1.00000012, -6.1375802e-005, -0.000305176771, -6.06919893e-005, 0.999994695, -0.000122080659)
o54.BottomSurface = Enum.SurfaceType.Smooth
o54.TopSurface = Enum.SurfaceType.Smooth
o54.Color = Color3.new(0.105882, 0.164706, 0.207843)
o54.Position = Vector3.new(64.8002548, 2.99808002, 189.416794)
o55.Parent = o54
o55.Scale = Vector3.new(0.190476194, 0.238095239, 0.142857149)
o56.Name = "NoSight"
o56.Parent = o1
o56.BrickColor = BrickColor.new("Black")
o56.Position = Vector3.new(64.7997589, 3.66114807, 188.862091)
o56.Rotation = Vector3.new(-106.1222, -68.8593826, -134.142578)
o56.Anchored = true
o56.CanCollide = false
o56.Elasticity = 0
o56.FormFactor = Enum.FormFactor.Symmetric
o56.Size = Vector3.new(1, 1, 1)
o56.CFrame = CFrame.new(64.7997589, 3.66114807, 188.862091, -0.251169264, 0.258801401, -0.932698071, -0.424759388, 0.836387455, 0.34646222, 0.869761705, 0.483191997, -0.100146636)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.TopSurface = Enum.SurfaceType.Smooth
o56.Color = Color3.new(0.105882, 0.164706, 0.207843)
o56.Position = Vector3.new(64.7997589, 3.66114807, 188.862091)
o57.Parent = o56
o57.MeshId = "http://www.roblox.com/Asset/?id=9944765"
o57.Scale = Vector3.new(0.142857149, 0.142857149, 0.142857149)
o57.MeshType = Enum.MeshType.FileMesh
o58.Name = "NoSight"
o58.Parent = o1
o58.BrickColor = BrickColor.new("Black")
o58.Position = Vector3.new(64.7997589, 3.66114807, 188.862091)
o58.Rotation = Vector3.new(119.990768, 15.0025549, 75.0391693)
o58.Anchored = true
o58.CanCollide = false
o58.Elasticity = 0
o58.FormFactor = Enum.FormFactor.Symmetric
o58.Size = Vector3.new(1, 1, 1)
o58.CFrame = CFrame.new(64.7997589, 3.66114807, 188.862091, 0.24935782, -0.933167219, 0.258862108, -0.425039113, -0.345646948, -0.836582661, 0.870146036, 0.0985820517, -0.482821465)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.TopSurface = Enum.SurfaceType.Smooth
o58.Color = Color3.new(0.105882, 0.164706, 0.207843)
o58.Position = Vector3.new(64.7997589, 3.66114807, 188.862091)
o59.Parent = o58
o59.MeshId = "http://www.roblox.com/Asset/?id=9944765"
o59.Scale = Vector3.new(0.142857149, 0.142857149, 0.142857149)
o59.MeshType = Enum.MeshType.FileMesh
o60.Name = "NoSight"
o60.Parent = o1
o60.BrickColor = BrickColor.new("Black")
o60.Position = Vector3.new(64.7997589, 3.67897892, 190.549973)
o60.Rotation = Vector3.new(-179.996475, 0.0024725874, -90.003624)
o60.Anchored = true
o60.CanCollide = false
o60.Elasticity = 0
o60.FormFactor = Enum.FormFactor.Custom
o60.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o60.CFrame = CFrame.new(64.7997589, 3.67897892, 190.549973, -6.31777293e-005, 0.999994993, 4.31547924e-005, 1.00000012, 6.31772564e-005, 6.14031524e-005, 6.07106012e-005, 4.31583721e-005, -0.999994695)
o60.BottomSurface = Enum.SurfaceType.Smooth
o60.TopSurface = Enum.SurfaceType.Smooth
o60.Color = Color3.new(0.105882, 0.164706, 0.207843)
o60.Position = Vector3.new(64.7997589, 3.67897892, 190.549973)
o61.Parent = o60
o61.Scale = Vector3.new(0.476190478, 0.0476190485, 0.142857149)
o62.Name = "NoSight"
o62.Parent = o1
o62.BrickColor = BrickColor.new("Black")
o62.Position = Vector3.new(64.7997589, 3.6000061, 188.825851)
o62.Rotation = Vector3.new(27.7044449, 89.8144302, -177.703186)
o62.Anchored = true
o62.CanCollide = false
o62.Elasticity = 0
o62.FormFactor = Enum.FormFactor.Symmetric
o62.Size = Vector3.new(1, 1, 1)
o62.CFrame = CFrame.new(64.7997589, 3.6000061, 188.825851, -0.000678399869, 2.72095167e-005, 0.999994755, -0.500019014, -0.866014719, -0.000315648853, 0.866009951, -0.500015795, 0.000601109175)
o62.BottomSurface = Enum.SurfaceType.Smooth
o62.TopSurface = Enum.SurfaceType.Smooth
o62.Color = Color3.new(0.105882, 0.164706, 0.207843)
o62.Position = Vector3.new(64.7997589, 3.6000061, 188.825851)
o63.Parent = o62
o63.Scale = Vector3.new(0.142857149, 0.142857149, 0.190476194)
o64.Name = "NoSight"
o64.Parent = o1
o64.BrickColor = BrickColor.new("Black")
o64.Position = Vector3.new(64.8000031, 3.73597193, 190.550095)
o64.Rotation = Vector3.new(0.00352243241, 1.50804908e-007, 90.0017548)
o64.Anchored = true
o64.CanCollide = false
o64.Elasticity = 0
o64.FormFactor = Enum.FormFactor.Symmetric
o64.Size = Vector3.new(1, 1, 1)
o64.CFrame = CFrame.new(64.8000031, 3.73597193, 190.550095, -3.05156009e-005, -0.999994993, 2.63204214e-009, 1.00000012, -3.05176254e-005, -6.14777164e-005, 6.07111033e-005, 1.02924946e-009, 0.999994695)
o64.BottomSurface = Enum.SurfaceType.Smooth
o64.TopSurface = Enum.SurfaceType.Smooth
o64.Color = Color3.new(0.105882, 0.164706, 0.207843)
o64.Position = Vector3.new(64.8000031, 3.73597193, 190.550095)
o65.Parent = o64
o65.MeshId = "http://www.roblox.com/asset/?id=3270017"
o65.Scale = Vector3.new(0.095238097, 0.095238097, 0.095238097)
o65.MeshType = Enum.MeshType.FileMesh
o66.Parent = o1
o66.BrickColor = BrickColor.new("Black")
o66.Position = Vector3.new(64.7997589, 3.58407807, 188.88298)
o66.Rotation = Vector3.new(90.0004196, -0.000724297483, -1.90515195e-007)
o66.Anchored = true
o66.CanCollide = false
o66.Elasticity = 0
o66.FormFactor = Enum.FormFactor.Symmetric
o66.Size = Vector3.new(1, 1, 1)
o66.CFrame = CFrame.new(64.7997589, 3.58407807, 188.88298, 0.999994993, 3.32510064e-009, -1.26413761e-005, -1.26395771e-005, -7.952739e-006, -1.00000012, -3.68494413e-009, 0.999994755, -7.33600837e-006)
o66.BottomSurface = Enum.SurfaceType.Smooth
o66.TopSurface = Enum.SurfaceType.Smooth
o66.Color = Color3.new(0.105882, 0.164706, 0.207843)
o66.Position = Vector3.new(64.7997589, 3.58407807, 188.88298)
o67.Parent = o66
o67.Scale = Vector3.new(0.190476194, 0.0476190485, 0.095238097)
o67.MeshType = Enum.MeshType.Wedge
o68.Parent = o1
o68.BrickColor = BrickColor.new("Black")
o68.Position = Vector3.new(64.7997589, 3.53394389, 188.454025)
o68.Rotation = Vector3.new(0.00177243433, -0.00174839515, -1.35709158e-007)
o68.Anchored = true
o68.CanCollide = false
o68.Elasticity = 0
o68.FormFactor = Enum.FormFactor.Custom
o68.Size = Vector3.new(1, 0.219999999, 0.570000052)
o68.CFrame = CFrame.new(64.7997589, 3.53394389, 188.454025, 0.999994993, 2.36855979e-009, -3.05152516e-005, -1.36197564e-009, 1.00000036, -3.09346469e-005, 3.05149733e-005, 3.02537301e-005, 0.999994636)
o68.BottomSurface = Enum.SurfaceType.Smooth
o68.TopSurface = Enum.SurfaceType.Smooth
o68.Color = Color3.new(0.105882, 0.164706, 0.207843)
o68.Position = Vector3.new(64.7997589, 3.53394389, 188.454025)
o69.Parent = o68
o69.Scale = Vector3.new(0.189999998, 0.949999988, 0.949999988)
o69.MeshType = Enum.MeshType.Wedge
o70.Parent = o1
o70.BrickColor = BrickColor.new("Black")
o70.Position = Vector3.new(64.7997589, 3.61193204, 190.550095)
o70.Rotation = Vector3.new(90.0047379, -89.8176193, 0.00127064111)
o70.Anchored = true
o70.CanCollide = false
o70.Elasticity = 0
o70.FormFactor = Enum.FormFactor.Symmetric
o70.Size = Vector3.new(1, 1, 1)
o70.CFrame = CFrame.new(64.7997589, 3.61193204, 190.550095, 0.000427170366, -9.47330214e-009, -0.999994934, -1.00000024, -6.14777164e-005, -0.00042717444, -6.07348229e-005, 0.999994695, -3.53142831e-008)
o70.BottomSurface = Enum.SurfaceType.Smooth
o70.TopSurface = Enum.SurfaceType.Smooth
o70.Color = Color3.new(0.105882, 0.164706, 0.207843)
o70.Position = Vector3.new(64.7997589, 3.61193204, 190.550095)
o71.Parent = o70
o71.Scale = Vector3.new(0.095238097, 0.0476190485, 0.0476190485)
o72.Parent = o1
o72.BrickColor = BrickColor.new("Black")
o72.Position = Vector3.new(64.7997589, 3.41701007, 190.049973)
o72.Rotation = Vector3.new(153.437561, -89.8186951, 63.4349518)
o72.Anchored = true
o72.CanCollide = false
o72.Elasticity = 0
o72.FormFactor = Enum.FormFactor.Symmetric
o72.Size = Vector3.new(1, 1, 1)
o72.CFrame = CFrame.new(64.7997589, 3.41701007, 190.049973, 6.10321113e-005, -0.000122064252, -0.999994993, -1.00000012, -6.1375802e-005, -6.10268471e-005, -6.07106304e-005, 0.999994695, -0.000122067642)
o72.BottomSurface = Enum.SurfaceType.Smooth
o72.TopSurface = Enum.SurfaceType.Smooth
o72.Color = Color3.new(0.105882, 0.164706, 0.207843)
o72.Position = Vector3.new(64.7997589, 3.41701007, 190.049973)
o73.Parent = o72
o73.Scale = Vector3.new(0.238095239, 0.476190478, 0.190476194)
o74.Parent = o1
o74.BrickColor = BrickColor.new("Black")
o74.Position = Vector3.new(64.7997589, 3.58418393, 188.788132)
o74.Rotation = Vector3.new(-89.9911804, -89.8197784, -179.994919)
o74.Anchored = true
o74.CanCollide = false
o74.Elasticity = 0
o74.FormFactor = Enum.FormFactor.Symmetric
o74.Size = Vector3.new(1, 1, 1)
o74.CFrame = CFrame.new(64.7997589, 3.58418393, 188.788132, -6.10338793e-005, 5.42600276e-009, -0.999995053, -1.00000012, -6.14777164e-005, 6.10322968e-005, -6.06677968e-005, 0.999994695, 9.39564693e-009)
o74.BottomSurface = Enum.SurfaceType.Smooth
o74.TopSurface = Enum.SurfaceType.Smooth
o74.Color = Color3.new(0.105882, 0.164706, 0.207843)
o74.Position = Vector3.new(64.7997589, 3.58418393, 188.788132)
o75.Parent = o74
o75.Scale = Vector3.new(0.095238097, 0.142857149, 0.190476194)
o76.Name = "Handle"
o76.Parent = o1
o76.BrickColor = BrickColor.new("Black")
o76.Transparency = 1
o76.Position = Vector3.new(64.7997589, 2.96903396, 189.217087)
o76.Rotation = Vector3.new(-179.996597, 0.000231844577, -179.996704)
o76.Anchored = true
o76.CanCollide = false
o76.Elasticity = 0
o76.FormFactor = Enum.FormFactor.Symmetric
o76.Size = Vector3.new(1, 1, 1)
o76.CFrame = CFrame.new(64.7997589, 2.96903396, 189.217087, -0.999994874, 5.76396233e-005, 4.04645107e-006, 5.76382517e-005, 1.00000012, 5.94268422e-005, -4.09197901e-006, 5.87225804e-005, -0.999994278)
o76.BottomSurface = Enum.SurfaceType.Smooth
o76.TopSurface = Enum.SurfaceType.Smooth
o76.Color = Color3.new(0.105882, 0.164706, 0.207843)
o76.Position = Vector3.new(64.7997589, 2.96903396, 189.217087)
o77.Parent = o76
o77.Scale = Vector3.new(0.189999998, 0.333000004, 1.19000006)
o78.Name = "Shoot"
o78.Parent = o76
o78.Pitch = 1.25
o78.SoundId = "http://www.roblox.com/asset/?id=97852331"
o78.Volume = 1
o79.Name = "Reload"
o79.Parent = o76
o79.SoundId = "http://www.roblox.com/asset/?id=2691591"
o79.Volume = 0.10000000149012
o81.Name = "Coloring"
o81.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
repeat
wait()
until script.Parent.Parent.Parent.ClassName == "Player"
g = script.Parent:GetChildren()
for i = 1,#g do
	if g[i].Name == "Color" then
		g[i].BrickColor = script.Parent.Parent.Parent.TeamColor
	end
end

end,o81)
end))
o82.Name = "Gun_Script"
o82.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(0.5)
--Edit settings below--
local Tool = script.Parent
local Settings = {
	Range = 700
	,Spread = 5
	,Damage = {16, 28}
	,HeadShotDamage = {13, 14}
	,Bullets = 1
	,FireRate = 0.10
	,Automatic = true
	,AntiTK = false
	,ImpactDuration = 3
	--Reload
	,ReloadKey = "R"
	,ReloadTime = 3
	,Ammo = 30
	,IncludeChamberedBullet = true
	--Gui
	,GuiPos = Vector2.new(script.Gui.Frame.Position.X.Scale, script.Gui.Frame.Position.Y.Scale)
	--Arms
	,OneHanded = false
	,FakeArms = true
	,FakeArmTransparency = 1
	,RightPos = CFrame.new(-0.75, -0.25, 0.5) * CFrame.Angles(math.rad(-90), 0, 0)
	,LeftPos = CFrame.new(1, 0.5, 0.5) * CFrame.Angles(math.rad(-90), math.rad(45), 0)
	,AimPart = Tool.AimPart
	,AimPartOffset = CFrame.new()
	,AimGripOffset = Vector3.new(0, 0, 0)
	,LeftAimPos = CFrame.new(1, 0.5, 0.5) * CFrame.Angles(math.rad(-100), math.rad(45), 0)
	,AimAnim = {
		Enabled = false
		,Frames = 50
		,Time = 0.1
	}
	,ChangeFOV = {true, 60}
	,SpreadReduction = 3
	--Weld
	,Weld = true
	--Mouse
	,Icons = {
		Idle = "rbxassetid://70288585"
		,Fire1 = "rbxassetid://70288578"
		,Fire2 = "rbxassetid://70288572"
		,Fire3 = "rbxassetid://70288578"
		,Reload = "rbxassetid://70288599"
		,Aim = "rbxasset://textures/Blank.png"
	}
	,FireMouseAnimTime = 0.15
	--Recoil
	,Recoil = math.rad(1.2)
	--Smoke
	,Smoke = true
	,SmokePart = Tool.SmokePart
	,Smokes = {{script.Smoke, 6, 0.1}, {script.Smoke1, 0.1}, {script.Smoke1, 0.1}}
	--Sprint
	,Sprint = true
	,SprintSpeed = 25
	,SprintKey = "0"
	,SprintSpreadIncrease = 40
	,SprintArmOffset = CFrame.new(0.25, 0.125, 0.25) * CFrame.Angles(math.rad(-30), math.rad(35), 0)
	--Other
	,DropHats = false
}

--Do not edit below this lign--

local Orig_Spread = Settings.Spread
local Orig_Grip = Tool.GripPos

local Player = game.Players.LocalPlayer
local Character = Player.Character

local Camera = Workspace.CurrentCamera

local Ammo, StoredAmmo = script.Ammo, script.StoredAmmo

local Gui, CanUpdateGui = nil, true

local Sprinting, Equipped

function Update_Gui()
	if Gui and CanUpdateGui then
		Gui.Frame.AmmoDisplay.Text = Ammo.Value .. "|" .. StoredAmmo.Value
	end
end

local Welded
if Settings.Weld then
	Delay(0, function()
		local weldC0s = {}
		for i, v in pairs(Tool:GetChildren()) do
			if v:IsA("BasePart") and v ~= Tool.Handle then
				table.insert(weldC0s, {v, Tool.Handle.CFrame:toObjectSpace(v.CFrame)})
				v.Anchored = false
			end
		end
		Tool.Handle.Anchored = false
		local welds = {}
		Tool.Equipped:connect(function()
			for i, v in ipairs(welds) do
				v.Part1 = nil
				v:Destroy()
			end
			for i, v in ipairs(weldC0s) do
				if v[1] and v[2] then
					local w = Instance.new("Weld", Tool.Handle)
					w.Part0 = Tool.Handle
					w.Part1 = v[1]
					w.C0 = v[2]
					table.insert(welds, w)
				end
			end
		end)
		wait()
		Welded = true
	end)
end

local Left_Weld, Right_Weld

Ammo.Changed:connect(Update_Gui)
StoredAmmo.Changed:connect(Update_Gui)

Settings.Range = math.min(Settings.Range, 999)

local Ignore_Model = Workspace:FindFirstChild("Ray_Ignore") or Instance.new("Model", Workspace)
Ignore_Model.Name = "Ray_Ignore"

local Ray_Ignore = {Character, Ignore_Model, Camera}

Character.Humanoid.Died:connect(function()
	Tool.Parent = Player.Backpack
end)

function Fire(Mouse)
	local Spread = CFrame.Angles(math.rad(math.random(-Settings.Spread, Settings.Spread)/10), math.rad(math.random(-Settings.Spread, Settings.Spread)/10), math.rad(math.random(-Settings.Spread, Settings.Spread)/10))
	local Ray = Ray.new(Character.Head.Position, (CFrame.new(Character.Head.Position, Mouse.Hit.p) * Spread).lookVector.unit * Settings.Range)
	local Hit, Pos = Workspace:FindPartOnRayWithIgnoreList(Ray, Ray_Ignore)
	if Hit and Hit.Parent:FindFirstChild("Humanoid") then
		local Hit_Player = game.Players:GetPlayerFromCharacter(Hit.Parent)
		if Settings.AntiTK and not Hit_Player.Neutral and Hit_Player.TeamColor == Player.TeamColor then
			return
		end
		local Humanoid = Hit.Parent.Humanoid
		local c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		game.Debris:AddItem(c, 3)
		c.Parent = Humanoid
		if Hit.Name == "Head" then
			Humanoid.Health = Humanoid.Health - math.random(Settings.HeadShotDamage[1], Settings.HeadShotDamage[2])
		else
			Humanoid.Health = Humanoid.Health - math.random(Settings.Damage[1], Settings.Damage[2])
		end
	elseif Hit then
		local Hit_Part = Instance.new("Part", Ignore_Model)
		Hit_Part.FormFactor = "Custom"
		Hit_Part.TopSurface = 0
		Hit_Part.BottomSurface = 0
		Hit_Part.Anchored = true
		Hit_Part.CanCollide = false
		Hit_Part.Size = Vector3.new()
		Hit_Part.CFrame = CFrame.new(Pos) * CFrame.Angles(math.random(0, 360), math.random(0, 360), math.random(0, 360))
		Hit_Part.BrickColor = BrickColor.new("Black")
		game.Debris:AddItem(Hit_Part, Settings.ImpactDuration)
		if not Hit.Anchored then
			local w = Instance.new("Weld", Hit_Part)
			w.Part0 = Hit
			w.Part1 = Hit_Part
			w.C0 = Hit.CFrame:toObjectSpace(Hit_Part.CFrame)
			Hit_Part.Anchored = false
		end
		if Hit.Parent:IsA("Hat") and Settings.DropHats then
			Hit.Parent.Parent = workspace
			game.Debris:AddItem(Hit, 3)
		end
	end
end

local Can_Shoot = true
local Reloading = false

local First_Person = false

local Mouse_Held

Tool.Equipped:connect(function(Mouse)
	Equipped = true
	if Settings.Weld and not Welded then
		wait()
		Tool.Parent = Player.Backpack
	end
	Character = Player.Character
	if Gui then
		return
	end
	Ray_Ignore = {Character, Ignore_Model, Camera}
	Mouse.Icon = Settings.Icons.Idle
	Gui = script.Gui:Clone()
	Gui.Parent = Player.PlayerGui
	Gui.Frame.Position = UDim2.new(Settings.GuiPos.X, Gui.Frame.Position.X.Offset, 1.1, Gui.Frame.Position.Y.Offset)
	Gui.Frame:TweenPosition(UDim2.new(Settings.GuiPos.X, Gui.Frame.Position.X.Offset, Settings.GuiPos.Y, Gui.Frame.Position.Y.Offset), "Out", "Bounce", 1)
	CanUpdateGui = true
	Update_Gui()
	Mouse.Button1Down:connect(function()
		if Can_Shoot and Ammo.Value > 0 and Character.Humanoid.Health > 0 then
			Mouse_Held = true
			while true do
				Can_Shoot = false
				Delay(0, function()
					local t = math.min(Settings.FireMouseAnimTime/3, Settings.FireRate/3)
					if not Aiming then
						Mouse.Icon = Settings.Icons.Fire1
					end
					wait(t)
					if not Aiming then
						if Reloading then return end
						Mouse.Icon = Settings.Icons.Fire2
					end
					wait(t)
					if not Aiming then
						if Reloading then return end
						Mouse.Icon = Settings.Icons.Fire3
					end
					wait(t)
					if not Aiming then
						if Reloading then return end
						Mouse.Icon = Settings.Icons.Idle
					end
				end)
				if Settings.Smoke then
					for i, v in pairs(Settings.Smokes) do
						local s = v[1]:Clone()
						s.Parent = Settings.SmokePart
						s.Enabled = true
						game.Debris:AddItem(s, v[2])
						if v[3] then
							Delay(v[3], function()
								s.Enabled = false
							end)
						end
					end
				end
				for _ = 1, Settings.Bullets do
					Fire(Mouse)
				end
				Camera.CoordinateFrame = CFrame.new(Camera.Focus.p) * (Camera.CoordinateFrame - Camera.CoordinateFrame.p) * CFrame.Angles(math.abs(Settings.Recoil), 0, 0) * CFrame.new(0, 0, (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude)
				if Tool.Handle:FindFirstChild("Shoot") then
					Tool.Handle.Shoot:Play()
				end
				Ammo.Value = Ammo.Value - 1
				wait(Settings.FireRate)
				if not Settings.Automatic or Ammo.Value <= 0 or Character.Humanoid.Health <= 0 or not Mouse_Held then
					break
				end
			end
			Can_Shoot = true
		elseif Can_Shoot and Character.Humanoid.Health > 0 and Tool.Handle:FindFirstChild("Click") then
			Tool.Handle.Click:Play()
		end
	end)
	Mouse.Button1Up:connect(function()
		Mouse_Held = false
	end)
	Mouse.KeyDown:connect(function(Key)
		if Key:upper() == Settings.ReloadKey:upper() and Can_Shoot and StoredAmmo.Value > 0 and not Aiming then
			if Settings.IncludeChamberedBullet and Ammo.Value == Settings.Ammo + 1 or not Settings.IncludeChamberedBullet and Ammo.Value == Settings.Ammo then
				return
			end
			Can_Shoot = false
			Reloading = true
			local TextLabel = Gui.Frame.AmmoDisplay
			Delay(0, function()
				CanUpdateGui = false
				TextLabel.Text = "Reloading."
				wait(Settings.ReloadTime/3)
				if TextLabel then
					TextLabel.Text = "Reloading.."
				end
				wait(Settings.ReloadTime/3)
				if TextLabel then
					TextLabel.Text = "Reloading..."
				end
			end)
			if Tool.Handle:FindFirstChild("Reload") then
				Tool.Handle.Reload:Play()
			end
			Mouse.Icon = Settings.Icons.Reload
			wait(Settings.ReloadTime)
			Mouse.Icon = Settings.Icons.Idle
			CanUpdateGui = true
			local m = Settings.Ammo
			if Ammo.Value > 0 and Settings.IncludeChamberedBullet then
				m = m + 1
			end
			if (StoredAmmo.Value - (m - Ammo.Value)) <= 0 then
				Ammo.Value = Ammo.Value + StoredAmmo.Value
				StoredAmmo.Value = 0
			else
				StoredAmmo.Value = StoredAmmo.Value - (m - Ammo.Value)
				Ammo.Value = m
			end
			Can_Shoot = true
			Reloading = false
		elseif Key:upper() == Settings.SprintKey:upper() and Settings.Sprint and not Aiming then
			Sprinting = true
			Character.Humanoid.WalkSpeed = Settings.SprintSpeed
			Settings.Spread = Settings.Spread + Settings.SprintSpreadIncrease
		end
	end)
	Mouse.KeyUp:connect(function(Key)
		if Key:upper() == Settings.SprintKey:upper() and Sprinting then
			Sprinting = false
			Character.Humanoid.WalkSpeed = 16
			Settings.Spread = Settings.Spread - Settings.SprintSpreadIncrease
			Right_Weld.C0 = CFrame.new(0, -1.5, 0)
		end
	end)
	Mouse.Button2Down:connect(function()
		if not Reloading and not Sprinting and not Aiming and (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude < 1 then
			Aiming = true
			Mouse.Icon = Settings.Icons.Aim
			if Settings.AimAnim.Enabled then
				Right_Weld.C1 = CFrame.new()
				Right_Weld.C0 = CFrame.new()
				Delay(0, function()
					Tween_C0(Right_Weld, Settings.AimAnim.Frames, Settings.AimAnim.Time, Right_Weld.C0, Character.Head.CFrame:toObjectSpace(Settings.AimPart.CFrame))
				end)
				Delay(0, function()
					Tween_C1(Left_Weld, Settings.AimAnim.Frames, Settings.AimAnim.Time, Left_Weld.C1, Settings.LeftAimPos)
				end)
				Delay(0, function()
					if Settings.ChangeFOV[1] then
						Camera.FieldOfView = 70
						local Cam_Dif, T_F = 70 - Settings.ChangeFOV[2], Settings.AimAnim.Time * Settings.AimAnim.Frames
						for i = 1, T_F do
							local FOV = 70 - Cam_Dif/T_F * i
							Camera.FieldOfView = FOV
							wait(Settings.AimAnim.Time/Settings.AimAnim.Frames)
							if not Aiming then
								return
							end
						end
						Camera.FieldOfView = Settings.ChangeFOV[2]
					end
				end)
			else
				Right_Weld.C1 = CFrame.new()
				Right_Weld.C0 = CFrame.new()
				Right_Weld.C1 = Character.Head.CFrame:toObjectSpace(Settings.AimPart.CFrame)
				Left_Weld.C1 = Settings.LeftAimPos
				if Settings.ChangeFOV[1] then
					Camera.FieldOfView = Settings.ChangeFOV[2]
				end
			end
			Tool.GripPos = Orig_Grip + Settings.AimGripOffset
			Settings.Spread = Settings.Spread - Settings.SpreadReduction
		end
	end)
	Mouse.Button2Up:connect(function()
		if Aiming then
			Mouse.Icon = Settings.Icons.Idle
			Tool.GripPos = Orig_Grip
			if Settings.AimAnim.Enabled then
				Delay(0, function()
					Tween_C0(Right_Weld, Settings.AimAnim.Frames, Settings.AimAnim.Time, Right_Weld.C0, CFrame.new(0, -1.5, 0))
				end)
				Delay(0, function()
					Tween_C1(Left_Weld, Settings.AimAnim.Frames, Settings.AimAnim.Time, Left_Weld.C1, Settings.LeftPos)
				end)
			else
				Right_Weld.C1 = Settings.RightPos
				Right_Weld.C0 = CFrame.new(0, -1.5, 0)
				Left_Weld.C1 = Settings.LeftPos
			end
			if Settings.ChangeFOV[1] then
				Camera.FieldOfView = 70
			end
			Settings.Spread = Settings.Spread + Settings.SpreadReduction
			Character.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
			Character.Torso.Neck.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
			wait(0.25)
			Aiming = false
		end
	end)
	wait()
	Camera.Changed:connect(function()
		if (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude < 1 and Equipped then
			Mouse.TargetFilter = workspace
			Character.Torso.Neck.C1 = CFrame.new()
			Character.Torso.Neck.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.asin((Mouse.Hit.p - Mouse.Origin.p).unit.y), 0, 0)
		end
	end)
	Mouse.Idle:connect(function()
		if (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude < 1 and Equipped then
			Mouse.TargetFilter = workspace
			Character.Torso.Neck.C1 = CFrame.new()
			Character.Torso.Neck.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.asin((Mouse.Hit.p - Mouse.Origin.p).unit.y), 0, 0)
		end
	end)
	while wait() and Equipped do
		if Sprinting then
			Right_Weld.C0 = CFrame.new(0, -1.5, 0) * Settings.SprintArmOffset
			Left_Weld.C0 = CFrame.new(0, -1.5, 0) * Settings.SprintArmOffset
		elseif not Aiming then
			Left_Weld.C0 = CFrame.new(0, -1.5, 0)
		end
		if (Camera.Focus.p - Camera.CoordinateFrame.p).magnitude > 1 and Equipped then
			Mouse.TargetFilter = nil
			Character.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
			Character.Torso.Neck.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
		end
	end
end)

local Arms_Made
local Fake_Arm_Right, Fake_Arm_Left, Fake_Arm_Model

Tool.Equipped:connect(function(Mouse)
	if Character and not Arms_Made then
		Arms_Made = true
		local Torso = Character.Torso
		Torso["Right Shoulder"].Part1 = nil
		Left_Weld = Instance.new("Weld", Torso)
		Left_Weld.Name = "Left_Weld"
		Left_Weld.Part0 = Character.Head
		Left_Weld.C0 = CFrame.new(0, -1.5, 0)
		if not Settings.OneHanded then
			Torso["Left Shoulder"].Part1 = nil
			Left_Weld.Part1 = Character["Left Arm"]
		end
		Right_Weld = Instance.new("Weld", Torso)
		Right_Weld.Name = "Right_Weld"
		Right_Weld.Part0 = Character.Head
		Right_Weld.Part1 = Character["Right Arm"]
		Right_Weld.C0 = CFrame.new(0, -1.5, 0)
		Left_Weld.C1 = Settings.LeftPos
		Right_Weld.C1 = Settings.RightPos
	end
	if Settings.FakeArms and not Fake_Arm_Right then
		Fake_Arm_Right, Fake_Arm_Left = Character["Right Arm"]:Clone(), Character["Left Arm"]:Clone()
		Fake_Arm_Right.FormFactor, Fake_Arm_Left.FormFactor = "Custom", "Custom"
		Fake_Arm_Right.Size, Fake_Arm_Left.Size = Vector3.new(), Vector3.new()
		local fakeArms = {Fake_Arm_Right, Fake_Arm_Left}
		for i = 1, 2 do
			local w = Instance.new("Weld", fakeArms[i])
			w.Part0 = Character[fakeArms[i].Name]
			w.Part1 = fakeArms[i]
			fakeArms[i].Transparency = Settings.FakeArmTransparency
		end
		Fake_Arm_Model = Instance.new("Model", Camera)
		Fake_Arm_Right.Parent = Fake_Arm_Model
		if not Settings.OneHanded then
			Fake_Arm_Left.Parent = Fake_Arm_Model
		end
		Fake_Arm_Model.Name = "FakeArms"
		if Settings.CharacterMeshes then
			for i, v in pairs(Character:GetChildren()) do
				if v:IsA("CharacterMesh") and v.BodyPart == Enum.BodyPart.LeftArm or v:IsA("CharacterMesh") and v.BodyPart == Enum.BodyPart.RightArm then
					v:Clone().Parent = Fake_Arm_Model
				end
			end
		end
		if Character:FindFirstChild("Shirt") then
			Instance.new("Humanoid", Fake_Arm_Model)
			Character.Shirt:Clone().Parent = Fake_Arm_Model
		else
			local Arm_Mesh = Instance.new("SpecialMesh", Fake_Arm_Right)
			Arm_Mesh.MeshType, Arm_Mesh.Scale = "Brick", Vector3.new(5, 10, 5)
			local Arm_Mesh2 = Instance.new("SpecialMesh", Fake_Arm_Left)
			Arm_Mesh2.MeshType, Arm_Mesh2.Scale = "Brick", Vector3.new(5, 10, 5)
		end
	end
end)

Tool.Unequipped:connect(function()
	Equipped = false
	Tool.GripPos = Orig_Grip
	Aiming = false
	Settings.Spread = Orig_Spread
	if Settings.ChangeFOV[1] then
		Camera.FieldOfView = 70
	end
	if Gui then
		Gui:Destroy()
		Gui = nil
	end
	for i, v in pairs(Tool.Handle:GetChildren()) do
		if v:IsA("Sound") then
			v:Stop()
		end
	end
	if Fake_Arm_Right and Fake_Arm_Left and Fake_Arm_Model then
		Fake_Arm_Model:Destroy()
		Fake_Arm_Right, Fake_Arm_Left, Fake_Arm_Model = nil, nil, nil
	end
	if Character and Left_Weld and Right_Weld then
		Arms_Made = false
		local Torso = Character.Torso
		Torso["Right Shoulder"].Part1, Torso["Left Shoulder"].Part1 = Character["Right Arm"], Character["Left Arm"]
		Left_Weld:Destroy()
		Right_Weld:Destroy()
	end
	Sprinting = false
	Character.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
	Character.Torso.Neck.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
	Character.Humanoid.WalkSpeed = 16
end)

end,o82)
end))
o83.Name = "Ammo"
o83.Parent = o82
o83.Value = 30
o84.Name = "StoredAmmo"
o84.Parent = o82
o84.Value = 1200
o85.Name = "Gui"
o85.Parent = o82
o86.Parent = o85
o86.Position = UDim2.new(1,-200,1,-100)
o86.Size = UDim2.new(0,100,0,100)
o86.Position = UDim2.new(1,-200,1,-100)
o86.BackgroundColor3 = Color3.new(1, 1, 1)
o86.BackgroundTransparency = 1
o86.BorderSizePixel = 0
o87.Name = "AmmoDisplay"
o87.Parent = o86
o87.Size = UDim2.new(1,0,1,0)
o87.Text = ""
o87.BackgroundTransparency = 1
o87.FontSize = Enum.FontSize.Size24
o87.TextColor3 = Color3.new(0.917647, 0.917647, 0.917647)
o87.TextStrokeTransparency = 0.5
o87.TextXAlignment = Enum.TextXAlignment.Right
o88.Parent = o82
o88.Size = 0.30000001192093
o88.Color = Color3.new(0.372549, 0.372549, 0.372549)
o88.Enabled = false
o88.Opacity = 0.30000001192093
o88.RiseVelocity = 15
o89.Name = "Smoke1"
o89.Parent = o82
o89.Size = 0.10000000149012
o89.Color = Color3.new(1, 0.6, 0.2)
o89.Enabled = false
o89.Opacity = 0.40000000596046
o89.RiseVelocity = 3
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game:GetService("Players").LocalPlayer.Backpack 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end