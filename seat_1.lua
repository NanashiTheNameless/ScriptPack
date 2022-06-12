local seat1 = Instance.new("VehicleSeat") 
seat1.Parent = game.Workspace.acb227 
seat1.Name = "NewBrick" 
seat1.Size = Vector3.new(2, 0.4, 2) 
seat1.Position = Vector3.new(0, 3, 0) 
seat1.Anchored = false 
seat1.CanCollide = true 
seat1.Locked = true 
seat1.BrickColor = BrickColor.new("Cool yellow") 
seat1.Transparency = 0 
seat1.Reflectance = 0 
seat1.TopSurface = "Smooth" 
seat1.BottomSurface = "Smooth" 

--Seat1 Mesh-- 

h = Instance.new("BlockMesh") 
h.Scale = Vector3.new(1, 0.4, 1) 
h.Offset = Vector3.new(0, 0, 0) 
seat1.CFrame = seat1.CFrame * CFrame.Angles(90, 0, 0) 
h.Parent = seat1 