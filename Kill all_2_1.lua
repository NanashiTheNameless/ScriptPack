for i, v in pairs(game.Players:GetPlayers()) do
game.Lighting.Remote.AddHealth:FireServer(v.Character.Humanoid, -100)
end