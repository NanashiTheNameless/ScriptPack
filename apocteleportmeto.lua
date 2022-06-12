local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apoctypee = apocbottom.ApocType.Text

gitPlayer = apoctypee
game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("Me To", math.floor(tick() % 1 * 100000), gitPlayer)