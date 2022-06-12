local weapons = {"Remington 870", "M9", "AK-47", "M4A1"}
for i, v in pairs(game.Workspace["Prison_ITEMS"].giver:GetChildren()) do
for j, k in pairs(weapons) do
if v.Name == k then
v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
end
end
end