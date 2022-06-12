--This is an imagination script, you have to run it everytime you die. Cause it is in your character.
char = game.Players.LocalPlayer.Character
head = game.Players.LocalPlayer.Character.Head
game.Players.LocalPlayer.Chatted:connect(function(msg)
	if msg:lower():match(string.lower("IMAGINATION")) or msg:upper():match(string.upper("IMAGINATION")) then
		coroutine.wrap(function()
for angle = 0, 180, 4 do
	local p = Instance.new('Part', char)
	p.FormFactor = "Custom"
	p.Size = Vector3.new(0.4, 0.6, 0.4)
	p.TopSurface = 0
	p.BottomSurface = 0
	p:BreakJoints()
	p.Anchored = true
	p.Name = "RAINBOW"
	p.CanCollide = false
	p.BrickColor = BrickColor.Red()
	p.CFrame = head.CFrame               --Start at the center of the circle
	         * CFrame.Angles(math.rad(angle), 0, math.pi/2)--Rotate the brick
	         * CFrame.new(0, 0, -5.8) 
	wait()
end
end)()
coroutine.wrap(function()
for angle = 0, 180, 4 do
	local p = Instance.new('Part', char)
	p.FormFactor = "Custom"
	p.Size = Vector3.new(0.4, 0.6, 0.4)
	p.TopSurface = 0
	p.BottomSurface = 0
	p:BreakJoints()
	p.Anchored = true
	p.Name = "RAINBOW"
	p.CanCollide = false
	p.BrickColor = BrickColor.new("Br. yellowish orange")
	p.CFrame = head.CFrame               --Start at the center of the circle
	         * CFrame.Angles(math.rad(angle), 0, math.pi/2)--Rotate the brick
	         * CFrame.new(0, 0, -5.4) 
	wait()
end
end)()
coroutine.wrap(function()
for angle = 0, 180, 4 do
	local p = Instance.new('Part', char)
	p.FormFactor = "Custom"
	p.Size = Vector3.new(0.4, 0.6, 0.4)
	p.TopSurface = 0
	p.BottomSurface = 0
	p:BreakJoints()
	p.Anchored = true
	p.CanCollide = false
	p.Name = "RAINBOW"
	p.BrickColor = BrickColor.Yellow()
	p.CFrame = head.CFrame               --Start at the center of the circle
	         * CFrame.Angles(math.rad(angle), 0, math.pi/2)--Rotate the brick
	         * CFrame.new(0, 0, -5) 
	wait()
end
end)()
coroutine.wrap(function()
for angle = 0, 180, 4 do
	local p = Instance.new('Part', char)
	p.FormFactor = "Custom"
	p.Size = Vector3.new(0.4, 0.6, 0.4)
	p.TopSurface = 0
	p.BottomSurface = 0
	p:BreakJoints()
	p.Anchored = true
	p.Name = "RAINBOW"
	p.CanCollide = false
	p.BrickColor = BrickColor.Green()
	p.CFrame = head.CFrame               --Start at the center of the circle
	         * CFrame.Angles(math.rad(angle), 0, math.pi/2)--Rotate the brick
	         * CFrame.new(0, 0, -4.6) 
	wait()
end
end)()
coroutine.wrap(function()
for angle = 0, 180, 4 do
	local p = Instance.new('Part', char)
	p.FormFactor = "Custom"
	p.Size = Vector3.new(0.4, 0.6, 0.4)
	p.TopSurface = 0
	p.BottomSurface = 0
	p:BreakJoints()
	p.Name = "RAINBOW"
	p.Anchored = true
	p.CanCollide = false
	p.BrickColor = BrickColor.new("Cyan")
	p.CFrame = head.CFrame               --Start at the center of the circle
	         * CFrame.Angles(math.rad(angle), 0, math.pi/2)--Rotate the brick
	         * CFrame.new(0, 0, -4.2) 
	wait()
end
end)()
for angle = 0, 180, 4 do
	local p = Instance.new('Part', char)
	p.FormFactor = "Custom"
	p.Size = Vector3.new(0.4, 0.6, 0.4)
	p.TopSurface = 0
	p.Name = "RAINBOW"
	p.BottomSurface = 0
	p:BreakJoints()
	p.Anchored = true
	p.CanCollide = false
	p.BrickColor = BrickColor.new("Royal purple")
	p.CFrame = head.CFrame               --Start at the center of the circle
	         * CFrame.Angles(math.rad(angle), 0, math.pi/2)--Rotate the brick
	         * CFrame.new(0, 0, -3.8) 
	wait()
end
wait(4)
for i,v in pairs(char:children()) do
	if v:IsA("Part") and v.Name == "RAINBOW" then
		v:Destroy()
	end
			tick()
end

	end
	end)