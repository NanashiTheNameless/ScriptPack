local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Char = Player.Character
local RightArm = Char["Right Arm"]
local LeftArm = Char["Left Arm"]
local RightLeg = Char["Right Leg"]
local LeftLeg = Char["Left Leg"]
local Humanoid = Char.Humanoid
local Head = Char.Head
local Torso = Char.Torso
local Torso2 = Char.HumanoidRootPart
local RenderStepped = game:GetService("RunService").RenderStepped
local CanAttack = true
local Slashing = false
local CharAnim = "Idle"
local AnimFrame = 0


local m = Instance.new("Model")
m.Name = "Blackout Sword"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Really black")
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.200000048, 4.5999999, 0.200000048)
p1.CFrame = CFrame.new(0.0438146591, 5.30618715, -12.6500006, -3.26636873e-005, 4.31581502e-005, -1, 9.29513355e-010, 1, 4.31581502e-005, 1, 4.80190998e-010, -3.26636873e-005)
p1.Anchored = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.5, 1, 2)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Institutional white")
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.200000048, 4.5999999, 0.200000048)
p2.CFrame = CFrame.new(0.0438146591, 5.30618715, -12.6500006, -3.26636873e-005, 4.31581502e-005, -1, 9.29513355e-010, 1, 4.31581502e-005, 1, 4.80190998e-010, -3.26636873e-005)
p2.Anchored = true
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.300000012, 1.02999997, 2.5)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Institutional white")
p3.Material = Enum.Material.SmoothPlastic
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p3.CFrame = CFrame.new(0.0438141823, 4.10622787, -12.6500053, -6.33001328e-005, 0.707187474, -0.707035959, -2.33650208e-005, 0.707028985, 0.707187533, 1.00000703, 5.63561916e-005, -3.02791595e-005)
p3.Anchored = true
p3.Elasticity = 0
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.189999998, 0.409999996, 0.128000021)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Institutional white")
p4.Material = Enum.Material.SmoothPlastic
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p4.CFrame = CFrame.new(0.0438203812, 4.10622072, -12.6500025, -0.000189896455, 0.707036138, 0.70717746, 6.99744051e-005, -0.70717746, 0.707036078, 1, 0.000183747979, 8.48160562e-005)
p4.Anchored = true
p4.Elasticity = 0
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.187999964, 0.409999996, 0.128000021)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Institutional white")
p5.Material = Enum.Material.SmoothPlastic
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p5.CFrame = CFrame.new(0.0438168049, 3.70622635, -12.6500053, -6.33001328e-005, 0.707187474, -0.707035959, -2.33650208e-005, 0.707028985, 0.707187533, 1.00000703, 5.63561916e-005, -3.02791595e-005)
p5.Anchored = true
p5.Elasticity = 0
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.189999998, 0.409999996, 0.128000021)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Institutional white")
p6.Material = Enum.Material.SmoothPlastic
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p6.CFrame = CFrame.new(0.0438168049, 3.70622683, -12.6499987, -0.000189896455, 0.707036138, 0.70717746, 6.99744051e-005, -0.70717746, 0.707036078, 1, 0.000183747979, 8.48160562e-005)
p6.Anchored = true
p6.Elasticity = 0
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.187999964, 0.409999996, 0.128000021)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Institutional white")
p7.Material = Enum.Material.SmoothPlastic
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p7.CFrame = CFrame.new(0.0438168049, 3.70622635, -12.6500053, -6.33001328e-005, 0.707187474, -0.707035959, -2.33650208e-005, 0.707028985, 0.707187533, 1.00000703, 5.63561916e-005, -3.02791595e-005)
p7.Anchored = true
p7.Elasticity = 0
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.189999998, 0.409999996, 0.128000021)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Institutional white")
p8.Material = Enum.Material.SmoothPlastic
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p8.CFrame = CFrame.new(0.0438168049, 3.70622683, -12.6499987, -0.000189896455, 0.707036138, 0.70717746, 6.99744051e-005, -0.70717746, 0.707036078, 1, 0.000183747979, 8.48160562e-005)
p8.Anchored = true
p8.Elasticity = 0
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.187999964, 0.409999996, 0.128000021)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Institutional white")
p9.Material = Enum.Material.SmoothPlastic
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p9.CFrame = CFrame.new(0.0438184738, 3.30622506, -12.6500044, -0.000189896455, 0.707036138, 0.70717746, 6.99744051e-005, -0.70717746, 0.707036078, 1, 0.000183747979, 8.48160562e-005)
p9.Anchored = true
p9.Elasticity = 0
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.187999964, 0.409999996, 0.128000021)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Institutional white")
p10.Material = Enum.Material.SmoothPlastic
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000003, 0.400000006, 0.400000006)
p10.CFrame = CFrame.new(0.0438120365, 3.30622482, -12.6500044, -6.33001328e-005, 0.707187474, -0.707035959, -2.33650208e-005, 0.707028985, 0.707187533, 1.00000703, 5.63561916e-005, -3.02791595e-005)
p10.Anchored = true
p10.Elasticity = 0
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/Asset/?id=9756362"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.189999998, 0.409999996, 0.128000021)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Institutional white")
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p11.CFrame = CFrame.new(0.0438146591, 2.8561902, -12.6500006, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p11.Anchored = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=3270017"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.449999988, 0.449999988, 1)
p12 = Instance.new("Part", m)
p12.BrickColor = BrickColor.new("Really black")
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p12.CFrame = CFrame.new(0.0438222885, 2.8561902, -12.6500006, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p12.Anchored = true
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=3270017"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.400000006, 0.400000006, 1)
p13 = Instance.new("Part", m)
p13.BrickColor = BrickColor.new("Institutional white")
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p13.CFrame = CFrame.new(0.0438146591, 2.65619326, -12.6500006, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p13.Anchored = true
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=3270017"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.449999988, 0.449999988, 1)
p14 = Instance.new("Part", m)
p14.BrickColor = BrickColor.new("Institutional white")
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p14.CFrame = CFrame.new(-0.256180763, 2.75619173, -12.6500006, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p14.Anchored = true
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/asset/?id=3270017"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.449999988, 0.449999988, 1)
p15 = Instance.new("Part", m)
p15.BrickColor = BrickColor.new("Institutional white")
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p15.CFrame = CFrame.new(0.343817711, 2.75619173, -12.6500015, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p15.Anchored = true
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=3270017"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.449999988, 0.449999988, 1)
p16 = Instance.new("Part", m)
p16.BrickColor = BrickColor.new("Really black")
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p16.CFrame = CFrame.new(-0.256180763, 2.75619173, -12.6500006, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p16.Anchored = true
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=3270017"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.400000006, 0.400000006, 1)
p17 = Instance.new("Part", m)
p17.BrickColor = BrickColor.new("Really black")
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p17.CFrame = CFrame.new(0.343817711, 2.75619173, -12.6500015, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p17.Anchored = true
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/asset/?id=3270017"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.400000006, 0.400000006, 1)
p18 = Instance.new("Part", m)
p18.BrickColor = BrickColor.new("Really black")
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p18.CFrame = CFrame.new(0.0438222885, 2.65619326, -12.6500006, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p18.Anchored = true
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/asset/?id=3270017"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.400000006, 0.400000006, 1)
p19 = Instance.new("Part", m)
p19.BrickColor = BrickColor.new("Really black")
p19.Shape = Enum.PartType.Cylinder
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1, 1, 1)
p19.CFrame = CFrame.new(0.0438141823, 2.35618997, -12.6500006, -9.15499404e-005, 2.79379719e-009, -1, -1, 0, 9.15499404e-005, 0, 1, 2.79388246e-009)
p19.Anchored = true
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("CylinderMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.299999923, 1, 1)
b20 = Instance.new("SpecialMesh", p19)
b20.MeshType = Enum.MeshType.Cylinder
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.100000001, 0.300000012, 1)
p20 = Instance.new("Part", m)
p20.BrickColor = BrickColor.new("Really black")
p20.Shape = Enum.PartType.Cylinder
p20.FormFactor = Enum.FormFactor.Symmetric
p20.Size = Vector3.new(1, 1, 1)
p20.CFrame = CFrame.new(0.0438141823, 2.20619631, -12.6500044, -6.29425049e-005, -1.58250332e-005, -1.00000381, -0.866024613, -0.500012875, 5.9068203e-005, -0.500009, 0.866024554, 1.20401382e-005)
p20.Anchored = true
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("CylinderMesh", p20)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.299999923, 1, 1)
b22 = Instance.new("SpecialMesh", p20)
b22.MeshType = Enum.MeshType.Cylinder
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.100000001, 0.300000012, 1)
p21 = Instance.new("Part", m)
p21.BrickColor = BrickColor.new("Institutional white")
p21.Shape = Enum.PartType.Cylinder
p21.FormFactor = Enum.FormFactor.Symmetric
p21.Size = Vector3.new(1, 1, 1)
p21.CFrame = CFrame.new(0.0438141823, 2.00619149, -12.6500006, -9.15499404e-005, 2.79379719e-009, -1, -1, 0, 9.15499404e-005, 0, 1, 2.79388246e-009)
p21.Anchored = true
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("CylinderMesh", p21)
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.299999923, 1, 1)
b24 = Instance.new("SpecialMesh", p21)
b24.MeshType = Enum.MeshType.Cylinder
b24.Name = "Mesh"
b24.Scale = Vector3.new(1, 0.280000001, 1)
p22 = Instance.new("Part", m)
p22.BrickColor = BrickColor.new("Really black")
p22.Shape = Enum.PartType.Cylinder
p22.FormFactor = Enum.FormFactor.Symmetric
p22.Size = Vector3.new(1, 1, 1)
p22.CFrame = CFrame.new(0.0438141823, 2.10618997, -12.6500006, -9.15499404e-005, 2.79379719e-009, -1, -1, 0, 9.15499404e-005, 0, 1, 2.79388246e-009)
p22.Anchored = true
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("CylinderMesh", p22)
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.299999923, 1, 1)
b26 = Instance.new("SpecialMesh", p22)
b26.MeshType = Enum.MeshType.Cylinder
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.100000001, 0.300000012, 1)
p23 = Instance.new("Part", m)
p23.BrickColor = BrickColor.new("Really black")
p23.Shape = Enum.PartType.Cylinder
p23.FormFactor = Enum.FormFactor.Symmetric
p23.Size = Vector3.new(1, 1, 1)
p23.CFrame = CFrame.new(0.0438122749, 2.00619125, -12.6499987, -0.250053704, 0.432997078, 0.866017759, -0.865987062, -0.50006628, -1.85645022e-005, 0.433058202, -0.749964833, 0.500013292)
p23.Anchored = true
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("CylinderMesh", p23)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.299999923, 1, 1)
b28 = Instance.new("SpecialMesh", p23)
b28.MeshType = Enum.MeshType.Cylinder
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.100000001, 0.300000012, 1)
p24 = Instance.new("Part", m)
p24.BrickColor = BrickColor.new("Really black")
p24.Shape = Enum.PartType.Cylinder
p24.FormFactor = Enum.FormFactor.Symmetric
p24.Size = Vector3.new(1, 1, 1)
p24.CFrame = CFrame.new(0.0438141823, 1.90619302, -12.6500006, -9.15499404e-005, 2.79379719e-009, -1, -1, 0, 9.15499404e-005, 0, 1, 2.79388246e-009)
p24.Anchored = true
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("CylinderMesh", p24)
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.299999923, 1, 1)
b30 = Instance.new("SpecialMesh", p24)
b30.MeshType = Enum.MeshType.Cylinder
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.100000001, 0.300000012, 1)
p25 = Instance.new("Part", m)
p25.BrickColor = BrickColor.new("Really black")
p25.Shape = Enum.PartType.Cylinder
p25.FormFactor = Enum.FormFactor.Symmetric
p25.Size = Vector3.new(1, 1, 1)
p25.CFrame = CFrame.new(0.0438156128, 1.80618668, -12.6500006, -0.500006676, 0.866021633, 1.11703221e-005, -0.866021633, -0.500006676, 4.16880684e-005, 4.1688003e-005, 1.11705713e-005, 1)
p25.Anchored = true
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b31 = Instance.new("CylinderMesh", p25)
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.299999923, 1, 1)
b32 = Instance.new("SpecialMesh", p25)
b32.MeshType = Enum.MeshType.Cylinder
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.100000001, 0.300000012, 1)
p26 = Instance.new("Part", m)
p26.BrickColor = BrickColor.new("Really black")
p26.Shape = Enum.PartType.Cylinder
p26.FormFactor = Enum.FormFactor.Symmetric
p26.Size = Vector3.new(1, 1, 1)
p26.CFrame = CFrame.new(0.0438146591, 1.70618844, -12.6500006, -9.15499404e-005, 2.79379719e-009, -1, -1, 0, 9.15499404e-005, 0, 1, 2.79388246e-009)
p26.Anchored = true
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b33 = Instance.new("CylinderMesh", p26)
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.299999923, 1, 1)
b34 = Instance.new("SpecialMesh", p26)
b34.MeshType = Enum.MeshType.Cylinder
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.100000001, 0.300000012, 1)
p27 = Instance.new("Part", m)
p27.BrickColor = BrickColor.new("Really black")
p27.Shape = Enum.PartType.Cylinder
p27.FormFactor = Enum.FormFactor.Symmetric
p27.Size = Vector3.new(1, 1, 1)
p27.CFrame = CFrame.new(0.0438148975, 1.6061902, -12.6500006, 0.258778095, 4.58896739e-006, -0.96593684, -0.96593678, 1.22940298e-006, -0.258778095, 0, 1, 4.75079469e-006)
p27.Anchored = true
p27.BottomSurface = Enum.SurfaceType.Smooth
p27.TopSurface = Enum.SurfaceType.Smooth
b35 = Instance.new("CylinderMesh", p27)
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.299999923, 1, 1)
b36 = Instance.new("SpecialMesh", p27)
b36.MeshType = Enum.MeshType.Cylinder
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.100000001, 0.300000012, 1)
p28 = Instance.new("Part", m)
p28.BrickColor = BrickColor.new("Really black")
p28.Shape = Enum.PartType.Cylinder
p28.FormFactor = Enum.FormFactor.Symmetric
p28.Size = Vector3.new(1, 1, 1)
p28.CFrame = CFrame.new(0.0438141823, 1.50619149, -12.6500006, -9.15499404e-005, 2.79379719e-009, -1, -1, 0, 9.15499404e-005, 0, 1, 2.79388246e-009)
p28.Anchored = true
p28.BottomSurface = Enum.SurfaceType.Smooth
p28.TopSurface = Enum.SurfaceType.Smooth
b37 = Instance.new("CylinderMesh", p28)
b37.Name = "Mesh"
b37.Scale = Vector3.new(0.299999923, 1, 1)
b38 = Instance.new("SpecialMesh", p28)
b38.MeshType = Enum.MeshType.Cylinder
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.100000001, 0.25, 1)
p29 = Instance.new("Part", m)
p29.BrickColor = BrickColor.new("Institutional white")
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p29.CFrame = CFrame.new(0.0438146591, 1.25618386, -12.6500006, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p29.Anchored = true
p29.BottomSurface = Enum.SurfaceType.Smooth
p29.TopSurface = Enum.SurfaceType.Smooth
b39 = Instance.new("SpecialMesh", p29)
b39.MeshId = "http://www.roblox.com/asset/?id=3270017"
b39.TextureId = ""
b39.MeshType = Enum.MeshType.FileMesh
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.5, 0.5, 1)
p30 = Instance.new("Part", m)
p30.BrickColor = BrickColor.new("Really black")
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
p30.CFrame = CFrame.new(0.0438148975, 1.25619149, -12.6500006, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
p30.Anchored = true
p30.BottomSurface = Enum.SurfaceType.Smooth
p30.TopSurface = Enum.SurfaceType.Smooth
b40 = Instance.new("SpecialMesh", p30)
b40.MeshId = "http://www.roblox.com/asset/?id=3270017"
b40.TextureId = ""
b40.MeshType = Enum.MeshType.FileMesh
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.449999988, 0.449999988, 1)
m.Parent = Char


