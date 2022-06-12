parts = game.Workspace:GetChildren()
paintcolour = "Really black" -- Any official brickcolor name.
cars = game.ReplicatedStorage.VehicleLibrary.Cars:GetChildren()

for i, v in pairs(parts) do
	for g, x in pairs (cars) do
		if v.Name == x.Name then
			if v:FindFirstChild("Core") ~= nil then
				print(v.Name)
				game.ReplicatedStorage.Events.Vehicle.CustomizeCar:FireServer(v.Core.VehicleSeat, "Paint", paintcolour, true)
			end
		end
	end
end

