game.Workspace.GameFunctions.ClientEvents.addThirst:FireServer(100)

game.Workspace.GameFunctions.ClientEvents.EatPlant:FireServer("Fern",100)

game.Workspace.GameFunctions.UpdateDinoDNADS:InvokeServer(50)

while wait() do
game.Workspace.GameFunctions.AddHealth:InvokeServer(21e8)
end

game.Workspace.GameFunctions.GrowPlayer:InvokeServer()

game.Workspace.GameFunctions.ClientEvents.ChangeDinosaur:FireServer("FULL DINOSAUR NAME")

game.Workspace.GameFunctions.UpdateObtainedDinosDS:InvokeServer("LIMITED DINO HERE")

game.Workspace.GameFunctions.ClientEvents.SetDaysSurvived:FireServer(666)

game.Workspace.GameFunctions.ClientEvents.GrownDinosaur:FireServer(3)