										
										
t=Instance.new("Tool") 
t.Parent = game.Players.lordsheen.Backpack 
t.Name = "Wand" 
holder=Instance.new("Part") 
holder.Parent = t 
holder.CanCollide = false 
holder.Size = Vector3.new(2,2,2) 
holder.Name = "Handle" 
holder.Transparency = 1 
c=Instance.new("Part") 
c.Parent = t 
c.CanCollide = true 
c.Size = Vector3.new(1,4,1) 
c.Name = "Handle" 
