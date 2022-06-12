rem = game.Lighting.Remote
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
rem.AddHealth:FireServer(v.Character.Humanoid, -100)
end
end