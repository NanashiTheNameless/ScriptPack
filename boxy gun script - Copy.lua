me = game.Players.luxulux

--[[ Values --]]
ToolName = "Pistol"

if me == nil then
script:Remove()
end
if me ~= nil then
backpack = me:findFirstChild("Backpack")
if backpack ~= nil then
remove = backpack:GetChildren()
for i = 1 , #remove do
if remove[i].Name == ToolName then
remove[i]:Remove()
end
end
remove = me.Character:GetChildren()
for i = 1 , #remove do
if remove[i].Name == ToolName then
remove[i]:Remove()
end
end
gun = Instance.new("Tool")
gun.Parent = backpack
gun.Name = ToolName

--[[ Gun Parts --]]

handle = Instance.new("Part")
handle.Parent = gun
handle.Transparency = 1
handle.CanCollide = false
handle.Name = "Handle"
handle.formFactor = "Symmetric"
handle.BrickColor = BrickColor.new(26)
handle.TopSurface = "Smooth"
handle.BottomSurface = "Smooth"
handle.Locked = true
handle.Size = Vector3.new(1, 1, 1)
handle2 = Instance.new("Part")
handle2.Parent = gun
handle2.Transparency = 0
handle2.formFactor = "Symmetric"
handle2.BrickColor = BrickColor.new(26)
handle2.TopSurface = "Smooth"
handle2.CanCollide = false
handle2.BottomSurface = "Smooth"
handle2.Locked = true
handle2.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle2
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.5, 1.03, 0.5)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle2
weld.Parent = handle
weld.C0 = CFrame.new(0, 0, 0.05) * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
handle3 = Instance.new("Part")
handle3.Parent = gun
handle3.CanCollide = false
handle3.formFactor = "Symmetric"
handle3.Transparency = 0
handle3.BrickColor = BrickColor.new(26)
handle3.TopSurface = "Smooth"
handle3.BottomSurface = "Smooth"
handle3.Locked = true
handle3.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle3
mesh.Scale = Vector3.new(0.15, 0.51, 0.15)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle3
weld.Parent = handle
weld.C0 = CFrame.new(0, -0.3, 0.2) * CFrame.fromEulerAnglesXYZ(-0.1, 0, 1.57)
handle4 = Instance.new("Part")
handle4.Parent = gun
handle4.CanCollide = false
handle4.formFactor = "Symmetric"
handle4.Transparency = 0
handle4.BrickColor = BrickColor.new(26)
handle4.TopSurface = "Smooth"
handle4.BottomSurface = "Smooth"
handle4.Locked = true
handle4.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle4
mesh.Scale = Vector3.new(0.15, 0.51, 0.15)
weld = Instance.new("Weld")
weld.Part0 = handle3
weld.Part1 = handle4
weld.Parent = handle3
weld.C0 = CFrame.new(0.6, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
handle5 = Instance.new("Part")
handle5.Parent = gun
handle5.Transparency = 0
handle5.formFactor = "Symmetric"
handle5.BrickColor = BrickColor.new(26)
handle5.TopSurface = "Smooth"
handle5.CanCollide = false
handle5.BottomSurface = "Smooth"
handle5.Locked = true
handle5.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle5
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.5, 0.3, 1.2)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle5
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.4, -0.3) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
handle6 = Instance.new("Part")
handle6.Parent = gun
handle6.Transparency = 0
handle6.formFactor = "Symmetric"
handle6.BrickColor = BrickColor.new(26)
handle6.TopSurface = "Smooth"
handle6.CanCollide = false
handle6.BottomSurface = "Smooth"
handle6.Locked = true
handle6.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle6
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.3, 0.1, 0.73)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle6
weld.Parent = handle
weld.C0 = CFrame.new(0, -0.05, -0.3) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
handle7 = Instance.new("Part")
handle7.Parent = gun
handle7.Transparency = 0
handle7.formFactor = "Symmetric"
handle7.BrickColor = BrickColor.new(26)
handle7.TopSurface = "Smooth"
handle7.CanCollide = false
handle7.BottomSurface = "Smooth"
handle7.Locked = true
handle7.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle7
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.3, 0.1, 0.39)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle7
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.1, -0.7) * CFrame.fromEulerAnglesXYZ(1.2, 0, 0)
handle8 = Instance.new("Part")
handle8.Parent = gun
handle8.Transparency = 0
handle8.formFactor = "Symmetric"
handle8.BrickColor = BrickColor.new(26)
handle8.TopSurface = "Smooth"
handle8.CanCollide = false
handle8.BottomSurface = "Smooth"
handle8.Locked = true
handle8.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle8
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.3, 0.15, 0.15)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle8
weld.Parent = handle
weld.C0 = CFrame.new(0, 0, -0.28) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
handle9 = Instance.new("Part")
handle9.Parent = gun
handle9.Transparency = 0
handle9.formFactor = "Symmetric"
handle9.BrickColor = BrickColor.new(26)
handle9.TopSurface = "Smooth"
handle9.CanCollide = false
handle9.BottomSurface = "Smooth"
handle9.Locked = true
handle9.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle9
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.3, 0.15, 0.15)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle9
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.25, -0.3) * CFrame.fromEulerAnglesXYZ(0, 0, 3.14)
handle10 = Instance.new("Part")
handle10.Parent = gun
handle10.Transparency = 0
handle10.formFactor = "Symmetric"
handle10.BrickColor = BrickColor.new(26)
handle10.TopSurface = "Smooth"
handle10.CanCollide = false
handle10.BottomSurface = "Smooth"
handle10.Locked = true
handle10.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle10
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.3, 0.15, 0.15)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle10
weld.Parent = handle
weld.C0 = CFrame.new(0, 0, -0.56) * CFrame.fromEulerAnglesXYZ(0, 3.14, 0)
handle11 = Instance.new("Part")
handle11.Parent = gun
handle11.Transparency = 0
handle11.formFactor = "Symmetric"
handle11.BrickColor = BrickColor.new(26)
handle11.TopSurface = "Smooth"
handle11.CanCollide = false
handle11.BottomSurface = "Smooth"
handle11.Locked = true
handle11.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle11
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.1, 0.05, 0.125)
weld2 = Instance.new("Weld")
weld2.Part0 = handle
weld2.Part1 = handle11
weld2.Parent = handle
weld2.C0 = CFrame.new(0, 0.2, -0.3) * CFrame.fromEulerAnglesXYZ(-0.9, 0, 0)
handle12 = Instance.new("Part")
handle12.Parent = gun
handle12.Transparency = 0
handle12.formFactor = "Symmetric"
handle12.BrickColor = BrickColor.new(26)
handle12.TopSurface = "Smooth"
handle12.CanCollide = false
handle12.BottomSurface = "Smooth"
handle12.Locked = true
handle12.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle12
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.1, 0.05, 0.13)
weld = Instance.new("Weld")
weld.Part0 = handle11
weld.Part1 = handle12
weld.Parent = handle11
weld.C0 = CFrame.new(0, 0, -0.05) * CFrame.fromEulerAnglesXYZ(-0.9, 0, 0)
handle13 = Instance.new("Part")
handle13.Parent = gun
handle13.Transparency = 0
handle13.formFactor = "Symmetric"
handle13.BrickColor = BrickColor.new(26)
handle13.TopSurface = "Smooth"
handle13.CanCollide = false
handle13.BottomSurface = "Smooth"
handle13.Locked = true
handle13.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle13
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.1, 0.05, 0.08)
weld = Instance.new("Weld")
weld.Part0 = handle11
weld.Part1 = handle13
weld.Parent = handle11
weld.C0 = CFrame.new(0, -0.045, -0.11) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
handle14 = Instance.new("Part")
handle14.Parent = gun
handle14.CanCollide = false
handle14.formFactor = "Symmetric"
handle14.Transparency = 0
handle14.BrickColor = BrickColor.new(26)
handle14.TopSurface = "Smooth"
handle14.BottomSurface = "Smooth"
handle14.Locked = true
handle14.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle14
mesh.Scale = Vector3.new(0.15, 0.51, 0.15)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle14
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.4, -0.1) * CFrame.fromEulerAnglesXYZ(0, 0, 1.57)
handle15 = Instance.new("Part")
handle15.Parent = gun
handle15.CanCollide = false
handle15.formFactor = "Symmetric"
handle15.Transparency = 0
handle15.BrickColor = BrickColor.new(26)
handle15.TopSurface = "Smooth"
handle15.BottomSurface = "Smooth"
handle15.Locked = true
handle15.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle15
mesh.Scale = Vector3.new(0.15, 0.51, 0.15)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle15
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.4, -0.8) * CFrame.fromEulerAnglesXYZ(0, 0, 1.57)
handle16 = Instance.new("Part")
handle16.Parent = gun
handle16.CanCollide = false
handle16.formFactor = "Symmetric"
handle16.Transparency = 0
handle16.BrickColor = BrickColor.new(26)
handle16.TopSurface = "Smooth"
handle16.BottomSurface = "Smooth"
handle16.Locked = true
handle16.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle16
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.05, 0.51, 0.6)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle16
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.4, -0.45) * CFrame.fromEulerAnglesXYZ(0, 0, 1.57)
handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle17
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.5, 0.3, 0.2)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.4, -1) * CFrame.fromEulerAnglesXYZ(0, 0, 3.14)
handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle17
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.4, 0.4, 2.6)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.75, -0.8) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle17
mesh.Scale = Vector3.new(0.1, 2.6, 0.1)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0.2, 0.6, -0.8) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
handle18 = Instance.new("Part")
handle18.Parent = gun
handle18.Transparency = 0
handle18.formFactor = "Symmetric"
handle18.BrickColor = BrickColor.new(26)
handle18.TopSurface = "Smooth"
handle18.CanCollide = false
handle18.BottomSurface = "Smooth"
handle18.Locked = true
handle18.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle18
mesh.Scale = Vector3.new(0.1, 2.6, 0.1)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle18
weld.Parent = handle
weld.C0 = CFrame.new(0.2, 0.9, -0.8) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
handle19 = Instance.new("Part")
handle19.Parent = gun
handle19.Transparency = 0
handle19.formFactor = "Symmetric"
handle19.BrickColor = BrickColor.new(26)
handle19.TopSurface = "Smooth"
handle19.CanCollide = false
handle19.BottomSurface = "Smooth"
handle19.Locked = true
handle19.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle19
mesh.Scale = Vector3.new(0.1, 2.6, 0.1)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle19
weld.Parent = handle
weld.C0 = CFrame.new(-0.2, 0.6, -0.8) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
handle20 = Instance.new("Part")
handle20.Parent = gun
handle20.Transparency = 0
handle20.formFactor = "Symmetric"
handle20.BrickColor = BrickColor.new(26)
handle20.TopSurface = "Smooth"
handle20.CanCollide = false
handle20.BottomSurface = "Smooth"
handle20.Locked = true
handle20.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle20
mesh.Scale = Vector3.new(0.1, 2.6, 0.1)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle20
weld.Parent = handle
weld.C0 = CFrame.new(-0.2, 0.9, -0.8) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
handle21 = Instance.new("Part")
handle21.Parent = gun
handle21.Transparency = 0
handle21.formFactor = "Symmetric"
handle21.BrickColor = BrickColor.new(26)
handle21.TopSurface = "Smooth"
handle21.CanCollide = false
handle21.BottomSurface = "Smooth"
handle21.Locked = true
handle21.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle21
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.5, 0.3, 2.6)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle21
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.75, -0.8) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
handle22 = Instance.new("Part")
handle22.Parent = gun
handle22.Transparency = 0
handle22.formFactor = "Symmetric"
handle22.BrickColor = BrickColor.new(26)
handle22.TopSurface = "Smooth"
handle22.CanCollide = false
handle22.BottomSurface = "Smooth"
handle22.Locked = true
handle22.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle22
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.2, 0.3, 2.6)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle22
weld.Parent = handle
weld.C0 = CFrame.new(0, 0.95, -0.8) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
handle23 = Instance.new("Part")
handle23.Parent = gun
handle23.Transparency = 0
handle23.formFactor = "Symmetric"
handle23.BrickColor = BrickColor.new(26)
handle23.TopSurface = "Smooth"
handle23.CanCollide = false
handle23.BottomSurface = "Smooth"
handle23.Locked = true
handle23.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle23
mesh.Scale = Vector3.new(0.2, 0.3, 0.2)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle23
weld.Parent = handle
weld.C0 = CFrame.new(0, 1, -0.2) * CFrame.fromEulerAnglesXYZ(1.57, 0, 1.57)
handle24 = Instance.new("Part")
handle24.Parent = gun
handle24.Transparency = 0
handle24.formFactor = "Symmetric"
handle24.BrickColor = BrickColor.new(26)
handle24.TopSurface = "Smooth"
handle24.CanCollide = false
handle24.BottomSurface = "Smooth"
handle24.Locked = true
handle24.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle24
mesh.Scale = Vector3.new(0.2, 0.3, 0.2)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle24
weld.Parent = handle
weld.C0 = CFrame.new(0, 1, -0.7) * CFrame.fromEulerAnglesXYZ(1.57, 0, 1.57)
handle25 = Instance.new("Part")
handle25.Parent = gun
handle25.Transparency = 0
handle25.formFactor = "Symmetric"
handle25.BrickColor = BrickColor.new(26)
handle25.TopSurface = "Smooth"
handle25.CanCollide = false
handle25.BottomSurface = "Smooth"
handle25.Locked = true
handle25.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Brick"
mesh.Parent = handle25
mesh.Scale = Vector3.new(0.5, 0.3, 0.2)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle25
weld.Parent = handle
weld.C0 = CFrame.new(0, 1, -0.45) * CFrame.fromEulerAnglesXYZ(1.57, 0, 1.57)






handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle17
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.4, 0.4, 2.6)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.15, -0.8) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle17
mesh.Scale = Vector3.new(0.1, 2.6, 0.1)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0.2, 1.3, -0.8) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
handle18 = Instance.new("Part")
handle18.Parent = gun
handle18.Transparency = 0
handle18.formFactor = "Symmetric"
handle18.BrickColor = BrickColor.new(26)
handle18.TopSurface = "Smooth"
handle18.CanCollide = false
handle18.BottomSurface = "Smooth"
handle18.Locked = true
handle18.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle18
mesh.Scale = Vector3.new(0.1, 2.6, 0.1)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle18
weld.Parent = handle
weld.C0 = CFrame.new(0.2, 1, -0.8) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
handle19 = Instance.new("Part")
handle19.Parent = gun
handle19.Transparency = 0
handle19.formFactor = "Symmetric"
handle19.BrickColor = BrickColor.new(26)
handle19.TopSurface = "Smooth"
handle19.CanCollide = false
handle19.BottomSurface = "Smooth"
handle19.Locked = true
handle19.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle19
mesh.Scale = Vector3.new(0.1, 2.6, 0.1)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle19
weld.Parent = handle
weld.C0 = CFrame.new(-0.2, 1, -0.8) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
handle20 = Instance.new("Part")
handle20.Parent = gun
handle20.Transparency = 0
handle20.formFactor = "Symmetric"
handle20.BrickColor = BrickColor.new(26)
handle20.TopSurface = "Smooth"
handle20.CanCollide = false
handle20.BottomSurface = "Smooth"
handle20.Locked = true
handle20.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle20
mesh.Scale = Vector3.new(0.1, 2.6, 0.1)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle20
weld.Parent = handle
weld.C0 = CFrame.new(-0.2, 1.3, -0.8) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
handle21 = Instance.new("Part")
handle21.Parent = gun
handle21.Transparency = 0
handle21.formFactor = "Symmetric"
handle21.BrickColor = BrickColor.new(26)
handle21.TopSurface = "Smooth"
handle21.CanCollide = false
handle21.BottomSurface = "Smooth"
handle21.Locked = true
handle21.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle21
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.5, 0.3, 2.6)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle21
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.15, -0.8) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle17
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.2, 0.4, 1.2)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.17, -0.6) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle17
mesh.Scale = Vector3.new(0.2, 0.4, 0.2)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.17, -1.2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle17
mesh.Scale = Vector3.new(0.2, 0.4, 0.2)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.17, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle17
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.1, 0.55, 0.5)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.17, -1.2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)


handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle17
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.1, 0.55, 0.9)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.17, -0.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)


handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new(26)
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle17
mesh.MeshType = "Wedge"
mesh.Scale = Vector3.new(0.1, 0.55, 0.5)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.17, 0.2) * CFrame.fromEulerAnglesXYZ(0, 3.14, 0)



handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0
handle17.formFactor = "Symmetric"
handle17.BrickColor = BrickColor.new("Really black")
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle17
mesh.Scale = Vector3.new(0.36, 1, 0.36)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.15, -1.61) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)


handle117 = Instance.new("Part")
handle117.Parent = gun
handle117.Transparency = 1
handle117.formFactor = "Symmetric"
handle117.BrickColor = BrickColor.new("Really black")
handle117.TopSurface = "Smooth"
handle117.CanCollide = false
handle117.BottomSurface = "Smooth"
handle117.Locked = true
handle117.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle117
mesh.Scale = Vector3.new(0.36, 1, 0.36)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle117
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.15, -2.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

handle17 = Instance.new("Part")
handle17.Parent = gun
handle17.Transparency = 0.7
handle17.formFactor = "Symmetric"
handle17.BrickColor = me.Character.Head.BrickColor
handle17.TopSurface = "Smooth"
handle17.CanCollide = false
handle17.BottomSurface = "Smooth"
handle17.Locked = true
handle17.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("CylinderMesh")
mesh.Parent = handle17
mesh.Offset = Vector3.new(0, -100, 0)
mesh.Scale = Vector3.new(0.15, 200, 0.15)
weld = Instance.new("Weld")
weld.Part0 = handle
weld.Part1 = handle17
weld.Parent = handle
weld.C0 = CFrame.new(0, 1.15, -1) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)


