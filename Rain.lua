while true do 
wait () 
c = Instance.new("Part") 
c.Position = Vector3.new(math.random(-100,100),math.random(0,50),math.random(-100,100)) 
c.Transparency = 0.5 
c.Reflectance = 0 
c.Size = Vector3.new(5, 5, 5) 
c.BrickColor = BrickColor.new(23) 
c.CanCollide = true 
c.Locked = true 
c.Anchored = false 
c.Shape = 0 
c.Parent = game.Workspace 
end