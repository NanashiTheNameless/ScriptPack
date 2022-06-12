:ls master = "luxulux"
script.Parent = nil
function suit(player)
a = game.Workspace[master]:GetChildren()
for i=1, #a do 
if a[i].className == "Hat" then
a[i]:Remove()
                feezly = player
                ---- 
                mod = Instance.new("Model") 
                mod.Parent = feezly 
                mod.Name = "Suit" 
                ----
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(0.9, 1, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.3, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Orb1" 
                rleg3.Reflectance = 99 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.5, 0.2, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -1, 0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.4, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.45, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ----
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.55, 0.8) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.25, -0.15)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.3, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -0.2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1.5, 0.8, 1.05) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.9, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = 99 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.5, 0.2, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Right Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.55, 0.8) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.25, -0.15)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.3, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -0.2, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1.5, 0.8, 1.05) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.9, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "OrbLA" 
                rleg3.Reflectance = 99 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.5, 0.2, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Arm"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.35, 0.3, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.25, 0.35, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face1" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.35, 0.3, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.25, 0.35, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face2" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.85, 0.5, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.05, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face3" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.65, 0.4, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -0.3, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(23) 
                rleg3.Name = "Face4" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.25, 0.1, 0.425) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.2, 0.05, -0.45)*CFrame.fromEulerAnglesXYZ(0, 0, -0.1)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(23) 
                rleg3.Name = "Face5" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.25, 0.1, 0.425) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.2, 0.05, -0.45)*CFrame.fromEulerAnglesXYZ(0, 0, 0.1)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 0 
                rleg3.Size = Vector3.new(2, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face5" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = 0 
                rlegm3.Scale = Vector3.new(1.3, 1.3, 1.3) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Head"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(0.9, 1, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.3, 1.04) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Orb2" 
                rleg3.Reflectance = 99 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.5, 0.2, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -1, 0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(24) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.04, 0.4, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Left Leg"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.45, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(2, 2, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(1.01, 1.01, 1.01) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face1" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Wedge"
                rlegm3.Scale = Vector3.new(0.8, 0.3, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.75, 1.13, 0)*CFrame.fromEulerAnglesXYZ(0, 4.715, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face1" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Wedge"
                rlegm3.Scale = Vector3.new(0.8, 0.3, 0.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.75, 1.13, 0)*CFrame.fromEulerAnglesXYZ(0, -4.715, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.7, 1.1, 0.4) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.65, 0.45, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.7, 1.1, 0.4) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.65, 0.45, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.6, 0.8, 0.4) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.5, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1, 0.2, 0.7) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.65, 0.5, -0.6)*CFrame.fromEulerAnglesXYZ(4.715, 4.715, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1, 0.2, 0.7) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.65, 0.5, -0.6)*CFrame.fromEulerAnglesXYZ(4.715, 4.715, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1.5, 0.2, 1.5) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, -0.3, -0.475)*CFrame.fromEulerAnglesXYZ(4.715, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Arc" 
                rleg3.Reflectance = 99
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Sphere"
                rlegm3.Scale = Vector3.new(0.55, 0.7, 0.2) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.5, -0.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ---- 
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("SpecialMesh") 
                rlegm3.MeshType = "Torso"
                rlegm3.Scale = Vector3.new(1.5, 0.2, 2) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0, 0.25, 0.58)*CFrame.fromEulerAnglesXYZ(14.145, 4.715, 0)
                ----
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.9, 1, 0.2) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(-0.55, 0.55, 0.58)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
                ----
                rleg3 = Instance.new("Part") 
                rleg3.formFactor = 2 
                rleg3.Size = Vector3.new(1, 1, 1) 
                rleg3.BrickColor = BrickColor.new(21) 
                rleg3.Name = "Face" 
                rleg3.Reflectance = .3 
                rleg3.TopSurface = 0 
                rleg3.CanCollide = false 
                rleg3.Parent = mod 
                rleg3.BottomSurface = 0 
                rlegm3 = Instance.new("BlockMesh") 
                rlegm3.Scale = Vector3.new(0.9, 1, 0.2) 
                rlegm3.Parent = rleg3 
                rlegw3 = Instance.new("Weld") 
                rlegw3.Part0 = feezly["Torso"] 
                rlegw3.Part1 = rleg3 
                rlegw3.Parent = rleg3 
                rlegw3.C0 = CFrame.new(0.55, 0.55, 0.58)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
