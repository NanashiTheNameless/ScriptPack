-- Please think twice before using this. Everytime you use this a puppy dies.

for i, v in pairs(game.Players:GetPlayers()) do
game.Lighting.Remote.AddHealth:FireServer(v.Character.Humanoid, -100)
end
