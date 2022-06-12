-- Ultimate God Mode
STAMINA = true
GETPLAYER = game.Workspace:FindFirstChild(game.Workspace.HillaryAssassination.Name)
while wait() do
game.Lighting.Remote.AddHealth:FireServer(GETPLAYER.Humanoid, 999999)
game.Players.LocalPlayer.playerstats.Hunger.Value = 100
game.Players.LocalPlayer.playerstats.Thirst.Value = 100
if STAMINA == true then
game.Players.LocalPlayer.Backpack.GlobalFunctions.Stamina.Value = 100
end
end