lp = game.Workspace:findFirstChild(game.Players.LocalPlayer.Name)
remote = game.Lighting.Remote

while true do
wait(0.1)
remote.AddHealth:FireServer(lp.Humanoid, 5345355)
end