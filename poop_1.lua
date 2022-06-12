who = "yfc" 
players = game:GetService('Players') 
me = players[who] 
char = me.Character 

local colors = {"Reddish brown", "Brown"} 

pcall(function() char.sheet:remove() end) 
local mod = Instance.new("Model", char) 
mod.Name = "sheet" 

while wait(math.random(3, 10)) do 
a = math.random(1, 2) 
if a == 1 then 
for i = 0, math.random(5, 10), 0.1 do 
local barf = Instance.new("Part") 
barf.formFactor = "Custom" 
barf.BrickColor = BrickColor.new(colors[math.random(1, #colors)]) 
barf.Parent = mod 
barf.Name = "sheet" 
barf.Size = Vector3.new(math.random(0.2, 0.4), math.random(0.2, 0.35), math.random(0.25, 2)) 
barf.CanCollide = false 
barf.CFrame = char.Torso.CFrame + Vector3.new(0, -1.5, -0.75) 
local bm = Instance.new("BlockMesh", barf) 
bm.Bevel = math.random(0.05, 0.5) 
barf:BreakJoints() 
barf.CanCollide = true 
wait() 
end 
wait(math.random(0.5, 1.5)) 
for _,v in pairs(mod:GetChildren()) do 
if v.Name == "sheet" then 
v:remove() 
end 
wait() 
end 
end 
if a == 2 then 
for i = 0, math.random(5, 10), 0.1 do 
local barf = Instance.new("Part") 
barf.formFactor = "Custom" 
barf.BrickColor = BrickColor.new(colors[math.random(1, #colors)]) 
barf.Parent = mod 
barf.Name = "sheet" 
barf.Size = Vector3.new(math.random(0.2, 0.2), math.random(0.2, 0.2), math.random(0.2, 0.2)) 
barf.CanCollide = false 
barf.CFrame = char.Torso.CFrame + Vector3.new(0, -1.5, -0.75) 
local bm = Instance.new("BlockMesh", barf) 
bm.Bevel = math.random(0.05, 0.5) 
barf:BreakJoints() 
barf.CanCollide = true 
wait() 
end 
wait(math.random(0.5, 1.5)) 
for _,v in pairs(mod:GetChildren()) do 
if v.Name == "sheet" then 
v:remove() 
end 
wait() 
end 
end 
end 