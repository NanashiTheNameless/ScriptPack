while true do 

pcall(function() workspace.Base.Terrainstorage:remove() end)

local terrain = Instance.new("Model", workspace.Base) 
terrain.Name = "Terrainstorage" 

for i = 1, 10 do 
for a = 1, 10 do 
for y = 1, 1 do 
local part = Instance.new("Part", terrain) 
part.BrickColor = BrickColor.new("Bright blue") 
part.Anchored = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Size = Vector3.new(2, 1, 2) 
part.CFrame = CFrame.new(a*2,y,i*2) 
if y < 0.5 then 
part.BrickColor = BrickColor.new("Bright blue") 
part.Transparency = 0 
part.CanCollide = true 
end 
if y > 0.5 then 
part.BrickColor = BrickColor.new("Bright blue") 
part.Transparency = 0 
part.CanCollide = true 
end 
wait() 
end 
end 
end 

for i = 1, 10 do 
for a = 1, 10 do 
for y = 1.5, math.random(1, 1.5) do 
local part = Instance.new("Part", terrain) 
part.BrickColor = BrickColor.new("Bright green") 
part.Anchored = true 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.formFactor = "Custom" 
part.Size = Vector3.new(2.1, 1, 2.1) 
part.CFrame = CFrame.new(a*2,y,i*2) 
if y > 1.1 then 
part.BrickColor = BrickColor.new("Bright green") 
part.Transparency = 0 
part.CanCollide = true 
end 
if y < 1 then 
part.BrickColor = BrickColor.new("Bright blue") 
part.Transparency = 0 
part.CanCollide = true 
part.CFrame = part.CFrame - Vector3.new(0, 0.5, 0) 
end 
wait() 
end 
end 
end 

wait(10) 
end 