--[[ Shooting Part --]]

ammo = 20
maxammo = 20
clips = 9000
damage = 10
rightshoulder = me.Character.Torso:findFirstChild("Right Shoulder")

headshot = Instance.new("Sound")
headshot.SoundId = "a486994e6ff9237acd5c540e45cbe8d5"
headshot.Volume = 0.7
shotsound = Instance.new("Sound")
shotsound.SoundId = "http://www.roblox.com/asset?id=134437784"
shotsound.Pitch = 1
shotsound.Volume = 1
shotsound.Parent = handle
reload = Instance.new("Sound")
reload.SoundId = "http://www.roblox.com/asset/?id=134842220"
reload.Pitch = 1
reload.Parent = handle


shot = false
function onActivated()
if shot == false then

if ammo >= 1 then
shot = true
ammo = ammo - 1
me.PlayerGui.GunGui.Shoot1.Text = "[ Ammo : "..ammo.." | "..maxammo.." ]"
me.PlayerGui.GunGui.Shoot3.Text = "[ Shot a bullet ]"
s = game.Workspace:findFirstChild("OING")
if s ~= nil then
s:Remove()
end
shotsound:play()
a1 = Instance.new("Part")
a1.Parent = game.Workspace
a1.Anchored = true
a1.CanCollide = false
a1.BrickColor = BrickColor.new(24)
a1.Size = Vector3.new(1, 1, 1)
a1.TopSurface = "Smooth"
a1.BottomSurface = "Smooth"
a1.Transparency = 0.3
a1.CFrame = handle117.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-3, 3)/6, math.random(-3, 3)/6, math.random(-3, 3)/6)
d = Instance.new("SpecialMesh")
d.Parent = a1
d.MeshType = "Brick"
d.Scale = Vector3.new(math.random(0, 1)/3, math.random(0, 1)/3, math.random(0, 1)/3)
a2 = Instance.new("Part")
a2.Parent = a1
a2.Anchored = true
a2.CanCollide = false
a2.BrickColor = BrickColor.new(24)
a2.Size = Vector3.new(1, 1, 1)
a2.TopSurface = "Smooth"
a2.BottomSurface = "Smooth"
a2.Transparency = 0.3
a2.CFrame = handle117.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-3, 3)/6, math.random(-3, 3)/6, math.random(-3, 3)/6)
d = Instance.new("SpecialMesh")
d.Parent = a2
d.MeshType = "Brick"
d.Scale = Vector3.new(math.random(0, 1)/3, math.random(0, 1)/3, math.random(0, 1)/3)
a2 = Instance.new("Part")
a2.Parent = a1
a2.Anchored = true
a2.CanCollide = false
a2.BrickColor = BrickColor.new(24)
a2.Size = Vector3.new(1, 1, 1)
a2.TopSurface = "Smooth"
a2.BottomSurface = "Smooth"
a2.Transparency = 0.3
a2.CFrame = handle117.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-3, 3)/6, math.random(-3, 3)/6, math.random(-3, 3)/6)
d = Instance.new("SpecialMesh")
d.Parent = a2
d.MeshType = "Brick"
d.Scale = Vector3.new(math.random(0, 1)/3, math.random(0, 1)/3, math.random(0, 1)/3)
a2 = Instance.new("Part")
a2.Parent = a1
a2.Anchored = true
a2.CanCollide = false
a2.BrickColor = BrickColor.new(24)
a2.Size = Vector3.new(1, 1, 1)
a2.TopSurface = "Smooth"
a2.BottomSurface = "Smooth"
a2.Transparency = 0.3
a2.CFrame = handle117.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-3, 3)/6, math.random(-3, 3)/6, math.random(-3, 3)/6)
d = Instance.new("SpecialMesh")
d.Parent = a2
d.MeshType = "Brick"
d.Scale = Vector3.new(math.random(0, 1)/3, math.random(0, 1)/3, math.random(0, 1)/3)


