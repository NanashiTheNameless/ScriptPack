function Ignite(Part)
	if Part.Anchored == true and Part.Name == "Base" then return end
	if Part:FindFirstChild("Fire") == nil then
		Part.Anchored = false
		local Fire = Instance.new("Fire")
		Fire.Heat = 0
		Fire.Size = 5
		Fire.Parent = Part
		Part:BreakJoints()
		Part.Touched:connect(function(Hit) Ignite(Hit) end)
		Part.BrickColor = BrickColor.new("Really black")
	end
end


for i = 1, 1000 do
	local Source = Workspace.yfc.Head
	local Fireball = Instance.new("Part", Workspace)
	Fireball.Name = "Fireball"
	Fireball.CanCollide = false
	Fireball.TopSurface = 0
	Fireball.BottomSurface = 0
	Fireball.FormFactor = "Custom"
	Fireball.Shape = "Ball"
	Fireball.Size = Vector3.new(5, 5, 5)
	Fireball.CFrame = Source.CFrame * CFrame.new(0, 0, -10)
	local Velocity = Instance.new("BodyVelocity")
	Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	Velocity.velocity = (Source.CFrame.lookVector * 100) + Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	Velocity.Parent = Fireball
	Ignite(Fireball)
	Fireball.BrickColor = BrickColor.new("Really red")
	coroutine.wrap(function() wait(math.random(1, 9) / 10) for i = 0, 1, 0.1 do Fireball.Transparency = i wait() end Fireball.Fire.Enabled = false Fireball.Anchored = true wait(1) Fireball:Remove() end)()
	wait()
end