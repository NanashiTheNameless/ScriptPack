for i = 1, 25 do 
trunk = Instance.new("Part", workspace) 
trunk.Size = Vector3.new(2, 5, 2) 
trunk.BrickColor = BrickColor.new("ReddishBrown") 
trunk.Anchored = true 
trunk.CFrame = CFrame.new(math.random(-100, 100), 2.5, math.random(-100, 100)) 
mesh = Instance.new("CylinderMesh", trunk) 
wait() 
end 