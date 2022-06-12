local hub = game.CoreGui.skryptec_hub
local dmbottom = hub.DeadMistBottomFrame
local dmtypee = dmbottom.DMType.Text

print("Currently defect")
game.Workspace.ServerStorageRequest.KickSpecPlayer:InvokeServer(dmtypee)
