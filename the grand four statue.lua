part1 = Instance.new("Part", workspace) 
part1.Size = Vector3.new(4, 5, 4) 
part1.BrickColor = BrickColor.new("Really blue")
part1.CFrame = CFrame.new(4, 5, 2)
part1.Anchored = true 

part2 = Instance.new("Part", workspace) 
part2.Size = Vector3.new(4, 5, 4) 
part2.Color = Color3.new("Really black")
part2.CFrame = CFrame.new(4, 5, -2)
part2.Anchored = true 

part3 = Instance.new("Part", workspace) 
part3.Size = Vector3.new(4, 6, 8) 
part3.Color = Color3.new("Really black")
part3.CFrame = CFrame.new(4, 10.5, 0)
part3.Anchored = true 

part4 = Instance.new("Part", workspace) 
part4.Size = Vector3.new(4, 5, 4) 
part4.BrickColor = BrickColor.new("Really blue")
part4.CFrame = CFrame.new(4, 11, -6)
part4.Anchored = true 

part5 = Instance.new("Part", workspace) 
part5.Size = Vector3.new(4, 5, 4) 
part5.BrickColor = BrickColor.new("Really black")
part5.CFrame = CFrame.new(4, 11, 6)
part5.Anchored = true 

part6 = Instance.new("Part", workspace) 
part6.Size = Vector3.new(4, 6, 8) 
part6.Color = Color3.new("Really black")
part6.CFrame = CFrame.new(4, 15.5, 0)
part6.Anchored = true 
part6.Name = "Head" 

head = Instance.new("SpecialMesh") 
head.Parent = part6 
head.Scale = Vector3.new(1.3, 1.3, 1.3)