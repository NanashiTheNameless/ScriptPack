local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apoctypee = apocbottom.ApocType.Text

while wait() do
gitPlayer = game.Workspace:FindFirstChild(apoctypee)
game.Lighting.Remote.AddHealth:FireServer(gitPlayer.Humanoid, -5000000)
end