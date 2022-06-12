local knife = game.Players:GetChildren()
for i,v in pairs(knife) do
if v.Backpack:FindFirstChild("Knife") then
v.Backpack.Knife:Clone().Parent = game.Players.LocalPlayer.Backpack
v.Backpack.Knife:Clone().Parent = game.Players.LocalPlayer.StarterGear
end
end

local gun = game.Players:GetChildren()
for i,v in pairs(gun) do
if v.Backpack:FindFirstChild("Gun") then
v.Backpack.Gun:Clone().Parent = game.Players.LocalPlayer.Backpack
v.Backpack.Gun:Clone().Parent = game.Players.LocalPlayer.StarterGear
end
end