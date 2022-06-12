for i, v in pairs(game.Players:GetPlayers()) do
if v.Character then
v.Character:BreakJoints()
end
wait()
end