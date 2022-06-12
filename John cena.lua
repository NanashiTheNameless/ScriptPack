for i, v in pairs(game.Players:GetChildren()) do
emit = Instance.new("ParticleEmitter")
emit.Parent = v.Character.Torso
emit.Texture = "http://www.roblox.com/asset/?id=89415770"
emit.VelocitySpread = 20
end