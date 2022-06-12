p = Instance.new("Part") p.Size = Vector3.new(20,1.2,20) p.Position = Vector3.new(0,10,0) 
b = Instance.new("BodyPosition") b.Name = "LOL" b.maxForce = Vector3.new(10000,1000000,10000) b.position = Vector3.new(0,10,0) 
b.Parent = p p.Parent = game.Workspace 
while true do p.BrickColor = BrickColor.new("Bright red") wait(1) p.BrickColor = BrickColor.new("Bright orange") wait(1) p.BrickColor = BrickColor.new("Bright yellow") wait(1) p.BrickColor = BrickColor.new("Bright green") wait(1) p.BrickColor = BrickColor.new("Bright blue") wait(1) end 

-- Makes a floating brick, that people can tilt around. 

-- NOTE: It's amazing how curious people are in script builder. 
--When something new appears, just about everyone rushes over.