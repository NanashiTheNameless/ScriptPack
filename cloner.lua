players = game:GetService("Players") 
who = "acb227" 
me = players[who] 

local mod = Instance.new("Model", workspace) 
mod.Name = "Acb227's Clone" 

for _,v in pairs(me.Character:GetChildren()) do 
clo = v:clone() 
clo.Parent = mod 
mod:MakeJoints() 
end 

mod:MoveTo(Vector3.new(25, 5, math.random(-10, 10)))

wait() 
while wait() do 
mod.Humanoid.Jump = true 
end 