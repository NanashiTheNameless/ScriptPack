local spread = 20 
local m = Instance.new("Model") 
m.Name = "Dome" 
m.Parent = Workspace 
local m2 = Instance.new("Model") 
m2.Name = "Door"
m2.Parent = m
for ii = 1,21 do 
for i = 1, 90 do 
p = Instance.new("Part") 
p.Name = "Part"..i
p.Anchored = true 
p.Parent = m 
p.Size = Vector3.new(1,spread*0.1,spread*0.075) 
p.CFrame = CFrame.fromEulerAnglesXYZ(0,math.rad(i*4),math.rad(ii*4)) * CFrame.new(spread,ii/10,0) 
p.BrickColor = BrickColor.new(1) 
end 
end 
m.Part1.Parent = m2 
m.Part2.Parent = m2 
m.Part3.Parent = m2 
m.Part4.Parent = m2 
m.Part1.Parent = m2 
m.Part2.Parent = m2 
m.Part3.Parent = m2 
m.Part4.Parent = m2 
m.Part1.Parent = m2 
m.Part2.Parent = m2 
m.Part3.Parent = m2 
m.Part4.Parent = m2 
m.Part1.Parent = m2 
m.Part2.Parent = m2 
m.Part3.Parent = m2 
m.Part4.Parent = m2 
m.Part1.Parent = m2 
m.Part2.Parent = m2 
m.Part3.Parent = m2 
m.Part4.Parent = m2 
wait() 
for i,p in pairs(m2:GetChildren()) do 
p.BrickColor = BrickColor.new() 
p.Transparency = 1 
p.CanCollide = false 

me = game.Players.yfc 
me.Chatted:connect(function(msg) 
if string.find(string.lower(msg), "delete") ~= nil or string.find(string.lower(msg), "remove") ~= nil then 
Workspace.Dome:Remove() 
end 
if string.find(string.lower(msg), "open") ~= nil  then 
p.Transparency = 1 
p.CanCollide = false 
end 
if string.find(string.lower(msg), "close") ~= nil  then 
p.Transparency = 0 
p.CanCollide = true  
end 
end) 
end 
script.Parent = m 