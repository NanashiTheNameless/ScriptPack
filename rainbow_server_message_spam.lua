--replace [MESSAGE HERE] with whatever you like and watch the rainbow ;)

game:GetService("RunService").Stepped:connect(function()
Colors = {"Blue", "Green", "Red"} for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, Colors[math.random(1, #Colors)], "MESSAGE HERE") end
end)