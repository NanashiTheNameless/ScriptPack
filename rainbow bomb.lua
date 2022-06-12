local Workspac = Instance.new("Model") 
Workspac.Name = "WSP" 
Workspac.Parent = workspace 

local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("Really black") 
p.Anchored = true 
p.CFrame = CFrame.new(50*math.cos(math.rad(i)),50*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  

local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("Reddish brown") 
p.Anchored = true 
p.CFrame = CFrame.new(45*math.cos(math.rad(i)),45*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  

local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("Dark blue") 
p.Anchored = true 
p.CFrame = CFrame.new(40*math.cos(math.rad(i)),40*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  
local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("Bright green") 
p.Anchored = true 
p.CFrame = CFrame.new(35*math.cos(math.rad(i)),35*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  
local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("Bright orange") 
p.Anchored = true 
p.CFrame = CFrame.new(30*math.cos(math.rad(i)),30*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  
local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("Really pink") 
p.Anchored = true 
p.CFrame = CFrame.new(25*math.cos(math.rad(i)),25*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  
local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("Bright blue") 
p.Anchored = true 
p.CFrame = CFrame.new(20*math.cos(math.rad(i)),20*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  
local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("Light blue") 
p.Anchored = true 
p.CFrame = CFrame.new(15*math.cos(math.rad(i)),15*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  
local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("Bright red") 
p.Anchored = true 
p.CFrame = CFrame.new(10*math.cos(math.rad(i)),10*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  
local i = 0 
for i = 1, 2000, 25 do 
local p = Instance.new("Part") 
p.Parent = Workspac 
p.Name = "Brick" 
p.Size = Vector3.new(5,5,1) 
p.BrickColor = BrickColor.new("New Yeller") 
p.Anchored = true 
p.CFrame = CFrame.new(5*math.cos(math.rad(i)),5*math.sin(math.rad(i))+0 ,0*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  

wait(3) 

ex = Instance.new("Explosion") 
ex.BlastRadius = 50000 
ex.BlastPressure = 50000 
ex.Parent = workspace 

wait(3) 

Workspac:remove() 