local wrksp = game:GetService("Workspace") 
local parent = wrksp.Base 
pcall(function() parent.CaB:remove() end) 
local mod = Instance.new("Model", parent) 
mod.Name = "CaB" 

local active = false 
local wrkin = false 
local screens = {} 

local x = -25 
local z = -25 

for i = 1, 52 do 
local part = Instance.new("Part", mod) 
part.Name = i 
table.insert(screens, part.Name) 
part.Size = Vector3.new(1, 4, 1) 
part.Anchored = true 
part.CanCollide = false 
part.CFrame = CFrame.new(x, 2, z) 
part.BrickColor = BrickColor.new("Really blue") 
part.Transparency = 0.45 
part.Reflectance = 0.15 
local click = Instance.new("ClickDetector", part) 
click.MouseClick:connect(function() 
if active == true and wrkin == false then 
wrkin = true 
local newcf = part.CFrame 
for i = 1, 3 do 
newcf = part.CFrame + Vector3.new(0, i, 0) 
part.CFrame = newcf 
wait() 
end 
for i = 1, 5 do 
part.Size = Vector3.new(2+i, 4+i/2, 1) 
part.CFrame = newcf 
wait() 
end 
wait(5) 
for i = 1, 5 do 
part.Size = Vector3.new(2-i, 4-i/2, 1) 
part.CFrame = newcf 
wait() 
end 
part.Size = Vector3.new(2, 4, 1) 
for i = 1, 3 do 
newcf = part.CFrame + Vector3.new(0, -i, 0) 
part.CFrame = newcf 
wait() 
end 
wrkin = false 
end 
end) 
if x >= 25 then 
x = -25 
z = z + 2
else 
x = x + 2 
end 
wait() 
end 

wait(1) 

for _,v in pairs(mod:GetChildren()) do 
local cf = v.CFrame 
v.Size = Vector3.new(2, 4, 1) 
v.CFrame = cf 
wait() 
end 
active = true 