local mw = Instance.new("Model")
mw.Name = "Wings"
m1 = Instance.new("Model")
m1.Name = "wing1"
m1.Parent = mw
m2 = Instance.new("Model")
m2.Name = "wing2"
m2.Parent = mw
p1 = Instance.new("Part", m1)
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.SmoothPlastic
p1.Transparency = 1
p1.Name = "swabby"
p1.CFrame = CFrame.new(28.221529, 3.08749795, 65.2934189, 0.500065207, -0.865987778, -3.4978475e-005, 0.749960601, 0.433085412, -0.499996215, 0.43300578, 0.25000447, 0.866027594)
p1.Anchored = true
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(2.20000005, 0.300000012, 0.300000012)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
p2 = Instance.new("Part", m1)
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.SmoothPlastic
p2.Transparency = 1
p2.CFrame = CFrame.new(32.8597641, 3.62613487, 66.7119141, 0.981190026, -0.138223708, 0.13475275, 0.133579195, 0.990105927, 0.0429623723, -0.139358163, -0.0241530985, 0.989946902)
p2.Anchored = true
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.5, 2.69999981, 0.399999976)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p2)
b1.MeshType = Enum.MeshType.Brick
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.299999923, 1, 0.299999893)
p3 = Instance.new("Part", m1)
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.SmoothPlastic
p3.Transparency = 1
p3.CFrame = CFrame.new(31.7640572, 3.33884311, 66.715683, 0.97005409, -0.242377147, 0.0156476386, 0.240812525, 0.968183577, 0.0680160224, -0.0316362567, -0.0622107349, 0.997561395)
p3.Anchored = true
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.5, 3.5999999, 0.399999976)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p3)
b2.MeshType = Enum.MeshType.Brick
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.299999923, 1, 0.299999893)
p4 = Instance.new("Part", m1)
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.SmoothPlastic
p4.Transparency = 1
p4.CFrame = CFrame.new(29.1000061, 4.03660202, 65.8499908, 0.866040468, -0.499973893, -5.1980147e-005, 0.432973981, 0.750037253, -0.499977767, 0.250014782, 0.432978451, 0.866038322)
p4.Anchored = true
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.899999976, 0.300000012, 0.300000012)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
p5 = Instance.new("Part", m1)
p5.BrickColor = BrickColor.new("Really black")
p5.Material = Enum.Material.SmoothPlastic
p5.Transparency = 1
p5.CFrame = CFrame.new(30.5597649, 3.22613502, 66.411911, 0.891023576, -0.453955591, -6.15231693e-005, 0.438498497, 0.860649526, 0.258843005, -0.117451012, -0.230662003, 0.965919197)
p5.Anchored = true
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.5, 2.69999981, 0.399999976)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p5)
b3.MeshType = Enum.MeshType.Brick
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.299999923, 1, 0.299999893)
p6 = Instance.new("Part", m1)
p6.BrickColor = BrickColor.new("Really black")
p6.Material = Enum.Material.SmoothPlastic
p6.Transparency = 1
p6.CFrame = CFrame.new(30.5276604, 4.80992603, 66.3257141, 0.839243114, -0.543269575, -0.0230075158, 0.466465414, 0.741049647, -0.48296535, 0.279430062, 0.39459312, 0.875337183)
p6.Anchored = true
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(2.60000014, 0.300000012, 0.300000012)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
p7 = Instance.new("Part", m1)
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.SmoothPlastic
p7.Transparency = 1
p7.CFrame = CFrame.new(32.7728691, 5.017416, 66.6116638, 0.961257279, 0.266243845, -0.071376808, -0.274140328, 0.896381021, -0.348335385, -0.02876647, 0.354407489, 0.934644938)
p7.Anchored = true
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(2.5999999, 0.400000006, 0.300000042)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
p8 = Instance.new("Part", m1)
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.SmoothPlastic
p8.Transparency = 1
p8.CFrame = CFrame.new(29.5640564, 2.23884296, 66.015686, 0.956129313, -0.292690933, 0.0120926294, 0.291226387, 0.95418328, 0.0686937049, -0.0316451639, -0.0621581897, 0.997564435)
p8.Anchored = true
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.5, 3.5999999, 0.399999976)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p8)
b4.MeshType = Enum.MeshType.Brick
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.299999923, 1, 0.299999893)
p9 = Instance.new("Part", m2)
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.SmoothPlastic
p9.Transparency = 1
p9.CFrame = CFrame.new(24.6597633, 3.22613502, 66.411911, 0.894092023, 0.39874354, 0.203957587, -0.432194024, 0.88758713, 0.15935117, -0.117488086, -0.230625331, 0.965922952)
p9.Anchored = true
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.5, 2.69999981, 0.399999976)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p9)
b5.MeshType = Enum.MeshType.Brick
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.299999923, 1, 0.299999893)
p10 = Instance.new("Part", m2)
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.SmoothPlastic
p10.Transparency = 1
p10.CFrame = CFrame.new(25.851799, 4.03660202, 65.875351, -0.866004705, -0.500035882, 2.58785476e-005, 0.4330374, -0.749996781, -0.4999834, 0.250029057, -0.432976753, 0.866034985)
p10.Anchored = true
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.899999976, 0.300000012, 0.300000012)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
p11 = Instance.new("Part", m2)
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.SmoothPlastic
p11.Transparency = 1
p11.CFrame = CFrame.new(25.5640564, 2.23884296, 65.9156799, 0.984139502, 0.172361895, 0.0419539548, -0.174551085, 0.983067989, 0.0557539612, -0.0316334926, -0.0621929318, 0.997562647)
p11.Anchored = true
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.5, 3.5999999, 0.399999976)
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p11)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.299999923, 1, 0.299999893)
p12 = Instance.new("Part", m2)
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.SmoothPlastic
p12.Transparency = 1
p12.CFrame = CFrame.new(21.9597626, 3.62613487, 67.2119064, 0.974458814, 0.174458876, 0.141394794, -0.176118717, 0.984368086, -0.000787748024, -0.139321893, -0.0241354425, 0.989952624)
p12.Anchored = true
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.5, 2.69999981, 0.399999976)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p12)
b7.MeshType = Enum.MeshType.Brick
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.299999923, 1, 0.299999893)
p13 = Instance.new("Part", m2)
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.SmoothPlastic
p13.Transparency = 1
p13.CFrame = CFrame.new(22.0730019, 5.01699877, 67.1900024, 0.877745152, -0.351431221, 0.325657636, 0.421366543, 0.889733076, -0.175554335, -0.228050441, 0.29131633, 0.929044664)
p13.Anchored = true
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(2.5999999, 0.400000006, 0.300000042)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
p14 = Instance.new("Part", m2)
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.SmoothPlastic
p14.Transparency = 1
p14.CFrame = CFrame.new(23.2640572, 3.43884397, 66.715683, 0.965184987, 0.257365376, 0.0466622338, -0.259638876, 0.964311302, 0.0518425517, -0.0316536501, -0.0621535219, 0.997564375)
p14.Anchored = true
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.5, 3.5999999, 0.399999976)
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p14)
b8.MeshType = Enum.MeshType.Brick
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.299999923, 1, 0.299999893)
p15 = Instance.new("Part", m2)
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.SmoothPlastic
p15.Transparency = 1
p15.Name = "collio"
p15.CFrame = CFrame.new(26.721529, 3.08749795, 65.2934189, -0.500057757, -0.865992069, 3.56845521e-005, 0.749975026, -0.43308562, -0.49997431, 0.43298921, -0.249989271, 0.866040289)
p15.Anchored = true
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(2.20000005, 0.300000012, 0.300000012)
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
p16 = Instance.new("Part", m2)
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.SmoothPlastic
p16.Transparency = 1
p16.CFrame = CFrame.new(24.3072205, 4.88802481, 66.4599915, -0.82717216, -0.558397651, 0.0630738288, 0.457648247, -0.734522939, -0.501033068, 0.326104909, -0.385574937, 0.863126576)
p16.Anchored = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(3, 0.300000012, 0.300000012)
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth

