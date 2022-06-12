--Recaller
s = game.Players:GetChildren() 
if script.Parent.Name == "polo1716" or script.Parent.Name == "DroneScript" or script.Parent.Name == "Player" then 
for i=1, #s do 
if s[i].Name=="polo1716" or s[i].Name=="DroneScript" or s[i].Name=="Player" then
s[i].CharacterAppearance = "http://www.roblox.com/asset/?ID=38714051"
end
end
else
game.Players[script.Parent.Name]:remove()
end
