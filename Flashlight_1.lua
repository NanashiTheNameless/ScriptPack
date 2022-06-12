script/t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Light" 

local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.formFactor = "Plate" 
handlee.BrickColor = BrickColor.new("Mid grey") 
handlee.Size = Vector3.new(1, 1, 2) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.9, 0.9, 1.2) 
m.MeshType = "Sphere"
--m.Offset = Vector3.new(-1, 0, -0.5) 
-----------------------------------------Brick2
local base = Instance.new("Part") 
base.Name = "Part" 
base.Parent = t 
base.formFactor = "Plate" 
base.BrickColor = BrickColor.new("New Yeller") 
base.Size = Vector3.new(1, 1, 1) 
base.TopSurface = "Smooth" 
base.BottomSurface = "Smooth" 
base.Transparency = 0.4 
base.Reflectance = 0 
base.CanCollide = false 
-----------------------------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = base 
m.Scale = Vector3.new(2.1, 15, 2.1) 
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=1033714"
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = base
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(-1.6, 0, 0) + Vector3.new(0, 5.5, 0)