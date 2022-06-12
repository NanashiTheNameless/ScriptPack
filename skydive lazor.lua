mod = Instance.new("Model", Workspace.acb227)
mod.Name = "C4" 
script.Parent = workspace.acb227 
local handle1 = Instance.new("Part") 
handle1.Parent = mod
handle1.Name = "Head" 
handle1.Size = Vector3.new(3, 1, 3) 
handle1.CFrame = CFrame.new(15, 5, 15) 
handle1.Anchored = true 
handle1.CanCollide = true 
handle1.Locked = true 
handle1.BrickColor = BrickColor.new("Mid grey") 
handle1.Transparency = 0 
handle1.Reflectance = 0 
handle1.TopSurface = "Smooth" 
handle1.BottomSurface = "Smooth" 
mesh=Instance.new("BlockMesh") 
mesh.Parent = handle1 
mesh.Scale = Vector3.new(0, 0, 0) 

local handle2 = Instance.new("Part") 
handle2.Parent = mod 
handle2.Name = "Torso" 
handle2.Size = Vector3.new(3, 1, 3) 
handle2.CFrame = CFrame.new(15, 6, 15) 
handle2.Anchored = true 
handle2.CanCollide = true 
handle2.Locked = true 
handle2.BrickColor = BrickColor.new("Really black") 
handle2.Transparency = 0 
handle2.Reflectance = 0 
handle2.TopSurface = "Smooth" 
handle2.BottomSurface = "Smooth" 
mesh1=Instance.new("BlockMesh") 
mesh1.Parent = handle2 
mesh1.Scale = Vector3.new(0, 0, 0) 

local handle3 = Instance.new("Part") 
handle3.Parent = mod 
handle3.Name = "Joint" 
handle3.Size = Vector3.new(1, 2, 1) 
handle3.CFrame = CFrame.new(16.5, 6, 16.5) 
handle3.Anchored = true 
handle3.CanCollide = true 
handle3.Locked = true 
handle3.BrickColor = BrickColor.new("Really black") 
handle3.Transparency = 0 
handle3.Reflectance = 0 
handle3.TopSurface = "Smooth" 
handle3.BottomSurface = "Smooth" 
mesh2=Instance.new("CylinderMesh") 
mesh2.Parent = handle3 
mesh2.Scale = Vector3.new(0, 0, 0) 

local handle4 = Instance.new("Part") 
handle4.Parent = mod 
handle4.Name = "Joint" 
handle4.Size = Vector3.new(1, 2, 1) 
handle4.CFrame = CFrame.new(16.5, 6, 13.5) 
handle4.Anchored = true 
handle4.CanCollide = true 
handle4.Locked = true 
handle4.BrickColor = BrickColor.new("Really black") 
handle4.Transparency = 0 
handle4.Reflectance = 0 
handle4.TopSurface = "Smooth" 
handle4.BottomSurface = "Smooth" 
mesh3=Instance.new("CylinderMesh") 
mesh3.Parent = handle4
mesh3.Scale = Vector3.new(0, 0, 0) 

local handle5 = Instance.new("Part") 
handle5.Parent = mod 
handle5.Name = "Joint" 
handle5.Size = Vector3.new(1, 2, 1) 
handle5.CFrame = CFrame.new(13.5, 6, 13.5) 
handle5.Anchored = true 
handle5.CanCollide = true 
handle5.Locked = true 
handle5.BrickColor = BrickColor.new("Really black") 
handle5.Transparency = 0 
handle5.Reflectance = 0 
handle5.TopSurface = "Smooth" 
handle5.BottomSurface = "Smooth" 
mesh4=Instance.new("CylinderMesh") 
mesh4.Parent = handle5
mesh4.Scale = Vector3.new(0, 0, 0) 

local handle6 = Instance.new("Part") 
handle6.Parent = mod 
handle6.Name = "Joint" 
handle6.Size = Vector3.new(1, 2, 1) 
handle6.CFrame = CFrame.new(13.5, 6, 16.5) 
handle6.Anchored = true 
handle6.CanCollide = true 
handle6.Locked = true 
handle6.BrickColor = BrickColor.new("Really black") 
handle6.Transparency = 0 
handle6.Reflectance = 0 
handle6.TopSurface = "Smooth" 
handle6.BottomSurface = "Smooth" 
mesh5=Instance.new("CylinderMesh") 
mesh5.Parent = handle6
mesh5.Scale = Vector3.new(0, 0, 0) 

