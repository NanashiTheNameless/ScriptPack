local Player = game:GetService("Players").LocalPlayer
game:GetService("RunService").Stepped:connect(function()
for i,v in pairs (game:GetService("Players"):GetChildren()) do
if v.TeamColor ~= Player.TeamColor and v.Name ~= Player.Name then
v.Character.HumanoidRootPart.Size = Vector3.new(70,70,70)
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
v.Character.HumanoidRootPart.Transparency = 0.7
elseif v.TeamColor == Player.TeamColor and v.Name ~= Player.Name then
v.Character.HumanoidRootPart.Size = Vector3.new(0,0,0)
v.Character.HumanoidRootPart.Transparency = 1
end
end
end)