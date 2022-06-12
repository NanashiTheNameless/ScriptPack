local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=13270026"
pe.VelocitySpread = 50
se = Instance.new("ParticleEmitter",v.Character.Torso)
se.Texture = "http://www.roblox.com/asset/?id=25597054"
se.VelocitySpread = 50
fe = Instance.new("ParticleEmitter",v.Character.Torso)
fe.Texture = "http://www.roblox.com/asset/?id=30680635"
fe.VelocitySpread = 50
end