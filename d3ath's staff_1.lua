local t = Instance.new("Tool") 
t.Parent = game.Workspace.yfc
t.Name = "Staff" 
script.Parent = t.Parent


local b = Instance.new("Part") 
b.Parent = t 
b.Size = Vector3.new(1,5,1) 
b.BrickColor = BrickColor.new("Really black") 
b.Reflectance = 0.1 
b.Transparency = 0 
b.Anchored = false 
b.Locked = true 
b.Name = "Handle" 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 

ha = Instance.new("Part") 
ha.Parent = t 
ha.Size = Vector3.new(1,1,1) 
ha.BrickColor = BrickColor.new("White") 
ha.Reflectance = 0 
ha.Transparency = 0.7 
ha.Anchored = false 
ha.Locked = true 
ha.Name = "Handle2" 
ha.TopSurface = "Smooth" 
ha.BottomSurface = "Smooth" 
w = Instance.new("Weld")
w.Parent = b
w.Part0 = ha
w.Part1 = b
w.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -3, 0)
h = Instance.new("Part") 
h.Parent = t 
h.Size = Vector3.new(1,1,1) 
h.BrickColor = BrickColor.new("Really black") 
h.Reflectance = 0 
h.Transparency = 0 
h.Anchored = false 
h.Locked = true 
h.Name = "Handle2" 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
w = Instance.new("Weld")
w.Parent = b
w.Part0 = h
w.Part1 = b
w.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -3, 0)


m1 = Instance.new("CylinderMesh") 
m1.Scale = Vector3.new(0.2, 1, 0.2) 
m1.Parent = b 

m2 = Instance.new("SpecialMesh") 
m2.Scale = Vector3.new(1, 1, 1) 
m2.Parent = ha 
m2.MeshType = "Sphere" 

m3 = Instance.new("SpecialMesh") 
m3.Scale = Vector3.new(1, 1, 1) 
m3.Parent = h 
m3.MeshType = "Sphere" 

while true do 
wait() 
m3.Scale = Vector3.new(0.9, 0.9, 0.9)
wait() 
m3.Scale = Vector3.new(0.8, 0.8, 0.8)
wait() 
m3.Scale = Vector3.new(0.7, 0.7, 0.7)
wait() 
m3.Scale = Vector3.new(0.6, 0.6, 0.6)
wait() 
m3.Scale = Vector3.new(0.5, 0.5, 0.5)
wait() 
m3.Scale = Vector3.new(0.4, 0.4, 0.4)
wait() 
m3.Scale = Vector3.new(0.3, 0.3, 0.3)
wait() 
m3.Scale = Vector3.new(0.2, 0.2, 0.2)
wait() 
m3.Scale = Vector3.new(0.1, 0.1, 0.1)
wait() 
m3.Scale = Vector3.new(0.2, 0.2, 0.2)
wait() 
m3.Scale = Vector3.new(0.3, 0.3, 0.3)
wait() 
m3.Scale = Vector3.new(0.4, 0.4, 0.4)
wait() 
m3.Scale = Vector3.new(0.5, 0.5, 0.5)
wait() 
m3.Scale = Vector3.new(0.6, 0.6, 0.6)
wait() 
m3.Scale = Vector3.new(0.7, 0.7, 0.7)
wait() 
m3.Scale = Vector3.new(0.8, 0.8, 0.8)
wait() 
m3.Scale = Vector3.new(0.9, 0.9, 0.9)
wait() 
end 