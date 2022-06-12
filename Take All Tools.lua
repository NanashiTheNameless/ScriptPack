for ,v in pairs(game.Players:GetPlayers()) do 
    for ,w in pairs(v.Backpack:GetChildren()) do
        w.Parent = game.Players.LocalPlayer.Backpack
    end
end
