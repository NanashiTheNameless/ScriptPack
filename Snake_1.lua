--Snake Suit in Progress made by acb227--------------------------------------------------------------------------------------------------- 
me = workspace.acbalt

me["Right Arm"].Transparency = 1 
me["Left Arm"].Transparency = 1 
me["Right Leg"].Transparency = 1 
me["Left Leg"].Transparency = 1 
me.Head.Transparency = 1 
me.Torso.Transparency = 1 
me.Head.face:Remove()

--Torso--
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = me 
h.Size = Vector3.new(2,2,2) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright green") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.2 
h:BreakJoints() 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = me.Torso 
w1.Part0 = h 
w1.Part1 = me.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Head--
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = me 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright green") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.2 
h:BreakJoints() 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.4, 1.4, 1.4) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = me.Head 
w1.Part0 = h 
w1.Part1 = me.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--Torso--
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = me 
h.Size = Vector3.new(2,2,2) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright green") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.2 
h:BreakJoints() 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = me.Torso 
w1.Part0 = h 
w1.Part1 = me.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-3, 0, 0) + Vector3.new(0, 0, 1) 
--Torso--
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = me7 
h.Size = Vector3.new(2,2,2) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright green") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0.2 
h:BreakJoints() 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = me.Torso 
w1.Part0 = h 
w1.Part1 = me.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(2, 0, 0) + Vector3.new(0, -1, -2) 