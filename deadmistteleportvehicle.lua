local hub = game.CoreGui.skryptec_hub
local dmbottom = hub.DeadMistBottomFrame
local dmtypee = dmbottom.DMType.Text

daplayer = game.Players.LocalPlayer.Name

v = game.Workspace.gameSpawns.vehicals[dmtypee]

v:MoveTo(game.Workspace.daplayer.Head.Position)