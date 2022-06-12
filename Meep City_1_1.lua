game.ReplicatedStorage.PlayerData["YOURIDHERE"].PLUS.Value = true
game.ReplicatedStorage.PlayerData["YOURIDHERE"].ChalkPass.Value = true

while wait(0.1) do
game.ReplicatedStorage.Connection:InvokeServer(49)
end