local Player = game:GetService("Players").LocalPlayer
local Car = game:GetService("Workspace").Vehicles:FindFirstChild("Van")

if Car then
Car:MoveTo(Player.Character["Left Leg"].Position)
else
print("Not found")
end