while wait() do
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name == game.Players.LocalPlayer.Name then
print("Killing others")
else
getPlayer = game.Workspace:FindFirstChild(v.Name)
wait(.01)
game.Lighting.Remote.AddHealth:FireServer(getPlayer.Humanoid, -5345355)
end
end
end