bullet = Instance.new("Part")
bullet.Parent = game.Workspace
bullet.Size = Vector3.new(1, 1, 1)
bullet.CFrame = handle117.CFrame*CFrame.new(Vector3.new(0, 0, 0.1))
bullet.Name = "OING"
a = Instance.new("SpecialMesh")
a.Parent = bullet
a.MeshType = "Brick"
a.Scale = Vector3.new(0.3, 0.3, 0.3)
bullet.Locked = true
bullet.TopSurface = "Smooth"
bullet.BottomSurface = "Smooth"
bullet.Anchored = false
bullet:BreakJoints()

b = Instance.new("BodyVelocity")
b.Parent = bullet
b.maxForce = Vector3.new(math.huge, math.huge, math.huge)
b.velocity = handle117.CFrame.lookVector * 500 + Vector3.new(math.random(-1, 1)/30, math.random(-1, 1)/30, math.random(-1, 1)/30)

function kill(hit)
humanoid = hit.Parent:findFirstChild("Humanoid")
if humanoid ~= nil then
if hit.Parent ~= me.Character then
if hit.Name == "Head" then
wth = headshot:clone()
wth.Parent = hit
wth:play()
humanoid.MaxHealth = 0
humanoid.Health = 0
end
humanoid.MaxHealth = 100
humanoid.Health = humanoid.Health - damage
bullet:Remove()
end
end
end
bullet.Touched:connect(kill)

