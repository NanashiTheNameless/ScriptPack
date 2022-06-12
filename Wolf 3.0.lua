me = game.Players.lordsheen 

function onChatted(msg) 
if msg == "wolf" then 
m = Instance.new("Model") 
m.Parent = workspace 
m.Name = "Wolf 3.5" 
p = Instance.new("Seat") 
p.Parent = m 
p.Position = Vector3.new(0,10,0) 
p.CanCollide = false 
p.Size = Vector3.new(2,0.1,2) 
p.Name = "Head" 
h = Instance.new("Humanoid") 
h.Parent = m 
h.Health = 0 
h.MaxHealth = 0 
dsbp = Instance.new("BodyPosition") 
dsbp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
dsbp.Parent = p 
g = Instance.new("BodyGyro") 
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
g.Parent = p 
while true do 
wait() 
dsbp.position = me.Character.Torso.Position + Vector3.new(0,5,0) 
end 
end 
if (string.sub(msg, 1, 7) == "follow/") then 
newFollower = string.sub(msg, 8) 
while true do 
wait() 
dsbp.position = game.Players[newFollower].Character.Torso.Position + Vector3.new(0,5,0) 
end end 
if msg == "follow" then 
while true do 
wait() 
dsbp.position = me.Character.Torso.Position + Vector3.new(0,5,0) 
end 
end 
if msg == "stop" then 
while true do 
wait() 
dsbp.position = workspace.Base.Position + Vector3.new(0,5,0) 
end 
end 
if msg == "no gyro" then 
g:Remove() 
end 
if msg == "gyro" then 
g = Instance.new("BodyGyro") 
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
g.Parent = p 
end 
if msg == "boom" then 
local ex = Instance.new("Explosion")--Change these numbers or the explosion might be somewhere unuseful. 
ex.BlastRadius = 10 
ex.Parent = game.Workspace 
ex.Position = p.Position 
end 


end 
me.Chatted:connect(onChatted) 