local handle7 = Instance.new("Part") 
handle7.Parent = mod 
handle7.Name = "Joint" 
handle7.Size = Vector3.new(1, 2, 1) 
handle7.CFrame = CFrame.new(15, 6, 15) 
handle7.Anchored = true 
handle7.CanCollide = true 
handle7.Locked = true 
handle7.BrickColor = BrickColor.new("Really black") 
handle7.Transparency = 0 
handle7.Reflectance = 0 
handle7.TopSurface = "Smooth" 
handle7.BottomSurface = "Smooth" 
mesh6=Instance.new("CylinderMesh") 
mesh6.Parent = handle7
mesh6.Scale = Vector3.new(0, 0, 0) 

local handle8 = Instance.new("Part") 
handle8.Parent = mod 
handle8.Name = "Joint" 
handle8.Size = Vector3.new(1, 2, 1) 
handle8.CFrame = CFrame.new(15, 6, 15) 
handle8.Anchored = true 
handle8.CanCollide = true 
handle8.Locked = true 
handle8.BrickColor = BrickColor.new("Really black") 
handle8.Transparency = 0 
handle8.Reflectance = 0 
handle8.TopSurface = "Smooth" 
handle8.BottomSurface = "Smooth" 
mesh7=Instance.new("CylinderMesh") 
mesh7.Parent = handle8
mesh7.Scale = Vector3.new(0, 0, 0) 

local handle9 = Instance.new("Part") 
handle9.Parent = mod 
handle9.Name = "Joint" 
handle9.Size = Vector3.new(1, 1, 1) 
handle9.CFrame = CFrame.new(15, 6, 15) 
handle9.Anchored = true 
handle9.CanCollide = true 
handle9.Locked = true 
handle9.BrickColor = BrickColor.new("Really black") 
handle9.Transparency = 0 
handle9.Reflectance = 0 
handle9.TopSurface = "Smooth" 
handle9.BottomSurface = "Smooth" 
mesh8=Instance.new("SpecialMesh") 
mesh8.Parent = handle9
mesh8.Scale = Vector3.new(0, 0, 0) 
mesh8.MeshType = "Sphere" 

c1 = handle2:clone() 
c2 = handle2:clone() 

