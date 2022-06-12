for i = 1, 10 do
for i, v in pairs(game.Workspace:GetChildren()) do
Instance.new("Explosion", v)
end
wait(0.1)
end
for i, v in pairs(game.Players:GetPlayers()) do
local plr = v.Character.Humanoid
plr.Health = 0
end