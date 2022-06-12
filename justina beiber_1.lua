me = Game.Players.acb227 
char = me.Character

f = Instance.new("Model") 
f.Name = "Justina Beiber" 
f.Parent = char 

part = Instance.new("Part") 
part.Parent = f 
part.Name = "Base" 
part.Anchored = true 
part.Size = Vector3.new(10, 3, 10)
part.CFrame = CFrame.new(0, 1.5, 35) 

part = Instance.new("Part") 
part.Parent = f 
part.Name = "Base" 
part.Anchored = true 
part.Size = Vector3.new(5, 11, 3) 
part.CFrame = CFrame.new(0, 5, 31.5) 

part = Instance.new("Part") 
part.Parent = f 
part.BrickColor = BrickColor.new("Brown")
part.Name = "Base" 
part.Anchored = true 
part.Size = Vector3.new(0, 1, 5) 
part.CFrame = CFrame.new(0, 8, 33.5) 
mesh = Instance.new("BlockMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.2, 0.2, 1)

part = Instance.new("Part") 
part.Parent = f 
part.Name = "Base" 
part.Anchored = true 
part.Size = Vector3.new(1, 2, 1) 
part.CFrame = CFrame.new(0, 3, 35) 