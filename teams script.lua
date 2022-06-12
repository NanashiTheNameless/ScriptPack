if game.Teams==nil then 
teams=Instance.new("Teams",game) 
wait() 
end 
redteam=Instance.new("Team",teams) 
redteam.TeamColor = BrickColor.new("Really red") 
redteam.Name="Red" 
redteam.AutoAssignable=true 
redteam.AutoColorCharacters=false 
blueteam=Instance.new("Team",teams) 
blueteam.Name="Blue" 
blueteam.TeamColor = BrickColor.new("Really blue") 
blueteam.AutoAssignable=true 
blueteam.AutoColorCharacters=false 
color = {redteam.TeamColor, blueteam.TeamColor} 
selected = math.random(1,#color) 
for i,a in pairs(game.Players:GetChildren()) do 
a.TeamColor = color[selected] 
end 