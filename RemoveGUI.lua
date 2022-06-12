for i,v in pairs(game.Players:GetPlayers()) do
for o,p in pairs(v.PlayerGui:GetChildren()) do
if p.ClassName == "ScreenGui" then
p:Remove()
end
end
end