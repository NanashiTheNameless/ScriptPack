t = Instance.new("Tool") 
t.Parent = game.Players.yfc.Backpack 
t.Name = "Staff" 

local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.formFactor = "Plate" 
handlee.BrickColor = BrickColor.new("Dark stone grey") 
handlee.Size = Vector3.new(1, 5, 1) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.5, 1, 0.5) 
m.Offset = Vector3.new(0, -0.5, 0) 
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Bright blue") 
brick2.Size = Vector3.new(1, 1, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0.6 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = brick2 
m.MeshType = "Sphere" 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2.4, 0)
-----------------------------------------Brick5
local brick5 = Instance.new("Part") 
brick5.Name = "Part" 
brick5.Parent = t 
brick5.formFactor = "Plate" 
brick5.BrickColor = BrickColor.new("Black") 
brick5.Size = Vector3.new(1, 1, 1) 
brick5.TopSurface = "Smooth" 
brick5.BottomSurface = "Smooth" 
brick5.Transparency = 0.6 
brick5.Reflectance = 0 
-----------------------------------------mesh 
m1 = Instance.new("SpecialMesh") 
m1.Parent = brick5 
m1.MeshType = "Sphere" 
m1.Scale = Vector3.new(0.1, 0.1, 0.1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick5
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2.4, 0)
--[[ -----magic orb
while true do 
wait(0.1)
m1.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1)
m1.Scale = Vector3.new(0.2, 0.2, 0.2) 
wait(0.1)
m1.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1)
m1.Scale = Vector3.new(0.4, 0.4, 0.4) 
wait(0.1)
m1.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1)
m1.Scale = Vector3.new(0.6, 0.6, 0.6) 
wait(0.1)
m1.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.1)
m1.Scale = Vector3.new(0.8, 0.8, 0.8) 
wait(0.1)
m1.Scale = Vector3.new(0.9, 0.9, 0.9) 
wait(0.1)
m1.Scale = Vector3.new(0.8, 0.8, 0.8) 
wait(0.1)
m1.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.1)
m1.Scale = Vector3.new(0.6, 0.6, 0.6) 
wait(0.1)
m1.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1)
m1.Scale = Vector3.new(0.4, 0.4, 0.4) 
wait(0.1)
m1.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1)
m1.Scale = Vector3.new(0.2, 0.2, 0.2) 
wait(0.1)
m1.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1)
end ]]--
-----------------------------------------Brick2
local brick6 = Instance.new("Part") 
brick6.Name = "Part" 
brick6.Parent = t 
brick6.Shape = "Ball" 
brick6.formFactor = "Plate" 
brick6.BrickColor = BrickColor.new("Really black") 
brick6.Size = Vector3.new(1, 1, 1) 
brick6.TopSurface = "Smooth" 
brick6.BottomSurface = "Smooth" 
brick6.Transparency = 0.2 
brick6.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = brick6 
m.MeshType = "Sphere" 
m.Scale = Vector3.new(0.1, 0.1, 0.1) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick6
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 3.35, 0)
-----magic orb
while true do 
wait(0.1)
m.Scale = Vector3.new(1, 0.1, 1) 
wait(0.1)
m1.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1)
m.Scale = Vector3.new(2, 0.1, 2) 
wait(0.1)
m1.Scale = Vector3.new(0.2, 0.2, 0.2) 
wait(0.1)
m.Scale = Vector3.new(3, 0.1, 3) 
wait(0.1)
m1.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1)
m.Scale = Vector3.new(4, 0.1, 4) 
wait(0.1)
m1.Scale = Vector3.new(0.4, 0.4, 0.4) 
wait(0.1)
m.Scale = Vector3.new(5, 0.1, 5) 
wait(0.1)
m1.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1)
m.Scale = Vector3.new(6, 0.1, 6) 
wait(0.1)
m1.Scale = Vector3.new(0.6, 0.6, 0.6) 
wait(0.1)
m.Scale = Vector3.new(7, 0.1, 7) 
wait(0.1)
m1.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.1)
m.Scale = Vector3.new(8, 0.1, 8) 
wait(0.1)
m1.Scale = Vector3.new(0.8, 0.8, 0.8) 
wait(0.1)
m.Scale = Vector3.new(9, 0.1, 9) 
wait(0.1)
m1.Scale = Vector3.new(0.9, 0.9, 0.9) 
wait(0.1)
m.Scale = Vector3.new(8, 0.1, 8) 
wait(0.1)
m1.Scale = Vector3.new(0.8, 0.8, 0.8) 
wait(0.1)
m.Scale = Vector3.new(7, 0.1, 7) 
wait(0.1)
m1.Scale = Vector3.new(0.7, 0.7, 0.7) 
wait(0.1)
m.Scale = Vector3.new(6, 0.1, 6) 
wait(0.1)
m1.Scale = Vector3.new(0.6, 0.6, 0.6) 
wait(0.1)
m.Scale = Vector3.new(5, 0.1, 5) 
wait(0.1)
m1.Scale = Vector3.new(0.5, 0.5, 0.5) 
wait(0.1)
m.Scale = Vector3.new(4, 0.1, 4) 
wait(0.1)
m1.Scale = Vector3.new(0.4, 0.4, 0.4) 
wait(0.1)
m.Scale = Vector3.new(3, 0.1, 3) 
wait(0.1)
m1.Scale = Vector3.new(0.3, 0.3, 0.3) 
wait(0.1)
m.Scale = Vector3.new(2, 0.1, 2) 
wait(0.1)
m1.Scale = Vector3.new(0.2, 0.2, 0.2) 
wait(0.1)
m.Scale = Vector3.new(1, 0.1, 1) 
wait(0.1)
m1.Scale = Vector3.new(0.1, 0.1, 0.1) 
wait(0.1)
end
 
