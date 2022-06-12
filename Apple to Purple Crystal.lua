--Put fruits to sell into sell bin then they'll sell as purple crystals after running this
local desiredFruit = "Purple Crystal"
for i, v in pairs(game.Workspace.Fruits:GetChildren()) do
v.Tooltip.Value = desiredFruit
v.Name = desiredFruit
v:Clone().Parent = game.Workspace.Fruits
end