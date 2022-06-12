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
o5 = Instance.new("Part")
o6 = Instance.new("BlockMesh")
o7 = Instance.new("Part")
o8 = Instance.new("BlockMesh")
o9 = Instance.new("Part")
o10 = Instance.new("BlockMesh")
o11 = Instance.new("ManualWeld")
o12 = Instance.new("Part")
o13 = Instance.new("BlockMesh")
o14 = Instance.new("ManualWeld")
o15 = Instance.new("Part")
o16 = Instance.new("SpecialMesh")
o17 = Instance.new("ManualWeld")
o18 = Instance.new("Part")
o19 = Instance.new("SpecialMesh")
o20 = Instance.new("Part")
o21 = Instance.new("BlockMesh")
o22 = Instance.new("Part")
o23 = Instance.new("SpecialMesh")
o24 = Instance.new("ManualWeld")
o25 = Instance.new("Part")
o26 = Instance.new("BlockMesh")
o27 = Instance.new("Part")
o28 = Instance.new("Part")
o29 = Instance.new("BlockMesh")
o30 = Instance.new("ManualWeld")
o31 = Instance.new("Part")
o32 = Instance.new("BlockMesh")
o33 = Instance.new("Part")
o34 = Instance.new("BlockMesh")
o35 = Instance.new("Part")
o36 = Instance.new("BlockMesh")
o37 = Instance.new("Part")
o38 = Instance.new("BlockMesh")
o39 = Instance.new("Part")
o40 = Instance.new("SpecialMesh")
o41 = Instance.new("Part")
o42 = Instance.new("Sound")
o43 = Instance.new("Sound")
o45 = Instance.new("Part")
o46 = Instance.new("BlockMesh")
o47 = Instance.new("Part")
o48 = Instance.new("SpecialMesh")
o49 = Instance.new("Part")
o50 = Instance.new("SpecialMesh")
o51 = Instance.new("Part")
o52 = Instance.new("BlockMesh")
o53 = Instance.new("Part")
o54 = Instance.new("BlockMesh")
o55 = Instance.new("Part")
o56 = Instance.new("SpecialMesh")
o57 = Instance.new("Part")
o58 = Instance.new("CylinderMesh")
o59 = Instance.new("Part")
o60 = Instance.new("CylinderMesh")
o61 = Instance.new("ManualWeld")
o62 = Instance.new("Part")
o63 = Instance.new("BlockMesh")
o64 = Instance.new("ManualWeld")
o65 = Instance.new("Part")
o66 = Instance.new("BlockMesh")
o67 = Instance.new("Part")
o68 = Instance.new("BlockMesh")
o69 = Instance.new("Part")
o70 = Instance.new("BlockMesh")
o71 = Instance.new("Part")
o72 = Instance.new("CylinderMesh")
o73 = Instance.new("ManualWeld")
o74 = Instance.new("Part")
o75 = Instance.new("SpecialMesh")
o76 = Instance.new("Part")
o77 = Instance.new("SpecialMesh")
o78 = Instance.new("Part")
o79 = Instance.new("CylinderMesh")
o80 = Instance.new("Part")
o81 = Instance.new("BlockMesh")
o82 = Instance.new("Part")
o83 = Instance.new("BlockMesh")
o84 = Instance.new("Part")
o85 = Instance.new("BlockMesh")
o86 = Instance.new("Part")
o87 = Instance.new("BlockMesh")
o88 = Instance.new("Part")
o89 = Instance.new("BlockMesh")
o90 = Instance.new("Part")
o91 = Instance.new("CylinderMesh")
o92 = Instance.new("Part")
o93 = Instance.new("CylinderMesh")
o94 = Instance.new("Part")
o95 = Instance.new("BlockMesh")
o96 = Instance.new("Part")
o97 = Instance.new("SpecialMesh")
o98 = Instance.new("Part")
o99 = Instance.new("BlockMesh")
o100 = Instance.new("Part")
o101 = Instance.new("BlockMesh")
o102 = Instance.new("Part")
o103 = Instance.new("BlockMesh")
o104 = Instance.new("Part")
o105 = Instance.new("BlockMesh")
o106 = Instance.new("Part")
o107 = Instance.new("IntValue")
o108 = Instance.new("BlockMesh")
o109 = Instance.new("Part")
o110 = Instance.new("SpecialMesh")
o111 = Instance.new("Part")
o112 = Instance.new("BlockMesh")
o113 = Instance.new("Part")
o114 = Instance.new("BlockMesh")
o115 = Instance.new("Part")
o116 = Instance.new("BlockMesh")
o117 = Instance.new("Part")
o118 = Instance.new("CylinderMesh")
o119 = Instance.new("LocalScript")
o120 = Instance.new("LocalScript")
o121 = Instance.new("NumberValue")
o122 = Instance.new("NumberValue")
o123 = Instance.new("ScreenGui")
o124 = Instance.new("Frame")
o125 = Instance.new("TextLabel")
o126 = Instance.new("Smoke")
o127 = Instance.new("Smoke")
o1.Name = "AK74U"
o1.Parent = mas
o2.Name = "NoSight"
o2.Parent = o1
o2.BrickColor = BrickColor.new("Black")
o2.Position = Vector3.new(68.9123001, 1.63173795, 199.557449)
o2.Rotation = Vector3.new(-89.9975204, -0.0018713508, 90.0012512)
o2.Anchored = true
o2.CanCollide = false
o2.Elasticity = 0
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o2.CFrame = CFrame.new(68.9123001, 1.63173795, 199.557449, -2.18234782e-005, -0.999998569, -3.26612317e-005, 4.3451786e-005, -3.26625886e-005, 0.999999762, -0.999998271, 2.18370187e-005, 4.32729721e-005)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.105882, 0.164706, 0.207843)
o2.Position = Vector3.new(68.9123001, 1.63173795, 199.557449)
o3.Parent = o2
o3.Scale = Vector3.new(0.999999881, 0.0952381045, 0.99999994)
o4.Name = "NoSight-to-A2 Strong Joint"
o4.Parent = o2
o4.C0 = CFrame.new(0.100000001, -0.100000001, -0.100000001, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o4.C1 = CFrame.new(-0.0850944519, 0.169126511, 0.372016907, 5.75806116e-005, 2.20495281e-006, 0.999999344, -0.999996424, -2.11505521e-005, 5.71336313e-005, 2.11383813e-005, -0.999997079, 2.23305005e-006)
o4.Part0 = o2
o4.Part1 = o65
o5.Parent = o1
o5.BrickColor = BrickColor.new("Black")
o5.Position = Vector3.new(68.8500443, 1.32171202, 198.790375)
o5.Rotation = Vector3.new(-146.406219, 89.8991318, 56.3894539)
o5.Anchored = true
o5.CanCollide = false
o5.Elasticity = 0
o5.FormFactor = Enum.FormFactor.Custom
o5.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o5.CFrame = CFrame.new(68.8500443, 1.32171202, 198.790375, 4.31582375e-005, -6.49324356e-005, 0.99999845, -0.999999762, 1.0818243e-005, 4.31593289e-005, -1.06990337e-005, -0.999997914, -6.4975342e-005)
o5.BottomSurface = Enum.SurfaceType.Smooth
o5.TopSurface = Enum.SurfaceType.Smooth
o5.Color = Color3.new(0.105882, 0.164706, 0.207843)
o5.Position = Vector3.new(68.8500443, 1.32171202, 198.790375)
o6.Parent = o5
o6.Scale = Vector3.new(0.476190478, 0.476190478, 0.476190478)
o7.Parent = o1
o7.BrickColor = BrickColor.new("Black")
o7.Position = Vector3.new(68.8505402, 1.25082004, 197.695526)
o7.Rotation = Vector3.new(-146.406219, 89.8991318, 56.3894539)
o7.Anchored = true
o7.CanCollide = false
o7.Elasticity = 0
o7.FormFactor = Enum.FormFactor.Custom
o7.Size = Vector3.new(0.428571433, 0.200000003, 0.200000003)
o7.CFrame = CFrame.new(68.8505402, 1.25082004, 197.695526, 4.31582375e-005, -6.49324356e-005, 0.99999845, -0.999999762, 1.0818243e-005, 4.31593289e-005, -1.06990337e-005, -0.999997914, -6.4975342e-005)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.105882, 0.164706, 0.207843)
o7.Position = Vector3.new(68.8505402, 1.25082004, 197.695526)
o8.Parent = o7
o8.Scale = Vector3.new(1, 0.476190478, 0.476190478)
o9.Name = "NoSight"
o9.Parent = o1
o9.BrickColor = BrickColor.new("Black")
o9.Position = Vector3.new(68.8786163, 1.66468394, 199.528564)
o9.Rotation = Vector3.new(-179.996536, 89.9030914, -90.0027008)
o9.Anchored = true
o9.CanCollide = false
o9.Elasticity = 0
o9.FormFactor = Enum.FormFactor.Custom
o9.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o9.CFrame = CFrame.new(68.8786163, 1.66468394, 199.528564, -1.02863851e-009, 2.18234454e-005, 0.999998569, 0.999999821, 9.95397568e-006, 1.32058631e-009, -1.01327896e-005, 0.999998093, -2.18235691e-005)
o9.BottomSurface = Enum.SurfaceType.Smooth
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0.105882, 0.164706, 0.207843)
o9.Position = Vector3.new(68.8786163, 1.66468394, 199.528564)
o10.Parent = o9
o10.Scale = Vector3.new(0.380952269, 0.0476190485, 0.190476194)
o11.Name = "NoSight-to-A2 Strong Joint"
o11.Parent = o9
o11.C0 = CFrame.new(-0.100000001, -0.100000001, -0.100000001, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o11.C1 = CFrame.new(-0.118047714, 0.197994232, 0.138336182, 3.04563e-005, 4.17486899e-006, 0.999999404, 2.11375554e-005, -0.999996245, 3.7279915e-006, 0.999997079, 2.11399747e-005, -3.04271452e-005)
o11.Part0 = o9
o11.Part1 = o65
o12.Name = "NoSight"
o12.Parent = o1
o12.BrickColor = BrickColor.new("Black")
o12.Position = Vector3.new(68.850296, 1.65068996, 199.528473)
o12.Rotation = Vector3.new(-179.996536, 89.9030914, -90.0027008)
o12.Anchored = true
o12.CanCollide = false
o12.Elasticity = 0
o12.FormFactor = Enum.FormFactor.Custom
o12.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o12.CFrame = CFrame.new(68.850296, 1.65068996, 199.528473, -1.02863851e-009, 2.18234454e-005, 0.999998569, 0.999999821, 9.95397568e-006, 1.32058631e-009, -1.01327896e-005, 0.999998093, -2.18235691e-005)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(0.105882, 0.164706, 0.207843)
o12.Position = Vector3.new(68.850296, 1.65068996, 199.528473)
o13.Parent = o12
o13.Scale = Vector3.new(0.238095134, 0.0476190485, 0.0952381045)
o14.Name = "NoSight-to-A2 Strong Joint"
o14.Parent = o12
o14.C0 = CFrame.new(-0.100000001, -0.100000001, -0.100000001, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o14.C1 = CFrame.new(-0.10405159, 0.198085785, 0.11000824, 3.04563e-005, 4.17486899e-006, 0.999999404, 2.11375554e-005, -0.999996245, 3.7279915e-006, 0.999997079, 2.11399747e-005, -3.04271452e-005)
o14.Part0 = o12
o14.Part1 = o65
o15.Name = "Wedge"
o15.Parent = o1
o15.BrickColor = BrickColor.new("Black")
o15.Position = Vector3.new(68.8500443, 1.53659999, 198.933563)
o15.Rotation = Vector3.new(1.53679557e-005, 0.00184974167, -6.40956577e-009)
o15.Anchored = true
o15.CanCollide = false
o15.Elasticity = 0
o15.FormFactor = Enum.FormFactor.Symmetric
o15.Size = Vector3.new(1, 1, 1)
o15.CFrame = CFrame.new(68.8500443, 1.53659999, 198.933563, 0.99999845, 1.11867848e-010, 3.22840824e-005, 3.14685167e-010, 0.999999762, -2.68220901e-007, -3.22842061e-005, 8.94069672e-008, 0.999998093)
o15.BottomSurface = Enum.SurfaceType.Smooth
o15.TopSurface = Enum.SurfaceType.Smooth
o15.Color = Color3.new(0.105882, 0.164706, 0.207843)
o15.Position = Vector3.new(68.8500443, 1.53659999, 198.933563)
o16.Parent = o15
o16.Scale = Vector3.new(0.238095239, 0.0476190485, 0.095238097)
o16.MeshType = Enum.MeshType.Wedge
o17.Name = "Wedge-to-Handle Strong Joint"
o17.Parent = o15
o17.C0 = CFrame.new(0.5, -0.5, 0.5, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o17.C1 = CFrame.new(-0.499702454, 0.184827805, -0.331119537, -0.999996841, 3.26930931e-005, 8.33653868e-010, 1.32144229e-009, 4.30046675e-005, -0.999999464, -3.26929185e-005, -0.999996066, -4.33623682e-005)
o17.Part0 = o15
o17.Part1 = o41
o18.Name = "Wedge"
o18.Parent = o1
o18.BrickColor = BrickColor.new("Black")
o18.Position = Vector3.new(68.8500443, 1.48867404, 198.862289)
o18.Rotation = Vector3.new(1.53679557e-005, 0.00184974167, -6.40956577e-009)
o18.Anchored = true
o18.CanCollide = false
o18.Elasticity = 0
o18.FormFactor = Enum.FormFactor.Symmetric
o18.Size = Vector3.new(1, 1, 1)
o18.CFrame = CFrame.new(68.8500443, 1.48867404, 198.862289, 0.99999845, 1.11867848e-010, 3.22840824e-005, 3.14685167e-010, 0.999999762, -2.68220901e-007, -3.22842061e-005, 8.94069672e-008, 0.999998093)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o18.Color = Color3.new(0.105882, 0.164706, 0.207843)
o18.Position = Vector3.new(68.8500443, 1.48867404, 198.862289)
o19.Parent = o18
o19.Scale = Vector3.new(0.238095239, 0.0476190485, 0.0476190485)
o19.MeshType = Enum.MeshType.Wedge
o20.Parent = o1
o20.BrickColor = BrickColor.new("Black")
o20.Position = Vector3.new(68.8505402, 1.18180203, 198.297485)
o20.Rotation = Vector3.new(-147.960358, 89.9051285, 47.9182625)
o20.Anchored = true
o20.CanCollide = false
o20.Elasticity = 0
o20.FormFactor = Enum.FormFactor.Custom
o20.Size = Vector3.new(0.200000003, 1.14285719, 0.200000003)
o20.CFrame = CFrame.new(68.8505402, 1.18180203, 198.297485, 5.42848938e-005, -6.01167922e-005, 0.999998629, -0.984818518, -0.173618242, 4.29950924e-005, 0.173618093, -0.98481679, -6.87007123e-005)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.105882, 0.164706, 0.207843)
o20.Position = Vector3.new(68.8505402, 1.18180203, 198.297485)
o21.Parent = o20
o21.Scale = Vector3.new(0.476190478, 1, 0.476190478)
o22.Name = "Sphere"
o22.Parent = o1
o22.BrickColor = BrickColor.new("Black")
o22.Position = Vector3.new(68.8500443, 1.48377597, 199.028625)
o22.Rotation = Vector3.new(-138.433975, 89.9051285, 138.43576)
o22.Anchored = true
o22.CanCollide = false
o22.Elasticity = 0
o22.FormFactor = Enum.FormFactor.Symmetric
o22.Size = Vector3.new(1, 1, 1)
o22.CFrame = CFrame.new(68.8500443, 1.48377597, 199.028625, -3.44149012e-005, -3.05165922e-005, 0.999998629, 1.30534172e-005, 0.999999881, 3.05174563e-005, -0.999998212, 1.28149986e-005, -3.44137115e-005)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o22.Color = Color3.new(0.105882, 0.164706, 0.207843)
o22.Position = Vector3.new(68.8500443, 1.48377597, 199.028625)
o23.Parent = o22
o23.Scale = Vector3.new(0.285714298, 0.238095239, 0.238095239)
o23.MeshType = Enum.MeshType.Sphere
o24.Name = "Sphere-to-A2 Strong Joint"
o24.Parent = o22
o24.C0 = CFrame.new(-0.5, -0.5, -0.5, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o24.C1 = CFrame.new(0.462871552, 0.097946167, -0.290061951, -5.99980794e-008, -0.999999464, 2.71826375e-005, 3.3727254e-005, -2.66757161e-005, -0.999996364, 0.999997139, -8.83879991e-008, 3.37307138e-005)
o24.Part0 = o22
o24.Part1 = o65
o25.Parent = o1
o25.BrickColor = BrickColor.new("Black")
o25.Position = Vector3.new(68.8500443, 1.41762805, 198.290436)
o25.Rotation = Vector3.new(-146.406219, 89.8991318, 56.3894539)
o25.Anchored = true
o25.CanCollide = false
o25.Elasticity = 0
o25.FormFactor = Enum.FormFactor.Custom
o25.Size = Vector3.new(0.200000003, 1.09523809, 0.200000003)
o25.CFrame = CFrame.new(68.8500443, 1.41762805, 198.290436, 4.31582375e-005, -6.49324356e-005, 0.99999845, -0.999999762, 1.0818243e-005, 4.31593289e-005, -1.06990337e-005, -0.999997914, -6.4975342e-005)
o25.BottomSurface = Enum.SurfaceType.Smooth
o25.TopSurface = Enum.SurfaceType.Smooth
o25.Color = Color3.new(0.105882, 0.164706, 0.207843)
o25.Position = Vector3.new(68.8500443, 1.41762805, 198.290436)
o26.Parent = o25
o26.Scale = Vector3.new(0.476190478, 1, 0.476190478)
o27.Name = "AimPart"
o27.Parent = o1
o27.BrickColor = BrickColor.new("Black")
o27.Transparency = 1
o27.Position = Vector3.new(68.8500443, 1.71508205, 198.830032)
o27.Rotation = Vector3.new(-180, 1.04220421e-009, 180)
o27.Anchored = true
o27.CanCollide = false
o27.FormFactor = Enum.FormFactor.Custom
o27.Size = Vector3.new(0.200000003, 0.269999951, 0.200000033)
o27.CFrame = CFrame.new(68.8500443, 1.71508205, 198.830032, -1, -1.79170456e-010, 1.8189894e-011, 1.79170456e-010, 0.999999464, 0, 1.8189894e-011, 0, -0.999999464)
o27.BottomSurface = Enum.SurfaceType.Smooth
o27.TopSurface = Enum.SurfaceType.Smooth
o27.Color = Color3.new(0.105882, 0.164706, 0.207843)
o27.Position = Vector3.new(68.8500443, 1.71508205, 198.830032)
o28.Name = "NoSight"
o28.Parent = o1
o28.BrickColor = BrickColor.new("Black")
o28.Position = Vector3.new(68.8215027, 1.664698, 199.52829)
o28.Rotation = Vector3.new(-179.996536, 89.9030914, -90.0027008)
o28.Anchored = true
o28.CanCollide = false
o28.Elasticity = 0
o28.FormFactor = Enum.FormFactor.Custom
o28.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o28.CFrame = CFrame.new(68.8215027, 1.664698, 199.52829, -1.02863851e-009, 2.18234454e-005, 0.999998569, 0.999999821, 9.95397568e-006, 1.32058631e-009, -1.01327896e-005, 0.999998093, -2.18235691e-005)
o28.BottomSurface = Enum.SurfaceType.Smooth
o28.TopSurface = Enum.SurfaceType.Smooth
o28.Color = Color3.new(0.105882, 0.164706, 0.207843)
o28.Position = Vector3.new(68.8215027, 1.664698, 199.52829)
o29.Parent = o28
o29.Scale = Vector3.new(0.380952269, 0.0476190485, 0.190476194)
o30.Name = "NoSight-to-A2 Strong Joint"
o30.Parent = o28
o30.C0 = CFrame.new(-0.100000001, -0.100000001, -0.100000001, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o30.C1 = CFrame.new(-0.118055344, 0.198265076, 0.0812072754, 3.04563e-005, 4.17486899e-006, 0.999999404, 2.11375554e-005, -0.999996245, 3.7279915e-006, 0.999997079, 2.11399747e-005, -3.04271452e-005)
o30.Part0 = o28
o30.Part1 = o65
o31.Parent = o1
o31.BrickColor = BrickColor.new("Black")
o31.Position = Vector3.new(68.8505402, 1.32177198, 198.862503)
o31.Rotation = Vector3.new(-90.0027695, 0.0192328859, -0.00151924463)
o31.Anchored = true
o31.CanCollide = false
o31.Elasticity = 0
o31.FormFactor = Enum.FormFactor.Symmetric
o31.Size = Vector3.new(1, 1, 1)
o31.CFrame = CFrame.new(68.8505402, 1.32177198, 198.862503, 0.99999845, 2.65157796e-005, 0.000335677178, -0.000335676043, -4.82201576e-005, 0.999999702, 2.66054885e-005, -0.999998093, -4.83095646e-005)
o31.BottomSurface = Enum.SurfaceType.Smooth
o31.TopSurface = Enum.SurfaceType.Smooth
o31.Color = Color3.new(0.105882, 0.164706, 0.207843)
o31.Position = Vector3.new(68.8505402, 1.32177198, 198.862503)
o32.Parent = o31
o32.Scale = Vector3.new(0.238095239, 0.0476190485, 0.285714298)
o33.Name = "Port"
o33.Parent = o1
o33.Material = Enum.Material.SmoothPlastic
o33.BrickColor = BrickColor.new("Dark stone grey")
o33.Transparency = 1
o33.Position = Vector3.new(68.7401886, 1.42264795, 199.445709)
o33.Rotation = Vector3.new(1.70019246e-006, 1.49652749e-006, -105)
o33.Anchored = true
o33.CanCollide = false
o33.FormFactor = Enum.FormFactor.Custom
o33.Size = Vector3.new(0.200000003, 0.200000003, 0.338461548)
o33.CFrame = CFrame.new(68.7401886, 1.42264795, 199.445709, -0.258818984, 0.965925694, 2.61193325e-008, -0.965925694, -0.258818984, -2.96739557e-008, -3.32160077e-008, 9.31242816e-009, 1)
o33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Color = Color3.new(0.388235, 0.372549, 0.384314)
o33.Position = Vector3.new(68.7401886, 1.42264795, 199.445709)
o34.Parent = o33
o34.Scale = Vector3.new(0.0769230723, 0.538461506, 1)
o35.Name = "Hole"
o35.Parent = o1
o35.BrickColor = BrickColor.new("Really black")
o35.Position = Vector3.new(68.7501984, 1.43664002, 199.476578)
o35.Rotation = Vector3.new(-91.287262, 89.9010925, 1.29019773)
o35.Anchored = true
o35.CanCollide = false
o35.Elasticity = 0
o35.FormFactor = Enum.FormFactor.Custom
o35.Size = Vector3.new(0.399999976, 0.400000036, 1)
o35.CFrame = CFrame.new(68.7501984, 1.43664002, 199.476578, 3.04579735e-005, -6.85974669e-007, 0.99999851, -0.999999583, -1.38607647e-005, 3.04281712e-005, 1.41282026e-005, -0.999998152, -6.83742883e-007)
o35.BottomSurface = Enum.SurfaceType.Smooth
o35.TopSurface = Enum.SurfaceType.Smooth
o35.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o35.Position = Vector3.new(68.7501984, 1.43664002, 199.476578)
o36.Parent = o35
o36.Scale = Vector3.new(0.238095239, 1.19047618, 0.0476190485)
o37.Name = "A1"
o37.Parent = o1
o37.BrickColor = BrickColor.new("Black")
o37.Position = Vector3.new(68.7401886, 1.44164395, 199.476578)
o37.Rotation = Vector3.new(-91.287262, 89.9010925, 1.29019773)
o37.Anchored = true
o37.CanCollide = false
o37.Elasticity = 0
o37.FormFactor = Enum.FormFactor.Custom
o37.Size = Vector3.new(0.409999967, 0.480000019, 1)
o37.CFrame = CFrame.new(68.7401886, 1.44164395, 199.476578, 3.04579735e-005, -6.85974669e-007, 0.99999851, -0.999999583, -1.38607647e-005, 3.04281712e-005, 1.41282026e-005, -0.999998152, -6.83742883e-007)
o37.BottomSurface = Enum.SurfaceType.Smooth
o37.TopSurface = Enum.SurfaceType.Smooth
o37.Color = Color3.new(0.105882, 0.164706, 0.207843)
o37.Position = Vector3.new(68.7401886, 1.44164395, 199.476578)
o38.Parent = o37
o38.Scale = Vector3.new(0.238000005, 1, 0.0480000004)
o39.Name = "NoSight"
o39.Parent = o1
o39.BrickColor = BrickColor.new("Black")
o39.Position = Vector3.new(68.9123001, 1.65558803, 199.933548)
o39.Rotation = Vector3.new(1.53679557e-005, 0.00184974167, -6.40956577e-009)
o39.Anchored = true
o39.CanCollide = false
o39.Elasticity = 0
o39.FormFactor = Enum.FormFactor.Custom
o39.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o39.CFrame = CFrame.new(68.9123001, 1.65558803, 199.933548, 0.99999845, 1.11867848e-010, 3.22840824e-005, 3.14685167e-010, 0.999999762, -2.68220901e-007, -3.22842061e-005, 8.94069672e-008, 0.999998093)
o39.BottomSurface = Enum.SurfaceType.Smooth
o39.TopSurface = Enum.SurfaceType.Smooth
o39.Color = Color3.new(0.105882, 0.164706, 0.207843)
o39.Position = Vector3.new(68.9123001, 1.65558803, 199.933548)
o40.Parent = o39
o40.Scale = Vector3.new(0.095238097, 0.285714209, 0.952380955)
o40.MeshType = Enum.MeshType.Wedge
o41.Name = "Handle"
o41.Parent = o1
o41.Transparency = 1
o41.Position = Vector3.new(68.8505402, 0.851786017, 199.102448)
o41.Rotation = Vector3.new(-179.997513, -0.00372291706, -180)
o41.Anchored = true
o41.CanCollide = false
o41.Elasticity = 0
o41.FormFactor = Enum.FormFactor.Plate
o41.Size = Vector3.new(1, 0.400000006, 1)
o41.CFrame = CFrame.new(68.8505402, 0.851786017, 199.102448, -0.999998391, 2.4037945e-009, -6.49771609e-005, -7.27595761e-010, 0.999999702, 4.3451786e-005, 6.49772483e-005, 4.32729721e-005, -0.999997973)
o41.BottomSurface = Enum.SurfaceType.Smooth
o41.FrontSurface = Enum.SurfaceType.Universal
o41.TopSurface = Enum.SurfaceType.Smooth
o41.Position = Vector3.new(68.8505402, 0.851786017, 199.102448)
o42.Name = "Shoot"
o42.Parent = o41
o42.Pitch = 1.6499999761581
o42.SoundId = "http://www.roblox.com/asset/?id=2920959"
o42.Volume = 0.80000001192093
o43.Name = "Reload"
o43.Parent = o41
o43.SoundId = "http://www.roblox.com/asset/?id=2691591"
o43.Volume = 0.099999994039536
o45.Parent = o1
o45.BrickColor = BrickColor.new("Black")
o45.Position = Vector3.new(68.8505402, 1.36968601, 199.528595)
o45.Rotation = Vector3.new(-90.0027695, -0.00174814055, -0.00152180961)
o45.Anchored = true
o45.CanCollide = false
o45.Elasticity = 0
o45.FormFactor = Enum.FormFactor.Symmetric
o45.Size = Vector3.new(1, 1, 1)
o45.CFrame = CFrame.new(68.8505402, 1.36968601, 199.528595, 0.999998629, 2.65605522e-005, -3.05108078e-005, 3.05124686e-005, -4.80413437e-005, 0.999999762, 2.65617236e-005, -0.999998212, -4.83095646e-005)
o45.BottomSurface = Enum.SurfaceType.Smooth
o45.TopSurface = Enum.SurfaceType.Smooth
o45.Color = Color3.new(0.105882, 0.164706, 0.207843)
o45.Position = Vector3.new(68.8505402, 1.36968601, 199.528595)
o46.Parent = o45
o46.Scale = Vector3.new(0.238095239, 1.28571427, 0.285714298)
o47.Name = "Wedge"
o47.Parent = o1
o47.BrickColor = BrickColor.new("Black")
o47.Position = Vector3.new(68.8505402, 1.13981199, 198.974609)
o47.Rotation = Vector3.new(-79.9975662, -0.00103668263, 0.00325655355)
o47.Anchored = true
o47.CanCollide = false
o47.Elasticity = 0
o47.FormFactor = Enum.FormFactor.Symmetric
o47.Size = Vector3.new(1, 1, 1)
o47.CFrame = CFrame.new(68.8505402, 1.13981199, 198.974609, 0.99999845, -5.68374926e-005, -1.80935258e-005, 2.77169747e-005, 0.173690408, 0.9848001, -5.29061253e-005, -0.984798491, 0.173690021)
o47.BottomSurface = Enum.SurfaceType.Smooth
o47.TopSurface = Enum.SurfaceType.Smooth
o47.Color = Color3.new(0.105882, 0.164706, 0.207843)
o47.Position = Vector3.new(68.8505402, 1.13981199, 198.974609)
o48.Parent = o47
o48.Scale = Vector3.new(0.190476194, 0.0476190485, 0.142857149)
o48.MeshType = Enum.MeshType.Wedge
o49.Name = "Ring"
o49.Parent = o1
o49.BrickColor = BrickColor.new("Black")
o49.Position = Vector3.new(68.8505402, 1.20263004, 199.314392)
o49.Rotation = Vector3.new(41.5651894, -89.9051285, -138.438553)
o49.Anchored = true
o49.CanCollide = false
o49.Elasticity = 0
o49.FormFactor = Enum.FormFactor.Symmetric
o49.Size = Vector3.new(1, 1, 1)
o49.CFrame = CFrame.new(68.8505402, 1.20263004, 199.314392, -3.44149194e-005, 3.05136127e-005, -0.999998629, 7.40140676e-005, -0.999999762, -3.05165522e-005, -0.999998152, -7.38352537e-005, 3.44137115e-005)
o49.BottomSurface = Enum.SurfaceType.Smooth
o49.TopSurface = Enum.SurfaceType.Smooth
o49.Color = Color3.new(0.105882, 0.164706, 0.207843)
o49.Position = Vector3.new(68.8505402, 1.20263004, 199.314392)
o50.Parent = o49
o50.MeshId = "http://www.roblox.com/asset/?id=3270017"
o50.Scale = Vector3.new(0.285714298, 0.238095239, 0.238095239)
o50.MeshType = Enum.MeshType.FileMesh
o51.Name = "NoSight"
o51.Parent = o1
o51.BrickColor = BrickColor.new("Black")
o51.Position = Vector3.new(68.850296, 1.60270202, 199.742523)
o51.Rotation = Vector3.new(-90.0027695, -0.00174814055, -0.00152180961)
o51.Anchored = true
o51.CanCollide = false
o51.Elasticity = 0
o51.FormFactor = Enum.FormFactor.Symmetric
o51.Size = Vector3.new(1, 1, 1)
o51.CFrame = CFrame.new(68.850296, 1.60270202, 199.742523, 0.999998629, 2.65605522e-005, -3.05108078e-005, 3.05124686e-005, -4.80413437e-005, 0.999999762, 2.65617236e-005, -0.999998212, -4.83095646e-005)
o51.BottomSurface = Enum.SurfaceType.Smooth
o51.TopSurface = Enum.SurfaceType.Smooth
o51.Color = Color3.new(0.105882, 0.164706, 0.207843)
o51.Position = Vector3.new(68.850296, 1.60270202, 199.742523)
o52.Parent = o51
o52.Scale = Vector3.new(0.142857149, 0.571428597, 0.0476190485)
o53.Name = "Block"
o53.Parent = o1
o53.BrickColor = BrickColor.new("Black")
o53.Position = Vector3.new(68.8505402, 1.19164395, 199.313675)
o53.Rotation = Vector3.new(171.009293, -89.8953247, -83.9999313)
o53.Anchored = true
o53.CanCollide = false
o53.Elasticity = 0
o53.FormFactor = Enum.FormFactor.Plate
o53.Size = Vector3.new(1, 0.400000006, 1)
o53.CFrame = CFrame.new(68.8505402, 1.19164395, 199.313675, 3.38764657e-005, 0.000322309177, -0.999998331, 0.965957463, -0.258700073, -5.06574361e-005, -0.258699894, -0.965955734, -0.000320174498)
o53.BottomSurface = Enum.SurfaceType.Smooth
o53.TopSurface = Enum.SurfaceType.Smooth
o53.Color = Color3.new(0.105882, 0.164706, 0.207843)
o53.Position = Vector3.new(68.8505402, 1.19164395, 199.313675)
o54.Parent = o53
o54.Scale = Vector3.new(0.142857149, 0.095238097, 0.0476190485)
o55.Name = "Wedge"
o55.Parent = o1
o55.BrickColor = BrickColor.new("Black")
o55.Position = Vector3.new(68.8505402, 1.20272398, 199.266693)
o55.Rotation = Vector3.new(-179.997513, -0.00184974063, -0.00247261464)
o55.Anchored = true
o55.CanCollide = false
o55.Elasticity = 0
o55.FormFactor = Enum.FormFactor.Symmetric
o55.Size = Vector3.new(1, 1, 1)
o55.CFrame = CFrame.new(68.8505402, 1.20272398, 199.266693, 0.99999851, 4.31551998e-005, -3.22840642e-005, 4.31569642e-005, -0.999999762, 4.3451786e-005, -3.22823435e-005, -4.32729721e-005, -0.999998093)
o55.BottomSurface = Enum.SurfaceType.Smooth
o55.TopSurface = Enum.SurfaceType.Smooth
o55.Color = Color3.new(0.105882, 0.164706, 0.207843)
o55.Position = Vector3.new(68.8505402, 1.20272398, 199.266693)
o56.Parent = o55
o56.Scale = Vector3.new(0.238095239, 0.0476190485, 0.761904776)
o56.MeshType = Enum.MeshType.Wedge
o57.Name = "Cylinder"
o57.Parent = o1
o57.BrickColor = BrickColor.new("Black")
o57.Position = Vector3.new(68.8500443, 1.48372996, 199.695618)
o57.Rotation = Vector3.new(-179.996536, 89.9030914, -90.0027008)
o57.Anchored = true
o57.CanCollide = false
o57.Elasticity = 0
o57.FormFactor = Enum.FormFactor.Symmetric
o57.Size = Vector3.new(1, 1, 1)
o57.CFrame = CFrame.new(68.8500443, 1.48372996, 199.695618, -1.02863851e-009, 2.18234454e-005, 0.999998569, 0.999999821, 9.95397568e-006, 1.32058631e-009, -1.01327896e-005, 0.999998093, -2.18235691e-005)
o57.BottomSurface = Enum.SurfaceType.Smooth
o57.TopSurface = Enum.SurfaceType.Smooth
o57.Color = Color3.new(0.105882, 0.164706, 0.207843)
o57.Position = Vector3.new(68.8500443, 1.48372996, 199.695618)
o58.Parent = o57
o58.Scale = Vector3.new(0.285714298, 1.33333337, 0.238095239)
o59.Name = "NoSight"
o59.Parent = o1
o59.BrickColor = BrickColor.new("Black")
o59.Position = Vector3.new(68.7880402, 1.63179994, 199.557724)
o59.Rotation = Vector3.new(-89.9975204, -0.0018713508, 90.0012512)
o59.Anchored = true
o59.CanCollide = false
o59.Elasticity = 0
o59.FormFactor = Enum.FormFactor.Custom
o59.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o59.CFrame = CFrame.new(68.7880402, 1.63179994, 199.557724, -2.18234782e-005, -0.999998569, -3.26612317e-005, 4.3451786e-005, -3.26625886e-005, 0.999999762, -0.999998271, 2.18370187e-005, 4.32729721e-005)
o59.BottomSurface = Enum.SurfaceType.Smooth
o59.TopSurface = Enum.SurfaceType.Smooth
o59.Color = Color3.new(0.105882, 0.164706, 0.207843)
o59.Position = Vector3.new(68.7880402, 1.63179994, 199.557724)
o60.Parent = o59
o60.Scale = Vector3.new(0.999999881, 0.0952381045, 0.99999994)
o61.Name = "NoSight-to-A2 Strong Joint"
o61.Parent = o59
o61.C0 = CFrame.new(0.100000001, -0.100000001, -0.100000001, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o61.C1 = CFrame.new(-0.0851612091, 0.168848038, 0.247993469, 5.75806116e-005, 2.20495281e-006, 0.999999344, -0.999996424, -2.11505521e-005, 5.71336313e-005, 2.11383813e-005, -0.999997079, 2.23305005e-006)
o61.Part0 = o59
o61.Part1 = o65
o62.Parent = o1
o62.BrickColor = BrickColor.new("Black")
o62.Position = Vector3.new(68.8500443, 1.53666198, 199.576553)
o62.Rotation = Vector3.new(-90.0027695, -0.00174814055, -0.00152180961)
o62.Anchored = true
o62.CanCollide = false
o62.Elasticity = 0
o62.FormFactor = Enum.FormFactor.Symmetric
o62.Size = Vector3.new(1, 1, 1)
o62.CFrame = CFrame.new(68.8500443, 1.53666198, 199.576553, 0.999998629, 2.65605522e-005, -3.05108078e-005, 3.05124686e-005, -4.80413437e-005, 0.999999762, 2.65617236e-005, -0.999998212, -4.83095646e-005)
o62.BottomSurface = Enum.SurfaceType.Smooth
o62.TopSurface = Enum.SurfaceType.Smooth
o62.Color = Color3.new(0.105882, 0.164706, 0.207843)
o62.Position = Vector3.new(68.8500443, 1.53666198, 199.576553)
o63.Parent = o62
o63.Scale = Vector3.new(0.238095239, 1.19047618, 0.0476190485)
o64.Name = "Part-to-Handle Strong Joint"
o64.Parent = o62
o64.C0 = CFrame.new(0.5, -0.5, -0.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o64.C1 = CFrame.new(-0.499679565, 0.18494606, -0.974157333, 0.99999702, -9.1537644e-005, -3.05068916e-005, -3.0516012e-005, -9.13142285e-005, -0.999999464, 9.15374185e-005, 0.999996185, -9.17632278e-005)
o64.Part0 = o62
o64.Part1 = o41
o65.Name = "A2"
o65.Parent = o1
o65.BrickColor = BrickColor.new("Dark stone grey")
o65.Position = Vector3.new(68.6400909, 1.44663596, 199.626572)
o65.Rotation = Vector3.new(-91.287262, 89.9010925, 1.29019773)
o65.Anchored = true
o65.CanCollide = false
o65.Elasticity = 0
o65.FormFactor = Enum.FormFactor.Custom
o65.Size = Vector3.new(0.200000003, 0.200000003, 1.20000005)
o65.CFrame = CFrame.new(68.6400909, 1.44663596, 199.626572, 3.04579735e-005, -6.85974669e-007, 0.99999851, -0.999999583, -1.38607647e-005, 3.04281712e-005, 1.41282026e-005, -0.999998152, -6.83742883e-007)
o65.BottomSurface = Enum.SurfaceType.Smooth
o65.TopSurface = Enum.SurfaceType.Smooth
o65.Color = Color3.new(0.388235, 0.372549, 0.384314)
o65.Position = Vector3.new(68.6400909, 1.44663596, 199.626572)
o66.Parent = o65
o66.Offset = Vector3.new(0, 0, 0.0599999987)
o66.Scale = Vector3.new(0.200000003, 0.200000003, 0.0480000004)
o67.Parent = o1
o67.BrickColor = BrickColor.new("Black")
o67.Position = Vector3.new(68.8505402, 0.973720014, 199.090485)
o67.Rotation = Vector3.new(-79.999939, 0.00232959096, -179.995941)
o67.Anchored = true
o67.CanCollide = false
o67.Elasticity = 0
o67.FormFactor = Enum.FormFactor.Symmetric
o67.Size = Vector3.new(1, 1, 1)
o67.CFrame = CFrame.new(68.8505402, 0.973720014, 199.090485, -0.99999851, 7.10238673e-005, 4.06590334e-005, 2.77155177e-005, -0.173649609, 0.984807372, 7.70483821e-005, 0.984805465, 0.173649207)
o67.BottomSurface = Enum.SurfaceType.Smooth
o67.TopSurface = Enum.SurfaceType.Smooth
o67.Color = Color3.new(0.105882, 0.164706, 0.207843)
o67.Position = Vector3.new(68.8505402, 0.973720014, 199.090485)
o68.Parent = o67
o68.Scale = Vector3.new(0.190476194, 0.238095239, 0.619047642)
o69.Parent = o1
o69.BrickColor = BrickColor.new("Dark orange")
o69.Position = Vector3.new(68.8500443, 1.39364195, 200.504532)
o69.Rotation = Vector3.new(-89.9957657, -0.0192321967, -179.991028)
o69.Anchored = true
o69.CanCollide = false
o69.Elasticity = 0
o69.FormFactor = Enum.FormFactor.Symmetric
o69.Size = Vector3.new(1, 1, 1)
o69.CFrame = CFrame.new(68.8500443, 1.39364195, 200.504532, -0.999998391, 0.000156559545, -0.000335665158, -0.000335677527, -7.40587711e-005, 0.999999762, 0.000156455586, 0.999997914, 7.404387e-005)
o69.BottomSurface = Enum.SurfaceType.Smooth
o69.TopSurface = Enum.SurfaceType.Smooth
o69.Color = Color3.new(0.627451, 0.372549, 0.207843)
o69.Position = Vector3.new(68.8500443, 1.39364195, 200.504532)
o70.Parent = o69
o70.Scale = Vector3.new(0.238095239, 0.095238097, 0.0476190485)
o71.Name = "Cylinder"
o71.Parent = o1
o71.BrickColor = BrickColor.new("Dark orange")
o71.Position = Vector3.new(68.8505402, 1.25060594, 200.24234)
o71.Rotation = Vector3.new(90, 0.00306352018, -90.0037231)
o71.Anchored = true
o71.CanCollide = false
o71.Elasticity = 0
o71.FormFactor = Enum.FormFactor.Symmetric
o71.Size = Vector3.new(1, 1, 1)
o71.CFrame = CFrame.new(68.8505402, 1.25060594, 200.24234, -6.49771682e-005, 0.99999845, 5.34685132e-005, 2.68220901e-007, 5.34689752e-005, -0.999999821, -0.999998093, -6.497492e-005, -8.94069672e-008)
o71.BottomSurface = Enum.SurfaceType.Smooth
o71.TopSurface = Enum.SurfaceType.Smooth
o71.Color = Color3.new(0.627451, 0.372549, 0.207843)
o71.Position = Vector3.new(68.8505402, 1.25060594, 200.24234)
o72.Parent = o71
o72.Scale = Vector3.new(0.142857149, 0.238095239, 0.142857149)
o73.Name = "Cylinder-to-A2 Strong Joint"
o73.Parent = o71
o73.C0 = CFrame.new(0.5, -0.5, 0.5, 0, 0, 1, 0, 1, -0, -1, 0, 0)
o73.C1 = CFrame.new(0.696058273, -0.115793228, -0.289649963, -0.999999404, -2.30119458e-005, -1.43983752e-005, -1.39501326e-005, 6.42880841e-005, 0.999996245, -2.30402675e-005, 0.99999696, -6.42933228e-005)
o73.Part0 = o71
o73.Part1 = o65
o74.Name = "Wedge"
o74.Parent = o1
o74.BrickColor = BrickColor.new("Dark orange")
o74.Position = Vector3.new(68.8505402, 1.25055802, 200.409515)
o74.Rotation = Vector3.new(-179.997513, -0.00184974063, -0.00247261464)
o74.Anchored = true
o74.CanCollide = false
o74.Elasticity = 0
o74.FormFactor = Enum.FormFactor.Symmetric
o74.Size = Vector3.new(1, 1, 1)
o74.CFrame = CFrame.new(68.8505402, 1.25055802, 200.409515, 0.99999851, 4.31551998e-005, -3.22840642e-005, 4.31569642e-005, -0.999999762, 4.3451786e-005, -3.22823435e-005, -4.32729721e-005, -0.999998093)
o74.BottomSurface = Enum.SurfaceType.Smooth
o74.TopSurface = Enum.SurfaceType.Smooth
o74.Color = Color3.new(0.627451, 0.372549, 0.207843)
o74.Position = Vector3.new(68.8505402, 1.25055802, 200.409515)
o75.Parent = o74
o75.Scale = Vector3.new(0.238095239, 0.0476190485, 0.476190478)
o75.MeshType = Enum.MeshType.Wedge
o76.Name = "NoSight"
o76.Parent = o1
o76.BrickColor = BrickColor.new("Black")
o76.Position = Vector3.new(68.7880402, 1.65563095, 199.933548)
o76.Rotation = Vector3.new(1.53679557e-005, 0.00184974167, -6.40956577e-009)
o76.Anchored = true
o76.CanCollide = false
o76.Elasticity = 0
o76.FormFactor = Enum.FormFactor.Custom
o76.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o76.CFrame = CFrame.new(68.7880402, 1.65563095, 199.933548, 0.99999845, 1.11867848e-010, 3.22840824e-005, 3.14685167e-010, 0.999999762, -2.68220901e-007, -3.22842061e-005, 8.94069672e-008, 0.999998093)
o76.BottomSurface = Enum.SurfaceType.Smooth
o76.TopSurface = Enum.SurfaceType.Smooth
o76.Color = Color3.new(0.105882, 0.164706, 0.207843)
o76.Position = Vector3.new(68.7880402, 1.65563095, 199.933548)
o77.Parent = o76
o77.Scale = Vector3.new(0.095238097, 0.285714209, 0.952380955)
o77.MeshType = Enum.MeshType.Wedge
o78.Name = "Cylinder"
o78.Parent = o1
o78.BrickColor = BrickColor.new("Dark orange")
o78.Position = Vector3.new(68.850296, 1.46469998, 200.60051)
o78.Rotation = Vector3.new(-179.996536, 89.9030914, -90.0027008)
o78.Anchored = true
o78.CanCollide = false
o78.Elasticity = 0
o78.FormFactor = Enum.FormFactor.Symmetric
o78.Size = Vector3.new(1, 1, 1)
o78.CFrame = CFrame.new(68.850296, 1.46469998, 200.60051, -1.02863851e-009, 2.18234454e-005, 0.999998569, 0.999999821, 9.95397568e-006, 1.32058631e-009, -1.01327896e-005, 0.999998093, -2.18235691e-005)
o78.BottomSurface = Enum.SurfaceType.Smooth
o78.TopSurface = Enum.SurfaceType.Smooth
o78.Color = Color3.new(0.627451, 0.372549, 0.207843)
o78.Position = Vector3.new(68.850296, 1.46469998, 200.60051)
o79.Parent = o78
o79.Scale = Vector3.new(0.285714298, 0.476190478, 0.238095239)
o80.Parent = o1
o80.BrickColor = BrickColor.new("Dark orange")
o80.Position = Vector3.new(68.850296, 1.44066799, 200.50444)
o80.Rotation = Vector3.new(-89.9957657, 0.00174882903, -179.991028)
o80.Anchored = true
o80.CanCollide = false
o80.Elasticity = 0
o80.FormFactor = Enum.FormFactor.Symmetric
o80.Size = Vector3.new(1, 1, 1)
o80.CFrame = CFrame.new(68.850296, 1.44066799, 200.50444, -0.99999845, 0.000156559545, 3.05228241e-005, 3.05109679e-005, -7.40587711e-005, 0.999999702, 0.000156560971, 0.999997914, 7.38352537e-005)
o80.BottomSurface = Enum.SurfaceType.Smooth
o80.TopSurface = Enum.SurfaceType.Smooth
o80.Color = Color3.new(0.627451, 0.372549, 0.207843)
o80.Position = Vector3.new(68.850296, 1.44066799, 200.50444)
o81.Parent = o80
o81.Scale = Vector3.new(0.238095239, 0.666666687, 0.0476190485)
o82.Parent = o1
o82.BrickColor = BrickColor.new("Dark orange")
o82.Position = Vector3.new(68.8500443, 1.39357996, 200.266357)
o82.Rotation = Vector3.new(-89.9957657, -0.0192321967, -179.991028)
o82.Anchored = true
o82.CanCollide = false
o82.Elasticity = 0
o82.FormFactor = Enum.FormFactor.Symmetric
o82.Size = Vector3.new(1, 1, 1)
o82.CFrame = CFrame.new(68.8500443, 1.39357996, 200.266357, -0.999998391, 0.000156559545, -0.000335665158, -0.000335677527, -7.40587711e-005, 0.999999762, 0.000156455586, 0.999997914, 7.404387e-005)
o82.BottomSurface = Enum.SurfaceType.Smooth
o82.TopSurface = Enum.SurfaceType.Smooth
o82.Color = Color3.new(0.627451, 0.372549, 0.207843)
o82.Position = Vector3.new(68.8500443, 1.39357996, 200.266357)
o83.Parent = o82
o83.Scale = Vector3.new(0.238095239, 0.190476194, 0.0476190485)
o84.Name = "Mag1"
o84.Parent = o1
o84.BrickColor = BrickColor.new("Dark orange")
o84.Position = Vector3.new(68.8505402, 1.10062397, 199.76059)
o84.Rotation = Vector3.new(-108.863777, -0.00299395691, -179.998489)
o84.Anchored = true
o84.CanCollide = false
o84.Elasticity = 0
o84.FormFactor = Enum.FormFactor.Symmetric
o84.Size = Vector3.new(1, 1, 1)
o84.CFrame = CFrame.new(68.8505402, 1.10062397, 199.76059, -1.00000465, 2.63670663e-005, -5.22544069e-005, -3.50475166e-005, 0.323315382, 0.946295321, 4.61112722e-005, 0.946293712, -0.323321104)
o84.BottomSurface = Enum.SurfaceType.Smooth
o84.TopSurface = Enum.SurfaceType.Smooth
o84.Color = Color3.new(0.627451, 0.372549, 0.207843)
o84.Position = Vector3.new(68.8505402, 1.10062397, 199.76059)
o85.Parent = o84
o85.Scale = Vector3.new(0.142857149, 0.380952388, 0.380952388)
o86.Parent = o1
o86.BrickColor = BrickColor.new("Black")
o86.Position = Vector3.new(68.850296, 1.51271999, 200.266632)
o86.Rotation = Vector3.new(-90.0027695, -0.00174814055, -0.00152180961)
o86.Anchored = true
o86.CanCollide = false
o86.Elasticity = 0
o86.FormFactor = Enum.FormFactor.Symmetric
o86.Size = Vector3.new(1, 1, 1)
o86.CFrame = CFrame.new(68.850296, 1.51271999, 200.266632, 0.999998629, 2.65605522e-005, -3.05108078e-005, 3.05124686e-005, -4.80413437e-005, 0.999999762, 2.65617236e-005, -0.999998212, -4.83095646e-005)
o86.BottomSurface = Enum.SurfaceType.Smooth
o86.TopSurface = Enum.SurfaceType.Smooth
o86.Color = Color3.new(0.105882, 0.164706, 0.207843)
o86.Position = Vector3.new(68.850296, 1.51271999, 200.266632)
o87.Parent = o86
o87.Scale = Vector3.new(0.238095239, 0.190476194, 0.095238097)
o88.Parent = o1
o88.BrickColor = BrickColor.new("Dark orange")
o88.Position = Vector3.new(68.8505402, 1.32167995, 200.504623)
o88.Rotation = Vector3.new(-89.9957657, 0.00174882903, -179.991028)
o88.Anchored = true
o88.CanCollide = false
o88.Elasticity = 0
o88.FormFactor = Enum.FormFactor.Symmetric
o88.Size = Vector3.new(1, 1, 1)
o88.CFrame = CFrame.new(68.8505402, 1.32167995, 200.504623, -0.99999845, 0.000156559545, 3.05228241e-005, 3.05109679e-005, -7.40587711e-005, 0.999999702, 0.000156560971, 0.999997914, 7.38352537e-005)
o88.BottomSurface = Enum.SurfaceType.Smooth
o88.TopSurface = Enum.SurfaceType.Smooth
o88.Color = Color3.new(0.627451, 0.372549, 0.207843)
o88.Position = Vector3.new(68.8505402, 1.32167995, 200.504623)
o89.Parent = o88
o89.Scale = Vector3.new(0.238095239, 0.666666687, 0.095238097)
o90.Name = "Cylinder"
o90.Parent = o1
o90.BrickColor = BrickColor.new("Really black")
o90.Position = Vector3.new(68.850296, 1.44060695, 201.300552)
o90.Rotation = Vector3.new(-179.996536, 89.9030914, -90.0027008)
o90.Anchored = true
o90.CanCollide = false
o90.Elasticity = 0
o90.FormFactor = Enum.FormFactor.Plate
o90.Size = Vector3.new(1, 0.400000006, 1)
o90.CFrame = CFrame.new(68.850296, 1.44060695, 201.300552, -1.02863851e-009, 2.18234454e-005, 0.999998569, 0.999999821, 9.95397568e-006, 1.32058631e-009, -1.01327896e-005, 0.999998093, -2.18235691e-005)
o90.BottomSurface = Enum.SurfaceType.Smooth
o90.TopSurface = Enum.SurfaceType.Smooth
o90.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o90.Position = Vector3.new(68.850296, 1.44060695, 201.300552)
o91.Parent = o90
o91.Offset = Vector3.new(0, -0.0185714271, 0)
o91.Scale = Vector3.new(0.0666666627, 0.0476190485, 0.099999994)
o92.Name = "Cylinder"
o92.Parent = o1
o92.BrickColor = BrickColor.new("Black")
o92.Position = Vector3.new(68.850296, 1.44054496, 201.000381)
o92.Rotation = Vector3.new(-90.0027695, -0.00174814055, -0.00152180961)
o92.Anchored = true
o92.CanCollide = false
o92.Elasticity = 0
o92.FormFactor = Enum.FormFactor.Symmetric
o92.Size = Vector3.new(1, 1, 1)
o92.CFrame = CFrame.new(68.850296, 1.44054496, 201.000381, 0.999998629, 2.65605522e-005, -3.05108078e-005, 3.05124686e-005, -4.80413437e-005, 0.999999762, 2.65617236e-005, -0.999998212, -4.83095646e-005)
o92.BottomSurface = Enum.SurfaceType.Smooth
o92.TopSurface = Enum.SurfaceType.Smooth
o92.Color = Color3.new(0.105882, 0.164706, 0.207843)
o92.Position = Vector3.new(68.850296, 1.44054496, 201.000381)
o93.Parent = o92
o93.Scale = Vector3.new(0.142857149, 0.380952388, 0.095238097)
o94.Parent = o1
o94.BrickColor = BrickColor.new("Dark orange")
o94.Position = Vector3.new(68.8505402, 1.39357996, 200.742493)
o94.Rotation = Vector3.new(-89.9747925, -0.00174690969, -179.998047)
o94.Anchored = true
o94.CanCollide = false
o94.Elasticity = 0
o94.FormFactor = Enum.FormFactor.Symmetric
o94.Size = Vector3.new(1, 1, 1)
o94.CFrame = CFrame.new(68.8505402, 1.39357996, 200.742493, -0.999998629, 3.43552856e-005, -3.04893256e-005, -3.05468093e-005, -0.000440299511, 0.999999821, 3.44137188e-005, 0.999998152, 0.000440001488)
o94.BottomSurface = Enum.SurfaceType.Smooth
o94.TopSurface = Enum.SurfaceType.Smooth
o94.Color = Color3.new(0.627451, 0.372549, 0.207843)
o94.Position = Vector3.new(68.8505402, 1.39357996, 200.742493)
o95.Parent = o94
o95.Scale = Vector3.new(0.238095239, 0.190476194, 0.0476190485)
o96.Name = "Cone"
o96.Parent = o1
o96.BrickColor = BrickColor.new("Black")
o96.Position = Vector3.new(68.8507843, 1.44066799, 201.166641)
o96.Rotation = Vector3.new(-146.406219, 89.8991318, 56.3894539)
o96.Anchored = true
o96.CanCollide = false
o96.Elasticity = 0
o96.FormFactor = Enum.FormFactor.Symmetric
o96.Size = Vector3.new(1, 1, 1)
o96.CFrame = CFrame.new(68.8507843, 1.44066799, 201.166641, 4.31582375e-005, -6.49324356e-005, 0.99999845, -0.999999762, 1.0818243e-005, 4.31593289e-005, -1.06990337e-005, -0.999997914, -6.4975342e-005)
o96.BottomSurface = Enum.SurfaceType.Smooth
o96.TopSurface = Enum.SurfaceType.Smooth
o96.Color = Color3.new(0.105882, 0.164706, 0.207843)
o96.Position = Vector3.new(68.8507843, 1.44066799, 201.166641)
o97.Parent = o96
o97.MeshId = "http://www.roblox.com/asset/?id=1033714"
o97.Scale = Vector3.new(0.0476190485, 0.333333343, 0.0476190485)
o97.MeshType = Enum.MeshType.FileMesh
o98.Name = "NoSight"
o98.Parent = o1
o98.BrickColor = BrickColor.new("Black")
o98.Position = Vector3.new(68.850296, 1.68358696, 200.980438)
o98.Rotation = Vector3.new(-90, 0.00187138491, -89.9962845)
o98.Anchored = true
o98.CanCollide = false
o98.Elasticity = 0
o98.FormFactor = Enum.FormFactor.Custom
o98.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o98.CFrame = CFrame.new(68.850296, 1.68358696, 200.980438, 6.49771682e-005, 0.999998391, 3.26618283e-005, -2.68220901e-007, -3.26615009e-005, 0.999999762, 0.999998093, -6.49786234e-005, 8.94069672e-008)
o98.BottomSurface = Enum.SurfaceType.Smooth
o98.TopSurface = Enum.SurfaceType.Smooth
o98.Color = Color3.new(0.105882, 0.164706, 0.207843)
o98.Position = Vector3.new(68.850296, 1.68358696, 200.980438)
o99.Parent = o98
o99.Scale = Vector3.new(0.285714298, 0.0476190485, 0.142857149)
o100.Name = "NoSight"
o100.Parent = o1
o100.BrickColor = BrickColor.new("Black")
o100.Position = Vector3.new(68.810257, 1.71062803, 200.980331)
o100.Rotation = Vector3.new(-90.0010529, 15.0007381, -89.9958191)
o100.Anchored = true
o100.CanCollide = false
o100.Elasticity = 0
o100.FormFactor = Enum.FormFactor.Custom
o100.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o100.CFrame = CFrame.new(68.810257, 1.71062803, 200.980331, 7.05501734e-005, 0.965920925, 0.258831501, -7.4505806e-007, -0.258831978, 0.965922058, 0.999998271, -6.83516264e-005, -1.7747283e-005)
o100.BottomSurface = Enum.SurfaceType.Smooth
o100.TopSurface = Enum.SurfaceType.Smooth
o100.Color = Color3.new(0.105882, 0.164706, 0.207843)
o100.Position = Vector3.new(68.810257, 1.71062803, 200.980331)
o101.Parent = o100
o101.Scale = Vector3.new(0.285714298, 0.0476190485, 0.142857149)
o102.Name = "NoSight"
o102.Parent = o1
o102.BrickColor = BrickColor.new("Black")
o102.Position = Vector3.new(68.8893585, 1.70960605, 200.980331)
o102.Rotation = Vector3.new(-89.9990616, -14.9954176, -89.9964828)
o102.Anchored = true
o102.CanCollide = false
o102.Elasticity = 0
o102.FormFactor = Enum.FormFactor.Custom
o102.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o102.CFrame = CFrame.new(68.8893585, 1.70960605, 200.980331, 5.93892146e-005, 0.965944886, -0.258741796, -7.4505806e-007, 0.258742124, 0.965946257, 0.999998271, -5.71534038e-005, 1.58399343e-005)
o102.BottomSurface = Enum.SurfaceType.Smooth
o102.TopSurface = Enum.SurfaceType.Smooth
o102.Color = Color3.new(0.105882, 0.164706, 0.207843)
o102.Position = Vector3.new(68.8893585, 1.70960605, 200.980331)
o103.Parent = o102
o103.Scale = Vector3.new(0.285714298, 0.0476190485, 0.142857149)
o104.Name = "NoSight"
o104.Parent = o1
o104.BrickColor = BrickColor.new("Black")
o104.Position = Vector3.new(68.8073349, 1.683604, 200.980438)
o104.Rotation = Vector3.new(-90, 0.00187138491, -89.9962845)
o104.Anchored = true
o104.CanCollide = false
o104.Elasticity = 0
o104.FormFactor = Enum.FormFactor.Custom
o104.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o104.CFrame = CFrame.new(68.8073349, 1.683604, 200.980438, 6.49771682e-005, 0.999998391, 3.26618283e-005, -2.68220901e-007, -3.26615009e-005, 0.999999762, 0.999998093, -6.49786234e-005, 8.94069672e-008)
o104.BottomSurface = Enum.SurfaceType.Smooth
o104.TopSurface = Enum.SurfaceType.Smooth
o104.Color = Color3.new(0.105882, 0.164706, 0.207843)
o104.Position = Vector3.new(68.8073349, 1.683604, 200.980438)
o105.Parent = o104
o105.Scale = Vector3.new(0.285714298, 0.0476190485, 0.142857149)
o106.Name = "NoSight"
o106.Parent = o1
o106.BrickColor = BrickColor.new("White")
o106.Transparency = 1
o106.Position = Vector3.new(68.850296, 1.69355094, 200.947632)
o106.Rotation = Vector3.new(1.53679557e-005, 0.00184974167, -6.40956577e-009)
o106.Anchored = true
o106.CanCollide = false
o106.Elasticity = 0
o106.FormFactor = Enum.FormFactor.Custom
o106.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o106.CFrame = CFrame.new(68.850296, 1.69355094, 200.947632, 0.99999845, 1.11867848e-010, 3.22840824e-005, 3.14685167e-010, 0.999999762, -2.68220901e-007, -3.22842061e-005, 8.94069672e-008, 0.999998093)
o106.BottomSurface = Enum.SurfaceType.Smooth
o106.TopSurface = Enum.SurfaceType.Smooth
o106.Color = Color3.new(0.94902, 0.952941, 0.952941)
o106.Position = Vector3.new(68.850296, 1.69355094, 200.947632)
o107.Name = "lenspart"
o107.Parent = o106
o108.Parent = o106
o108.Scale = Vector3.new(0.0476190485, 0.0476190485, 0.0476190485)
o109.Name = "NoSight"
o109.Parent = o1
o109.BrickColor = BrickColor.new("Black")
o109.Position = Vector3.new(68.850296, 1.55558205, 200.857574)
o109.Rotation = Vector3.new(1.53679557e-005, 0.00184974167, -6.40956577e-009)
o109.Anchored = true
o109.CanCollide = false
o109.Elasticity = 0
o109.FormFactor = Enum.FormFactor.Custom
o109.Size = Vector3.new(0.200000003, 0.228571445, 0.200000003)
o109.CFrame = CFrame.new(68.850296, 1.55558205, 200.857574, 0.99999845, 1.11867848e-010, 3.22840824e-005, 3.14685167e-010, 0.999999762, -2.68220901e-007, -3.22842061e-005, 8.94069672e-008, 0.999998093)
o109.BottomSurface = Enum.SurfaceType.Smooth
o109.TopSurface = Enum.SurfaceType.Smooth
o109.Color = Color3.new(0.105882, 0.164706, 0.207843)
o109.Position = Vector3.new(68.850296, 1.55558205, 200.857574)
o110.Parent = o109
o110.Scale = Vector3.new(0.476190478, 1, 0.952380955)
o110.MeshType = Enum.MeshType.Wedge
o111.Name = "Mag1"
o111.Parent = o1
o111.BrickColor = BrickColor.new("Dark orange")
o111.Position = Vector3.new(68.850296, 0.759455025, 199.939224)
o111.Rotation = Vector3.new(-123.866768, -0.00278489292, -179.999084)
o111.Anchored = true
o111.CanCollide = false
o111.Elasticity = 0
o111.FormFactor = Enum.FormFactor.Symmetric
o111.Size = Vector3.new(1, 1, 1)
o111.CFrame = CFrame.new(68.850296, 0.759455025, 199.939224, -0.999990642, 1.59146148e-005, -4.86055505e-005, -3.8027305e-005, 0.557267249, 0.830328643, 3.69013214e-005, 0.830327094, -0.557258725)
o111.BottomSurface = Enum.SurfaceType.Smooth
o111.TopSurface = Enum.SurfaceType.Smooth
o111.Color = Color3.new(0.627451, 0.372549, 0.207843)
o111.Position = Vector3.new(68.850296, 0.759455025, 199.939224)
o112.Parent = o111
o112.Scale = Vector3.new(0.142857149, 0.380952388, 0.523809552)
o113.Name = "NoSight"
o113.Parent = o1
o113.BrickColor = BrickColor.new("Black")
o113.Position = Vector3.new(68.850296, 1.55562794, 200.980453)
o113.Rotation = Vector3.new(0.00424240995, 0.00721655181, 90)
o113.Anchored = true
o113.CanCollide = false
o113.Elasticity = 0
o113.FormFactor = Enum.FormFactor.Custom
o113.Size = Vector3.new(0.228571445, 0.200000003, 0.200000003)
o113.CFrame = CFrame.new(68.850296, 1.55562794, 200.980453, 4.37285053e-009, -0.99999845, 0.000125952589, 0.999999702, -5.30053512e-009, -7.404387e-005, 7.38352537e-005, 0.000125952662, 0.999997914)
o113.BottomSurface = Enum.SurfaceType.Smooth
o113.TopSurface = Enum.SurfaceType.Smooth
o113.Color = Color3.new(0.105882, 0.164706, 0.207843)
o113.Position = Vector3.new(68.850296, 1.55562794, 200.980453)
o114.Parent = o113
o114.Scale = Vector3.new(1, 0.476190478, 0.285714298)
o115.Name = "NoSight"
o115.Parent = o1
o115.BrickColor = BrickColor.new("Black")
o115.Position = Vector3.new(68.8932648, 1.68357205, 200.980438)
o115.Rotation = Vector3.new(-90, 0.00187138491, -89.9962845)
o115.Anchored = true
o115.CanCollide = false
o115.Elasticity = 0
o115.FormFactor = Enum.FormFactor.Custom
o115.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o115.CFrame = CFrame.new(68.8932648, 1.68357205, 200.980438, 6.49771682e-005, 0.999998391, 3.26618283e-005, -2.68220901e-007, -3.26615009e-005, 0.999999762, 0.999998093, -6.49786234e-005, 8.94069672e-008)
o115.BottomSurface = Enum.SurfaceType.Smooth
o115.TopSurface = Enum.SurfaceType.Smooth
o115.Color = Color3.new(0.105882, 0.164706, 0.207843)
o115.Position = Vector3.new(68.8932648, 1.68357205, 200.980438)
o116.Parent = o115
o116.Scale = Vector3.new(0.285714298, 0.0476190485, 0.142857149)
o117.Name = "SmokePart"
o117.Parent = o1
o117.BrickColor = BrickColor.new("Black")
o117.Transparency = 1
o117.Position = Vector3.new(68.8185577, 1.44109595, 201.766632)
o117.Rotation = Vector3.new(-80.1794052, -89.980217, -170.180023)
o117.Anchored = true
o117.CanCollide = false
o117.FormFactor = Enum.FormFactor.Custom
o117.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o117.CFrame = CFrame.new(68.8185577, 1.44109595, 201.766632, -0.000375139585, 6.49325812e-005, -0.99999994, -0.999999464, -1.07586384e-005, 0.000375139061, -1.07288361e-005, 0.999999523, 6.49366266e-005)
o117.BottomSurface = Enum.SurfaceType.Smooth
o117.TopSurface = Enum.SurfaceType.Smooth
o117.Color = Color3.new(0.105882, 0.164706, 0.207843)
o117.Position = Vector3.new(68.8185577, 1.44109595, 201.766632)
o118.Parent = o117
o118.Scale = Vector3.new(0.600000024, 1, 0.600000024)
o119.Name = "Coloring"
o119.Parent = o1
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

end,o119)
end))
o120.Name = "Gun_Script"
o120.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
wait(0.5)
--Edit settings below--
local Tool = script.Parent
local Settings = {
	Range = 700
	,Spread = 5
	,Damage = {16, 30}
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

end,o120)
end))
o121.Name = "Ammo"
o121.Parent = o120
o121.Value = 30
o122.Name = "StoredAmmo"
o122.Parent = o120
o122.Value = 1200
o123.Name = "Gui"
o123.Parent = o120
o124.Parent = o123
o124.Position = UDim2.new(1,-200,1,-100)
o124.Size = UDim2.new(0,100,0,100)
o124.Position = UDim2.new(1,-200,1,-100)
o124.BackgroundColor3 = Color3.new(1, 1, 1)
o124.BackgroundTransparency = 1
o124.BorderSizePixel = 0
o125.Name = "AmmoDisplay"
o125.Parent = o124
o125.Size = UDim2.new(1,0,1,0)
o125.Text = ""
o125.BackgroundTransparency = 1
o125.FontSize = Enum.FontSize.Size24
o125.TextColor3 = Color3.new(0.917647, 0.917647, 0.917647)
o125.TextStrokeTransparency = 0.5
o125.TextXAlignment = Enum.TextXAlignment.Right
o126.Parent = o120
o126.Size = 0.30000001192093
o126.Color = Color3.new(0.372549, 0.372549, 0.372549)
o126.Enabled = false
o126.Opacity = 0.30000001192093
o126.RiseVelocity = 15
o127.Name = "Smoke1"
o127.Parent = o120
o127.Size = 0.10000000149012
o127.Color = Color3.new(1, 0.6, 0.2)
o127.Enabled = false
o127.Opacity = 0.40000000596046
o127.RiseVelocity = 3
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