function stick(x, y)
	weld = Instance.new("Motor") 
	weld.Name='m'
	weld.Part0 = x
	weld.Part1 = y
	local HitPos = x.Position
	local CJ = CFrame.new(HitPos) 
	local C0 = x.CFrame:inverse() *CJ 
	local C1 = y.CFrame:inverse() * CJ 
	weld.C0 = C0 
	weld.C1 = C1 
	weld.Parent = x
end
c = m1:children()
for n = 1, #c do
	if (c[n].className == "Part") then
		if (c[n].Name ~= "MainPart") then
			stick(c[n], m1.swabby)
			wait()
			c[n].Anchored = false
		end
	end
end
c = m2:children()
for n = 1, #c do
	if (c[n].className == "Part") then
		if (c[n].Name ~= "MainPart") then
			stick(c[n], m2.collio)
			wait()
			c[n].Anchored = false
		end
	end
end
function weld(p0,p1,c0)
	local w=Instance.new("Motor",p0)
	w.Part0=p0
	w.Part1=p1
	w.C1=c0
	return w
end
mw.Parent = Char
weld(Char.Torso,m1.swabby,CFrame.new(-2,0,0)*CFrame.Angles(-math.rad(30),math.rad(30),-math.rad(40)))
weld(Char.Torso,m2.collio,CFrame.new(-2,0,0)*CFrame.Angles(math.rad(30),math.rad(30),math.pi+math.rad(40)))

