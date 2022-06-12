while wait(1) do


for _,v in pairs(game.Workspace:GetChildren()) do



if string.match(v.Name, "DiamondCrate") or string.match(v.Name, "ResearchCrate") or string.match(v.Name, "GoldenCrate") or string.match(v.Name, "CrystalCrate") or string.match(v.Name, "GiftCrate") or string.match(v.Name, "ExecutiveCrate") or string.match(v.Name, "MegaPumpkin") or string.match(v.Name, "Pumpkin")then



v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(math.random(0,0),0,math.random(0,0))



for _,v in pairs(game.Workspace.Shadows:GetChildren()) do



if string.match(v.Name, "ShadowCrate") then



v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(math.random(0,0),0,math.random(0,0))



v.CanCollide = false



end



end



end



end



game.Players.LocalPlayer.Clovers.Value = game.Players.LocalPlayer.Clovers.Value +1



game.Players.LocalPlayer.TwitchPoints.Value = game.Players.LocalPlayer.TwitchPoints.Value +1



game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 80



game.Players.LocalPlayer.Character.Humanoid.JumpPower = 180

end