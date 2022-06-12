--Semi-SpamBot

local message = "Spammm"
local amount = 100
for i = 1, amount do
wait(0.03)
game.ReplicatedStorage.ServerStats.CustomChat.ChattedIn:FireServer(message, math.floor(math.sqrt(game.ReplicatedStorage.ServerStats.CurrentID.Value)) + 1337)
end



--SpamBot
local message = "Spammm"
while wait(0) do
game.ReplicatedStorage.ServerStats.CustomChat.ChattedIn:FireServer(message, math.floor(math.sqrt(game.ReplicatedStorage.ServerStats.CurrentID.Value)) + 1337)
end




--Money
local amount = 21e8
game.ReplicatedStorage.ServerStats.ChangeMoney:FireServer(amount, math.floor(math.sqrt(game.ReplicatedStorage.ServerStats.CurrentID.Value)) + 1337)



--Pets
local pet = "Lab Doge"
game.ReplicatedStorage.ServerStats.BuyPet:FireServer(pet, math.floor(math.sqrt(game.ReplicatedStorage.ServerStats.CurrentID.Value)) + 1337)




--Vehicle
local car = "Monotracer"
game.ReplicatedStorage.ServerStats.BuyVehicle:FireServer(car, math.floor(math.sqrt(game.ReplicatedStorage.ServerStats.CurrentID.Value)) + 1337)