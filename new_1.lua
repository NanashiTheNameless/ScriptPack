local target = game.Players:FindFirstChild'NameHere'
local player = game.Players.LocalPlayer

for i,v in pairs(target.BackPack:GetChildren()) do
	v.Parent = player.BackPack
end
