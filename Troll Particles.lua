t = "rbxassetid://45120559"
local p = game.Players:GetPlayers()
local w = game.Workspace:GetChildren()
for i,v in pairs(p) do
pe = Instance.new("ParticleEmitter", v.Character.Torso)
pe.Texture = t
pe.VelocitySpread = 100
end
for i= 1,#w do
if w[i]:isA("BasePart") then
pe = Instance.new("ParticleEmitter", w[i])
pe.Texture = t
pe.VelocitySpread = 5
end end