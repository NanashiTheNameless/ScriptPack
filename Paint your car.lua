--The script below will only work when sitting in your car, as that is the only way to index which particular car is yours.
--WHILST SITTING...

colour = "Really black" -- This can be any official BrickColor name.
mycar = game.Players.LocalPlayer.Values.References.CarSeat.Value
game.ReplicatedStorage.Events.Vehicle.CustomizeCar:FireServer(mycar, "Paint", colour, true)

--Little bit buggy, it seems to only work whilst you're still sitting.