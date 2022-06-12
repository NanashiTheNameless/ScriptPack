local s = Instance.new("Sound")
 
s.Name = "Sound"
s.SoundId = "http://www.roblox.com/asset/?id=195608001"
s.Volume = 2
s.Looped = true
s.archivable = false
 
s.Parent = game.Workspace
 
wait(3)
 
s:play()
t1 = "http://www.roblox.com/asset/?id=223238256"
t2 = "http://www.roblox.com/asset/?id=201788175"
t3 = "http://www.roblox.com/asset/?id=261113277"

local p = game.Players:GetChildren()
local w = game.Workspace:GetChildren()

for i,v in pairs(p) do
pe = Instance.new("ParticleEmitter", v.Character.Torso)
pe.Texture = t3
pe.VelocitySpread = 100
end

for i= 1,#w do
if w[i]:isA("BasePart") then
pe = Instance.new("ParticleEmitter", w[i])
pe.Texture = t3
pe.VelocitySpread = 5
end
end

local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=459493380"
pe.VelocitySpread = 50

end

a=Instance.new("Sky",game.Lighting)

 b={"Bk","Dn","Ft","Lf","Rt","Up"}

 for i,v in pairs(b) do

 a["Skybox"..v]="rbxassetid://459493380"

 end



print("Music executed!")

s = Instance.new("Sound")

s.Name = "Music"

s.SoundId = "http://www.roblox.com/asset/?id=468952487" --Put the id into there.

s.Looped = true

s.Pitch = 1 --You can edit these settings.

s.Volume = 4 --You can edit these settings.

s.archivable = false

 

s.Parent = game.Workspace

 

wait(1)

 
s:play()

local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=518936297"
pe.VelocitySpread = 50

end

a=Instance.new("Sky",game.Lighting)

 b={"Bk","Dn","Ft","Lf","Rt","Up"}

 for i,v in pairs(b) do

 a["Skybox"..v]="rbxassetid://518936297"

 end

print("Music executed!")

s = Instance.new("Sound")

s.Name = "Music"

s.SoundId = "http://www.roblox.com/asset/?id=517931264" --Put the id into there.

s.Looped = true

s.Pitch = 1 --You can edit these settings.

s.Volume = 1 --You can edit these settings.

s.archivable = false
