local hub = game.CoreGui.skryptec_hub
local dmbottom = hub.DeadMistBottomFrame
local dmtypee = dmbottom.DMType.Text

for i=1,100,1 do
game.Workspace.ServerStorageRequest.Damage:InvokeServer(game.Players[dmtypee].Character.Humanoid, i, game.Players.LocalPlayer.Character.Torso.Position)
end