--local music = Instance.new("Sound", workspace)
--music.SoundId = "http://www.roblox.com/asset/?id=257287435" --ur id here peasant
--music.Volume = 20
--music.Looped = false
--music:Play()
--music.Name = "Ro-MusicPlayer"

local music = Instance.new("Sound", workspace)
music.SoundId = "http://www.roblox.com/asset/?id=190797518"
music.Volume = 20
music.Looped = true
music:Play()
music:Stop()
music.Name = "Ro-MusicPlayer"
wait(3)
music:Play()

t1 = "http://www.roblox.com/asset/?id=238182091"
t2 = "http://www.roblox.com/asset/?id=238182091"
t3 = "http://www.roblox.com/asset/?id=238182091"

local p = game.Players:GetChildren()
local w = game.Workspace:GetChildren()

for i,v in pairs(p) do
pe = Instance.new("ParticleEmitter", v.Character.Torso)
pe.Texture = t3
pe.VelocitySpread = 5
end

for i= 1,#w do
if w[i]:isA("BasePart") then
pe = Instance.new("ParticleEmitter", w[i])
pe.Texture = t3
pe.VelocitySpread = 5
end
end

local Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = t1
Sky.SkyboxDn = t2
Sky.SkyboxFt = t3
Sky.SkyboxLf = t1
Sky.SkyboxRt = t2
Sky.SkyboxUp = t3
Sky.StarCount = 0