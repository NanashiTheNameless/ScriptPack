local Message = "MessageHere" -- Change to the desired message to send

for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'Green', Message) end