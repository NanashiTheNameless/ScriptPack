local hint = Instance.new("Hint", workspace) 
local plays = {} 
while wait() do 
plays = {} 
for _,v in pairs(game.Players:GetChildren()) do 
table.insert(plays, v.Name) 
hint.Text = "Players: " ..#game.NetworkServer:GetChildren().. "/" ..#plays.. "!" 
end 
end --lego