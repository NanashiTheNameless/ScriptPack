local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apoctypee = apocbottom.ApocType.Text

gitPlayer = game.Workspace:FindFirstChild(apoctypee)
game.Lighting.Remote.AddHealth:FireServer(gitPlayer.Humanoid, -5000000)