local Player = game:GetService('Players').LocalPlayer
local Car = game:GetService("Workspace").Vehicles:FindFirstChild('Car')
if Car then
game:GetService('Lighting').Remote.SetCFrame:FireServer(Car, Player.Character.Head.CFrame + Vector3.new(0,-4,15));
else
warn('Cannot find the specified Car.')
end