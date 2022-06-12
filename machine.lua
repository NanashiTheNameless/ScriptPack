owner = workspace.acb227
owner.Torso.Transparency = 1
owner.Head.Transparency = 1
owner["Right Leg"].Transparency = 1
owner["Left Leg"].Transparency = 1
owner["Right Arm"].Transparency = 1
owner["Left Arm"].Transparency = 1
owner.Head.face:Remove()
script.Parent = workspace.acb227

--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
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
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = owner.Torso
w1.Part0 = h 
w1.Part1 = owner.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.25, 1, 1.25) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = owner.Head
w1.Part0 = h 
w1.Part1 = owner.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.25, 0.25, 0.25) 
m.MeshType = "Sphere" 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = owner.Head
w1.Part0 = h 
w1.Part1 = owner.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.3, -0.2, 0.55) 
--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.25, 0.25, 0.25) 
m.MeshType = "Sphere" 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = owner.Head
w1.Part0 = h 
w1.Part1 = owner.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.3, -0.2, 0.55) 
--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright blue") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 0.25, 0.35) 
m.MeshType = "Sphere" 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = owner.Head
w1.Part0 = h 
w1.Part1 = owner.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.2, 0.55) 
--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
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
w1.Parent = owner["Right Arm"]
w1.Part0 = h 
w1.Part1 = owner["Right Arm"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
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
w1.Parent = owner["Right Leg"]
w1.Part0 = h 
w1.Part1 = owner["Right Leg"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
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
w1.Parent = owner["Left Arm"]
w1.Part0 = h 
w1.Part1 = owner["Left Arm"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
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
w1.Parent = owner["Left Leg"]
w1.Part0 = h 
w1.Part1 = owner["Left Leg"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--.-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = owner 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Really black") 
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
w1.Parent = owner["Right Arm"]
w1.Part0 = h 
w1.Part1 = owner["Right Arm"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 
--belt-- 
local a = Instance.new("Part") 
a.Name = "Handle" 
a.Parent = owner 
a.Size = Vector3.new(1,1,1) 
a.formFactor = "Brick" 
a.BrickColor = BrickColor.new("Mid grey") 
a.TopSurface = "Smooth" 
a.BottomSurface = "Smooth" 
a.Transparency = 0 
a.Reflectance = 0.2 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = a 
m.Scale = Vector3.new(0.9, 0.7, 1.2) 
m.MeshType = "Sphere" 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = owner.Torso
w1.Part0 = a 
w1.Part1 = owner.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.7, 0.75, 0) 
--.-- 
local b = Instance.new("Part") 
b.Name = "Handle" 
b.Parent = owner 
b.Size = Vector3.new(1,1,1) 
b.formFactor = "Brick" 
b.BrickColor = BrickColor.new("Mid grey") 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.Transparency = 0 
b.Reflectance = 0.2 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = b 
m.Scale = Vector3.new(0.95, 0.75, 1.2) 
m.MeshType = "Sphere" 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = owner.Torso
w1.Part0 = b 
w1.Part1 = owner.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.75, 0) 
--.-- 
local c = Instance.new("Part") 
c.Name = "Handle" 
c.Parent = owner 
c.Size = Vector3.new(1,1,1) 
c.formFactor = "Brick" 
c.BrickColor = BrickColor.new("Mid grey") 
c.TopSurface = "Smooth" 
c.BottomSurface = "Smooth" 
c.Transparency = 0 
c.Reflectance = 0.2 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = c 
m.Scale = Vector3.new(0.95, 0.75, 1.2) 
m.MeshType = "Sphere" 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = owner.Torso
w1.Part0 = c 
w1.Part1 = owner.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-0.7, 0.75, 0) 

while true do 
wait() 
a.Reflectance = 1 
wait() 
a.Reflectance = 0 
wait() 
b.Reflectance = 1 
wait() 
b.Reflectance = 0 
wait() 
c.Reflectance = 1 
wait() 
c.Reflectance = 0 
wait() 
end 