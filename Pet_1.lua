local owner = "acb227" 
local players = game:GetService("Players") 
local plyr = players[owner] 
local char = plyr.Character 
local part = nil 
local playr = nil 
local colors = {"Really blue", "Really red"} 
pcall(function() char["" ..owner.. " jr."]:remove() end) 
local model = Instance.new("Model", char) 
model.Name = owner.. " jr." 
local hum = Instance.new("Humanoid", model) 
hum.MaxHealth = 0 
hum.Health = 0 
local petp = Instance.new("Part", model) 
petp.BrickColor = BrickColor.new(colors[1]) 
a = math.random(2, 3) 
petp.Size = Vector3.new(a, a, a) 
petp.Shape = "Ball" 
petp.Position = Vector3.new(0, 5, 0) 
petp.CanCollide = true 
petp.Name = "Head" 
petp.Anchored = false 
petp.TopSurface = "Smooth" 
petp.BottomSurface = "Smooth" 
local fac = Instance.new("Decal", petp) 
fac.Face = "Front" 
pcall(function() 
fac.Texture = char.Head.face.Texture
end) 
part = char.Torso 
local petpo = Instance.new("BodyPosition", petp) 
petpo.position = char.Torso.Position 
petpo.maxForce = Vector3.new(1000, math.huge/2, 100) 

coroutine.resume(coroutine.create(function() 
while wait() do 
petpo.position = char.Torso.Position - Vector3.new(4, 2, 2) 
hum.MaxHealth = 0 
hum.Health = 0 
end 
end)) 

function cmd(msg) 
if string.sub(msg, 1, 5) == "kill/" then 
said = string.lower(string.sub(msg, 6)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
playr = look[i] 
part = look[i].Character.Torso 
petpo.position = part.Position + Vector3.new(math.random(-2, 2), 0, math.random(-2, 2)) 
petp.BrickColor = BrickColor.new(colors[2]) 
coroutine.resume(coroutine.create(function() 
while wait() do 
if (petp.Position - ch.Torso.Position).magnitude < 4 then 
if look[i] == playr then 
ch:BreakJoints() 
part = char.Torso 
playr = nil 
petp.BrickColor = BrickColor.new(colors[1]) 
break
end 
end 
end 
end)) 
end 
end 
end 
end 

plyr.Chatted:connect(cmd) 

coroutine.resume(coroutine.create(function() 
while wait(math.random(1, 4)) do 
petpo.position = part.Position + Vector3.new(math.random(-2, 2), 0, math.random(-2, 2)) 
end 
end)) 