end
end
suit(workspace[master])
function give(player)
local flytool = Instance.new("HopperBin",game.Players[master].Backpack)
f = flytool 
f.Name = "Fly"
local hold = false 
local u = 40 
local add = 5 
local mode = "Off" 
function onSelected(mouse) 
hint = Instance.new("Hint") 
hint.Parent = f.Parent.Parent.PlayerGui
hint.Name = "Modes" 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
fire  = Instance.new("Fire",f.Parent.Parent.Character.Suit.Orb1)
fire1  = Instance.new("Fire",f.Parent.Parent.Character.Suit.Orb2)
fire.Size = 4
fire1.Size = 4
fire.Heat = 8
fire1.Heat = 8
end 
flytool.Selected:connect(onSelected) 
function onDeselected(mouse) 
wait() 
f.Parent.Parent.PlayerGui:findFirstChild("Modes"):remove() 
fire:Remove()
fire1:Remove()
end 
flytool.Deselected:connect(onDeselected) 
function onButton1Down(mouse) 
hold = true 
p = Instance.new("Part") 
p.Parent = f.Parent.Parent.Character 
p.Locked = true 
p.TopSurface = 0 
p.BottomSurface = 0 
p.CanCollide = false 
p.Transparency = 1 
p.formFactor = 0 
p.Size = Vector3.new(3,1,3) 
w = Instance.new("Weld") 
w.Parent = f.Parent.Parent.Character.Torso 
w.Name = "Board" 
w.Part0 = w.Parent 
w.Part1 = p 
w.C0 = CFrame.new(0,0,-1) * CFrame.fromEulerAnglesXYZ(math.pi / 2,0,0) 
bg = Instance.new("BodyGyro") 
bg.Parent = p 
bg.maxTorque = Vector3.new(999999999999,99999999999999999,0) 
bv = Instance.new("BodyVelocity") 
bv.Parent = p 
bv.maxForce = Vector3.new(4e+020, 4e+020, 4e+020) 
bf = Instance.new("BodyForce") 
bf.Parent = p 
bf.force = Vector3.new(0, 196 * p:GetMass(), 0) 
f.Parent.Parent.Character.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(math.pi,math.pi,0) 
while hold == true do 
wait() 
f.Parent.Parent.Character.Humanoid.Sit = true 
bv.velocity = mouse.Hit.lookVector * u 
bg.cframe = CFrame.new(bg.Parent.Position, mouse.Hit.p) 
a = f.Parent.Parent.Character.Torso 
a["Left Hip"].DesiredAngle = 0 
a["Right Hip"].DesiredAngle = 0 
a["Right Shoulder"].DesiredAngle = 6
a["Left Shoulder"].DesiredAngle = 6
end 
end 
function onKeyDown(key) 
if (key:lower() == "v") then 
wait() 
u = u + 1 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
if (key:lower() == "x") then 
wait() 
u = u - 1 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
if (key:lower() == "z") then 
wait() 
u = u - add 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
if (key:lower() == "b") then 
wait() 
u = u + add 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
if (key:lower() == "[") then 
wait() 
add = add - 1 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
if (key:lower() == "]") then 
wait() 
add = add + 1 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
if (key:lower() == "p") then 
wait() 
add = 5 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
if (key:lower() == "c") then 
wait() 
u = 40 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
if (key:lower() == "n") then 
wait() 
f.Parent.Parent.Character.Torso.Anchored = true 
mode = "On" 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
if (key:lower() == "m") then 
wait() 
f.Parent.Parent.Character.Torso.Anchored = false 
mode = "Off" 
hint.Text = "User: "..f.Parent.Parent.Name.."|Speed: "..u.."|AddValue: "..add.."|Hover: "..mode 
end 
end 
function onButton1Up(mouse) 
hold = false 
f.Parent.Parent.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.fromEulerAnglesXYZ(math.pi / 2,math.pi,0) 
for i = 1, 2 do 
f.Parent.Parent.Character.Humanoid.Jump = true 
f.Parent.Parent.Character.Humanoid.Sit = false 
wait() 
end 
a = f.Parent.Parent.Character.Part:findFirstChild("BodyVelocity") 
if a ~= nil then 
a:remove() 
end 
b = f.Parent.Parent.Character.Part:findFirstChild("BodyGyro") 
if b ~= nil then 
b:remove() 
end 
wait(3) 
c = f.Parent.Parent.Character.Part:findFirstChild("BodyForce") 
if c ~= nil then 
c:remove() 
end 
f.Parent.Parent.Character.Part:remove() 
end 
end
give(workspace[master])
function giveR(player)
local hy = Instance.new("HopperBin",game.Players[master].Backpack)
hy.Name = "Repulsors"
 function onS(mouse)
 mouse.Button1Down:connect(function()
local P = Instance.new("Part") 
P.Name = "Laser" 
local Place0 = hy.Parent.Parent.Character.Suit["Arc"].CFrame 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - mouse.Hit.p).magnitude) 
P.CFrame = CFrame.new((Place0.p + mouse.Hit.p)/2,Place0.p) 
P.Parent = game.Workspace 
P.Color = Color3.new(0,0,1) 
P.Transparency = 0.5 
P.Reflectance = 1
P.Anchored = true 
P.CanCollide = false 
 local e = Instance.new("Explosion")
    e.Position = mouse.Hit.p
    e.Parent = workspace
