Name = "VICTIM" --Player to steal from
for i, v in pairs(game.Players[Name].Backpack:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Backpack
wait()
end