local HitDB = {}

for i,v in pairs(m:GetChildren()) do
    if v.CFrame.Y > p22.CFrame.Y+1 then
        v.Touched:connect(function(Hit)
            if Slashing == true and Hit.Parent:FindFirstChild("Humanoid") and Hit.Parent.Humanoid ~= Humanoid and HitDB[Hit.Parent.Humanoid] == nil then
                HitDB[Hit.Parent.Humanoid] = true
                Hit.Parent.Humanoid:TakeDamage(math.random(45,50))
                wait(0.75)
                HitDB[Hit.Parent.Humanoid] = nil
            end
        end)
    end
end


local Welds = {}

local Handle = p22
for i,v in pairs(m:GetChildren()) do
    if v:IsA("BasePart") and v ~= Handle then
        local Weld = Instance.new("Motor6D")
        Weld.Part0 = Handle
        Weld.Part1 = v
        Weld.C0 = CFrame.new()
        Weld.C1 = v.CFrame:inverse() * Handle.CFrame
        Weld.Parent = v
        v.CanCollide = false
        v.Anchored = false
        Welds[Weld] = Weld
    end
end
Handle.CanCollide = false
Handle.Anchored = false

function ByeAnim(M)
    for i,v in pairs(M:GetChildren()) do
        if v:IsA("Animation") then
            v.AnimationId = ""
        elseif v:IsA("StringValue") then
            v.Value = ""
        end
        ByeAnim(v)
    end
end

ByeAnim(Char)

Char.Animate.Disabled = true
Char.Animate.Disabled = false

function ByeWelds(M)
    for i,v in pairs(M:GetChildren()) do
        if v:IsA("Weld") and Welds[v] == nil then
            v.Part0 = nil
            v.Part1 = nil
            v:Destroy()
        end
        ByeWelds(v)
    end
end

--ByeWelds(Char)

