me = Game.Players.acb227 

tool = Instance.new("Tool") 
tool.Parent = me.Backpack 
tool.Name = "Staff" 

part = Instance.new("Part") 
part.Parent = tool 
part.Name = "Handle" 
part.Size = Vector3.new(1, 2, 1) 
part.BrickColor = BrickColor.new("Really black") 
part.Material = "CorrodedMetal" 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(0.3, 2, 0.3) 

