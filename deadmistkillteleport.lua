local hub = game.CoreGui.skryptec_hub
local dmbottom = hub.DeadMistBottomFrame
local dmtypee = dmbottom.DMType.Text

player = game.Players[dmtypee].Name
lclplayer = game.Players.LocalPlayer.Name
v = game.Workspace[player..tostring("'s remains")]

for i=1,100,1 do
game.Workspace.ServerStorageRequest.Damage:InvokeServer(player.Character.Humanoid, i, game.Players.LocalPlayer.Character.Torso.Position)
end
wait(2)
v:MoveTo(game.Workspace.lclplayer.Torso.Position)