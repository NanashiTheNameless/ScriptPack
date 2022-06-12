Game.workspace.acb227["Right Arm"].Transparency = 1
---------------------------------------Brick
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Locked = true
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("White") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227 ["Right Arm"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227 ["Right Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(-0.3, 0.5, 0) + Vector3.new(0, 0, 0) 
Game.workspace.acb227["Left Arm"].Transparency = 1
---------------------------------------Brick
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Locked = true
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("White") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227 ["Left Arm"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227 ["Left Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0.3, 0.5, 0) + Vector3.new(0, 0, 0) 