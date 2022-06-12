for i, v in pairs(game.Players:GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v.Character then
v.Character:BreakJoints()
end
wait()
end
end