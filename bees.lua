local who = "yfc" 
local players = game:GetService('Players') 
local plyr = players[who] 
local char = plyr.Character 
local head = char.Head 
local beenum = 20 
local offset = head.Position + Vector3.new(0, 2, 0) 

pcall(function() char.Bees:remove() end) 
local mod = Instance.new("Model", char) 
mod.Name = "Bees" 
for i = 1, beenum do 
local b = Instance.new("Part", mod) 
b.formFactor = "Custom" 
b.BrickColor = BrickColor.new("New Yeller") 
b.Size = Vector3.new(0.2, 0.2, 0.2) 
b.CanCollide = false 
b:BreakJoints() 
local m = Instance.new("BlockMesh", b) 
local p = Instance.new("BodyPosition", b) 
p.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
p.position = offset + Vector3.new(math.random(-4, 4), math.random(-4, 4), math.random(-4, 4)) 
coroutine.resume(coroutine.create(function() 
while wait() do 
local offset = head.Position + Vector3.new(0, 2, 0) 
p.position = offset + Vector3.new(math.random(-4, 4), math.random(-4, 4), math.random(-4, 4)) 
end 
end)) 
coroutine.resume(coroutine.create(function() 
while wait() do 
b.Touched:connect(function(hit) 
if hit.Parent.Name ~= plyr.Name then 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Humanoid:TakeDamage(1) 
end 
end 
end) 
end 
end)) 
end 

function onChatted(msg) 
if string.sub(msg, 1, 6) == "swarm/" then 
said = string.lower(string.sub(msg, 7)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
pcall(function() head = look[i].Character.Head end) 
end 
end 
end 
if string.sub(msg, 1, 6) == "sting/" then 
said = string.lower(string.sub(msg, 7)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
pcall(function() 
head = look[i].Character.Head 
for c = 1, 5 do 
look[i].Character.Humanoid:TakeDamage(10) 
wait(0.15) 
end 
head = char.Head 
end) 
end 
end 
end 
if msg == "disperse" or msg == "disp" or msg == "DIS" then 
mod:remove() 
script:remove() 
end 
end 

while wait() do 
plyr.Chatted:connect(onChatted) 
end 