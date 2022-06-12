kos = 100000000000 
user = "acb227" 
victim = "skull1255" 

function start() 
for i=1, kos do 
wait() 
c = Instance.new("ObjectValue") 
c.Parent = game.Players[victim].Character.Humanoid 
c.Value = game.Players[user] 
c.Name = "creator" 
game.Players[victim].Character.Parent = game.Lighting 
game.Players[victim].Character.Parent = game.Workspace 
c:remove() 
end 
end 
start()  --lego
