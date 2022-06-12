local length = 50 
--[[type = royal 
for i = 0, length, 1 do 
local part = Instance.new("Part") 
part.Size = Vector3.new(1, 10, 1) 
part.CFrame = CFrame.new(65, 5, 140 - math.rad(50*i)) * CFrame.Angles(math.rad(15*i),0,0) 
part.Parent = workspace 
part.Anchored = true 
local bm = Instance.new('BlockMesh', part)
bm.Bevel = 0.1 
wait() 
end ]] 
--[[type = circal 
for i = 0, length, 1 do 
local part = Instance.new("Part") 
part.Size = Vector3.new(1, 10, 1) 
part.CFrame = CFrame.new(65, 5, 140 - math.rad(50*i)) * CFrame.Angles(math.rad(5*i),0,0) 
part.Parent = workspace 
part.Anchored = true 
local bm = Instance.new('BlockMesh', part)
bm.Bevel = 0.1 
wait() 
end ]] 
--[[type = royal2 
for i = 0, length, 1 do 
local part = Instance.new("Part") 
part.Size = Vector3.new(1, 10, 1) 
part.CFrame = CFrame.new(65, 5, 140 - math.rad(50*i)) * CFrame.Angles(math.rad(20*i),math.rad(2*i),0) 
part.Parent = workspace 
part.Anchored = true 
local bm = Instance.new('BlockMesh', part)
bm.Bevel = 0.1 
wait() 
end ]] 
--[[type = glass 
for i = 0, length, 2 do 
local part = Instance.new("Part") 
part.Size = Vector3.new(1, 10, 1) 
part.BrickColor = BrickColor.new("Bright green") 
part.Transparency = 0.75
part.CFrame = CFrame.new(65, 5, 140 - math.rad(50*i)) * CFrame.Angles(math.rad(-80*i),math.rad(40*i),0) 
part.Parent = workspace 
part.Anchored = true 
local bm = Instance.new('BlockMesh', part)
bm.Bevel = 0.1 
wait() 
end]] 
--[[type = normal 
for i = 0, length, 1 do 
local part = Instance.new("Part") 
part.BrickColor = BrickColor.new("Reddish brown") 
part.Size = Vector3.new(1, 10, 1) 
part.CFrame = CFrame.new(65, 5, 140 - math.rad(50*i)) * CFrame.Angles(math.rad(-90*i),0,0) 
part.Parent = workspace 
part.Anchored = true 
local bm = Instance.new('BlockMesh', part)
bm.Bevel = 0.1 
wait() 
end]] 
--type = sumtin 
for i = 0, length, 1 do 
local part = Instance.new("Part") 
part.BrickColor = BrickColor.new("Reddish brown") 
part.Size = Vector3.new(1, 10, 1) 
part.CFrame = CFrame.new(65, 5, 140 - math.rad(50*i)) * CFrame.Angles(math.rad(-100*i),0,0) 
part.Parent = workspace 
part.Anchored = true 
local bm = Instance.new('BlockMesh', part)
bm.Bevel = 0.1 
wait() 
end 