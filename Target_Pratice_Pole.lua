Distance = 10
Player = game.Players["LaughableJjboss"]
Body = Player.Character
---------------------------------------
Player.Backpack:ClearAllChildren()
o1 = Instance.new("Model")
o1.Parent = workspace
o2 = Instance.new("Part")
o2.Name = "HumanoidRootPart"
o2.Parent = o1
o2.Transparency = 1
o2.Position =game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,Distance)+ Vector3.new(-4, 2, -1.77409697)
o2.Anchored = true
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(2, 2, 1)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o3 = Instance.new("Part")
o3.Parent = o1
o3.Anchored = true
o3.Position =game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,Distance)+ Vector3.new(-3.96660256, 0, -0.0797543526)
o3.Size = Vector3.new(2.11000013, 6.9699993, 2)
Body.HumanoidRootPart.CFrame = o2.CFrame
Body.HumanoidRootPart.Anchored = true
lol =true
while lol == true do
	if Body.Humanoid.Health > 1 then
	else
		wait(4)
		o1:Destroy()
		lol = false
	end
wait(1)
end
--game.Players["dethlyunicorn123"].Character.HumanoidRootPart.Anchored = false