while wait(90) do
hungv = game.Players.LocalPlayer:FindFirstChild("41773677").Hunger.Value
hungm = 100 - tonumber(hungv)
print("This is the eating script, I currently have "..hungv.." hunger, and I am missing "..hungm)
game.Workspace.GameFunctions.ClientEvents.EatPlant:FireServer(game.Workspace:FindFirstChild("Fern"), hungm)
thirv = game.Players.LocalPlayer:FindFirstChild("41773677").Thirst.Value
thirm = 100 - tonumber(thirv)
print("This is the eating script, I currently have "..thirv.." hunger, and I am missing "..thirm)
game.Workspace.GameFunctions.ClientEvents.addThirst:FireServer(thirm)
end
