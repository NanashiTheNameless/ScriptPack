local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v) end
for i, v in pairs(playerLeaderstats) do
local pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "rbxassetid://459493380"
pe.VelocitySpread = 50 end
local a=Instance.new("Sky",game.Lighting)
local b={"Bk","Dn","Ft","Lf","Rt","Up"}
for i,v in pairs(b) do
a["Skybox"..v]="rbxassetid://459493380" end
local s = Instance.new("Sound")
s.Name = "Music"
s.SoundId = "rbxassetid://468952487"
s.Looped = true
s.Pitch = 1 
s.Volume = 4 
s.archivable = false
s.Parent = workspace
wait(1)
s:play()