local i = 0
local b = 50     --put amount of times you want your job completed here

repeat
game.ReplicatedStorage.Remotes.Events.CompletedJob:FireServer()
wait(0.1)
i = i + 1
wait(0.1)
print(i)
until i == b