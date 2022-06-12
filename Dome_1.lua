local spread = 40 
local m = Instance.new("Model") 
m.Name = "Dome" 
m.Parent = Workspace 
local m2 = Instance.new("Model") 
m2.Name = "Doors" 
for ii = 1,22 do 
for i = 1, 90 do 
p = Instance.new("Part") 
p.Name = "Part"..i
p.Anchored = true 
p.Parent = m 
p.Size = Vector3.new(1,spread*0.1,spread*0.075) 
p.CFrame = CFrame.fromEulerAnglesXYZ(0,math.rad(i*4),math.rad(ii*4)) * CFrame.new(spread,ii/10,0) 
end 
end 
for iii = 1,3 do 
m.Part1.Parent = m2 
m.Part2.Parent = m2 
m.Part3.Parent = m2 
wait()
m.Part31.Parent = m2 
m.Part32.Parent = m2 
m.Part33.Parent = m2 
wait()
m.Part61.Parent = m2 
m.Part62.Parent = m2 
m.Part63.Parent = m2 
wait()
end 
wait() 
for i,p in pairs(m2:GetChildren()) do 
p.BrickColor = BrickColor.new() 
p.Transparency = 1 
p.CanCollide = false 

me = game.Players.acb227 
me.Chatted:connect(function(msg) 
if string.find(string.lower(msg), "delete") ~= nil or string.find(string.lower(msg), "remove") ~= nil then 
m:Remove() 
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