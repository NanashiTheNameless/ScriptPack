while workspace.FilteringEnabled == true do
n = game.Players:GetChildren()
		
for i= 1, #n do	
a = n[i]
game.Players[a.Name].leaderstats1.Tries.Value = "0"					
game.ReplicatedStorage[a.Name.."Level"].Value = -13371337
game.ReplicatedStorage[a.Name.."Element"].Value = "Sub To Roblox Hacked On Youtube"
end

wait()
end