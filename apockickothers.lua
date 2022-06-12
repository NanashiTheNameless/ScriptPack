local skrypt = getrenv()["_G"]

for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == game.Players.LocalPlayer.Name then
print("aint kicking myself, buddy")
else
wait(.01)
skrypt.Destruct(v)
end
end