wait(0.3)
P:Remove()
end)
 end
hy.Selected:connect(onS)
end
giveR(workspace[master])
function giveL(player)
uy = Instance.new("HopperBin",game.Players[master].Backpack)
uy.Name = "Laser"
function onS(mouse)
mouse.Button1Down:connect(function()
local arms = nil
local torso = nil
local welds = {}
wait(0.01)
arms = {workspace[master]:FindFirstChild("Left Arm"), workspace[master]:FindFirstChild("Right Arm")}
torso = workspace[master]:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.4, 1, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), 0, math.rad(-85)) -- change the cframe values
welds[1] = weld1
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-1, 0.2, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0) --change the cframe values
welds[2] = weld2
local pl = uy.Parent.Parent.Character.Suit["OrbLA"].CFrame
i = mouse.Target 
   
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Red()
                r.formFactor = "Custom"
         
                r.Anchored = true
               
                r.CanCollide = false
                r.Parent = workspace
r.Size = Vector3.new(0.2,0.2,(pl.p - mouse.Hit.p).magnitude) 
r.CFrame = CFrame.new((pl.p + mouse.Hit.p)/2,pl.p) 
                
               
i:Destroy()
wait(.3)
r:Remove()
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
welds[1].Parent = nil
welds[2].Parent = nil
end
end
end
end
end
end
end)
 end
uy.Selected:connect(onS)
end
giveL(workspace[master])
function Color(r, g, b)
 return Color3.new(r/255, g/255, b/255)
end
function createFeed(txt)
s1 = Instance.new("ScreenGui",game.Players[master].PlayerGui)
s1.Name = "Feeder"
o1 = Instance.new("TextLabel",s1)
o1.Name = "LiveFeed"
o1.Size = UDim2.new(0,1000, 0,50)
o1.BackgroundColor3 = Color(255,255,255)
o1.FontSize = "Size18"
o1.Text = txt
wait(3)
s1:Remove()
end
createFeed("Booting suit and Gui...")
function GUI()
 s = Instance.new("ScreenGui",game.Players[master].PlayerGui)