function kill2(hit)
humanoid = hit.Parent:findFirstChild("Zombie")
if humanoid ~= nil then
if hit.Parent ~= me.Character then
if hit.Name == "Head" then
wth = headshot:clone()
wth.Parent = hit
wth:play()
humanoid.MaxHealth = 0
humanoid.Health = 0
end
humanoid.MaxHealth = 100
humanoid.Health = humanoid.Health - damage
bullet:Remove()
end
end
end
bullet.Touched:connect(kill2)


weld2.C0 = weld2.C0 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, 0.05)
wait()
weld2.C0 = weld2.C0 * CFrame.fromEulerAnglesXYZ(-0.1, 0, 0)
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, 0.05)
wait()
weld2.C0 = weld2.C0 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, -0.05)
wait()
weld2.C0 = weld2.C0 * CFrame.fromEulerAnglesXYZ(0.1, 0, 0)
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, -0.05)
wait()
a1:Remove()
shot = false
end

if ammo <= 0 then
hax = game.Workspace:findFirstChild("CLIP")
if hax ~= nil then
hax:Remove()
end
if clips <= 0 then
me.PlayerGui.GunGui.Shoot3.Text = "[ No more clips! ]"
end
if clips >= 1 then
shot = true
clips = clips - 1
me.PlayerGui.GunGui.Shoot2.Text = "[ Clips : "..clips.." | 10 ]"
reload:play()
for i = 1 , 7 do
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, 0.2)
wait()
end
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, 0.17)
wait()

rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(-0.1, 0, 0))
wait()



rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(-0.1, 0, 0))
handle3 = Instance.new("Part")
handle3.Parent = game.Workspace
handle3.Transparency = 0
handle3.Name = "CLIP"
handle3.formFactor = "Symmetric"
handle3.BrickColor = BrickColor.new(26)
handle3.TopSurface = "Smooth"
handle3.BottomSurface = "Smooth"
handle3.Locked = true
handle3.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle3
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.35, 0.9, 0.4)
handle3.CFrame = handle2.CFrame * CFrame.new(0, -0.2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait(0.05)
rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(0.1, 0, 0))
wait()
rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(0.1, 0, 0))
wait()
rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(0.1, 0, 0))
wait()
rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(-0.1, 0, 0))
wait()
for i = 1 , 7 do
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, -0.2)
wait()
end
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, -0.17)
ammo = maxammo
me.PlayerGui.GunGui.Shoot1.Text = "[ Ammo : "..ammo.." | "..maxammo.." ]"
me.PlayerGui.GunGui.Shoot3.Text = "[ Reloaded ]"
wait()
shot = false


