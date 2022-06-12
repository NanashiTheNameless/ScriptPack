--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,3) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Peach") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.3  
-----------------------------------------Mesh
d = Instance.new("SpecialMesh")
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-0.5, 0, 0) + Vector3.new(0.5, 0.3, 0) 