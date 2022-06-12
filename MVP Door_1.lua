Door = game.Workspace.Lobby.MVPDoor
Door.Script:Remove()
a=Door.SurfaceGui.Frame
a.bt:Remove''
a.TextLabel.Text =  'Just Got Hacked By'..game.Players.LocalPlayer.Name
a.TextLabel.TextLabel.Text = 'Door unlocked by '..game.Players.LocalPlayer.Name
for i,v in pairs(a.TextLabel.TextLabel:children'') do
v.Text = 'MVP Door Unlocked'
end