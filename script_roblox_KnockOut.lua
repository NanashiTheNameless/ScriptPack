kos = 100000000000000 -- How many KOs do you want? 
user = "" -- Who will get the KOs? 
victim = "" -- Who will be the victim? 
function start() 
for i=1, kos do 
c = Instance.new("ObjectValue") 
c.Parent = game.Players[victim].Character.Humanoid 
c.Value = game.Players[user] 
c.Name = "creator" wait(0.1) 
game.Players[victim].Character.Humanoid.Health = 0 
wait(0.01) 
game.Players[victim].Character.Parent = game.Lighting 
wait(0.01) 
c:remove() 
wait(0.01) 
game.Players[victim].Character.Parent = game.Workspace 
end 
end 