--Replace [Green/Blue/Red/Yellow] with only one of those colours!

for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'Green/Blue/Red/Yellow', "Message Here") end