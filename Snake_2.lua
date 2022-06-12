--Snake Suit in Progress made by acb227--------------------------------------------------------------------------------------------------- 
Game.Workspace.acb227["Right Arm"].Transparency = 1 
Game.Workspace.acb227["Left Arm"].Transparency = 1 
Game.Workspace.acb227["Right Leg"].Transparency = 1 
Game.Workspace.acb227["Left Leg"].Transparency = 1 
Game.Workspace.acb227.Head.Transparency = 1 
Game.Workspace.acb227.Torso.Transparency = 1 
Game.Workspace.acb227.Head.face:Remove()

--Torso--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(2,2,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 

---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 1.1, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

--Head--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(1,1,1) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 

---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.4, 1.4, 1.4) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Head 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Head 

w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

--Torso--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(2,2,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 

---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 1.1, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(-3, 0, 0) + Vector3.new(0, 0, 1) 

--Torso--
local h = Instance.new("Part") 

h.Name = "Handle" 

h.Parent = Workspace.acb227 

h.Size = Vector3.new(2,2,2) 

h.formFactor = "Brick" 

h.BrickColor = BrickColor.new("Dark stone grey") 

h.TopSurface = "Smooth" 

h.BottomSurface = "Smooth" 

h.Transparency = 0 

h.Reflectance = 0.2 

---------------------mesh 

m = Instance.new("BlockMesh") 

m.Parent = h 

m.Scale = Vector3.new(1.1, 1.1, 1.1) 

-----------------------------------------weldling 

w1 = Instance.new("Weld") 

w1.Parent = Workspace.acb227.Torso 

w1.Part0 = h 

w1.Part1 = Workspace.acb227.Torso 

w1.C0 = CFrame.fromEulerAnglesXYZ(2, 0, 0) + Vector3.new(0, -1, -2) 