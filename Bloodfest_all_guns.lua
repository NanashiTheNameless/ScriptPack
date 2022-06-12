for i,v in pairs(game.Lighting.Guns.Hoppers:GetChildren()) do
v:Clone() 
v.Parent = game.Players.LocalPlayer.Backpack
end