local skrypt = getrenv()["_G"]

for i,v in pairs(game.Workspace.SpawnLoot:GetChildren()) do
skrypt.Destruct(v)
end