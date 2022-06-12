-- TP All Cars
for get, Car in pairs(workspace.Vehicles:GetChildren()) do
if Car.Name == Firetruck.Name then
Car:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + Vector3.new(math.random(0,20),0,math.random(0,20)))
end
end