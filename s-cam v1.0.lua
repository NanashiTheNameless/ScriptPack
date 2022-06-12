player = game.Players.NAME
 
player.Character:remove()
player.Character = nil
 
game:service("Players").PlayerRemoving:connect(function(p)
Workspace.CurrentCamera.CameraType = "Fixed"
if p == player then
player.Character = workspace
end end) 
