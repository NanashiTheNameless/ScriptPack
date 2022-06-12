local skrypt = getrenv()["_G"]

for i,v in pairs(game.Workspace["Anchored Objects"]:GetChildren()) do
skrypt.Destruct(v)
end