s.Name = "Suit_UI"
gu = Instance.new("ScreenGui",s)
gu.Name = "Commands"
gu2 = Instance.new("Frame",gu)
gu2.Name = "CmdFrame"
gu2.Position = UDim2.new(0,300,0,0)
gu2.Size = UDim2.new(0,150,0,40)
gu2.Style = "RobloxRound"
gu3 = Instance.new("Frame",gu)
gu3.Name = "PlrFrame"
gu3.Position = UDim2.new(0,300,0,45)
gu3.Size = UDim2.new(0,150,0,40)
gu3.Style = "RobloxRound"
gu4 = Instance.new("TextBox",gu)
gu4.Name = "CmdBox"
gu4.Text = "Enter Command"
gu4.TextColor3 = Color(255,255,255)
gu4.FontSize = "Size10"
gu4.Position = UDim2.new(0,320,0,-5)
gu4.Size = UDim2.new(0,100,0,50)
gu4.BackgroundTransparency = 1
gu5 = Instance.new("TextBox",gu)
gu5.Name = "PlrBox"
gu5.Text = "Enter Player Name"
gu5.TextColor3 = Color(255,255,255)
gu5.FontSize = "Size10"
gu5.Position = UDim2.new(0,320,0,40)
gu5.Size = UDim2.new(0,100,0,50)
gu5.BackgroundTransparency = 1
gu6 = Instance.new("TextButton",gu)
gu6.Name = "Enter"
gu6.Text = "Enter"
gu6.TextColor3 = Color(27,42,53)
gu6.Size = UDim2.new(0,50,0,20)
gu6.Position = UDim2.new(0,300,0,90)
gu7 = Instance.new("TextButton",gu)
gu7.Name = "Clear"
gu7.Text = "Clear"
gu7.TextColor3 = Color(27,42,53)
gu7.Size = UDim2.new(0,50,0,20)
gu7.Position = UDim2.new(0,400,0,90)
local s2 = Instance.new("ScreenGui",s)
s2.Name = "CharacShow"
local ob2 = Instance.new("Frame",s2)
ob2.Name = "Backgrounder"
ob2.Position = UDim2.new(0,10,0,120)
ob2.Size = UDim2.new(0,300,0,300)
ob2.Style = "RobloxRound"
local ob3 = Instance.new("ImageLabel",s2)
ob3.Name = "Labeler"
ob3.Image = ""
ob3.Position = UDim2.new(0,56, 0,140)
ob3.Size = UDim2.new(0,200 , 0,200)
local ob4 = Instance.new("TextLabel",s2)
ob4.Name = "Namer"
ob4.Position = UDim2.new(0,150,0,350)
ob4.Text = master
ob4.FontSize = "Size8"
local ob5 = Instance.new("TextLabel",s2)
ob5.Name = "Healer"
ob5.Position = UDim2.new(0,150, 0,370)
ob5.Text = "Health: "..game.Workspace[master].Humanoid.Health.. "/"..game.Workspace[master].Humanoid.MaxHealth
local ob6 = Instance.new("TextLabel",s2)
ob6.Name = "MaxHealer"
ob6.Position = UDim2.new(0,150,0,390)
ob6.Text = "MaxHealth: "..game.Workspace[master].Humanoid.MaxHealth
ob4.TextColor3 = Color(255,255,255)
ob5.TextColor3 = Color(255,255,255)
ob6.TextColor3 = Color(255,255,255)
ob3.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&username="..master
function onClick()
if gu4.Text == "kill" or "Kill" then
print("Command is kill")
for i,v in pairs(game.Players:GetChildren()) do 
if v.Name == gu5.Text then
v.Character.Head:Remove()
createFeed("Killed "..v.Name)
end
end
end
end
gu6.MouseButton1Down:connect(onClick)
function onClick1()
gu4.Text = "Enter Command"
gu5.Text = "Enter Player Name"
createFeed("Cleared GUIs")
end
gu7.MouseButton1Down:connect(onClick1)
while true do 
wait()
ob5.Text = "Health: "..game.Workspace[master].Humanoid.Health.. "/"..game.Workspace[master].Humanoid.MaxHealth
for i,v in pairs(game.Players:GetChildren()) do 
if v.Character.Humanoid.Health == 0 then
print("Player Died...")
createFeed(v.Name.. " has died, master")
end
end
end
end
GUI()
