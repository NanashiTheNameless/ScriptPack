--Torso-- 
local ha = Instance.new("Part") 
ha.Name = "Handle" 
ha.Parent = Workspace.acb227 
ha.Size = Vector3.new(1,2,1) 
ha.formFactor = "Brick" 
ha.BrickColor = BrickColor.new("Really black") 
ha.TopSurface = "Smooth" 
ha.BottomSurface = "Smooth" 
ha.Transparency = 0 
ha.Reflectance = 0.3 
---------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = ha 
m.Scale = Vector3.new(0.3, 1.1, 0.3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Head 
w1.Part0 = ha 
w1.Part1 = Workspace.acb227.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(1.6, 0, 0) + Vector3.new(0, 0, 1) 
--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = -1 
---------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.5, 1.1, 0.5) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Head 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(1.6, 0, 0) + Vector3.new(0, 0, 1) 
--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = -1 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.2, 0.5, 0.2) 
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=1033714"
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = ha 
w1.Part0 = h 
w1.Part1 = ha 
w1.C0 = CFrame.fromEulerAnglesXYZ(3.15, 0, 0) + Vector3.new(0, -1.2, 0) 