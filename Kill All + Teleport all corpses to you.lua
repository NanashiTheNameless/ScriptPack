for _, player in pairs(game.Players:GetChildren()) do
if player.Name ~= game.Players.LocalPlayer.Name then
workspace.Remote.Damage:FireServer(workspace[player.Name].Humanoid, 0)
end
end
wait(6)
for _, corpse in pairs(workspace:GetChildren()) do
if corpse.Name == "Corpse" then
corpse:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end
end