end
end


end
end







function onUnequipped(mouse)
gui = me.PlayerGui:findFirstChild("GunGui")
if gui ~= nil then
gui:Remove()
end
end




function onKeyDown(key) 
key:lower()
if key == "e" then
game.Workspace:BreakJoints()
end
end










function onEquipped(mouse) 

mouse.KeyDown:connect(onKeyDown)

gui = me.PlayerGui:findFirstChild("GunGui")
if gui ~= nil then
gui:Remove()
end
gui = Instance.new("ScreenGui")
gui.Parent = me.PlayerGui
gui.Name = "GunGui"

show = Instance.new("TextButton")
show.Parent = gui
show.Name = "Shoot1"
show.BackgroundTransparency = 0.5
show.Position = UDim2.new(0.02, 0, 0.3, 0)
show.Size = UDim2.new(0.15, 0, 0.05, 0)
show.Text = "[ Ammo : "..ammo.." | "..maxammo.." ]"
show = Instance.new("TextButton")
show.Parent = gui
show.Name = "Shoot2"
show.BackgroundTransparency = 0.5
show.Position = UDim2.new(0.02, 0, 0.35, 0)
show.Size = UDim2.new(0.15, 0, 0.05, 0)
show.Text = "[ Clips : "..clips.." | 10 ]"
show = Instance.new("TextButton")
show.Parent = gui
show.Name = "Shoot3"
show.BackgroundTransparency = 0.5
show.Position = UDim2.new(0.02, 0, 0.4, 0)
show.Size = UDim2.new(0.15, 0, 0.05, 0)
show.Text = "[ Status : None ]"

show2 = Instance.new("TextButton")
show2.Parent = gui
show2.Name = "Shoot4"
show2.BackgroundTransparency = 0.5
show2.Position = UDim2.new(0.02, 0, 0.45, 0)
show2.Size = UDim2.new(0.15, 0, 0.05, 0)
show2.Text = "[ Reload ]"

clicked = false
function click()
if clicked == false then
hax = game.Workspace:findFirstChild("CLIP")
if hax ~= nil then
hax:Remove()
end
if clips <= 0 then
me.PlayerGui.GunGui.Shoot3.Text = "[ No more clips! ]"
end
if clips >= 1 then
clicked = true
shot = true
clips = clips - 1
reload:play()
me.PlayerGui.GunGui.Shoot2.Text = "[ Clips : "..clips.." | 10 ]"
for i = 1 , 7 do
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, 0.2)
wait()
end
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, 0.17)
wait()

rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(-0.1, 0, 0))
wait()



rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(-0.1, 0, 0))
handle3 = Instance.new("Part")
handle3.Parent = game.Workspace
handle3.Transparency = 0
handle3.Name = "CLIP"
handle3.formFactor = "Symmetric"
handle3.BrickColor = BrickColor.new(26)
handle3.TopSurface = "Smooth"
handle3.BottomSurface = "Smooth"
handle3.Locked = true
handle3.Size = Vector3.new(1, 1, 1)
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle3
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.35, 0.9, 0.4)
handle3.CFrame = handle2.CFrame * CFrame.new(0, -0.2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait(0.05)
rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(0.1, 0, 0))
wait()
rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(0.1, 0, 0))
wait()
rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(0.1, 0, 0))
wait()
rightshoulder.C0 = rightshoulder.C0 * CFrame.new(Vector3.new(-0.1, 0, 0))
wait()
for i = 1 , 7 do
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, -0.2)
wait()
end
rightshoulder.C0 = rightshoulder.C0 * CFrame.fromEulerAnglesXYZ(0, 0, -0.17)
ammo = maxammo
me.PlayerGui.GunGui.Shoot1.Text = "[ Ammo : "..ammo.." | "..maxammo.." ]"
me.PlayerGui.GunGui.Shoot3.Text = "[ Reloaded ]"
wait()
shot = false
clicked = false

end

end
end
show2.MouseButton1Click:connect(click)


end

gun.Equipped:connect(onEquipped) 
gun.Unequipped:connect(onUnequipped)
gun.Activated:connect(onActivated)
 
script.Parent = gun



end
end
