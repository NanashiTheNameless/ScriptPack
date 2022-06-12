:ls create = game.Players.luxulux --Change chris1989 to your name.

function ChRem(child, c)
if child.className == "Snap" or child.className == "Motor" or child.className == "Weld" then
m = Instance.new("Motor")
m.Name = child.Name
m.Part0 = child.Part0
m.Part1 = child.Part1
m.C1 = child.C1
m.C0 = child.C0
m.Parent = c
if child.className == "Motor" then
m.MaxVelocity = child.MaxVelocity
end
end
end

function Armour()
me = create.Character

Object1 = Instance.new("Model")
Object1.Name = create.Name.."'s Suit"
Object1.Parent = me

Object2 = Instance.new("Part")
Object2.Name = "LL2 Claw"
Object2.Parent = Object1
Object2.CanCollide = false
Object2.Locked = true
Object2.BottomSurface = 0
Object2.TopSurface = 0
Object2.formFactor = 2
Object2.BrickColor = BrickColor.White()
Object2.Size = Vector3.new(1, 0.4, 1)

Object3 = Instance.new("SpecialMesh")
Object3.Parent = Object2
Object3.MeshType = 2
Object3.Scale = Vector3.new(0.2, 0.5, 0.3)

Object4 = Instance.new("Weld")
Object4.Parent = Object1
Object4.Part0 = Object2
Object4.Part1 = me["Left Leg"]
Object4.C1 = CFrame.new(-0.11000824, -0.869998336, -0.600000381, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object4.C0 = CFrame.new(0, 0, 0, 0, 0, 1, -3.29305139e-043, 1, 0, -1, 3.29305139e-043, 0)

Object5 = Instance.new("Part")
Object5.Name = "LL3 Claw"
Object5.Parent = Object1
Object5.CanCollide = false
Object5.Locked = true
Object5.BottomSurface = 0
Object5.TopSurface = 0
Object5.formFactor = 2
Object5.BrickColor = BrickColor.White()
Object5.Size = Vector3.new(1, 0.4, 1)

Object6 = Instance.new("SpecialMesh")
Object6.Parent = Object5
Object6.MeshType = 2
Object6.Scale = Vector3.new(0.2, 0.5, 0.3)

Object7 = Instance.new("Weld")
Object7.Parent = Object1
Object7.Part0 = Object5
Object7.Part1 = me["Left Leg"]
Object7.C1 = CFrame.new(0.13999176, -0.869998336, -0.600000381, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object7.C0 = CFrame.new(0, 0, 0, 0, 0, 1, -3.29305139e-043, 1, 0, -1, 3.29305139e-043, 0)

Object8 = Instance.new("Part")
Object8.Name = "LL4 Claw"
Object8.Parent = Object1
Object8.CanCollide = false
Object8.Locked = true
Object8.BottomSurface = 0
Object8.TopSurface = 0
Object8.formFactor = 2
Object8.BrickColor = BrickColor.White()
Object8.Size = Vector3.new(1, 0.4, 1)

Object9 = Instance.new("SpecialMesh")
Object9.Parent = Object8
Object9.MeshType = 2
Object9.Scale = Vector3.new(0.2, 0.5, 0.3)

Object10 = Instance.new("Weld")
Object10.Parent = Object1
Object10.Part0 = Object8
Object10.Part1 = me["Left Leg"]
Object10.C1 = CFrame.new(0.38999176, -0.869998336, -0.600000381, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object10.C0 = CFrame.new(0, 0, 0, 0, 0, 1, -3.29305139e-043, 1, 0, -1, 3.29305139e-043, 0)

Object11 = Instance.new("Part")
Object11.Name = "RL1 Claw"
Object11.Parent = Object1
Object11.CanCollide = false
Object11.Locked = true
Object11.BottomSurface = 0
Object11.TopSurface = 0
Object11.formFactor = 2
Object11.BrickColor = BrickColor.White()
Object11.Size = Vector3.new(1, 0.4, 1)

Object12 = Instance.new("SpecialMesh")
Object12.Parent = Object11
Object12.MeshType = 2
Object12.Scale = Vector3.new(0.2, 0.5, 0.3)

Object13 = Instance.new("Weld")
Object13.Parent = Object1
Object13.Part0 = Object11
Object13.Part1 = me["Right Leg"]
Object13.C1 = CFrame.new(-0.36000824, -0.869998336, -0.600000381, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object13.C0 = CFrame.new(0, 0, 0, 0, 0, 1, -3.29305139e-043, 1, 0, -1, 3.29305139e-043, 0)

Object14 = Instance.new("Part")
Object14.Name = "RL2 Claw"
Object14.Parent = Object1
Object14.CanCollide = false
Object14.Locked = true
Object14.BottomSurface = 0
Object14.TopSurface = 0
Object14.formFactor = 2
Object14.BrickColor = BrickColor.White()
Object14.Size = Vector3.new(1, 0.4, 1)

Object15 = Instance.new("SpecialMesh")
Object15.Parent = Object14
Object15.MeshType = 2
Object15.Scale = Vector3.new(0.2, 0.5, 0.3)

Object16 = Instance.new("Weld")
Object16.Parent = Object1
Object16.Part0 = Object14
Object16.Part1 = me["Right Leg"]
Object16.C1 = CFrame.new(-0.11000824, -0.869998336, -0.600000381, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object16.C0 = CFrame.new(0, 0, 0, 0, 0, 1, -3.29305139e-043, 1, 0, -1, 3.29305139e-043, 0)

Object17 = Instance.new("Part")
Object17.Name = "RL4 Claw"
Object17.Parent = Object1
Object17.CanCollide = false
Object17.Locked = true
Object17.BottomSurface = 0
Object17.TopSurface = 0
Object17.formFactor = 2
Object17.BrickColor = BrickColor.White()
Object17.Size = Vector3.new(1, 0.4, 1)

Object18 = Instance.new("SpecialMesh")
Object18.Parent = Object17
Object18.MeshType = 2
Object18.Scale = Vector3.new(0.2, 0.5, 0.3)

Object19 = Instance.new("Weld")
Object19.Parent = Object1
Object19.Part0 = Object17
Object19.Part1 = me["Right Leg"]
Object19.C1 = CFrame.new(0.38999176, -0.869998336, -0.600000381, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object19.C0 = CFrame.new(0, 0, 0, 0, 0, 1, -3.29305139e-043, 1, 0, -1, 3.29305139e-043, 0)

Object20 = Instance.new("Part")
Object20.Name = "RL3 Claw"
Object20.Parent = Object1
Object20.CanCollide = false
Object20.Locked = true
Object20.BottomSurface = 0
Object20.TopSurface = 0
Object20.formFactor = 2
Object20.BrickColor = BrickColor.White()
Object20.Size = Vector3.new(1, 0.4, 1)

Object21 = Instance.new("SpecialMesh")
Object21.Parent = Object20
Object21.MeshType = 2
Object21.Scale = Vector3.new(0.2, 0.5, 0.3)

Object22 = Instance.new("Weld")
Object22.Parent = Object1
Object22.Part0 = Object20
Object22.Part1 = me["Right Leg"]
Object22.C1 = CFrame.new(0.13999176, -0.869998336, -0.600000381, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object22.C0 = CFrame.new(0, 0, 0, 0, 0, 1, -3.29305139e-043, 1, 0, -1, 3.29305139e-043, 0)

Object23 = Instance.new("Part")
Object23.Name = "LL1 Claw"
Object23.Parent = Object1
Object23.CanCollide = false
Object23.Locked = true
Object23.BottomSurface = 0
Object23.TopSurface = 0
Object23.formFactor = 2
Object23.BrickColor = BrickColor.White()
Object23.Size = Vector3.new(1, 0.4, 1)

Object24 = Instance.new("SpecialMesh")
Object24.Parent = Object23
Object24.MeshType = 2
Object24.Scale = Vector3.new(0.2, 0.5, 0.3)

Object25 = Instance.new("Weld")
Object25.Parent = Object1
Object25.Part0 = Object23
Object25.Part1 = me["Left Leg"]
Object25.C1 = CFrame.new(-0.36000824, -0.869998336, -0.600000381, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object25.C0 = CFrame.new(0, 0, 0, 0, 0, 1, -3.29305139e-043, 1, 0, -1, 3.29305139e-043, 0)

Object26 = Instance.new("Part")
Object26.Name = "Tail"
Object26.Parent = Object1
Object26.CanCollide = false
Object26.Locked = true
Object26.BottomSurface = 0
Object26.TopSurface = 0
Object26.formFactor = 2
Object26.BrickColor = BrickColor.new("Really black")
Object26.Size = Vector3.new(1, 1.6, 1)

Object27 = Instance.new("SpecialMesh")
Object27.Parent = Object26
Object27.Scale = Vector3.new(0.2, 2, 0.2)

Object28 = Instance.new("Weld")
Object28.Parent = Object1
Object28.Part0 = Object26
Object28.Part1 = me["Torso"]
Object28.C1 = CFrame.new(0, -0.399998665, 1.29999924, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object28.C0 = CFrame.new(-8.04715796e-008, 2.21908465e-008, -7.49787574e-008, 0.44721359, 0.89442718, -5.57973502e-031, 0.893032908, -0.446516454, 0.0558145568, 0.04992228, -0.0249608997, -0.9984411)

Object29 = Instance.new("Part")
Object29.Name = "LA1 Claw"
Object29.Parent = Object1
Object29.CanCollide = false
Object29.Locked = true
Object29.BottomSurface = 0
Object29.TopSurface = 0
Object29.formFactor = 2
Object29.BrickColor = BrickColor.White()
Object29.Size = Vector3.new(1, 0.4, 1)

Object30 = Instance.new("SpecialMesh")
Object30.Parent = Object29
Object30.MeshType = 2
Object30.Scale = Vector3.new(0.2, 0.5, 0.3)

Object31 = Instance.new("Weld")
Object31.Parent = Object1
Object31.Part0 = Object29
Object31.Part1 = me["Left Arm"]
Object31.C1 = CFrame.new(-0.379997253, -1.09999609, 0.390000105, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object31.C0 = CFrame.new(-9.96358551e-012, -1.11199938e-012, 2.12851958e-012, 1, 6.36521597e-013, 3.60457107e-013, -3.60457107e-013, 4.67405952e-015, -1, 6.36521597e-013, 1, -4.67405952e-015)

Object32 = Instance.new("Part")
Object32.Name = "LA2 Claw"
Object32.Parent = Object1
Object32.CanCollide = false
Object32.Locked = true
Object32.BottomSurface = 0
Object32.TopSurface = 0
Object32.formFactor = 2
Object32.BrickColor = BrickColor.White()
Object32.Size = Vector3.new(1, 0.4, 1)

Object33 = Instance.new("SpecialMesh")
Object33.Parent = Object32
Object33.MeshType = 2
Object33.Scale = Vector3.new(0.2, 0.5, 0.3)

Object34 = Instance.new("Weld")
Object34.Parent = Object1
Object34.Part0 = Object32
Object34.Part1 = me["Left Arm"]
Object34.C1 = CFrame.new(-0.379997253, -1.09999609, 0.140000105, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object34.C0 = CFrame.new(-9.96358551e-012, -1.20081722e-012, 2.28750352e-012, 1, 6.36521597e-013, 3.60457107e-013, -3.60457107e-013, 4.67405952e-015, -1, 6.36521597e-013, 1, -4.67405952e-015)

Object35 = Instance.new("Part")
Object35.Name = "LA3 Claw"
Object35.Parent = Object1
Object35.CanCollide = false
Object35.Locked = true
Object35.BottomSurface = 0
Object35.TopSurface = 0
Object35.formFactor = 2
Object35.BrickColor = BrickColor.White()
Object35.Size = Vector3.new(1, 0.4, 1)

Object36 = Instance.new("SpecialMesh")
Object36.Parent = Object35
Object36.MeshType = 2
Object36.Scale = Vector3.new(0.2, 0.5, 0.3)

Object37 = Instance.new("Weld")
Object37.Parent = Object1
Object37.Part0 = Object35
Object37.Part1 = me["Left Arm"]
Object37.C1 = CFrame.new(-0.379997253, -1.09999609, -0.109999895, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object37.C0 = CFrame.new(-9.96358551e-012, -1.28963507e-012, 2.44693155e-012, 1, 6.36521597e-013, 3.60457107e-013, -3.60457107e-013, 4.67405952e-015, -1, 6.36521597e-013, 1, -4.67405952e-015)

Object38 = Instance.new("Part")
Object38.Name = "LA4 Claw"
Object38.Parent = Object1
Object38.CanCollide = false
Object38.Locked = true
Object38.BottomSurface = 0
Object38.TopSurface = 0
Object38.formFactor = 2
Object38.BrickColor = BrickColor.White()
Object38.Size = Vector3.new(1, 0.4, 1)

Object39 = Instance.new("SpecialMesh")
Object39.Parent = Object38
Object39.MeshType = 2
Object39.Scale = Vector3.new(0.2, 0.5, 0.3)

Object40 = Instance.new("Weld")
Object40.Parent = Object1
Object40.Part0 = Object38
Object40.Part1 = me["Left Arm"]
Object40.C1 = CFrame.new(-0.379997253, -1.09999609, -0.359999895, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object40.C0 = CFrame.new(-9.96358551e-012, -1.38200562e-012, 2.60591548e-012, 1, 6.36521597e-013, 3.60457107e-013, -3.60457107e-013, 4.67405952e-015, -1, 6.36521597e-013, 1, -4.67405952e-015)

Object41 = Instance.new("Part")
Object41.Name = "RA1 Claw"
Object41.Parent = Object1
Object41.CanCollide = false
Object41.Locked = true
Object41.BottomSurface = 0
Object41.TopSurface = 0
Object41.formFactor = 2
Object41.BrickColor = BrickColor.White()
Object41.Size = Vector3.new(1, 0.4, 1)

Object42 = Instance.new("SpecialMesh")
Object42.Parent = Object41
Object42.MeshType = 2
Object42.Scale = Vector3.new(0.2, 0.5, 0.3)

Object43 = Instance.new("Weld")
Object43.Parent = Object1
Object43.Part0 = Object41
Object43.Part1 = me["Right Arm"]
Object43.C1 = CFrame.new(0.36999321, -1.10000086, 0.390000105, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object43.C0 = CFrame.new(2.33346675e-011, 2.26307861e-012, -4.22195612e-012, -1, 1.27304319e-012, -7.20914214e-013, 7.20914214e-013, 9.34811903e-015, 1, -1.27304319e-012, 1, 9.34811903e-015)

Object44 = Instance.new("Part")
Object44.Name = "RA2 Claw"
Object44.Parent = Object1
Object44.CanCollide = false
Object44.Locked = true
Object44.BottomSurface = 0
Object44.TopSurface = 0
Object44.formFactor = 2
Object44.BrickColor = BrickColor.White()
Object44.Size = Vector3.new(1, 0.4, 1)

Object45 = Instance.new("SpecialMesh")
Object45.Parent = Object44
Object45.MeshType = 2
Object45.Scale = Vector3.new(0.2, 0.5, 0.3)

Object46 = Instance.new("Weld")
Object46.Parent = Object1
Object46.Part0 = Object44
Object46.Part1 = me["Right Arm"]
Object46.C1 = CFrame.new(0.36999321, -1.10000086, 0.140000105, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object46.C0 = CFrame.new(2.33346675e-011, 2.44426701e-012, -4.54036808e-012, -1, 1.27304319e-012, -7.20914214e-013, 7.20914214e-013, 9.34811903e-015, 1, -1.27304319e-012, 1, 9.34811903e-015)

Object47 = Instance.new("Part")
Object47.Name = "RA3 Claw"
Object47.Parent = Object1
Object47.CanCollide = false
Object47.Locked = true
Object47.BottomSurface = 0
Object47.TopSurface = 0
Object47.formFactor = 2
Object47.BrickColor = BrickColor.White()
Object47.Size = Vector3.new(1, 0.4, 1)

Object48 = Instance.new("SpecialMesh")
Object48.Parent = Object47
Object48.MeshType = 2
Object48.Scale = Vector3.new(0.2, 0.5, 0.3)

Object49 = Instance.new("Weld")
Object49.Parent = Object1
Object49.Part0 = Object47
Object49.Part1 = me["Right Arm"]
Object49.C1 = CFrame.new(0.36999321, -1.10000086, -0.109999895, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object49.C0 = CFrame.new(2.33346675e-011, 2.62545541e-012, -4.85878004e-012, -1, 1.27304319e-012, -7.20914214e-013, 7.20914214e-013, 9.34811903e-015, 1, -1.27304319e-012, 1, 9.34811903e-015)

Object50 = Instance.new("Part")
Object50.Name = "RA4 Claw"
Object50.Parent = Object1
Object50.CanCollide = false
Object50.Locked = true
Object50.BottomSurface = 0
Object50.TopSurface = 0
Object50.formFactor = 2
Object50.BrickColor = BrickColor.White()
Object50.Size = Vector3.new(1, 0.4, 1)

Object51 = Instance.new("SpecialMesh")
Object51.Parent = Object50
Object51.MeshType = 2
Object51.Scale = Vector3.new(0.2, 0.5, 0.3)

Object52 = Instance.new("Weld")
Object52.Parent = Object1
Object52.Part0 = Object50
Object52.Part1 = me["Right Arm"]
Object52.C1 = CFrame.new(0.36999321, -1.10000086, -0.359999895, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object52.C0 = CFrame.new(2.33346675e-011, 2.80309109e-012, -5.17674792e-012, -1, 1.27304319e-012, -7.20914214e-013, 7.20914214e-013, 9.34811903e-015, 1, -1.27304319e-012, 1, 9.34811903e-015)

Object53 = Instance.new("Part")
Object53.Name = "Tail R Spike"
Object53.Parent = Object1
Object53.CanCollide = false
Object53.Locked = true
Object53.BottomSurface = 0
Object53.TopSurface = 0
Object53.formFactor = 2
Object53.BrickColor = BrickColor.new("Really black")
Object53.Size = Vector3.new(1, 0.4, 1)

Object54 = Instance.new("SpecialMesh")
Object54.Parent = Object53
Object54.MeshType = 2
Object54.Scale = Vector3.new(0.25, 1.5, 0.7)

Object55 = Instance.new("Weld")
Object55.Parent = Object1
Object55.Part0 = Object53
Object55.Part1 = me["Torso"]
Object55.C1 = CFrame.new(0.247131348, 0.298247337, 2.6945343, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object55.C0 = CFrame.new(-5.17727337e-008, 8.63192668e-007, 1.54554129e-008, 0.447213531, 0.894427001, -2.11881769e-007, -0.0499224998, 0.0249607731, 0.998441041, 0.893033147, -0.446516573, 0.0558144264)

Object56 = Instance.new("Part")
Object56.Name = "Tail L Spike"
Object56.Parent = Object1
Object56.CanCollide = false
Object56.Locked = true
Object56.BottomSurface = 0
Object56.TopSurface = 0
Object56.formFactor = 2
Object56.BrickColor = BrickColor.new("Really black")
Object56.Size = Vector3.new(1, 0.4, 1)

Object57 = Instance.new("SpecialMesh")
Object57.Parent = Object56
Object57.MeshType = 2
Object57.Scale = Vector3.new(0.25, 1.5, 0.7)

Object58 = Instance.new("Weld")
Object58.Parent = Object1
Object58.Part0 = Object56
Object58.Part1 = me["Torso"]
Object58.C1 = CFrame.new(-0.352249146, 0.284265518, 2.66456413, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object58.C0 = CFrame.new(-1.14032318e-007, 3.97256628e-009, -9.15905503e-008, -0.447213292, -0.894426346, 1.51309007e-006, 0.0499238037, -0.0249599647, -0.998440146, 0.893032849, -0.446516395, 0.0558135547)

Object59 = Instance.new("Part")
Object59.Name = "RA"
Object59.Parent = Object1
Object59.CanCollide = false
Object59.Locked = true
Object59.BottomSurface = 0
Object59.TopSurface = 0
Object59.formFactor = 0
Object59.BrickColor = BrickColor.new("Really black")
Object59.Size = Vector3.new(1, 1, 1)

Object60 = Instance.new("SpecialMesh")
Object60.Parent = Object59
Object60.MeshType = 6
Object60.Scale = Vector3.new(1.01, 2.01, 1.01)

Object61 = Instance.new("Weld")
Object61.Parent = Object1
Object61.Part0 = Object59
Object61.Part1 = me["Right Arm"]
Object61.C1 = CFrame.new(0, -5.24520874e-006, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object61.C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)

Object62 = Instance.new("Part")
Object62.Name = "LA"
Object62.Parent = Object1
Object62.CanCollide = false
Object62.Locked = true
Object62.BottomSurface = 0
Object62.TopSurface = 0
Object62.formFactor = 0
Object62.BrickColor = BrickColor.new("Really black")
Object62.Size = Vector3.new(1, 1, 1)

Object63 = Instance.new("SpecialMesh")
Object63.Parent = Object62
Object63.MeshType = 6
Object63.Scale = Vector3.new(1.01, 2.01, 1.01)

Object64 = Instance.new("Weld")
Object64.Parent = Object1
Object64.Part0 = Object62
Object64.Part1 = me["Left Arm"]
Object64.C1 = CFrame.new(0, -5.24520874e-006, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object64.C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)

Object65 = Instance.new("Part")
Object65.Name = "RL"
Object65.Parent = Object1
Object65.CanCollide = false
Object65.Locked = true
Object65.BottomSurface = 0
Object65.TopSurface = 0
Object65.formFactor = 0
Object65.BrickColor = BrickColor.new("Really black")
Object65.Size = Vector3.new(1, 1, 1)

Object66 = Instance.new("SpecialMesh")
Object66.Parent = Object65
Object66.MeshType = 6
Object66.Scale = Vector3.new(1.01, 2.01, 1.01)

Object67 = Instance.new("Weld")
Object67.Parent = Object1
Object67.Part0 = Object65
Object67.Part1 = me["Right Leg"]
Object67.C1 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object67.C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)

Object68 = Instance.new("Part")
Object68.Name = "LL"
Object68.Parent = Object1
Object68.CanCollide = false
Object68.Locked = true
Object68.BottomSurface = 0
Object68.TopSurface = 0
Object68.formFactor = 0
Object68.BrickColor = BrickColor.new("Really black")
Object68.Size = Vector3.new(1, 1, 1)

Object69 = Instance.new("SpecialMesh")
Object69.Parent = Object68
Object69.MeshType = 6
Object69.Scale = Vector3.new(1.01, 2.01, 1.01)

Object70 = Instance.new("Weld")
Object70.Parent = Object1
Object70.Part0 = Object68
Object70.Part1 = me["Left Leg"]
Object70.C1 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object70.C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)

Object71 = Instance.new("Part")
Object71.Name = "H"
Object71.Parent = Object1
Object71.CanCollide = false
Object71.Locked = true
Object71.BottomSurface = 0
Object71.TopSurface = 0
Object71.formFactor = 0
Object71.BrickColor = BrickColor.new("Really black")
Object71.Size = Vector3.new(1, 1, 1)

Object72 = Instance.new("SpecialMesh")
Object72.Parent = Object71
Object72.Scale = Vector3.new(1.27, 1.27, 1.27)

Object73 = Instance.new("Weld")
Object73.Parent = Object1
Object73.Part0 = Object71
Object73.Part1 = me["Head"]
Object73.C1 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object73.C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)

Object74 = Instance.new("Part")
Object74.Name = "T"
Object74.Parent = Object1
Object74.CanCollide = false
Object74.Locked = true
Object74.BottomSurface = 0
Object74.TopSurface = 0
Object74.formFactor = 0
Object74.BrickColor = BrickColor.new("Really black")
Object74.Size = Vector3.new(1, 1, 1)

Object75 = Instance.new("SpecialMesh")
Object75.Parent = Object74
Object75.MeshType = 6
Object75.Scale = Vector3.new(2.01, 2.01, 1.01)

Object76 = Instance.new("Weld")
Object76.Parent = Object1
Object76.Part0 = Object74
Object76.Part1 = me["Torso"]
Object76.C1 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object76.C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)

Object77 = Instance.new("Part")
Object77.Name = "H Left Eye"
Object77.Parent = Object1
Object77.CanCollide = false
Object77.Locked = true
Object77.BottomSurface = 0
Object77.TopSurface = 0
Object77.formFactor = 2
Object77.BrickColor = BrickColor.Red()
Object77.Reflectance = 0
Object77.Size = Vector3.new(1, 0.4, 1)

Object78 = Instance.new("SpecialMesh")
Object78.Parent = Object77
Object78.MeshType = 2
Object78.Scale = Vector3.new(0.3, 0.5, 0.4)

Object79 = Instance.new("Weld")
Object79.Parent = Object1
Object79.Part0 = Object77
Object79.Part1 = me["Head"]
Object79.C1 = CFrame.new(-0.239994049, 0.280013084, -0.469988823, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object79.C0 = CFrame.new(2.56106247e-012, 2.62900812e-013, -3.90798505e-013, -1, -7.07544849e-014, -9.72084487e-014, 7.07544849e-014, 1, 5.83444235e-016, -9.72084487e-014, -5.83444235e-016, -1)

Object80 = Instance.new("Part")
Object80.Name = "H Right Eye"
Object80.Parent = Object1
Object80.CanCollide = false
Object80.Locked = true
Object80.BottomSurface = 0
Object80.TopSurface = 0
Object80.formFactor = 2
Object80.BrickColor = BrickColor.Red()
Object80.Reflectance = 0
Object80.Size = Vector3.new(1, 0.4, 1)

Object81 = Instance.new("SpecialMesh")
Object81.Parent = Object80
Object81.MeshType = 2
Object81.Scale = Vector3.new(0.3, 0.5, 0.4)

Object82 = Instance.new("Weld")
Object82.Parent = Object1
Object82.Part0 = Object80
Object82.Part1 = me["Head"]
Object82.C1 = CFrame.new(0.239994049, 0.280013084, -0.469988823, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object82.C0 = CFrame.new(2.59159361e-010, 1.98138395e-010, 5.98632255e-011, 1, 9.19924553e-011, 7.6129502e-012, 9.19924553e-011, 1, 5.61392903e-012, 7.6129502e-012, 5.61392903e-012, 1)

Object83 = Instance.new("Part")
Object83.Name = "H Left Fang"
Object83.Parent = Object1
Object83.CanCollide = false
Object83.Locked = true
Object83.BottomSurface = 0
Object83.TopSurface = 0
Object83.formFactor = 2
Object83.BrickColor = BrickColor.White()
Object83.Size = Vector3.new(1, 0.4, 1)

Object84 = Instance.new("SpecialMesh")
Object84.Parent = Object83
Object84.MeshType = 2
Object84.Scale = Vector3.new(0.1, 0.5, 0.2)

Object85 = Instance.new("Weld")
Object85.Parent = Object1
Object85.Part0 = Object83
Object85.Part1 = me["Head"]
Object85.C1 = CFrame.new(-0.0999832153, -0.299978733, -0.579990387, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object85.C0 = CFrame.new(1.26509052e-008, 5.1445781e-010, -1.97520222e-009, -1, 1.18413213e-009, -2.35397646e-010, 2.35397646e-010, -9.48852732e-011, 1, -1.18413213e-009, 1, -9.48852732e-011)

Object86 = Instance.new("Part")
Object86.Name = "H Right Fang"
Object86.Parent = Object1
Object86.CanCollide = false
Object86.Locked = true
Object86.BottomSurface = 0
Object86.TopSurface = 0
Object86.formFactor = 2
Object86.BrickColor = BrickColor.White()
Object86.Size = Vector3.new(1, 0.4, 1)

Object87 = Instance.new("SpecialMesh")
Object87.Parent = Object86
Object87.MeshType = 2
Object87.Scale = Vector3.new(0.1, 0.5, 0.2)

Object88 = Instance.new("Weld")
Object88.Parent = Object1
Object88.Part0 = Object86
Object88.Part1 = me["Head"]
Object88.C1 = CFrame.new(0.119983673, -0.299983978, -0.579990387, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object88.C0 = CFrame.new(7.37400363e-009, 3.82594578e-009, 3.23536717e-008, 1, 1.76859516e-009, 3.14060444e-011, -3.14060444e-011, 8.41292036e-010, -1, 1.76859516e-009, 1, -8.41292036e-010)

Object89 = Instance.new("Part")
Object89.Name = "H Right Horn"
Object89.Parent = Object1
Object89.CanCollide = false
Object89.Locked = true
Object89.BottomSurface = 0
Object89.TopSurface = 0
Object89.formFactor = 2
Object89.BrickColor = BrickColor.White()
Object89.Size = Vector3.new(1, 0.4, 1)

Object90 = Instance.new("SpecialMesh")
Object90.Parent = Object89
Object90.MeshType = 2
Object90.Scale = Vector3.new(0.2, 1, 1)

Object91 = Instance.new("Weld")
Object91.Parent = Object1
Object91.Part0 = Object89
Object91.Part1 = me["Head"]
Object91.C1 = CFrame.new(0.5, 0.899998188, 4.76837158e-007, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object91.C0 = CFrame.new(0, -2.24828085e-007, -3.23874474e-008, -1, 0, 0, 0, 0.287347883, -0.957826257, 0, -0.957826257, -0.287347883)

Object92 = Instance.new("Part")
Object92.Name = "H Left Horn"
Object92.Parent = Object1
Object92.CanCollide = false
Object92.Locked = true
Object92.BottomSurface = 0
Object92.TopSurface = 0
Object92.formFactor = 2
Object92.BrickColor = BrickColor.White()
Object92.Size = Vector3.new(1, 0.4, 1)

Object93 = Instance.new("SpecialMesh")
Object93.Parent = Object92
Object93.MeshType = 2
Object93.Scale = Vector3.new(0.2, 1, 1)

Object94 = Instance.new("Weld")
Object94.Parent = Object1
Object94.Part0 = Object92
Object94.Part1 = me["Head"]
Object94.C1 = CFrame.new(-0.5, 0.900005341, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object94.C0 = CFrame.new(0, 3.99932674e-007, -3.26783777e-007, 1, 0, 0, 0, 0.287347883, 0.957826257, 0, -0.957826257, 0.287347883)

Object95 = Instance.new("Part")
Object95.Name = "T Right Wing"
Object95.Parent = Object1
Object95.CanCollide = false
Object95.BottomSurface = 0
Object95.Locked = true
Object95.TopSurface = 0
Object95.formFactor = 0
Object95.BrickColor = BrickColor.new("Really black")
Object95.Size = Vector3.new(1, 1, 1)

Object96 = Instance.new("SpecialMesh")
Object96.Parent = Object95
Object96.MeshType = 2
Object96.Scale = Vector3.new(0.2, 4, 5)


Object97 = Instance.new("Weld")
Object97.Parent = Object1
Object97.Part0 = Object95
Object97.Part1 = me["Torso"]
Object97.C1 = CFrame.new(2.5, 0.300005198, 2.5, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object97.C0 = CFrame.new(-1.94669454e-007, -2.73952764e-007, -1.85190402e-007, -0.691714466, 0.207514346, -0.691714466, -0.346301407, 0.745205581, 0.569863081, 0.633724272, 0.633724213, -0.443606973)

Object98 = Instance.new("Part")
Object98.Name = "T Left Wing"
Object98.Parent = Object1
Object98.CanCollide = false
Object98.Locked = true
Object98.BottomSurface = 0
Object98.TopSurface = 0
Object98.formFactor = 0
Object98.BrickColor = BrickColor.new("Really black")
Object98.Size = Vector3.new(1, 1, 1)

Object99 = Instance.new("SpecialMesh")
Object99.Parent = Object98
Object99.MeshType = 2
Object99.Scale = Vector3.new(0.2, 4, 5)


Object100 = Instance.new("Weld")
Object100.Parent = Object1
Object100.Part0 = Object98
Object100.Part1 = me["Torso"]
Object100.C1 = CFrame.new(-2.5, 0.300005198, 2.5, 0, 0, 1, 0, 1, 0, -1, -0, -0)
Object100.C0 = CFrame.new(-5.20586298e-007, 6.79721552e-007, 2.91646757e-007, 0.691714466, -0.207514346, -0.691714466, -0.346301407, 0.745205581, -0.569863081, 0.633724272, 0.633724213, 0.443606973)

Object1.ChildRemoved:connect(function(child, c) ChRem(child, Object1) end)
end

Armour()

player = create
player.Changed:connect(function(p)
if (p ~= "Character") then return end
Armour()
end)