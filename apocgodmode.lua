local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apoctypee = apocbottom.ApocType.Text

for i,v in pairs(game.Players:GetPlayers()) do
gitPlayer = game.Workspace:FindFirstChild(apoctypee)
while wait() do
game.Lighting.Remote.AddHealth:FireServer(gitPlayer.Humanoid, 5000000)
end
end
