game:GetService("RunService").Stepped:connect(function()
for i, v in pairs(game.Players:GetChildren()) do
v.Character.Humanoid:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
v.Character.Humanoid.PlatformStand = math.random() > 0.5 and true or false
end
end)

--made by raspberry pi
--edited by customality