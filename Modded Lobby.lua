game.ReplicatedStorage.Remotes.SetStat:FireServer("Strength", 2000, "math.random() is the best thing ever")
game.ReplicatedStorage.Remotes.SetStat:FireServer("MagicPower", 2000, "math.random() is the best thing ever")
game.ReplicatedStorage.Remotes.SetStat:FireServer("Defense", 2000, "math.random() is the best thing ever")
(the stats changer)




while true do
wait(1)
game.Players.LocalPlayer.bin.MagicEnergy.Value = 99999
game.Players.LocalPlayer.bin.Stamina.Value = 99999
end
(infinite stamina and magic energy)



game.ReplicatedStorage.Remotes.GiveMagic:FireServer("Aether Lightning")
(The exploitable custom giver, might wanna patch this aswell)



(this is the level + lamina + aurem giver)
while true do
wait(0.2)
game.ReplicatedStorage.Remotes.SetStat:FireServer("Level", 200, "math.random() is the best thing ever") 
end



(This is the kill-all-enemies and get credit for them)
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
local tag = Instance.new("ObjectValue",v)
tag.Name = "HitTag"
tag.Value = game.Players.LocalPlayer
v.Humanoid.Health = 0
end
