local w = workspace:GetChildren()
local a = Instance.new("Sky",game.Lighting)
local b = {"Bk","Dn","Ft","Lf","Rt","Up"}
for _,v in pairs(b) do
a["Skybox"..v]="rbxassetid://111954944"
end
for q,p in pairs(game.Players:GetPlayers()) do
local c = Instance.new("ParticleEmitter",p.Character.Torso)
c.Texture = "rbxassetid://79187163"
c.VelocitySpread = 50 end
local d = Instance.new("Sound",workspace)
d.SoundId = "rbxassetid://507839176"
d.Looped = true
d:Play()
for i= 1,#w do
if w[i]:isA("BasePart") then
pe = Instance.new("ParticleEmitter", w[i])
pe.Texture = "rbxassetid://79187163"
pe.VelocitySpread = 5
end end
for n,m in pairs(game.Players:GetPlayers()) do
local dd = Instance.new("ParticleEmitter",m.Character.Torso)
dd.Texture = "rbxassetid://357822657"
dd.VelocitySpread = 50 end