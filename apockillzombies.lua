for _,pl in pairs(workspace.Zombies:children()) do
for xxad,v in pairs(pl:children()) do
pcall(function() game.Lighting.Remote.DamageZombie:FireServer(v.Humanoid,100) end)
end
end