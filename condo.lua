a = Instance.new("Part") 
a.Name = "Handle"
a.Locked = true 
a.Parent = workspace 
a.Size = Vector3.new(2, 1, 2) 
a.formFactor = "Plate" 
a.TopSurface = "Smooth" 
a.Anchored = true 
a.BottomSurface = "Smooth" 
a.BrickColor = BrickColor.new("White")
a.CFrame = CFrame.new(0, 0.5, 0)
m = Instance.new("BlockMesh")
m.Parent = a
m.Scale = Vector3.new(0.1, 0.1, 0.1)
b = Instance.new("Part") 
b.Name = "Handle"
b.Locked = true 
b.Size = Vector3.new(1, 2, 1) 
b.formFactor = "Plate" 
b.TopSurface = "Smooth" 
b.Anchored = true 
b.BottomSurface = "Smooth" 
b.BrickColor = BrickColor.new("Bright green")
b.CFrame = CFrame.new(0, 0.5, 0)
m1 = Instance.new("CylinderMesh")
m1.Parent = b
m1.Scale = Vector3.new(0.1, 0.1, 0.1)

click = Instance.new("ClickDetector", workspace.Base) 

wait(0.5) 
m.Scale = Vector3.new(0.1, 0.1, 0.1)
wait(0.5) 
m.Scale = Vector3.new(0.2, 0.1, 0.2)
wait(0.5) 
m.Scale = Vector3.new(0.3, 0.2, 0.3)
wait(0.5) 
m.Scale = Vector3.new(0.4, 0.2, 0.4)
wait(0.5) 
m.Scale = Vector3.new(0.5, 0.3, 0.5)
wait(0.5) 
m.Scale = Vector3.new(0.6, 0.3, 0.6)
wait(0.5) 
m.Scale = Vector3.new(0.7, 0.4, 0.7)
wait(0.5) 
m.Scale = Vector3.new(0.8, 0.4, 0.8)
wait(0.5) 
m.Scale = Vector3.new(0.9, 0.5, 0.9)
wait(0.5) 
m.Scale = Vector3.new(1, 0.5, 1)
wait(0.5) 
b.Parent = workspace 
wait(0.5) 
m1.Scale = Vector3.new(0.1, 0.1, 0.1)
wait(0.5) 
m1.Scale = Vector3.new(0.2, 0.1, 0.2)
wait(0.5) 
m1.Scale = Vector3.new(0.3, 0.2, 0.3)
wait(0.5) 
m1.Scale = Vector3.new(0.4, 0.2, 0.4)
wait(0.5) 
m1.Scale = Vector3.new(0.5, 0.3, 0.5)
wait(0.5) 
m1.Scale = Vector3.new(0.6, 0.3, 0.6)
wait(0.5) 
m1.Scale = Vector3.new(0.7, 0.4, 0.7)
wait(0.5) 
m1.Scale = Vector3.new(0.8, 0.4, 0.8)
wait(0.5) 
m1.Scale = Vector3.new(0.9, 0.5, 0.9)
wait(0.5) 
m1.Scale = Vector3.new(1, 0.5, 1)
wait(0.5) 
click.Parent = b
wait(0.5) 
click.Clicked:connect(function() 
wait(0.5) 
workspace.Base.Transparency = 0.5 
wait(0.5)
end 