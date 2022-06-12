while wait(2) do
for _,v in pairs(game.Workspace:GetChildren()) do
if string.match(v.Name, "DiamondCrate") or string.match(v.Name, "ResearchCrate") or string.match(v.Name, "GoldenCrate") or string.match(v.Name, "CrystalCrate") or string.match(v.Name, "Pumpkin") or string.match(v.Name, "MegaPumpkin") then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(0,0,0)
v.CanCollide = false
v.Transparency = 1
for _,v in pairs(game.Workspace.Shadows:GetChildren()) do
if string.match(v.Name, "ShadowCrate") or string.match(v.Name, "MegaPumpkin") then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(0,0,0)
v.CanCollide = false
v.Transparency = 1
end
end
end
end
end
