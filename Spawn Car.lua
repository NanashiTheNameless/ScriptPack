local Player = game:GetService("Players").LocalPlayer
local Car = game:GetService("Workspace").Vehicles:FindFirstChild("CAR")

if Car then
Car:MoveTo(Player.Character.Torso.Position+Vector3.new(0,0,20))
else
print("Not found")
end
