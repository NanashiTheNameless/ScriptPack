for _,plr in pairs(game.Players:GetChildren()) do
game.ReplicatedStorage.RemoteFunctionz.Environment.PlaySound:FireServer(SONGIDHERE, plr.Character.Head, 1, 1, 160)
end