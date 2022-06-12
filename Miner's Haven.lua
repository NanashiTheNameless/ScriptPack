for _,v in pairs(game.Workspace:GetChildren()) do
if string.match(v.Name, "DiamondCrate") or string.match(v.Name, "ResearchCrate") or string.match(v.Name, "GoldenCrate") or string.match(v.Name, "ShadowCrate") or string.match(v.Name, "CrystalCrate") then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(math.random(0,0),0,math.random(0,0))
end
end