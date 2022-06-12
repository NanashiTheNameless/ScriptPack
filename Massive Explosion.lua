for i, v in pairs(game.Players:GetChildren()) do
expl = Instance.new("Explosion")
expl.Parent = v.Character.Torso
expl.BlastRadius = 100000000000000000
expl.BlastPressure = 10
expl.Position = game.Players.LocalPlayer.Character.Torso.Position
end