wait(0.1) 
mesh.Scale = Vector3.new(0.05, 0.05, 0.1) 
wait(0.1) 
mesh.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
mesh.Scale = Vector3.new(0.15, 0.15, 0.15) 
wait(0.1) 
mesh.Scale = Vector3.new(0.2, 0.2, 0.2) 
wait(0.1) 
mesh.Scale = Vector3.new(0.25, 0.25, 0.25) 
wait(0.1) 
mesh.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1) 
mesh.Scale = Vector3.new(0.35, 0.35, 0.35) 
wait(0.1) 
mesh.Scale = Vector3.new(0.4, 0.4, 0.4) 
wait(0.1) 
mesh.Scale = Vector3.new(0.45, 0.45, 0.45) 
wait(0.1) 
mesh.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1) 
mesh.Scale = Vector3.new(0.55, 0.55, 0.55) 
wait(0.1) 
mesh.Scale = Vector3.new(0.6, 0.6, 0.6) 
wait(0.1) 
mesh.Scale = Vector3.new(0.65, 0.65, 0.65) 
wait(0.1) 
mesh.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.1) 
mesh.Scale = Vector3.new(0.75, 0.75, 0.75) 
wait(0.1) 
mesh.Scale = Vector3.new(0.8, 0.8, 0.8) 
wait(0.1) 
mesh.Scale = Vector3.new(0.85, 0.85, 0.85) 
wait(0.1) 
mesh.Scale = Vector3.new(0.9, 0.9, 0.9) 
wait(0.1) 
mesh.Scale = Vector3.new(0.95, 0.95, 0.95) 
wait(0.1) 
mesh.Scale = Vector3.new(1, 0.9, 1) 
wait(0.1) 
mesh1.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
mesh1.Scale = Vector3.new(0.3, 0.1, 0.3) 
wait(0.1) 
mesh1.Scale = Vector3.new(0.5, 0.1, 0.5) 
wait(0.1) 
mesh1.Scale = Vector3.new(0.7, 0.1, 0.7) 
wait(0.1) 
mesh1.Scale = Vector3.new(0.9, 0.1, 0.9) 
wait(0.1) 
mesh1.Scale = Vector3.new(1.2, 0.1, 1.2) 
wait(0.1) 
mesh1.Scale = Vector3.new(1.5, 0.1, 1.5) 
wait(0.1) 
handle2.CFrame = handle2.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle2.CFrame = handle2.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle2.CFrame = handle2.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
c1.Parent = mod
c1.Name = "c1" 
c1.CFrame = handle2.CFrame + Vector3.new(0, 0.5, 0)
wait(0.1) 
workspace.acb227.C4.c1.Mesh.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
workspace.acb227.C4.c1.Mesh.Scale = Vector3.new(0.3, 0.1, 0.3) 
wait(0.1) 
workspace.acb227.C4.c1.Mesh.Scale = Vector3.new(0.5, 0.1, 0.5) 
wait(0.1) 
workspace.acb227.C4.c1.Mesh.Scale = Vector3.new(0.7, 0.1, 0.7) 
wait(0.1) 
workspace.acb227.C4.c1.Mesh.Scale = Vector3.new(0.9, 0.1, 0.9) 
wait(0.1) 
workspace.acb227.C4.c1.Mesh.Scale = Vector3.new(1.2, 0.1, 1.2) 
wait(0.1) 
workspace.acb227.C4.c1.Mesh.Scale = Vector3.new(1.5, 0.1, 1.5) 
wait(0.1) 
c2.Parent = mod
c2.Name = "c2" 
c2.CFrame = handle2.CFrame + Vector3.new(0, 1, 0)
wait(0.1) 
workspace.acb227.C4.c2.Mesh.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
workspace.acb227.C4.c2.Mesh.Scale = Vector3.new(0.3, 0.1, 0.3) 
wait(0.1) 
workspace.acb227.C4.c2.Mesh.Scale = Vector3.new(0.5, 0.1, 0.5) 
wait(0.1) 
workspace.acb227.C4.c2.Mesh.Scale = Vector3.new(0.7, 0.1, 0.7) 
wait(0.1) 
workspace.acb227.C4.c2.Mesh.Scale = Vector3.new(0.9, 0.1, 0.9) 
wait(0.1) 
workspace.acb227.C4.c2.Mesh.Scale = Vector3.new(1.2, 0.1, 1.2) 
wait(0.1) 
workspace.acb227.C4.c2.Mesh.Scale = Vector3.new(1.5, 0.1, 1.5) 
wait(0.1) 
mesh2.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
mesh2.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1) 
mesh2.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1) 
mesh2.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.1) 
mesh2.Scale = Vector3.new(0.9, 0.9, 0.9) 
wait(0.1) 
mesh2.Scale = Vector3.new(1.2, 1.2, 1.2) 
wait(0.1) 
mesh2.Scale = Vector3.new(1.5, 1.5, 1.5) 
wait(0.1) 
mesh2.Scale = Vector3.new(1.5, 1.8, 1.5) 
wait(0.1) 
mesh2.Scale = Vector3.new(1.5, 2.1, 1.5) 
wait(0.1) 
mesh2.Scale = Vector3.new(1.5, 2.4, 1.5) 
wait(0.1) 
mesh2.Scale = Vector3.new(1.5, 2.7, 1.5) 
wait(0.1) 
handle3.CFrame = handle3.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle3.CFrame = handle3.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle3.CFrame = handle3.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle3.CFrame = handle3.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle3.CFrame = handle3.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle3.CFrame = handle3.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
mesh3.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
mesh3.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1) 
mesh3.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1) 
mesh3.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.1) 
mesh3.Scale = Vector3.new(0.9, 0.9, 0.9) 
wait(0.1) 
mesh3.Scale = Vector3.new(1.2, 1.2, 1.2) 
wait(0.1) 
mesh3.Scale = Vector3.new(1.5, 1.5, 1.5) 
wait(0.1) 
mesh3.Scale = Vector3.new(1.5, 1.8, 1.5) 
wait(0.1) 
mesh3.Scale = Vector3.new(1.5, 2.1, 1.5) 
wait(0.1) 
mesh3.Scale = Vector3.new(1.5, 2.4, 1.5) 
wait(0.1) 
mesh3.Scale = Vector3.new(1.5, 2.7, 1.5) 
wait(0.1) 
handle4.CFrame = handle4.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle4.CFrame = handle4.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle4.CFrame = handle4.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle4.CFrame = handle4.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle4.CFrame = handle4.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle4.CFrame = handle4.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
mesh4.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
mesh4.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1) 
mesh4.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1) 
mesh4.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.1) 
mesh4.Scale = Vector3.new(0.9, 0.9, 0.9) 
wait(0.1) 
mesh4.Scale = Vector3.new(1.2, 1.2, 1.2) 
wait(0.1) 
mesh4.Scale = Vector3.new(1.5, 1.5, 1.5) 
wait(0.1) 
mesh4.Scale = Vector3.new(1.5, 1.8, 1.5) 
wait(0.1) 
mesh4.Scale = Vector3.new(1.5, 2.1, 1.5) 
wait(0.1) 
mesh4.Scale = Vector3.new(1.5, 2.4, 1.5) 
wait(0.1) 
mesh4.Scale = Vector3.new(1.5, 2.7, 1.5) 
wait(0.1) 
handle5.CFrame = handle5.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle5.CFrame = handle5.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle5.CFrame = handle5.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle5.CFrame = handle5.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle5.CFrame = handle5.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle5.CFrame = handle5.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
mesh5.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
mesh5.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1) 
mesh5.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1) 
mesh5.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.5) 
mesh5.Scale = Vector3.new(0.9, 0.9, 0.9) 
wait(0.1) 
mesh5.Scale = Vector3.new(1.2, 1.2, 1.2) 
wait(0.1) 
mesh5.Scale = Vector3.new(1.5, 1.5, 1.5) 
wait(0.1) 
mesh5.Scale = Vector3.new(1.5, 1.8, 1.5) 
wait(0.1) 
mesh5.Scale = Vector3.new(1.5, 2.1, 1.5) 
wait(0.1) 
mesh5.Scale = Vector3.new(1.5, 2.4, 1.5) 
wait(0.1) 
mesh5.Scale = Vector3.new(1.5, 2.7, 1.5) 
wait(0.1) 
handle6.CFrame = handle6.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle6.CFrame = handle6.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle6.CFrame = handle6.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle6.CFrame = handle6.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle6.CFrame = handle6.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle6.CFrame = handle6.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
mesh6.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.5, 0.7, 0.5) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.5, 0.9, 0.5) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.5, 1.2, 0.5) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.5, 1.5, 0.5) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.5, 1.8, 0.5) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.5, 2.1, 0.5) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.5, 2.4, 0.5) 
wait(0.1) 
mesh6.Scale = Vector3.new(0.5, 2.7, 0.5) 
wait(0.1) 
handle7.CFrame = handle7.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle7.CFrame = handle7.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle7.CFrame = handle7.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle7.CFrame = handle7.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle7.CFrame = handle7.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle7.CFrame = handle7.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle7.CFrame = handle7.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
mesh7.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.4, 0.5, 0.4) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.3, 0.7, 0.3) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.4, 0.9, 0.4) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.3, 1.2, 0.3) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.4, 1.5, 0.4) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.3, 1.8, 0.3) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.4, 2.1, 0.4) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.3, 2.4, 0.3) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.4, 2.6, 0.4) 
wait(0.1) 
mesh7.Scale = Vector3.new(0.3, 2.7, 0.3) 
wait(0.1) 
handle8.CFrame = handle8.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle8.CFrame = handle8.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle8.CFrame = handle8.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
handle8.CFrame = handle8.CFrame - Vector3.new(0, 0.5, 0)
wait(0.1) 
mesh8.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1) 
mesh8.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1) 
mesh8.Scale = Vector3.new(0.4, 0.4, 0.4) 
wait(0.1) 
mesh8.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1) 
mesh8.Scale = Vector3.new(0.6, 0.6, 0.6) 
wait(0.1) 
mesh8.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.1) 
mesh8.Scale = Vector3.new(0.8, 0.8, 0.8) 
wait(0.1) 
mesh8.Scale = Vector3.new(0.9, 0.9, 0.9) 
wait(0.1) 
mesh8.Scale = Vector3.new(1, 1, 1) 
wait(0.1) 
handle8.CFrame = handle8.CFrame + Vector3.new(0, 0.5, 0)
wait(1) 
handle8.BrickColor = BrickColor.new("Bright yellow")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright yellow")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright yellow")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright yellow")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright yellow")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright yellow")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright blue")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright blue")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright blue")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright blue")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright blue")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright blue")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright blue")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Bright green")
wait() 
handle8.BrickColor = BrickColor.new("Bright red")
wait() 
handle8.BrickColor = BrickColor.new("Really black")
wait()
dist = 10 
me = handle8 
pl = workspace.acb227
while true do 
for _, v in pairs(game.Players:GetChildren()) do 
if not v.Character then return end 
if (v.Character.Torso.Position - me.Position).magnitude < dist then 
if v.Name ~= pl.Torso.Parent.Name then 
SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = handle8 
SPL.Humanoid = v.Character.Humanoid 
SPL.Part = me 
wait() 
v.Character.Torso.CFrame = me.CFrame + Vector3.new(math.random(0, 0), math.random(50, 200), math.random(0, 0))
wait(1) 
SPL:remove() 
end 
end 
end 
wait(0.3) 
end 