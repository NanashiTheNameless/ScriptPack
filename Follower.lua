game:GetService("RunService"):BindToRenderStep("ew", 0, function()
for i,v in pairs(game.Players:GetChildren()) do
v.Character.Humanoid:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end
end)