while true do 
wait(1) -- how often they fall 
local p = Instance.new("Part") 
p.Parent = game.Workspace 
p.Position = Vector3.new ((math.random(-100, 100)),100,(math.random(-100,100))) --Change the numbers to change the local of the platform. 
p.Size = Vector3.new( 55, 55, 55) --Change the numbers to change the size from it. 
p.BrickColor = BrickColor.new(21)
p.Transparency= 0 
p.Reflectance= .1 
p.Shape = 0 
p.Locked = true 
p.Anchored = false 
p.CanCollide = true 
end