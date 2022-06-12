CAR = 'Sports Car'

game.ReplicatedStorage.Events.CarShopGiver:FireServer(CAR)
wait()
game.ReplicatedStorage.Events.ToolRequests:FireServer('CarSpawner', 'CarBuyingGui')