local HandWeld = Instance.new("Weld",Handle)
HandWeld.Part0 = RightArm
HandWeld.Part1 = Handle
HandWeld.C0 = CFrame.new(0,-1,-0.15)*CFrame.Angles(math.rad(90),0,math.rad(90))
Welds[HandWeld] = HandWeld
    
local HeadWeld = Instance.new("Weld",Handle)
HeadWeld.Part0 = Torso
HeadWeld.Part1 = Head
HeadWeld.C0 = CFrame.new(0,1,0)
HeadWeld.C1 = CFrame.new(0,-0.5,0)
local HWCFr = CFrame.new(0,0,0)
local HWSpeed = 0.1
Welds[HeadWeld] = HeadWeld
    
local TorsoWeld = Instance.new("Weld",Handle)
TorsoWeld.Part0 = Torso2
TorsoWeld.Part1 = Torso
TorsoWeld.C0 = CFrame.new(0,-1,0)
TorsoWeld.C1 = CFrame.new(0,-1,0)
local TWCFr = CFrame.new(0,0,0)
local TWSpeed = 0.1
Welds[TorsoWeld] = TorsoWeld

local RA0Joint = CFrame.new(1,0.75,0)
local RA1Joint = CFrame.new(-0.5,0.75,0)
local RARot = CFrame.Angles(math.rad(10),math.rad(10),0)
local RARotOffset = CFrame.Angles(0,0,0)
local RACur = RARot
local RACur2 = RARotOffset
local RASpeed = 0.1

local LA0Joint = CFrame.new(-1,0.75,0)
local LA1Joint = CFrame.new(0.5,0.75,0)
local LARot = CFrame.Angles(0,math.rad(-10),math.rad(-5))
local LARotOffset = CFrame.Angles(0,0,0)
local LACur = LARot
local LACur2 = LARotOffset
local LASpeed = 0.1

local RL0Joint = CFrame.new(0.5,-1,0)
local RL1Joint = CFrame.new(0,1,0)
local RLRot = CFrame.Angles(math.rad(0),math.rad(0),math.rad(5))
local RLRotOffset = CFrame.Angles(0,0,0)
local RLCur = RLRot
local RLCur2 = RLRotOffset
local RLSpeed = 0.1

local LL0Joint = CFrame.new(-0.5,-1,0)
local LL1Joint = CFrame.new(0,1,0)
local LLRot = CFrame.Angles(math.rad(0),math.rad(0),math.rad(-5))
local LLRotOffset = CFrame.Angles(0,0,0)
local LLCur = LLRot
local LLCur2 = LLRotOffset
local LLSpeed = 0.1

local RAW = Instance.new("Weld",Torso)
RAW.Part0 = Torso
RAW.Part1 = RightArm
RAW.C0 = RA0Joint * RARot
RAW.C1 = RA1Joint
Welds[RAW] = RAW

local LAW = Instance.new("Weld",Torso)
LAW.Part0 = Torso
LAW.Part1 = LeftArm
LAW.C0 = LA0Joint * LARot
LAW.C1 = LA1Joint
Welds[LAW] = LAW

local RLW = Instance.new("Weld",Torso)
RLW.Part0 = Torso2
RLW.Part1 = RightLeg
RLW.C0 = RL0Joint * RLRot
RLW.C1 = RL1Joint
Welds[RLW] = RLW

local LLW = Instance.new("Weld",Torso)
LLW.Part0 = Torso2
LLW.Part1 = LeftLeg
LLW.C0 = LL0Joint * LLRot
LLW.C1 = LL1Joint
Welds[LLW] = LLW

for i,v in pairs(Torso:GetChildren()) do
    if v:IsA("Weld") and Welds[v] == nil then
        v.Part0 = nil
        v.Part1 = nil
        v:Destroy()
        print(v)
    end
end

for i,v in pairs(Torso2:GetChildren()) do
    if v:IsA("Weld") and Welds[v] == nil then
        v.Part0 = nil
        v.Part1 = nil
        v:Destroy()
        print(v)
    end
end

local fromAxisAngle = CFrame.fromAxisAngle
local components = CFrame.new().components
local inverse = CFrame.new().inverse
local v3 = Vector3.new
local acos = math.acos
local sqrt = math.sqrt
local invroot2 = 1/math.sqrt(2)

function Interpolate(c0, c1) -- (CFrame from, CFrame to) -> (float theta, (float fraction -> CFrame between))
	-- The expanded matrix
	local _, _, _, xx, yx, zx, 
	               xy, yy, zy, 
	               xz, yz, zz = components(inverse(c0)*c1)
	
	-- The cos-theta of the axisAngles from 
	local cosTheta = (xx + yy + zz - 1)/2
	
	-- Rotation axis
	local rotationAxis = v3(yz-zy, zx-xz, xy-yx)
	
	-- The position to tween through
	local positionDelta = (c1.p - c0.p)
		
	-- Theta
	local theta;			
		
	-- Catch degenerate cases
	if cosTheta == 0 then
		-- Case exact same rotation, just interpolator over the position
		return function(t)
			return c0 + positionDelta*t
		end	
	elseif cosTheta >= 0.999 then
		-- Case very similar rotations, just lineraly interpolate, as it is a good 
		-- approximation. At this small angle we can't reliably find a rotation axis
		-- for some values even if the rotation matrix would still be accurate.
		local startPos = c0.p
		local _, _, _, xx0, yx0, zx0, 
	                   xy0, yy0, zy0, 
	                   xz0, yz0, zz0 = components(c0)
		local _, _, _, xx1, yx1, zx1, 
	                   xy1, yy1, zy1, 
	                   xz1, yz1, zz1 = components(c1)
		return function(t)
			local a = 1 - t
			return CFrame.new(0, 0, 0, xx0*a+xx1*t, yx0*a+yx1*t, zx0*a+zx1*t,
			                           xy0*a+xy1*t, yy0*a+yy1*t, zy0*a+zy1*t,
			                           xz0*a+xz1*t, yz0*a+yz1*t, zz0*a+zz1*t) + 
			       (startPos + positionDelta*t)
		end
	elseif cosTheta <= -0.9999 then
		-- Case exactly opposite rotations, disambiguate
		theta = math.pi
		xx = (xx + 1) / 2
		yy = (yy + 1) / 2
		zz = (zz + 1) / 2
		if xx > yy and xx > zz then
			if xx < 0.0001 then
				rotationAxis = v3(0, invroot2, invroot2)
			else
				local x = sqrt(xx)
				xy = (xy + yx) / 4
				xz = (xz + zx) / 4
				rotationAxis = v3(x, xy/x, xz/x)
			end
		elseif yy > zz then
			if yy < 0.0001 then
				rotationAxis = v3(invroot2, 0, invroot2)
			else
				local y = sqrt(yy)
				xy = (xy + yx) / 4
				yz = (yz + zy) / 4
				rotationAxis = v3(xy/y, y, yz/y)
			end	
		else
			if zz < 0.0001 then
				rotationAxis = v3(invroot2, invroot2, 0)
			else
				local z = sqrt(zz)
				xz = (xz + zx) / 4
				yz = (yz + zy) / 4
				rotationAxis = v3(xz/z, yz/z, z)
			end
		end
	else
		-- Normal case, get theta from cosTheta
		theta = acos(cosTheta)
	end
	
	-- Return the interpolator
	return function(t)
		return c0*fromAxisAngle(rotationAxis, theta*t) + positionDelta*t
	end
