 j = Instance.new("Part") 
 j.Parent = Workspace 
 j.BrickColor = BrickColor.new("Really black") 
 j.Size = Vector3.new(25,1,1) 
 j.Name = "j"
 j.Anchored = true 
 j.CFrame = CFrame.new(25,2,25) 
 j.TopSurface = 0
 j.Locked = true
 as = Instance.new("BlockMesh")
as.Parent = j
 j = Instance.new("Part") 
 j.Parent = Workspace 
 j.BrickColor = BrickColor.new("Really black") 
 j.Size = Vector3.new(25,1,1) 
 j.Name = "j"
 j.Anchored = true 
 j.CFrame = CFrame.new(25,2,15) 
 j.TopSurface = 0
 j.Locked = true
as = Instance.new("BlockMesh")
 as.Parent = j
 j = Instance.new("Part") 
 j.Parent = Workspace 
 j.BrickColor = BrickColor.new("Really black") 
 j.Size = Vector3.new(1,1,25) 
 j.Name = "j"
 j.Anchored = true 
 j.CFrame = CFrame.new(30,2,20) 
 j.TopSurface = 0
 j.Locked = true
 as = Instance.new("BlockMesh")
 as.Parent = j
 j = Instance.new("Part") 
 j.Parent = Workspace 
 j.BrickColor = BrickColor.new("Really black") 
 j.Size = Vector3.new(1,1,25) 
 j.Name = "j"
 j.Anchored = true 
 j.CFrame = CFrame.new(20,2,20) 
 j.TopSurface = 0
 j.Locked = true
 as = Instance.new("BlockMesh")
 as.Parent = j

--buttons--
a = Instance.new("Part") 
a.Parent = Workspace 
a.BrickColor = BrickColor.new("Really black") 
a.Size = Vector3.new(9.5,1,9.5) 
a.Name = "a"
a.Anchored = true 
a.CFrame = CFrame.new(25,2,20) 
a.TopSurface = 0
a.Locked = true
as = Instance.new("BlockMesh")
as.Parent = a
click = Instance.new("ClickDetector", a) 
click.Clicked:connect(function() 
click.Parent.BrickColor = BrickColor.new("Really red") 
end) 

b = Instance.new("Part") 
b.Parent = Workspace 
b.BrickColor = BrickColor.new("Really black") 
b.Size = Vector3.new(9.5,1,7) 
b.Name = "a"
b.Anchored = true 
b.CFrame = CFrame.new(25,2,11) 
b.TopSurface = 0
b.Locked = true
as = Instance.new("BlockMesh")
as.Parent = b
click = Instance.new("ClickDetector", b) 
click.Clicked:connect(function() 
click.Parent.BrickColor = BrickColor.new("Really red") 
end) 

c = Instance.new("Part") 
c.Parent = Workspace 
c.BrickColor = BrickColor.new("Really black") 
c.Size = Vector3.new(9.5,1,7) 
c.Name = "a"
c.Anchored = true 
c.CFrame = CFrame.new(25,2,29) 
c.TopSurface = 0
c.Locked = true
as = Instance.new("BlockMesh")
as.Parent = c
click = Instance.new("ClickDetector", c) 
click.Clicked:connect(function() 
click.Parent.BrickColor = BrickColor.new("Really red") 
end) 