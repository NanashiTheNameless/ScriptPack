for i = 1, 10 do 
local part = Instance.new("Part", workspace) 
part.Anchored = true 
part.Size = Vector3.new(1, 1, 5) 
part.CFrame = CFrame.new(5, 5, 0) * CFrame.Angles(0, math.rad(20*i), 0) 
part.BrickColor = BrickColor.new("Bright red") 
wait() 
end 