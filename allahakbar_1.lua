for i,v in pairs(game.Players:GetChildren()) do
isis = Instance.new("Message",workspace)
isis.Text = "ALLAHU AKBARRRR!"
wait(1)
isis:Destroy()
bomb = Instance.new("Explosion")
bomb.Parent = v.Character.Torso
bomb.Position = v.Character.Torso.Position
bomb.BlastPressure = 1000
bomb.BlastRadius = 1000
end