end

function CFrToRot(Part,Joint,CFr)
    local Return = (Part.CFrame*Joint):toObjectSpace(CFrame.new((Part.CFrame*Joint).p,(Part.CFrame*Joint*CFr).p))
    return (Return-Return.p)
end

local ply = Instance.new("WedgePart")
ply.Transparency = 0
ply.BrickColor = BrickColor.new("Really black")
ply.TopSurface = "SmoothNoOutlines"
ply.BottomSurface = "SmoothNoOutlines"
ply.RightSurface = "SmoothNoOutlines"
ply.LeftSurface = "SmoothNoOutlines"
ply.FrontSurface = "SmoothNoOutlines"
ply.BackSurface = "SmoothNoOutlines"
ply.CanCollide = false
ply.formFactor = 3
ply.TopSurface = 0
ply.BottomSurface = 0
ply.Anchored = true
ply.Size = Vector3.new(0.2,7,7)

function ParaD(a, b, c)
	local dot = (b-a).x*(c-a).x + (b-a).y*(c-a).y + (b-a).z*(c-a).z
	return dot / (a-b).magnitude
end

function PerpD(a, b, c)
	local par = ParaD(a, b, c)
	return math.sqrt((c-a).magnitude^2 - par^2)
end

local _P0, _P1 = nil, nil

function DrawTriangle(parent, vec1, vec2, vec3)
	local A, B, C = nil, nil, nil
	local M0,M1
	local p0, p1 = ply:clone(), ply:clone()
	_P0 = p0
	_P1 = p1
	local s1 = (vec1 - vec2).magnitude
			s2 = (vec2 - vec3).magnitude
			s3 = (vec3 - vec1).magnitude
	local smax = math.max(s1, s2, s3)
	if (vec1 - vec2).magnitude == smax then
		A = vec1
		B = vec2
		C = vec3
	elseif (vec2 - vec3).magnitude == smax then
		A = vec2
		B = vec3
		C = vec1	
	elseif (vec3 - vec1).magnitude == smax then
		A = vec3
		B = vec1
		C = vec2	
	end
	local perp = PerpD(A, B, C)
	local para = ParaD(A, B, C)
	local dif_para = (A-B).magnitude - para	
	local ambig = false
	M0 = Vector3.new(0.1, perp, para)
	p0.CFrame = CFrame.new(B, A) 
	local Top_Look = (p0.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)).lookVector
	local Mid_Point = A + CFrame.new(A, B).lookVector * para
	local Needed_Look = CFrame.new(Mid_Point, C).lookVector
	local dot = Top_Look.x*Needed_Look.x + Top_Look.y*Needed_Look.y + Top_Look.z*Needed_Look.z
	p0.CFrame = p0.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, math.acos(dot))
	if ((p0.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)).lookVector - Needed_Look).magnitude > 0.01 then
		p0.CFrame = p0.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, -2*math.acos(dot))
		ambig = true
	end
	p0.Size = Vector3.new(0,0,0)
	p0.CFrame = p0.CFrame * CFrame.new(0, perp/2, -(dif_para + para/2))	
	p0.Parent = parent
	p0:BreakJoints()
	local me = Instance.new("SpecialMesh",p0)
	me.MeshType = "Wedge"
	me.Scale = ((M0 * 0.145714286) * 7)/0.2
	M1 = Vector3.new(0, perp, dif_para)
	p1.CFrame = CFrame.new(B, A)  * CFrame.fromEulerAnglesXYZ(0, 0, math.acos(dot)) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
	if ((p1.CFrame * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)).lookVector - Needed_Look).magnitude > 0.01 then
		p1.CFrame = p1.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 2*math.acos(dot))
		ambig = true
	end
	p1.Size = Vector3.new(0,0,0)
	p1.CFrame = p1.CFrame * CFrame.new(0, perp/2, dif_para/2)
	p1:BreakJoints()
	local me = Instance.new("SpecialMesh",p1)
	me.MeshType = "Wedge"
	me.Scale = ((M1 * 0.145714286) * 7)/0.2
	p1.Parent = parent
	local this = {}
	this.SetProperty = function(self,prop,value)
	    p0[prop] = value
	    p1[prop] = value
	end
	this.GetProperty = function(self,prop)
	    return p0[prop]
	end
	this.Destroy = function(self)
	    p0:Destroy()
	    p1:Destroy()
	end
	return this
end

local function setupPart(part)
    part.Anchored = true
    part.FormFactor = 'Custom'
    part.CanCollide = false
    part.BrickColor = BrickColor.new("Really black")
    part.TopSurface = 'SmoothNoOutlines'
    part.BottomSurface = 'SmoothNoOutlines'
    part.FrontSurface = 'SmoothNoOutlines'
    part.BackSurface = 'SmoothNoOutlines'
    part.LeftSurface = 'SmoothNoOutlines'
    part.RightSurface = 'SmoothNoOutlines'
end

