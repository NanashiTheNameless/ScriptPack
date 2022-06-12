--This will probably make the server unplayable for you, but after executing this once and rejoining to another server all cars will be unlocked.

cars = game.ReplicatedStorage.VehicleLibrary.Cars:GetChildren()

for i, v in pairs (workspace.CarShops:GetChildren()) do
	if v.Name == "Car Shop" then
		for g, x in pairs (cars) do
			print("Spawning a "..x.Name)
			game.ReplicatedStorage.Events.Vehicle.SpawnCar:FireServer(x.Name, {nil}, v)
		end
	end
end
