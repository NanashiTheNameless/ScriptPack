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
o3 = Instance.new("BlockMesh")
o4 = Instance.new("Part")
o5 = Instance.new("CylinderMesh")
o6 = Instance.new("Part")
o7 = Instance.new("Part")
o8 = Instance.new("CylinderMesh")
o9 = Instance.new("Part")
o10 = Instance.new("BlockMesh")
o11 = Instance.new("Part")
o12 = Instance.new("CylinderMesh")
o13 = Instance.new("Part")
o14 = Instance.new("CylinderMesh")
o15 = Instance.new("Part")
o16 = Instance.new("CylinderMesh")
o17 = Instance.new("Part")
o18 = Instance.new("CylinderMesh")
o19 = Instance.new("Part")
o20 = Instance.new("CylinderMesh")
o21 = Instance.new("ManualWeld")
o22 = Instance.new("ManualWeld")
o23 = Instance.new("ManualWeld")
o24 = Instance.new("Part")
o25 = Instance.new("CylinderMesh")
o26 = Instance.new("ManualWeld")
o27 = Instance.new("ManualWeld")
o28 = Instance.new("ManualWeld")
o29 = Instance.new("Part")
o30 = Instance.new("BlockMesh")
o31 = Instance.new("ManualWeld")
o32 = Instance.new("ManualWeld")
o33 = Instance.new("ManualWeld")
o34 = Instance.new("Part")
o35 = Instance.new("Sound")
o36 = Instance.new("Sound")
o38 = Instance.new("Part")
o39 = Instance.new("SpecialMesh")
o40 = Instance.new("Part")
o41 = Instance.new("BlockMesh")
o42 = Instance.new("Part")
o43 = Instance.new("SpecialMesh")
o44 = Instance.new("Part")
o45 = Instance.new("BlockMesh")
o46 = Instance.new("Part")
o47 = Instance.new("BlockMesh")
o48 = Instance.new("Part")
o49 = Instance.new("BlockMesh")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Part")
o53 = Instance.new("SpotLight")
o54 = Instance.new("Part")
o55 = Instance.new("BlockMesh")
o56 = Instance.new("Part")
o57 = Instance.new("BlockMesh")
o58 = Instance.new("Part")
o59 = Instance.new("BlockMesh")
o60 = Instance.new("Part")
o61 = Instance.new("BlockMesh")
o62 = Instance.new("Part")
o63 = Instance.new("BlockMesh")
o64 = Instance.new("Part")
o65 = Instance.new("BlockMesh")
o66 = Instance.new("Part")
o67 = Instance.new("BlockMesh")
o68 = Instance.new("ManualWeld")
o69 = Instance.new("Part")
o70 = Instance.new("BlockMesh")
o71 = Instance.new("Part")
o72 = Instance.new("BlockMesh")
o73 = Instance.new("Part")
o74 = Instance.new("CylinderMesh")
o75 = Instance.new("Part")
o76 = Instance.new("CylinderMesh")
o77 = Instance.new("Part")
o78 = Instance.new("BlockMesh")
o79 = Instance.new("LocalScript")
o80 = Instance.new("LocalScript")
o81 = Instance.new("NumberValue")
o82 = Instance.new("NumberValue")
o83 = Instance.new("ScreenGui")
o84 = Instance.new("Frame")
o85 = Instance.new("TextLabel")
o86 = Instance.new("Smoke")
o87 = Instance.new("Smoke")
o1.Name = "Glock17"
o1.Parent = mas
o2.Name = "A8"
o2.Parent = o1
o2.BrickColor = BrickColor.new("Black")
o2.Position = Vector3.new(65.0775452, 7.14176989, 188.758057)
o2.Rotation = Vector3.new(-0.00248875446, 0.00275687198, -179.980133)
o2.Anchored = true
o2.CanCollide = false
o2.Elasticity = 0
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o2.CFrame = CFrame.new(65.0775452, 7.14176989, 188.758057, -0.99999851, 0.000346734974, 4.81164934e-005, -0.000346732762, -0.999999762, 4.3436874e-005, 4.81316347e-005, 4.36595874e-005, 0.999998093)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.105882, 0.164706, 0.207843)
o2.Position = Vector3.new(65.0775452, 7.14176989, 188.758057)
o3.Parent = o2
o3.Scale = Vector3.new(0.142857134, 0.214285716, 0.214285716)
o4.Name = "SmokePart"
o4.Parent = o1
o4.BrickColor = BrickColor.new("Black")
o4.Transparency = 1
o4.Position = Vector3.new(65.0899963, 6.97004414, 190.230988)
o4.Rotation = Vector3.new(90, -90, 0)
o4.Anchored = true
o4.CanCollide = false
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o4.CFrame = CFrame.new(65.0899963, 6.97004414, 190.230988, -6.38764147e-014, -7.71577764e-027, -1, -0.999999523, -4.83168952e-013, -6.38764147e-014, 4.83168952e-013, 0.999999523, 7.71577764e-027)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.105882, 0.164706, 0.207843)
o4.Position = Vector3.new(65.0899963, 6.97004414, 190.230988)
o5.Parent = o4
o5.Scale = Vector3.new(0.600000024, 1, 0.600000024)
o6.Name = "AimPart"
o6.Parent = o1
o6.BrickColor = BrickColor.new("Black")
o6.Transparency = 1
o6.Position = Vector3.new(65.0985413, 7.14373589, 187.243011)
o6.Rotation = Vector3.new(-180, 4.42081497e-025, -180)
o6.Anchored = true
o6.CanCollide = false
o6.FormFactor = Enum.FormFactor.Custom
o6.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o6.CFrame = CFrame.new(65.0985413, 7.14373589, 187.243011, -1, 6.38764147e-014, 7.71577764e-027, -6.38764147e-014, 0.999999523, 4.83168952e-013, 7.71577764e-027, -4.83168952e-013, -0.999999523)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.105882, 0.164706, 0.207843)
o6.Position = Vector3.new(65.0985413, 7.14373589, 187.243011)
o7.Name = "Flash"
o7.Parent = o1
o7.BrickColor = BrickColor.new("Black")
o7.Transparency = 1
o7.Position = Vector3.new(65.1009827, 6.68284416, 189.925171)
o7.Rotation = Vector3.new(-92.6733704, 89.9010925, -177.327393)
o7.Anchored = true
o7.CanCollide = false
o7.Elasticity = 0
o7.FormFactor = Enum.FormFactor.Symmetric
o7.Size = Vector3.new(1, 1, 1)
o7.CFrame = CFrame.new(65.1009827, 6.68284416, 189.925171, -0.000377251534, 1.76100148e-005, 0.99999851, 0.999999523, 1.30832168e-005, 0.000377251185, -1.3201553e-005, 0.999998093, -1.76149788e-005)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.105882, 0.164706, 0.207843)
o7.Position = Vector3.new(65.1009827, 6.68284416, 189.925171)
o8.Parent = o7
o8.Scale = Vector3.new(0.142857149, 0.190476194, 0.190476194)
o9.Name = "Flash"
o9.Parent = o1
o9.BrickColor = BrickColor.new("Black")
o9.Transparency = 1
o9.Position = Vector3.new(65.1009827, 6.75373983, 189.591888)
o9.Rotation = Vector3.new(87.3266296, -89.9010925, 87.3273849)
o9.Anchored = true
o9.CanCollide = false
o9.Elasticity = 0
o9.FormFactor = Enum.FormFactor.Symmetric
o9.Size = Vector3.new(1, 1, 1)
o9.CFrame = CFrame.new(65.1009827, 6.75373983, 189.591888, 1.76100148e-005, -0.000377251534, -0.99999851, 1.30832168e-005, 0.999999523, -0.000377251185, 0.999998093, -1.3201553e-005, 1.76149788e-005)
o9.BottomSurface = Enum.SurfaceType.Smooth
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0.105882, 0.164706, 0.207843)
o9.Position = Vector3.new(65.1009827, 6.75373983, 189.591888)
o10.Parent = o9
o10.Scale = Vector3.new(0.476190478, 0.142857149, 0.190476194)
o11.Name = "Flash"
o11.Parent = o1
o11.BrickColor = BrickColor.new("Cool yellow")
o11.Transparency = 1
o11.Position = Vector3.new(65.1009827, 6.68279982, 190.030075)
o11.Rotation = Vector3.new(89.9992447, 0.0216149203, -0.00100898102)
o11.Anchored = true
o11.CanCollide = false
o11.Elasticity = 0
o11.FormFactor = Enum.FormFactor.Plate
o11.Size = Vector3.new(1, 0.400000006, 1)
o11.CFrame = CFrame.new(65.1009827, 6.68279982, 190.030075, 0.99999851, 1.76100148e-005, 0.000377251534, 0.000377251185, 1.30832168e-005, -0.999999523, -1.76149788e-005, 0.999998093, 1.3201553e-005)
o11.BottomSurface = Enum.SurfaceType.Smooth
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.992157, 0.917647, 0.552941)
o11.Position = Vector3.new(65.1009827, 6.68279982, 190.030075)
o12.Parent = o11
o12.Offset = Vector3.new(0, -0.0185714271, 0)
o12.Scale = Vector3.new(0.209523812, 0.0476190485, 0.104761906)
o13.Name = "Flash"
o13.Parent = o1
o13.BrickColor = BrickColor.new("Black")
o13.Transparency = 1
o13.Position = Vector3.new(65.1009827, 6.68287516, 189.592209)
o13.Rotation = Vector3.new(-92.6733704, 89.9010925, -177.327393)
o13.Anchored = true
o13.CanCollide = false
o13.Elasticity = 0
o13.FormFactor = Enum.FormFactor.Symmetric
o13.Size = Vector3.new(1, 1, 1)
o13.CFrame = CFrame.new(65.1009827, 6.68287516, 189.592209, -0.000377251534, 1.76100148e-005, 0.99999851, 0.999999523, 1.30832168e-005, 0.000377251185, -1.3201553e-005, 0.999998093, -1.76149788e-005)
o13.BottomSurface = Enum.SurfaceType.Smooth
o13.TopSurface = Enum.SurfaceType.Smooth
o13.Color = Color3.new(0.105882, 0.164706, 0.207843)
o13.Position = Vector3.new(65.1009827, 6.68287516, 189.592209)
o14.Parent = o13
o14.Scale = Vector3.new(0.285714298, 0.476190478, 0.190476194)
o15.Name = "Bar"
o15.Parent = o1
o15.BrickColor = BrickColor.new("Dark stone grey")
o15.Position = Vector3.new(65.0985413, 7.04870415, 189.600922)
o15.Rotation = Vector3.new(-89.9988861, -0.0191422198, -179.998993)
o15.Anchored = true
o15.CanCollide = false
o15.Elasticity = 0
o15.FormFactor = Enum.FormFactor.Plate
o15.Size = Vector3.new(1, 0.800000012, 1)
o15.CFrame = CFrame.new(65.0985413, 7.04870415, 189.600922, -0.99999851, 1.76209251e-005, -0.000334094773, -0.00033409489, -1.96248202e-005, 0.999999523, 1.76144295e-005, 0.999998093, 1.95212851e-005)
o15.BottomSurface = Enum.SurfaceType.Smooth
o15.TopSurface = Enum.SurfaceType.Smooth
o15.Color = Color3.new(0.388235, 0.372549, 0.384314)
o15.Position = Vector3.new(65.0985413, 7.04870415, 189.600922)
o16.Parent = o15
o16.Scale = Vector3.new(0.193000004, 0.57099998, 0.128999993)
o17.Name = "Bar"
o17.Parent = o1
o17.BrickColor = BrickColor.new("Really black")
o17.Position = Vector3.new(65.0985413, 7.04882622, 189.850174)
o17.Rotation = Vector3.new(89.9961853, 0.0191422515, -0.00100795738)
o17.Anchored = true
o17.CanCollide = false
o17.Elasticity = 0
o17.FormFactor = Enum.FormFactor.Plate
o17.Size = Vector3.new(1, 0.400000006, 1)
o17.CFrame = CFrame.new(65.0985413, 7.04882622, 189.850174, 0.99999851, 1.75921487e-005, 0.000334095326, 0.000334093958, 6.64144536e-005, -0.999999523, -1.76144367e-005, 0.999997973, 6.65775951e-005)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o17.Position = Vector3.new(65.0985413, 7.04882622, 189.850174)
o18.Parent = o17
o18.Offset = Vector3.new(0, -0.0278571416, 0)
o18.Scale = Vector3.new(0.149999991, 0.0714285672, 0.100000001)
o19.Name = "Cylinder"
o19.Parent = o1
o19.BrickColor = BrickColor.new("Black")
o19.Position = Vector3.new(65.1344299, 6.8457799, 189.371872)
o19.Rotation = Vector3.new(-92.9080734, 89.9010925, -177.092697)
o19.Anchored = true
o19.CanCollide = false
o19.Elasticity = 0
o19.FormFactor = Enum.FormFactor.Symmetric
o19.Size = Vector3.new(1, 1, 1)
o19.CFrame = CFrame.new(65.1344299, 6.8457799, 189.371872, -0.000346733083, 1.76090834e-005, 0.99999851, 0.999999523, 1.30832168e-005, 0.000346732675, -1.32016239e-005, 0.999998093, -1.76136764e-005)
o19.BottomSurface = Enum.SurfaceType.Smooth
o19.TopSurface = Enum.SurfaceType.Smooth
o19.Color = Color3.new(0.105882, 0.164706, 0.207843)
o19.Position = Vector3.new(65.1344299, 6.8457799, 189.371872)
o20.Parent = o19
o20.Scale = Vector3.new(0.142857149, 0.928571403, 0.142857149)
o21.Name = "Cylinder-to-C Strong Joint"
o21.Parent = o19
o21.C0 = CFrame.new(0.5, -0.5, 0.5, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o21.C1 = CFrame.new(-0.536018372, -0.218961716, 0.113912582, -6.6451955e-010, -0.999997139, -3.05179492e-005, -0.999999404, 1.09363929e-009, -3.0582396e-005, 3.0218569e-005, 3.05178401e-005, -0.999996185)
o21.Part0 = o19
o21.Part1 = o54
o22.Name = "Cylinder-to-C Strong Joint"
o22.Parent = o19
o22.C0 = CFrame.new(0.5, -0.5, 0.5, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o22.C1 = CFrame.new(-0.515022278, -0.203870773, 0.113895416, -6.6451955e-010, -0.999997139, -3.05179492e-005, -0.999999404, 1.09363929e-009, -3.0582396e-005, 3.0218569e-005, 3.05178401e-005, -0.999996185)
o22.Part0 = o19
o22.Part1 = o56
o23.Name = "Cylinder-to-C Strong Joint"
o23.Parent = o19
o23.C0 = CFrame.new(0.5, -0.5, 0.5, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o23.C1 = CFrame.new(-0.113893509, 0.485725403, -0.203878403, -3.0218569e-005, -3.05173726e-005, 0.999996185, 1.18839472e-009, 0.999997139, 3.05184149e-005, -0.999999404, 6.27978003e-010, -3.0582396e-005)
o23.Part0 = o19
o23.Part1 = o60
o24.Name = "Cylinder"
o24.Parent = o1
o24.BrickColor = BrickColor.new("Black")
o24.Position = Vector3.new(65.0628967, 6.8457799, 189.371872)
o24.Rotation = Vector3.new(-92.9080734, 89.9010925, -177.092697)
o24.Anchored = true
o24.CanCollide = false
o24.Elasticity = 0
o24.FormFactor = Enum.FormFactor.Symmetric
o24.Size = Vector3.new(1, 1, 1)
o24.CFrame = CFrame.new(65.0628967, 6.8457799, 189.371872, -0.000346733083, 1.76090834e-005, 0.99999851, 0.999999523, 1.30832168e-005, 0.000346732675, -1.32016239e-005, 0.999998093, -1.76136764e-005)
o24.BottomSurface = Enum.SurfaceType.Smooth
o24.TopSurface = Enum.SurfaceType.Smooth
o24.Color = Color3.new(0.105882, 0.164706, 0.207843)
o24.Position = Vector3.new(65.0628967, 6.8457799, 189.371872)
o25.Parent = o24
o25.Scale = Vector3.new(0.142857149, 0.928571403, 0.142857149)
o26.Name = "Cylinder-to-C Strong Joint"
o26.Parent = o24
o26.C0 = CFrame.new(0.5, -0.5, 0.5, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o26.C1 = CFrame.new(-0.464241028, -0.218986511, 0.113908768, -6.6451955e-010, -0.999997139, -3.05179492e-005, -0.999999404, 1.09363929e-009, -3.0582396e-005, 3.0218569e-005, 3.05178401e-005, -0.999996185)
o26.Part0 = o24
o26.Part1 = o54
o27.Name = "Cylinder-to-C Strong Joint"
o27.Parent = o24
o27.C0 = CFrame.new(0.5, -0.5, 0.5, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o27.C1 = CFrame.new(-0.443244934, -0.203895569, 0.113891602, -6.6451955e-010, -0.999997139, -3.05179492e-005, -0.999999404, 1.09363929e-009, -3.0582396e-005, 3.0218569e-005, 3.05178401e-005, -0.999996185)
o27.Part0 = o24
o27.Part1 = o56
o28.Name = "Cylinder-to-C Strong Joint"
o28.Parent = o24
o28.C0 = CFrame.new(0.5, -0.5, 0.5, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o28.C1 = CFrame.new(-0.113889694, 0.413948059, -0.203905106, -3.0218569e-005, -3.05173726e-005, 0.999996185, 1.18839472e-009, 0.999997139, 3.05184149e-005, -0.999999404, 6.27978003e-010, -3.0582396e-005)
o28.Part0 = o24
o28.Part1 = o60
o29.Parent = o1
o29.BrickColor = BrickColor.new("Black")
o29.Position = Vector3.new(65.0985413, 6.80984211, 189.373154)
o29.Rotation = Vector3.new(92.5791397, -89.9010925, 92.579895)
o29.Anchored = true
o29.CanCollide = false
o29.Elasticity = 0
o29.FormFactor = Enum.FormFactor.Symmetric
o29.Size = Vector3.new(1, 1, 1)
o29.CFrame = CFrame.new(65.0985413, 6.80984211, 189.373154, -1.50536207e-005, -0.000334093464, -0.99999851, 1.30832132e-005, 0.999999523, -0.000334093551, 0.999998093, -1.3201653e-005, -1.50492106e-005)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.105882, 0.164706, 0.207843)
o29.Position = Vector3.new(65.0985413, 6.80984211, 189.373154)
o30.Parent = o29
o30.Scale = Vector3.new(0.928571403, 0.0714285746, 0.0714285746)
o31.Name = "Part-to-C Strong Joint"
o31.Parent = o29
o31.C0 = CFrame.new(-0.5, -0.5, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o31.C1 = CFrame.new(-0.499885559, 0.816942215, 0.115177155, 0.999997139, -1.26402547e-005, -6.31806033e-005, -1.26416435e-005, -0.999999404, -3.05710746e-005, -6.31801158e-005, 3.02191474e-005, -0.999996185)
o31.Part0 = o29
o31.Part1 = o54
o32.Name = "Part-to-C Strong Joint"
o32.Parent = o29
o32.C0 = CFrame.new(-0.5, -0.5, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o32.C1 = CFrame.new(-0.478889465, 0.832033157, 0.115159988, 0.999997139, -1.26402547e-005, -6.31806033e-005, -1.26416435e-005, -0.999999404, -3.05710746e-005, -6.31801158e-005, 3.02191474e-005, -0.999996185)
o32.Part0 = o29
o32.Part1 = o56
o33.Name = "Part-to-C Strong Joint"
o33.Parent = o29
o33.C0 = CFrame.new(-0.5, -0.5, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o33.C1 = CFrame.new(-0.115158081, 0.44959259, 0.832023621, 6.31796502e-005, -3.02191474e-005, 0.999996185, -0.999997139, 1.26407786e-005, 6.3181069e-005, -1.26411778e-005, -0.999999404, -3.05710746e-005)
o33.Part0 = o29
o33.Part1 = o60
o34.Name = "Handle"
o34.Parent = o1
o34.BrickColor = BrickColor.new("Black")
o34.Transparency = 1
o34.Position = Vector3.new(64.809967, 6.31007481, 188.990021)
o34.Rotation = Vector3.new(-180, 4.42081497e-025, -180)
o34.Anchored = true
o34.CanCollide = false
o34.FormFactor = Enum.FormFactor.Custom
o34.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o34.CFrame = CFrame.new(64.809967, 6.31007481, 188.990021, -1, 6.38764147e-014, 7.71577764e-027, -6.38764147e-014, 0.999999523, 4.83168952e-013, 7.71577764e-027, -4.83168952e-013, -0.999999523)
o34.BottomSurface = Enum.SurfaceType.Smooth
o34.TopSurface = Enum.SurfaceType.Smooth
o34.Color = Color3.new(0.105882, 0.164706, 0.207843)
o34.Position = Vector3.new(64.809967, 6.31007481, 188.990021)
o35.Name = "Reload"
o35.Parent = o34
o35.SoundId = "http://www.roblox.com/asset/?id=95309699"
o35.Volume = 1
o36.Name = "Shoot"
o36.Parent = o34
o36.Pitch = 0.5
o36.SoundId = "http://roblox.com/asset/?id=10209859"
o36.Volume = 0.80000001192093
o38.Name = "Wedge"
o38.Parent = o1
o38.BrickColor = BrickColor.new("Black")
o38.Position = Vector3.new(65.0987854, 6.73181105, 188.980133)
o38.Rotation = Vector3.new(179.997513, 0.000740232645, -0.0233634822)
o38.Anchored = true
o38.CanCollide = false
o38.Elasticity = 0
o38.FormFactor = Enum.FormFactor.Plate
o38.Size = Vector3.new(1, 0.400000006, 1)
o38.CFrame = CFrame.new(65.0987854, 6.73181105, 188.980133, 0.99999851, 0.000407769112, 1.29194968e-005, 0.000407769548, -0.999999762, -4.34368703e-005, 1.2901658e-005, 4.36594455e-005, -0.999998093)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.TopSurface = Enum.SurfaceType.Smooth
o38.Color = Color3.new(0.105882, 0.164706, 0.207843)
o38.Position = Vector3.new(65.0987854, 6.73181105, 188.980133)
o39.Parent = o38
o39.Scale = Vector3.new(0.214285716, 0.571428537, 0.142857149)
o39.MeshType = Enum.MeshType.Wedge
o40.Name = "Block"
o40.Parent = o1
o40.BrickColor = BrickColor.new("Black")
o40.Position = Vector3.new(65.0987854, 6.72390699, 189.050949)
o40.Rotation = Vector3.new(-82.7481155, 89.9010925, 127.747597)
o40.Anchored = true
o40.CanCollide = false
o40.Elasticity = 0
o40.FormFactor = Enum.FormFactor.Plate
o40.Size = Vector3.new(1, 0.400000006, 1)
o40.CFrame = CFrame.new(65.0987854, 6.72390699, 189.050949, -0.000196889683, -0.00025430863, 0.99999851, 0.707100451, 0.70711273, 0.000319045444, -0.707111895, 0.70709914, 4.05983665e-005)
o40.BottomSurface = Enum.SurfaceType.Smooth
o40.TopSurface = Enum.SurfaceType.Smooth
o40.Color = Color3.new(0.105882, 0.164706, 0.207843)
o40.Position = Vector3.new(65.0987854, 6.72390699, 189.050949)
o41.Parent = o40
o41.Scale = Vector3.new(0.142857149, 0.0714285672, 0.0714285746)
o42.Name = "Ring"
o42.Parent = o1
o42.BrickColor = BrickColor.new("Black")
o42.Position = Vector3.new(65.0985413, 6.75981379, 189.06601)
o42.Rotation = Vector3.new(92.5791397, -89.9010925, 92.579895)
o42.Anchored = true
o42.CanCollide = false
o42.Elasticity = 0
o42.FormFactor = Enum.FormFactor.Symmetric
o42.Size = Vector3.new(1, 1, 1)
o42.CFrame = CFrame.new(65.0985413, 6.75981379, 189.06601, -1.50536207e-005, -0.000334093464, -0.99999851, 1.30832132e-005, 0.999999523, -0.000334093551, 0.999998093, -1.3201653e-005, -1.50492106e-005)
o42.BottomSurface = Enum.SurfaceType.Smooth
o42.TopSurface = Enum.SurfaceType.Smooth
o42.Color = Color3.new(0.105882, 0.164706, 0.207843)
o42.Position = Vector3.new(65.0985413, 6.75981379, 189.06601)
o43.Parent = o42
o43.MeshId = "http://www.roblox.com/asset/?id=3270017"
o43.Scale = Vector3.new(0.285714298, 0.214285716, 0.214285716)
o43.MeshType = Enum.MeshType.FileMesh
o44.Name = "Main"
o44.Parent = o1
o44.BrickColor = BrickColor.new("Black")
o44.Position = Vector3.new(65.0985413, 6.87179804, 189.23024)
o44.Rotation = Vector3.new(92.5791397, -89.9010925, 92.579895)
o44.Anchored = true
o44.CanCollide = false
o44.Elasticity = 0
o44.FormFactor = Enum.FormFactor.Custom
o44.Size = Vector3.new(1, 0.570000052, 1)
o44.CFrame = CFrame.new(65.0985413, 6.87179804, 189.23024, -1.50536207e-005, -0.000334093464, -0.99999851, 1.30832132e-005, 0.999999523, -0.000334093551, 0.999998093, -1.3201653e-005, -1.50492106e-005)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.105882, 0.164706, 0.207843)
o44.Position = Vector3.new(65.0985413, 6.87179804, 189.23024)
o45.Parent = o44
o45.Scale = Vector3.new(1.21399999, 0.143000007, 0.200000003)
o46.Parent = o1
o46.BrickColor = BrickColor.new("Black")
o46.Position = Vector3.new(65.0987854, 6.54078722, 188.815826)
o46.Rotation = Vector3.new(90.3109207, -89.9010925, 70.3137741)
o46.Anchored = true
o46.CanCollide = false
o46.Elasticity = 0
o46.FormFactor = Enum.FormFactor.Symmetric
o46.Size = Vector3.new(1, 1, 1)
o46.CFrame = CFrame.new(65.0987854, 6.54078722, 188.815826, 0.000112183829, -0.000313554687, -0.99999851, -0.341973394, 0.939709365, -0.000333014032, 0.939707816, 0.341972947, -1.80713982e-006)
o46.BottomSurface = Enum.SurfaceType.Smooth
o46.TopSurface = Enum.SurfaceType.Smooth
o46.Color = Color3.new(0.105882, 0.164706, 0.207843)
o46.Position = Vector3.new(65.0987854, 6.54078722, 188.815826)
o47.Parent = o46
o47.Scale = Vector3.new(0.142857149, 0.5, 0.214285716)
o48.Parent = o1
o48.BrickColor = BrickColor.new("Black")
o48.Position = Vector3.new(65.0987854, 6.56986618, 188.727997)
o48.Rotation = Vector3.new(-69.9972076, -0.0175308548, -179.992081)
o48.Anchored = true
o48.CanCollide = false
o48.Elasticity = 0
o48.FormFactor = Enum.FormFactor.Plate
o48.Size = Vector3.new(1, 0.400000006, 1)
o48.CFrame = CFrame.new(65.0987854, 6.56986618, 188.727997, -0.99999851, 0.000138101052, -0.000305971131, -0.00033475316, -0.342066437, 0.939675272, 2.51077181e-005, 0.939673722, 0.342065692)
o48.BottomSurface = Enum.SurfaceType.Smooth
o48.TopSurface = Enum.SurfaceType.Smooth
o48.Color = Color3.new(0.105882, 0.164706, 0.207843)
o48.Position = Vector3.new(65.0987854, 6.56986618, 188.727997)
o49.Parent = o48
o49.Scale = Vector3.new(0.220714286, 0.642857194, 0.5)
o50.Name = "Wedge"
o50.Parent = o1
o50.BrickColor = BrickColor.new("Black")
o50.Position = Vector3.new(65.0985413, 6.73884487, 188.765747)
o50.Rotation = Vector3.new(-90.0026245, -0.0216149259, -0.00146450463)
o50.Anchored = true
o50.CanCollide = false
o50.Elasticity = 0
o50.FormFactor = Enum.FormFactor.Plate
o50.Size = Vector3.new(1, 0.400000006, 1)
o50.CFrame = CFrame.new(65.0985413, 6.73884487, 188.765747, 0.99999851, 2.556039e-005, -0.000377251621, 0.000377252698, -4.55230293e-005, 0.999999344, 2.55430914e-005, -0.999998152, -4.57754795e-005)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(0.105882, 0.164706, 0.207843)
o50.Position = Vector3.new(65.0985413, 6.73884487, 188.765747)
o51.Parent = o50
o51.Scale = Vector3.new(0.214285716, 0.714285731, 0.214285716)
o51.MeshType = Enum.MeshType.Wedge
o52.Name = "Flash"
o52.Parent = o1
o52.Transparency = 1
o52.Position = Vector3.new(65.0987854, 6.72392321, 188.787048)
o52.Rotation = Vector3.new(179.999252, -0.00100897951, 179.978378)
o52.Anchored = true
o52.CanCollide = false
o52.Elasticity = 0
o52.FormFactor = Enum.FormFactor.Plate
o52.Size = Vector3.new(1, 0.400000006, 1)
o52.CFrame = CFrame.new(65.0987854, 6.72392321, 188.787048, -0.99999851, -0.000377251534, -1.76100148e-005, -0.000377251185, 0.999999523, -1.30832168e-005, 1.76149788e-005, -1.3201553e-005, -0.999998093)
o52.FrontSurface = Enum.SurfaceType.Universal
o52.Position = Vector3.new(65.0987854, 6.72392321, 188.787048)
o53.Name = "FlashLight"
o53.Parent = o52
o53.Color = Color3.new(1, 1, 0.823529)
o53.Enabled = false
o53.Brightness = 0.80000001192093
o53.Range = 40
o54.Name = "A10"
o54.Parent = o1
o54.BrickColor = BrickColor.new("Black")
o54.Position = Vector3.new(65.0985413, 7.1267662, 188.757996)
o54.Rotation = Vector3.new(-0.00248875446, 0.00275687198, -179.980133)
o54.Anchored = true
o54.CanCollide = false
o54.Elasticity = 0
o54.FormFactor = Enum.FormFactor.Custom
o54.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o54.CFrame = CFrame.new(65.0985413, 7.1267662, 188.757996, -0.99999851, 0.000346734974, 4.81164934e-005, -0.000346732762, -0.999999762, 4.3436874e-005, 4.81316347e-005, 4.36595874e-005, 0.999998093)
o54.BottomSurface = Enum.SurfaceType.Smooth
o54.TopSurface = Enum.SurfaceType.Smooth
o54.Color = Color3.new(0.105882, 0.164706, 0.207843)
o54.Position = Vector3.new(65.0985413, 7.1267662, 188.757996)
o55.Parent = o54
o55.Scale = Vector3.new(0.0714285672, 0.142857149, 0.214285716)
o56.Name = "A6"
o56.Parent = o1
o56.BrickColor = BrickColor.new("Black")
o56.Position = Vector3.new(65.1195374, 7.14189196, 188.757996)
o56.Rotation = Vector3.new(-0.00248875446, 0.00275687198, -179.980133)
o56.Anchored = true
o56.CanCollide = false
o56.Elasticity = 0
o56.FormFactor = Enum.FormFactor.Custom
o56.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o56.CFrame = CFrame.new(65.1195374, 7.14189196, 188.757996, -0.99999851, 0.000346734974, 4.81164934e-005, -0.000346732762, -0.999999762, 4.3436874e-005, 4.81316347e-005, 4.36595874e-005, 0.999998093)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.TopSurface = Enum.SurfaceType.Smooth
o56.Color = Color3.new(0.105882, 0.164706, 0.207843)
o56.Position = Vector3.new(65.1195374, 7.14189196, 188.757996)
o57.Parent = o56
o57.Scale = Vector3.new(0.142857134, 0.214285716, 0.214285716)
o58.Name = "A12"
o58.Parent = o1
o58.BrickColor = BrickColor.new("Dark stone grey")
o58.Position = Vector3.new(65.0985413, 7.0837822, 188.873016)
o58.Rotation = Vector3.new(92.5791397, -89.9010925, 92.579895)
o58.Anchored = true
o58.CanCollide = false
o58.Elasticity = 0
o58.FormFactor = Enum.FormFactor.Symmetric
o58.Size = Vector3.new(1, 1, 1)
o58.CFrame = CFrame.new(65.0985413, 7.0837822, 188.873016, -1.50536207e-005, -0.000334093464, -0.99999851, 1.30832132e-005, 0.999999523, -0.000334093551, 0.999998093, -1.3201653e-005, -1.50492106e-005)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.TopSurface = Enum.SurfaceType.Smooth
o58.Color = Color3.new(0.388235, 0.372549, 0.384314)
o58.Position = Vector3.new(65.0985413, 7.0837822, 188.873016)
o59.Parent = o58
o59.Scale = Vector3.new(0.5, 0.0714285746, 0.214285716)
o60.Name = "A3"
o60.Parent = o1
o60.BrickColor = BrickColor.new("Black")
o60.Position = Vector3.new(65.1488419, 7.14189196, 188.757996)
o60.Rotation = Vector3.new(89.9974976, 0.0198664237, -90.0027542)
o60.Anchored = true
o60.CanCollide = false
o60.Elasticity = 0
o60.FormFactor = Enum.FormFactor.Custom
o60.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o60.CFrame = CFrame.new(65.1488419, 7.14189196, 188.757996, -4.81160278e-005, 0.99999851, 0.000346734509, -4.3436874e-005, 0.000346733286, -0.999999762, -0.999998093, -4.81321003e-005, 4.36595874e-005)
o60.BottomSurface = Enum.SurfaceType.Smooth
o60.TopSurface = Enum.SurfaceType.Smooth
o60.Color = Color3.new(0.105882, 0.164706, 0.207843)
o60.Position = Vector3.new(65.1488419, 7.14189196, 188.757996)
o61.Parent = o60
o61.Scale = Vector3.new(0.214000002, 0.143000007, 0.214000002)
o62.Name = "A7"
o62.Parent = o1
o62.BrickColor = BrickColor.new("Black")
o62.Position = Vector3.new(65.0487366, 7.14176989, 188.758057)
o62.Rotation = Vector3.new(89.9974976, 0.0268602632, 90.0007401)
o62.Anchored = true
o62.CanCollide = false
o62.Elasticity = 0
o62.FormFactor = Enum.FormFactor.Custom
o62.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o62.CFrame = CFrame.new(65.0487366, 7.14176989, 188.758057, -1.29171685e-005, -0.99999845, 0.00046879999, 4.34368703e-005, -0.000468800426, -0.999999642, 0.999998093, -1.28966303e-005, 4.37487106e-005)
o62.BottomSurface = Enum.SurfaceType.Smooth
o62.TopSurface = Enum.SurfaceType.Smooth
o62.Color = Color3.new(0.105882, 0.164706, 0.207843)
o62.Position = Vector3.new(65.0487366, 7.14176989, 188.758057)
o63.Parent = o62
o63.Scale = Vector3.new(0.214000002, 0.143000007, 0.214000002)
o64.Name = "A11"
o64.Parent = o1
o64.BrickColor = BrickColor.new("Dark stone grey")
o64.Position = Vector3.new(65.0985413, 7.08373976, 189.587112)
o64.Rotation = Vector3.new(92.5791397, -89.9010925, 92.579895)
o64.Anchored = true
o64.CanCollide = false
o64.Elasticity = 0
o64.FormFactor = Enum.FormFactor.Symmetric
o64.Size = Vector3.new(1, 1, 1)
o64.CFrame = CFrame.new(65.0985413, 7.08373976, 189.587112, -1.50536207e-005, -0.000334093464, -0.99999851, 1.30832132e-005, 0.999999523, -0.000334093551, 0.999998093, -1.3201653e-005, -1.50492106e-005)
o64.BottomSurface = Enum.SurfaceType.Smooth
o64.TopSurface = Enum.SurfaceType.Smooth
o64.Color = Color3.new(0.388235, 0.372549, 0.384314)
o64.Position = Vector3.new(65.0985413, 7.08373976, 189.587112)
o65.Parent = o64
o65.Scale = Vector3.new(0.5, 0.0714285746, 0.214285716)
o66.Name = "A4"
o66.Parent = o1
o66.BrickColor = BrickColor.new("Dark stone grey")
o66.Position = Vector3.new(65.1195374, 7.08365011, 189.229996)
o66.Rotation = Vector3.new(92.5791397, -89.9010925, 92.579895)
o66.Anchored = true
o66.CanCollide = false
o66.Elasticity = 0
o66.FormFactor = Enum.FormFactor.Custom
o66.Size = Vector3.new(0.214285716, 0.200000003, 0.200000003)
o66.CFrame = CFrame.new(65.1195374, 7.08365011, 189.229996, -1.50536207e-005, -0.000334093464, -0.99999851, 1.30832132e-005, 0.999999523, -0.000334093551, 0.999998093, -1.3201653e-005, -1.50492106e-005)
o66.BottomSurface = Enum.SurfaceType.Smooth
o66.TopSurface = Enum.SurfaceType.Smooth
o66.Color = Color3.new(0.388235, 0.372549, 0.384314)
o66.Position = Vector3.new(65.1195374, 7.08365011, 189.229996)
o67.Parent = o66
o67.Scale = Vector3.new(1, 0.357142866, 0.857142866)
o68.Name = "A4-to-Port Strong Joint"
o68.Parent = o66
o68.C0 = CFrame.new(-0.107142858, -0.100000001, 0.100000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o68.C1 = CFrame.new(-0.0867614746, 0.152151108, -0.0836544037, 1.49639691e-005, 0.000334093464, 0.99999851, -1.31268689e-005, -0.999999523, 0.000334093551, 0.999998093, -1.32452933e-005, -1.50032556e-005)
o68.Part0 = o66
o68.Part1 = o77
o69.Name = "A1"
o69.Parent = o1
o69.BrickColor = BrickColor.new("Dark stone grey")
o69.Position = Vector3.new(65.0985413, 6.97677422, 189.23024)
o69.Rotation = Vector3.new(92.5791397, -89.9010925, 92.579895)
o69.Anchored = true
o69.CanCollide = false
o69.Elasticity = 0
o69.FormFactor = Enum.FormFactor.Symmetric
o69.Size = Vector3.new(1, 1, 1)
o69.CFrame = CFrame.new(65.0985413, 6.97677422, 189.23024, -1.50536207e-005, -0.000334093464, -0.99999851, 1.30832132e-005, 0.999999523, -0.000334093551, 0.999998093, -1.3201653e-005, -1.50492106e-005)
o69.BottomSurface = Enum.SurfaceType.Smooth
o69.TopSurface = Enum.SurfaceType.Smooth
o69.Color = Color3.new(0.388235, 0.372549, 0.384314)
o69.Position = Vector3.new(65.0985413, 6.97677422, 189.23024)
o70.Parent = o69
o70.Scale = Vector3.new(1.21428573, 0.142857149, 0.214285716)
o71.Name = "A2"
o71.Parent = o1
o71.BrickColor = BrickColor.new("Black")
o71.Position = Vector3.new(65.0985413, 7.13371277, 189.780136)
o71.Rotation = Vector3.new(89.9961853, 0.0191422515, -0.00100795738)
o71.Anchored = true
o71.CanCollide = false
o71.Elasticity = 0
o71.FormFactor = Enum.FormFactor.Custom
o71.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o71.CFrame = CFrame.new(65.0985413, 7.13371277, 189.780136, 0.99999851, 1.75921487e-005, 0.000334095326, 0.000334093958, 6.64144536e-005, -0.999999523, -1.76144367e-005, 0.999997973, 6.65775951e-005)
o71.BottomSurface = Enum.SurfaceType.Smooth
o71.TopSurface = Enum.SurfaceType.Smooth
o71.Color = Color3.new(0.105882, 0.164706, 0.207843)
o71.Position = Vector3.new(65.0985413, 7.13371277, 189.780136)
o72.Parent = o71
o72.Scale = Vector3.new(0.0710000023, 0.286000013, 0.143000007)
o73.Name = "A9"
o73.Parent = o1
o73.BrickColor = BrickColor.new("Dark stone grey")
o73.Position = Vector3.new(65.0985413, 7.04870415, 189.850922)
o73.Rotation = Vector3.new(-89.9988861, -0.0191422198, -179.998993)
o73.Anchored = true
o73.CanCollide = false
o73.Elasticity = 0
o73.FormFactor = Enum.FormFactor.Plate
o73.Size = Vector3.new(1, 0.400000006, 1)
o73.CFrame = CFrame.new(65.0985413, 7.04870415, 189.850922, -0.99999851, 1.76209251e-005, -0.000334094773, -0.00033409489, -1.96248202e-005, 0.999999523, 1.76144295e-005, 0.999998093, 1.95212851e-005)
o73.BottomSurface = Enum.SurfaceType.Smooth
o73.TopSurface = Enum.SurfaceType.Smooth
o73.Color = Color3.new(0.388235, 0.372549, 0.384314)
o73.Position = Vector3.new(65.0985413, 7.04870415, 189.850922)
o74.Parent = o73
o74.Scale = Vector3.new(0.192857131, 0.0714285672, 0.128571421)
o75.Name = "A5"
o75.Parent = o1
o75.BrickColor = BrickColor.new("Really black")
o75.Position = Vector3.new(65.0985413, 7.04882622, 189.880173)
o75.Rotation = Vector3.new(89.9961853, 0.0191422515, -0.00100795738)
o75.Anchored = true
o75.CanCollide = false
o75.Elasticity = 0
o75.FormFactor = Enum.FormFactor.Plate
o75.Size = Vector3.new(1, 0.400000006, 1)
o75.CFrame = CFrame.new(65.0985413, 7.04882622, 189.880173, 0.99999851, 1.75921487e-005, 0.000334095326, 0.000334093958, 6.64144536e-005, -0.999999523, -1.76144367e-005, 0.999997973, 6.65775951e-005)
o75.BottomSurface = Enum.SurfaceType.Smooth
o75.TopSurface = Enum.SurfaceType.Smooth
o75.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o75.Position = Vector3.new(65.0985413, 7.04882622, 189.880173)
o76.Parent = o75
o76.Offset = Vector3.new(0, -0.0199999996, 0)
o76.Scale = Vector3.new(0.149999991, 0.0714285672, 0.100000001)
o77.Name = "Port"
o77.Parent = o1
o77.Material = Enum.Material.SmoothPlastic
o77.BrickColor = BrickColor.new("Dark stone grey")
o77.Transparency = 1
o77.Position = Vector3.new(64.9327698, 7.13575792, 189.206497)
o77.Rotation = Vector3.new(2.50128983e-006, -2.63218681e-006, 180)
o77.Anchored = true
o77.CanCollide = false
o77.FormFactor = Enum.FormFactor.Custom
o77.Size = Vector3.new(0.200000003, 0.200000003, 0.338461548)
o77.CFrame = CFrame.new(64.9327698, 7.13575792, 189.206497, -1, -2.23820962e-013, -4.59403253e-008, 2.27373675e-013, -1, -4.36557421e-008, -8.96517136e-008, -4.36557492e-008, 1)
o77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o77.Color = Color3.new(0.388235, 0.372549, 0.384314)
o77.Position = Vector3.new(64.9327698, 7.13575792, 189.206497)
o78.Parent = o77
o78.Scale = Vector3.new(0.0769230723, 0.538461506, 1)
o79.Name = "Coloring"
o79.Parent = o1
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

end,o79)
end))
o80.Name = "Gun_Script"
o80.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(0.5)
--Edit settings below--
local Tool = script.Parent
local Settings = {
	Range = 700
	,Spread = 5
	,Damage = {15, 19}
	,HeadShotDamage = {13, 14}
	,Bullets = 1
	,FireRate = 0.1
	,Automatic = false
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

end,o80)
end))
o81.Name = "Ammo"
o81.Parent = o80
o81.Value = 30
o82.Name = "StoredAmmo"
o82.Parent = o80
o82.Value = 1200
o83.Name = "Gui"
o83.Parent = o80
o84.Parent = o83
o84.Position = UDim2.new(1,-200,1,-100)
o84.Size = UDim2.new(0,100,0,100)
o84.Position = UDim2.new(1,-200,1,-100)
o84.BackgroundColor3 = Color3.new(1, 1, 1)
o84.BackgroundTransparency = 1
o84.BorderSizePixel = 0
o85.Name = "AmmoDisplay"
o85.Parent = o84
o85.Size = UDim2.new(1,0,1,0)
o85.Text = ""
o85.BackgroundTransparency = 1
o85.FontSize = Enum.FontSize.Size24
o85.TextColor3 = Color3.new(0.917647, 0.917647, 0.917647)
o85.TextStrokeTransparency = 0.5
o85.TextXAlignment = Enum.TextXAlignment.Right
o86.Parent = o80
o86.Size = 0.30000001192093
o86.Color = Color3.new(0.372549, 0.372549, 0.372549)
o86.Enabled = false
o86.Opacity = 0.30000001192093
o86.RiseVelocity = 15
o87.Name = "Smoke1"
o87.Parent = o80
o87.Size = 0.10000000149012
o87.Color = Color3.new(1, 0.6, 0.2)
o87.Enabled = false
o87.Opacity = 0.40000000596046
o87.RiseVelocity = 3
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