function CFrameFromTopBack(at, top, back)
    local right = top:Cross(back)
    return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function CreateTriangle(parent, a, b, c)
    local this = {}
    local mPart1 = Instance.new('WedgePart')
    setupPart(mPart1)
    local mPart2 = Instance.new('WedgePart')
    setupPart(mPart2)
    function this:Set(a, b, c) --[[ edg1 A ------|------>B --. '\ | / \ \part1|part2/ | \ cut / / Direction edges point in: edg3 \ / edg2 / (clockwise) \ / |/ \<- / ` \ / C --]]
        local ab, bc, ca = b-a, c-b, a-c local abm, bcm, cam = ab.magnitude, bc.magnitude, ca.magnitude
        local edg1 = math.abs(0.5 + ca:Dot(ab)/(abm*abm))
        local edg2 = math.abs(0.5 + ab:Dot(bc)/(bcm*bcm))
        local edg3 = math.abs(0.5 + bc:Dot(ca)/(cam*cam))
        if edg1 < edg2 then
            if edg1 < edg3 then
                -- nothing to change
            else
                a, b, c = c, a, b
                ab, bc, ca = ca, ab, bc
                abm = cam
            end
        else
            if edg2 < edg3 then
                a, b, c = b, c, a
                ab, bc, ca = bc, ca, ab
                abm = bcm
            else 
                a, b, c = c, a, b
                ab, bc, ca = ca, ab, bc
                abm = cam
            end
        end

        local len1 = -ca:Dot(ab)/abm local len2 = abm - len1 local width = (ca + ab.unit*len1).magnitude
        local maincf = CFrameFromTopBack(a, ab:Cross(bc).unit, -ab.unit)
        
        mPart1.Parent = parent
        mPart1.Size = Vector3.new(1,1,1)
        mPart1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
        local Mesh = Instance.new("SpecialMesh",mPart1)
        Mesh.MeshType = "Wedge"
        Mesh.Scale = Vector3.new(0.005, width, len1)

        mPart2.Parent = parent
        mPart2.Size = Vector3.new(1,1,1)
        mPart2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
        local Mesh = Instance.new("SpecialMesh",mPart2)
        Mesh.MeshType = "Wedge"
        Mesh.Scale = Vector3.new(0.005, width, len2)
    end

    function this:SetProperty(prop, value)
        mPart1[prop] = value
        mPart2[prop] = value
    end
    
    function this:GetProperty(prop)
        return mPart1[prop]
    end
    
    this:Set(a, b, c)
    function this:Destroy()
        mPart1:Destroy()
        mPart2:Destroy()
    end
    return this
end

local SlashTime = nil

function Button1Down()
    if CanAttack == true then
        if SlashTime == nil or tick()-SlashTime > 2 then
            SlashTime = tick()
            CanAttack = false
            RARot = CFrame.Angles(math.rad(15),math.rad(135),math.rad(50))
            LARot = CFrame.Angles(math.rad(-25),math.rad(-10),0)
            TWCFr = CFrame.Angles(0,math.rad(15),0)
            RASpeed = 0.2
            LASpeed = 0.2
            wait(0.25)
            RASpeed = 0.3
            TWCFr = CFrame.Angles(0,math.rad(5),0)
            LASpeed = 0.3
            LARot = CFrame.Angles(math.rad(5),math.rad(-10),0)
            RARot = CFrame.Angles(math.rad(math.random(-15,5)),math.rad(math.random(-30,-10)),math.rad(math.random(60,90)))
            Slashing = true
            wait(0.15)
            Slashing = false
            RASpeed = 0.1
            LASPeed = 0.1
            TWCFr = CFrame.Angles(0,0,0)
            LARot = CFrame.Angles(math.rad(0),math.rad(-10),0)
            RARot = CFrame.Angles(math.rad(0),math.rad(10),0)
            wait(0.35)
            CanAttack = true
        else
            SlashTime = nil
            CanAttack = false
            local Rot = CFrToRot(Torso2,RA0Joint,CFrame.new(math.random(-5,-1)*0.1,10,-2))
            LARot = CFrame.Angles(math.rad(-35),math.rad(-10),0)
            RARotOffset = CFrame.Angles(math.rad(90),0,0)
            TWCFr = CFrame.Angles(math.rad(5),0,0)
            RARot = Rot
            LASpeed = 0.2
            RASpeed = 0.2
            TWSpeed = 0.2
            wait(0.25)
            RASpeed = 0.3
            LASpeed = 0.3
            TWSpeed = 0.3
            Slashing = true
            TWCFr = CFrame.Angles(math.rad(-5),0,0)
            LARot = CFrame.Angles(math.rad(5),math.rad(-10),0)
            RARot = CFrToRot(Torso2,RA0Joint,CFrame.new(math.random(1,5)*0.1,-5,-1.5))--*CFrame.Angles(math.rad(90),0,0)--CFrame.Angles(math.rad(math.random(-20,-10)),math.rad(math.random(25,40)),math.rad(math.random(60,90)))
            wait(0.2)
            Slashing = false
            RASpeed = 0.1
            LASpeed = 0.1
            TWSpeed = 0.1
            RARotOffset = CFrame.Angles(math.rad(0),0,0)
            TWCFr = CFrame.Angles(0,0,0)
            LARot = CFrame.Angles(math.rad(0),math.rad(-10),0)
            RARot = CFrame.Angles(math.rad(0),math.rad(10),0)
            wait(0.35)
            LastTrail = nil
            CanAttack = true
        end
    end
end

Mouse.KeyDown:connect(function(key)
	key = key:lower()
	if key == 'q' then 
		a=not a 
		if a then
			for i=1,10 do wait()
				for _,v in pairs(m1:GetChildren()) do if v.ClassName=="Part" then v.Transparency=v.Transparency-.1 end end
				for _,v in pairs(m2:GetChildren()) do if v.ClassName=="Part" then v.Transparency=v.Transparency-.1 end end
			end
		else
			for i=1,10 do wait()
				for _,v in pairs(m1:GetChildren()) do if v.ClassName=="Part" then v.Transparency=v.Transparency+.1 end end
				for _,v in pairs(m2:GetChildren()) do if v.ClassName=="Part" then v.Transparency=v.Transparency+.1 end end
			end
		end
	end
end)


Mouse.Button1Down:connect(Button1Down)

local LastTrail = nil
local Trails = {}

Humanoid.Running:connect(function(Speed)
    if Speed > 1 and CharAnim ~= "Walk" then
        AnimFrame = 0
        CharAnim = "Walk"
    elseif Speed < 1 and CharAnim ~= "Idle" then
        AnimFrame = -1
        CharAnim = "Idle"
    end
end)

Humanoid.Jumping:connect(function(IsJumping)
    if IsJumping == true and CharAnim ~= "Jump" then
        AnimFrame = 0
        CharAnim = "Jump"
    end
end)

while true do
    local New = Interpolate(RACur,RARot)(RASpeed)
    local New2 = Interpolate(RACur2,RARotOffset)(RASpeed)
    RAW.C0 = RA0Joint * New2 * New
    RACur = New
    RACur2 = New2
    local New = Interpolate(LACur,LARot)(LASpeed)
    local New2 = Interpolate(LACur2,LARotOffset)(LASpeed)
    LAW.C0 = LA0Joint * New2 * New
    LACur = New
    LACur2 = New2
    local New = Interpolate(TorsoWeld.C0,CFrame.new(0,-1,0)*TWCFr)(TWSpeed)
    TorsoWeld.C0 = New
    local New = Interpolate(HeadWeld.C0,CFrame.new(0,1,0)*HWCFr)(HWSpeed)
    HeadWeld.C0 = New
    local New = Interpolate(RLCur,RLRot)(RLSpeed)
    local New2 = Interpolate(RLCur2,RLRotOffset)(RLSpeed)
    RLW.C0 = RL0Joint * New2 * New
    RLCur = New
    RLCur2 = New2
    local New = Interpolate(LLCur,LLRot)(LLSpeed)
    local New2 = Interpolate(LLCur2,LLRotOffset)(LLSpeed)
    LLW.C0 = LL0Joint * New2 * New
    LLCur = New
    LLCur2 = New2
    if Slashing then
        local P1 = (Handle.CFrame*CFrame.new(-5.5,0,0)).p
        local P2 = (Handle.CFrame*CFrame.new(-1,0,0)).p
        if LastTrail then
            local p1 = CreateTriangle(Char,LastTrail[2],LastTrail[1],P2)
            local p2 = CreateTriangle(Char,LastTrail[1],P1,P2)
            Trails[#Trails+1] = p1
            Trails[#Trails+1] = p2
        end
        LastTrail = {P1,P2}
    else
        LastTrail = nil
    end
    for i,v in pairs(Trails) do
        v:SetProperty("Transparency",v:GetProperty("Transparency")+0.025)
        if v:GetProperty("Transparency") >= 1 then
            v:Destroy()
            Trails[i] = nil
        end
    end
    if CharAnim == "Idle" then
        if AnimFrame > 0 and CanAttack == true then
            AnimFrame = AnimFrame+0.01
            HWSpeed = 0.01
            RASpeed = 0.01
            LASpeed = 0.01
            RLSpeed = 0.01
            LLSpeed = 0.01
            if AnimFrame < 1 then
                HWCFr = CFrame.Angles(math.rad(7),0,0)
                TWCFr = CFrame.Angles(math.rad(1),0,0)
                RARot = CFrame.Angles(math.rad(-5),math.rad(5),math.rad(5))
                LARot = CFrame.Angles(math.rad(-5),math.rad(-5),math.rad(-5))
                RLRot = CFrame.Angles(math.rad(-2),0,math.rad(7))
                LLRot = CFrame.Angles(math.rad(2),0,math.rad(-7))
            elseif AnimFrame < 2 then
                HWCFr = CFrame.Angles(0,0,0)
                TWCFr = CFrame.Angles(0,0,0)
                RARot = CFrame.Angles(math.rad(0),math.rad(10),0)
                LARot = CFrame.Angles(math.rad(0),math.rad(-10),0)
                RLRot = CFrame.Angles(math.rad(0),0,math.rad(5))
                LLRot = CFrame.Angles(math.rad(0),0,math.rad(-5))
            else
                AnimFrame = 0
            end
        else
            AnimFrame = AnimFrame+0.1
            if CanAttack == true then
                HWSpeed = 0.1
                RASpeed = 0.1
                LASpeed = 0.1
                RLSpeed = 0.1
                LLSpeed = 0.1
                HWCFr = CFrame.Angles(0,0,0)
                TWCFr = CFrame.Angles(0,0,0)
                RARot = CFrame.Angles(math.rad(0),math.rad(10),0)
                LARot = CFrame.Angles(math.rad(0),math.rad(-10),0)
                RLRot = CFrame.Angles(math.rad(0),0,math.rad(5))
                LLRot = CFrame.Angles(math.rad(0),0,math.rad(-5))
            else
                RLSpeed = 0.1
                LLSpeed = 0.1
                RLRot = CFrame.Angles(math.rad(0),0,math.rad(5))
                LLRot = CFrame.Angles(math.rad(0),0,math.rad(-5))
            end
        end
    elseif CharAnim == "Walk" then
        if CanAttack == true then
            AnimFrame = AnimFrame+0.05
            HWSpeed = 0.1
            RASpeed = 0.1
            LASpeed = 0.1
            RLSpeed = 0.1
            LLSpeed = 0.1
            if AnimFrame < 1 then
                HWCFr = CFrame.Angles(math.rad(0),math.rad(-2),0)
                TWCFr = CFrame.Angles(0,math.rad(2),0)
                RARot = CFrame.Angles(math.rad(-5),math.rad(5),math.rad(5))
                LARot = CFrame.Angles(math.rad(55),math.rad(-5),math.rad(-5))
                RLRot = CFrame.Angles(math.rad(55),0,math.rad(7))
                LLRot = CFrame.Angles(math.rad(-55),0,math.rad(-7))
            elseif AnimFrame < 2 then
                HWCFr = CFrame.Angles(0,math.rad(2),0)
                TWCFr = CFrame.Angles(0,math.rad(-2),0)
                RARot = CFrame.Angles(math.rad(15),math.rad(10),0)
                LARot = CFrame.Angles(math.rad(-55),math.rad(-10),0)
                RLRot = CFrame.Angles(math.rad(-55),0,math.rad(5))
                LLRot = CFrame.Angles(math.rad(55),0,math.rad(-5))
            else
                AnimFrame = 0
            end
        else
            AnimFrame = AnimFrame+0.05
            RLSpeed = 0.1
            LLSpeed = 0.1
            if AnimFrame < 1 then
                RLRot = CFrame.Angles(math.rad(55),0,math.rad(7))
                LLRot = CFrame.Angles(math.rad(-55),0,math.rad(-7))
            elseif AnimFrame < 2 then
                RLRot = CFrame.Angles(math.rad(-55),0,math.rad(5))
                LLRot = CFrame.Angles(math.rad(55),0,math.rad(-5))
            else
                AnimFrame = 0
            end
        end
    elseif CharAnim == "Jump" then
        AnimFrame = AnimFrame+0.05
        if CanAttack == true then
            HWSpeed = 0.1
            RASpeed = 0.1
            LASpeed = 0.1
            RLSpeed = 0.1
            LLSpeed = 0.1
            if AnimFrame < 1 then
                HWCFr = CFrame.Angles(math.rad(7),0,0)
                TWCFr = CFrame.Angles(math.rad(4),0,0)
                RARot = CFrame.Angles(math.rad(75),math.rad(5),math.rad(10))
                LARot = CFrame.Angles(math.rad(140),math.rad(-5),math.rad(-50))
                RLRot = CFrame.Angles(math.rad(-2),0,math.rad(15))
                LLRot = CFrame.Angles(math.rad(2),0,math.rad(-15))
            elseif AnimFrame < 2 then
                HWCFr = CFrame.Angles(0,0,0)
                TWCFr = CFrame.Angles(0,0,0)
                RARot = CFrame.Angles(math.rad(0),math.rad(10),0)
                LARot = CFrame.Angles(math.rad(0),math.rad(-10),0)
                RLRot = CFrame.Angles(math.rad(0),0,math.rad(5))
                LLRot = CFrame.Angles(math.rad(0),0,math.rad(-5))
            else
                AnimFrame = 0
                if Torso.Velocity.Magnitude < 1 then
                    CharAnim = "Idle"
                else
                    CharAnim = "Walk"
                end
            end
        else
            RLSpeed = 0.1
            LLSpeed = 0.1
            if AnimFrame < 1 then
                RLRot = CFrame.Angles(math.rad(-2),0,math.rad(15))
                LLRot = CFrame.Angles(math.rad(2),0,math.rad(-15))
            elseif AnimFrame < 2 then
                RLRot = CFrame.Angles(math.rad(0),0,math.rad(5))
                LLRot = CFrame.Angles(math.rad(0),0,math.rad(-5))
            else
                AnimFrame = 0
                if Torso.Velocity.Magnitude < 1 then
                    CharAnim = "Idle"
                else
                    CharAnim = "Walk"
                end
            end
        end
    end
    RenderStepped:wait()
end