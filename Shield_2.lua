script/t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Shield" 

local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.formFactor = "Plate" 
handlee.BrickColor = BrickColor.new("Black") 
handlee.Size = Vector3.new(2, 1, 1) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
m.Offset = Vector3.new(-1, 0, -0.5) 
-----------------------------------------Brick2
local base = Instance.new("Part") 
base.Name = "Part" 
base.Parent = t 
base.formFactor = "Plate" 
base.BrickColor = BrickColor.new("Black") 
base.Size = Vector3.new(4, 3, 1) 
base.TopSurface = "Smooth" 
base.BottomSurface = "Smooth" 
base.Transparency = 0 
base.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = base 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = base
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(1.5, 1, 1)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Black") 
brick2.Size = Vector3.new(1, 2, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = base
w2.Part0 = brick2
w2.Part1 = base
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(1.65, -2.5, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Black") 
brick2.Size = Vector3.new(1, 2, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = base
w2.Part0 = brick2
w2.Part1 = base
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-1.65, -2.5, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Bright blue") 
brick2.Size = Vector3.new(2, 2, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0.4 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(1.1, 1.1, 1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = base
w2.Part0 = brick2
w2.Part1 = base
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2.5, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Black") 
brick2.Size = Vector3.new(4, 1, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(1.1, 1.1, 1.1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = base
w2.Part0 = brick2
w2.Part1 = base
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -4, 0)