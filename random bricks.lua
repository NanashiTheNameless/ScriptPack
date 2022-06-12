for i = 1, 1000 do
wait()
part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(math.random(1, 5), math.random(1, 5), math.random(1, 5)) 
part.Position = Vector3.new(math.random(-500, 500), math.random(20, 500), math.random(-500, 500)) 
partBrickColor = BrickColor.new(math.random, math.random, math.random)
end 