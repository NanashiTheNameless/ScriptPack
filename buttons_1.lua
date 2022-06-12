pcall(function() workspace.Button:remove() end)
pcall(function() workspace.Button2:remove() end)
local on = false 
local one = true 
local modle = Instance.new("Model", workspace) 
modle.Name = "Button" 
local modle2 = Instance.new("Model", workspace) 
modle2.Name = "Button2" 
case = Instance.new("Part", modle) 
case.Name = "Head" 
case.BrickColor = BrickColor.new("Really black") 
case.Size = Vector3.new(2, 1, 2) 
case.Anchored = true 
case.CFrame = CFrame.new(0, 1, 0) 
casem = Instance.new("CylinderMesh", case) 
casem.Scale = Vector3.new(1, 1, 1) 
caseb = Instance.new("Part", case) 
caseb.Name = "Button" 
caseb.BrickColor = BrickColor.new("Really red") 
caseb.Size = Vector3.new(2, 1, 2) 
caseb.Anchored = true 
caseb.CFrame = CFrame.new(0, 1.5, 0) 
casebm = Instance.new("CylinderMesh", caseb) 
casebm.Scale = Vector3.new(0.85, 1, 0.85) 
hum = Instance.new("Humanoid", modle) 
hum.Health = 0 
hum.MaxHealth = 0 
case2 = Instance.new("Part", modle2) 
case2.Name = "Head" 
case2.BrickColor = BrickColor.new("Really black") 
case2.Size = Vector3.new(2, 1, 2) 
case2.Anchored = true 
case2.CFrame = CFrame.new(0, 1, 3) 
local case2m = Instance.new("CylinderMesh", case2) 
case2m.Scale = Vector3.new(1, 1, 1) 
local case2b = Instance.new("Part", case2) 
case2b.Name = "Button" 
case2b.BrickColor = BrickColor.new("Really red") 
case2b.Size = Vector3.new(2, 1, 2) 
case2b.Anchored = true 
case2b.CFrame = CFrame.new(0, 1, 3) 
caseb2m = Instance.new("CylinderMesh", case2b) 
caseb2m.Scale = Vector3.new(0.85, 1.05, 0.85) 
hum = Instance.new("Humanoid", modle2) 
hum.Health = 0 
hum.MaxHealth = 0 

caseb.Touched:connect(function(hit) 
if on == false and one == true then 
on = true 
for i = 0, 1, 0.25 do 
caseb.CFrame = caseb.CFrame - Vector3.new(0, i/5.5, 0) 
wait() 
end 
for i = 0, 1, 0.25 do 
case2b.CFrame = case2b.CFrame + Vector3.new(0, i/5.5, 0) 
wait() 
end 
on = false 
one = false 
end 
 end)
case2b.Touched:connect(function(hit) 
if on == false and one == false then 
on = true 
for i = 0, 1, 0.25 do 
case2b.CFrame = case2b.CFrame - Vector3.new(0, i/5.5, 0) 
wait() 
end 
for i = 0, 1, 0.25 do 
caseb.CFrame = caseb.CFrame + Vector3.new(0, i/5.5, 0) 
wait() 
end 
on = false 
one = true 
end 
 end)
 
 --[[ for i = 0, 1, 0.25 do 
caseb.CFrame = caseb.CFrame + Vector3.new(0, i/5.25, 0) 
wait() 
end  ]] 