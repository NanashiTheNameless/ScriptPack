vip = game.Players.yfc 
char = vip.Character 

char.Torso.Transparency = 1 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(2,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Pastel brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char.Torso 
w1.Part0 = h 
w1.Part1 = char.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

char["Right Leg"].Transparency = 1 

--Right Leg-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Pastel brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char["Right Leg"] 
w1.Part0 = h 
w1.Part1 = char["Right Leg"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

char["Left Leg"].Transparency = 1 

--Left Leg-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Pastel brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char["Left Leg"] 
w1.Part0 = h 
w1.Part1 = char["Left Leg"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

char["Left Arm"].Transparency = 1 

--Left Arm-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Pastel brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char["Left Arm"] 
w1.Part0 = h 
w1.Part1 = char["Left Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

char["Right Arm"].Transparency = 1 

--Right Leg-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Pastel brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char["Right Arm"] 
w1.Part0 = h 
w1.Part1 = char["Right Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

--jacket-- 
--part 1
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(2,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 0.8, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char.Torso 
w1.Part0 = h 
w1.Part1 = char.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.6, 0) 
--part 2
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(2,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1, 0.4) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char.Torso 
w1.Part0 = h 
w1.Part1 = char.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.4, -0.35) 
--part 3
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(2,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.5, 0.9, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char.Torso 
w1.Part0 = h 
w1.Part1 = char.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.7, -0.5, 0) 
--part 4
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.5, 0.9, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char.Torso 
w1.Part0 = h 
w1.Part1 = char.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.6, 0.4, 0) 