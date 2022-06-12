--Aperture Science's Jetboots, by madiik
plyr = game.Players.LocalPlayer
char = plyr.Character
mouse = plyr:GetMouse()
isMouseButton1Down = false
t = Instance.new("HopperBin", plyr.Backpack)
t.Name = "Aperture Science"
limit = 0
limit2 = 0

boot = Instance.new("Part", char)
boot.FormFactor = "Custom"
boot.Size = Vector3.new(1.1, 1.1, 1.1)
boot.BrickColor = BrickColor.new("White")
boot.CanCollide = false
boot.BottomSurface = 0
boot.TopSurface = 0
f = Instance.new("Fire", boot)
f.Enabled = false
f.Size = 1
f.Heat = 1000
w = Instance.new("Weld", boot)
w.Part0 = boot
w.Part1 = char["Left Leg"]
w.C0 = CFrame.new(0, -0.6, 0) * CFrame.Angles(math.pi, 0, 0)
boot2 = Instance.new("Part", char)
boot2.FormFactor = "Custom"
boot2.Size = Vector3.new(1.1, 1.1, 1.1)
boot2.BrickColor = BrickColor.new("White")
boot2.CanCollide = false
boot2.BottomSurface = 0
boot2.TopSurface = 0
f2 = Instance.new("Fire", boot2)
f2.Enabled = false
f2.Size = 1
f2.Heat = 1000
w2 = Instance.new("Weld", boot2)
w2.Part0 = boot2
w2.Part1 = char["Right Leg"]
w2.C0 = CFrame.new(0, -0.6, 0) * CFrame.Angles(math.pi, 0, 0)


t.Selected:connect(function(mouse)
	gyro = Instance.new("BodyGyro", char.Torso)
gyro.maxTorque = Vector3.new(1e10,1e10,1e10)
gyro.P = 1e6

mover = Instance.new("BodyVelocity", char.Torso)
mover.maxForce = Vector3.new(1e5,1e5,1e5)
mover.P = 1e3
mover.velocity = Vector3.new(0, 0, 0)

coroutine.resume(coroutine.create(function()
	while wait() do
	if isMouseButton1Down then
		coroutine.wrap(function()
					if limit < 50 then 
		for i = 0, 50 do
mover.velocity = mouse.Hit.lookVector * i
game:service'RunService'.Stepped:wait()
limit = limit + 1
		end
					end
					end)()
mover.velocity = mouse.Hit.lookVector * 50
	for i = 0, 76, 2 do
			if limit2 < 76 then
gyro.cframe = mouse.Hit * CFrame.Angles(-math.rad(i),0,0)
game:service'RunService'.Stepped:wait()
limit2 = limit2 + 2
end
	end
	
	gyro.cframe = mouse.Hit * CFrame.Angles(-math.rad(80),0,0)
	game:service'RunService'.Stepped:wait()
	else
		mover.velocity = Vector3.new(0, 0, 0)
		gyro.cframe = mouse.Hit * CFrame.Angles(0, 0, 0)
		end
	end
	end))


	mouse.Button1Down:connect(function()
		isMouseButton1Down = true
		f.Enabled = true
		f2.Enabled = true
		print'Pressed'
	end)
	mouse.Button1Up:connect(function()
		isMouseButton1Down = false
		f.Enabled = false
		f2.Enabled = false
	limit = 0
	limit2 = 0
		print'Released'
	end)
end)

t.Deselected:connect(function(mouse)
	isMouseButton1Down = false
	gyro:Destroy()
	mover:Destroy()
	limit = 0
	limit2 = 0
end)


		