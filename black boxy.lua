local handle1 = Instance.new("Part") 
handle1.Parent = game.Workspace.acb227 
handle1.Name = "NewBrick" 
handle1.Size = Vector3.new(1, 1, 1) 
handle1.Position = Vector3.new(15, 15, 15) 
handle1.Anchored = true 
handle1.CanCollide = true 
handle1.Locked = true 
handle1.BrickColor = BrickColor.new("Really black") 
handle1.Transparency = 0 
handle1.Reflectance = 0 
handle1.TopSurface = "Smooth" 
handle1.BottomSurface = "Smooth" 
----------------------------------------------mesh
h = Instance.new("BlockMesh") 
h.Scale = Vector3.new(1, 1, 1) 
h.Offset = Vector3.new(5, 0, 0)
h.Parent = handle1 
