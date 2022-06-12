p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,500,0) p.Size = Vector3.new(50,0,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(25,501,0) p.Size = Vector3.new(0,50,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-25,501,0) p.Size = Vector3.new(0,50,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,501,25) p.Size = Vector3.new(50,50,0) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,501,-25) p.Size = Vector3.new(50,50,0) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,525,0) p.Size = Vector3.new(50,0,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 

p= game.Players:GetChildren() 
for i= 1, #p do 
if p[i] ~= "peyquinn" then 
p[i].Character.Torso.CFrame = CFrame.new(0,515,0) 
end 
end