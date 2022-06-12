for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == game.Players.LocalPlayer.Name then
print'nope'
else
wait(.01)
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), v.Name)
end
end