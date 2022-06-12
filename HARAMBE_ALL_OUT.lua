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