Health = 5500
MaxHealth = 5500
ToughnessMinorDamage = 400
ToughnessMajorDamage = 600

DriftAcceleration = -0.001
DriftSteerDifficulty = 0.025
DriftSteerPower = 25

Acceleration = 0.003
TopSpeed = 186
Deceleration = 0.0075
BrakePower = 0.01

SteerDifficulty = 0.025
SteerPower = 20

TireFriction = 0.5
TireElasticity = 1

MasterColor = BrickColor.random()
Wrecked = false

Vehicle = Instance.new("Model")
Vehicle.Name = "Car"
Vehicle.Parent = Workspace

Base = Instance.new("Part")
Base.Name = "VehicleBase"
Base.BrickColor = MasterColor
Base.TopSurface = "Smooth"
Base.BottomSurface = "Smooth"
Base.FormFactor = "Custom"
Base.Size = Vector3.new(8, 1, 17)
Base.Friction = 1
Base.Elasticity = 0
Base.Parent = Vehicle
Thrust = Instance.new("BodyVelocity")
Thrust.P = 100
Thrust.maxForce = Vector3.new(math.huge, 0, math.huge)
Thrust.velocity = Vector3.new()
Thrust.Parent = Base
Steer = Instance.new("BodyGyro")
Steer.maxTorque = Vector3.new(0, math.huge, 0)
Steer.cframe = CFrame.new()
Steer.P = 7500
Steer.Parent = Base
Instance.new("BodyForce", Base).force = Vector3.new(0, -2000, 0)

Seat = Instance.new("VehicleSeat")
Seat.CanCollide = false
Seat.MaxSpeed = 0
Seat.Torque = 0
Seat.HeadsUpDisplay = false
Seat.BrickColor = BrickColor.new("Black")
Seat.TopSurface = "Smooth"
Seat.BottomSurface = "Smooth"
Seat.Size = Vector3.new(2, 1, 2)
Seat.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Name = "Weld"
Weld.Parent = Seat
Weld.Part0 = Base
Weld.Part1 = Seat
Weld.C0 = CFrame.new(-2.5, 0.375, 0.25)

Part = Instance.new("Part")
Part.Name = "Front Left Seat Back"
Part.BrickColor = BrickColor.new("Black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 3, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 1)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-2.5, 1.5, 1.25)

Part = Instance.new("Part")
Part.Name = "Front Left Seat Headrest 1"
Part.BrickColor = BrickColor.new("Black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-2.5, 3, 1.25)

Part = Instance.new("Part")
Part.Name = "Front Left Seat Headrest 2"
Part.BrickColor = BrickColor.new("Black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.9, 1.1, 1)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-2.5, 3.8, 1.25)

Seat2 = Instance.new("VehicleSeat")
Seat2.Name = "VehicleSeat2"
Seat2.CanCollide = false
Seat2.MaxSpeed = 0
Seat2.Torque = 0
Seat2.HeadsUpDisplay = false
Seat2.BrickColor = BrickColor.new("Black")
Seat2.TopSurface = "Smooth"
Seat2.BottomSurface = "Smooth"
Seat2.Size = Vector3.new(2, 1, 2)
Seat2.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Seat2
Weld.Part0 = Base
Weld.Part1 = Seat2
Weld.C0 = CFrame.new(2.5, 0.375, 0.5)

Part = Instance.new("Part")
Part.Name = "Front Right Seat Back"
Part.BrickColor = BrickColor.new("Black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 3, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 1)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(2.5, 1.5, 1.25)

Part = Instance.new("Part")
Part.Name = "Front Right Seat Headrest 1"
Part.BrickColor = BrickColor.new("Black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(2.5, 3, 1.25)

Part = Instance.new("Part")
Part.Name = "Front Right Seat Headrest 2"
Part.BrickColor = BrickColor.new("Black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.9, 1.1, 1)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(2.5, 3.8, 1.25)

Part = Instance.new("Part")
Part.Name = "Front Right Bumper"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 3)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 0.95)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5, 0, -7.075)

Part = Instance.new("Part")
Part.Name = "Front Left Bumper"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 3)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 0.95)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5, 0, -7.075)

Part = Instance.new("Part")
Part.Name = "Right Skirt 1"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 9)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 0.975)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(4.5, 0, 2)

Part = Instance.new("Part")
Part.Name = "Right Skirt 2"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 9)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.5, 0.975)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5.5, -0.25, 2)

Part = Instance.new("Part")
Part.Name = "Left Skirt 1"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 9)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 0.975)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-4.5, 0, 2)

Part = Instance.new("Part")
Part.Name = "Left Skirt 2"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 9)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.5, 0.975)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5.5, -0.25, 2)

Part = Instance.new("Part")
Part.Name = "VehicleEngine"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(12, 1, 3)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 1, -7)
coroutine.wrap(function(Part2)
	while true do
		if Driver ~= nil and Part2:FindFirstChild("Drive") == nil and Part2:FindFirstChild("Start") == nil and Health > 0 then
			local Sound1 = Instance.new("Sound")
			Sound1.Name = "Start"
			Sound1.SoundId = "http://www.roblox.com/Asset/?id=31245452"
			Sound1.Volume = 1
			Sound1.Pitch = 0.95
			Sound1.Parent = Part2
			Sound1:Play()
			wait(1)
			local Sound2 = Instance.new("Sound")
			Sound2.Name = "Drive"
			Sound2.SoundId = "http://www.roblox.com/Asset/?id=2766576"
			Sound2.Volume = 1
			Sound2.Pitch = 0
			Sound2.Looped = true
			Sound2.Parent = Part2
			Sound2:Play()
			while Driver ~= nil and Vehicle.Parent ~= nil and Health > 0 do
				Sound2.Pitch = 0.05 + (math.abs(ThrottlePercent) * 0.2)
				wait()
			end
			coroutine.wrap(function()
				for i = Sound1.Pitch, 0, -0.075 do
					Sound1.Pitch = i
					wait()
				end
			end)()
			for i = Sound2.Pitch, 0, -0.01 do
				Sound2.Pitch = i
				wait()
			end
			Sound1:Stop()
			Sound2:Stop()
			wait(0.25)
			Sound1:Remove()
			Sound2:Remove()
		end
		wait()
	end
end)(Part)

Part = Instance.new("Part")
Part.Name = "Grill"
Part.BrickColor = BrickColor.new("Medium stone grey")
Part.Reflectance = 0.2
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(4, 1, 2)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 2, -7.5)

Part = Instance.new("Part")
Part.Name = "Right Headlight"
Part.BrickColor = BrickColor.new("Institutional white")
Part.Transparency = 0.5
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(3, 1, 2)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(3.5, 2, -7.5)

Part = Instance.new("Part")
Part.Name = "Right Front Turn Signal"
Part.BrickColor = BrickColor.new("New Yeller")
Part.Transparency = 0.5
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 2)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5.5, 2, -7.5)

Part = Instance.new("Part")
Part.Name = "Left Headlight"
Part.BrickColor = BrickColor.new("Institutional white")
Part.Transparency = 0.5
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(3, 1, 2)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-3.5, 2, -7.5)

Part = Instance.new("Part")
Part.Name = "Left Front Turn Signal"
Part.BrickColor = BrickColor.new("New Yeller")
Part.Transparency = 0.5
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 2)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5.5, 2, -7.5)

Part = Instance.new("Part")
Part.Name = "Headlight Back"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(12, 1, 4)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 2, -4.5)

Part = Instance.new("WedgePart")
Part.Name = "Hood"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(12, 1, 6)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 3, -5.5)

Part = Instance.new("WedgePart")
Part.Name = "Front Well 1"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(12, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Wedge"
Mesh.Scale = Vector3.new(1, 0.5, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 1.25, -5.25) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)

Part = Instance.new("WedgePart")
Part.Name = "Front Well 2"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(12, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Wedge"
Mesh.Scale = Vector3.new(1, 0.5, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 1.25, -2.75) * CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(180), 0)

Part = Instance.new("Part")
Part.Name = "Front Well 3"
Part.BrickColor = BrickColor.new("Black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(8, 1, 3)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 1, -4)

Part = Instance.new("Part")
Part.Name = "Front Left Roof Support"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 5, 1)
Part.CanCollide = false
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5.5, 4.75, -1.75) * CFrame.fromEulerAnglesXYZ(math.rad(25), 0, 0)

Part = Instance.new("Part")
Part.Name = "Front Right Roof Support"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 5, 1)
Part.CanCollide = false
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5.5, 4.75, -1.75) * CFrame.fromEulerAnglesXYZ(math.rad(25), 0, 0)

Part = Instance.new("Part")
Part.Name = "Front Window"
Part.BrickColor = BrickColor.new("Institutional white")
Part.Transparency = 0.75
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(10, 5, 1)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 4.75, -1.75) * CFrame.fromEulerAnglesXYZ(math.rad(25), 0, 0)

Part = Instance.new("Part")
Part.Name = "Roof"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(12, 1, 4)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 6.729, 0.855)

Part = Instance.new("Part")
Part.Name = "Dashboard Back"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(12, 4, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 1.5, -2.25)

Part = Instance.new("Part")
Part.Name = "Steeringwheel"
Part.BrickColor = BrickColor.new("Black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 2, 1)
Part.CanCollide = false
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(1.25, 1.25, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-2.5, 3, -1.5)

Part = Instance.new("Part")
Part.Name = "Steering Column"
Part.BrickColor = BrickColor.new("Black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 1)
Part.CanCollide = false
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-2.5, 2.95, -1.9)

Part = Instance.new("Part")
Part.Name = "Left Turn Signal Button"
Part.BrickColor = BrickColor.new("Bright green")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.5, 0.5, 0.5)
Part.CanCollide = false
Part.Parent = Vehicle
Instance.new("CylinderMesh", Part)
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-0.5, 2.5, -1.8) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
local Open = Instance.new("ClickDetector")
Open.Parent = Part
coroutine.wrap(function(Part2, Weld2)
	local SignalOn = false
	Open.MouseClick:connect(function()
		SignalOn = not SignalOn
		Part2.BrickColor = SignalOn == true and BrickColor.new("Institutional white") or BrickColor.new("Bright green")
		coroutine.wrap(function()
			if SignalOn == true then
				for i = 0, 0.1, 0.01 do
					Weld2.C1 = CFrame.new(0, i, 0)
					wait()
				end
				Weld2.C1 = CFrame.new(0, 0.1, 0)
			else
				for i = 0.1, 0, -0.01 do
					Weld2.C1 = CFrame.new(0, i, 0)
					wait()
				end
				Weld2.C1 = CFrame.new(0, 0, 0)
			end
		end)()
	end)
	local i = false
	coroutine.wrap(function()
		while true do
			i = not i
			wait(0.5)
		end
	end)()
	while true do
		if Vehicle:FindFirstChild("Left Front Turn Signal") ~= nil then
			if Vehicle["Left Front Turn Signal"]:FindFirstChild("Weld") == nil or SignalOn == false or i == false then
				Vehicle["Left Front Turn Signal"].Transparency = 0.5
			else
				Vehicle["Left Front Turn Signal"].Transparency = 0
			end
		end
		if Vehicle:FindFirstChild("Left Rear Turn Signal") ~= nil then
			if Vehicle["Left Rear Turn Signal"]:FindFirstChild("Weld") == nil or SignalOn == false or i == false then
				Vehicle["Left Rear Turn Signal"].Transparency = 0.5
			else
				Vehicle["Left Rear Turn Signal"].Transparency = 0
			end
		end
		wait()
	end
end)(Part, Weld)

Part = Instance.new("Part")
Part.Name = "Headlights Button"
Part.BrickColor = BrickColor.new("New Yeller")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.5, 0.5, 0.5)
Part.CanCollide = false
Part.Parent = Vehicle
Instance.new("CylinderMesh", Part)
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 2.5, -1.8) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
local Open = Instance.new("ClickDetector")
Open.Parent = Part
coroutine.wrap(function(Part2, Weld2)
	local HeadlightsOn = false
	Open.MouseClick:connect(function()
		HeadlightsOn = not HeadlightsOn
		Part2.BrickColor = HeadlightsOn == true and BrickColor.new("Institutional white") or BrickColor.new("New Yeller")
		coroutine.wrap(function()
			if HeadlightsOn == true then
				for i = 0, 0.1, 0.01 do
					Weld2.C1 = CFrame.new(0, i, 0)
					wait()
				end
				Weld2.C1 = CFrame.new(0, 0.1, 0)
			else
				for i = 0.1, 0, -0.01 do
					Weld2.C1 = CFrame.new(0, i, 0)
					wait()
				end
				Weld2.C1 = CFrame.new(0, 0, 0)
			end
		end)()
	end)
	while true do
		if Vehicle:FindFirstChild("Left Headlight") ~= nil then
			if Vehicle["Left Headlight"]:FindFirstChild("Weld") == nil or HeadlightsOn == false then
				Vehicle["Left Headlight"].Transparency = 0.5
			else
				Vehicle["Left Headlight"].Transparency = 0
			end
		end
		if Vehicle:FindFirstChild("Right Headlight") ~= nil then
			if Vehicle["Right Headlight"]:FindFirstChild("Weld") == nil or HeadlightsOn == false then
				Vehicle["Right Headlight"].Transparency = 0.5
			else
				Vehicle["Right Headlight"].Transparency = 0
			end
		end
		wait()
	end
end)(Part, Weld)

Part = Instance.new("Part")
Part.Name = "Right Turn Signal Button"
Part.BrickColor = BrickColor.new("Bright green")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.5, 0.5, 0.5)
Part.CanCollide = false
Part.Parent = Vehicle
Instance.new("CylinderMesh", Part)
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0.5, 2.5, -1.8) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
local Open = Instance.new("ClickDetector")
Open.Parent = Part
coroutine.wrap(function(Part2, Weld2)
	local SignalOn = false
	Open.MouseClick:connect(function()
		SignalOn = not SignalOn
		Part2.BrickColor = SignalOn == true and BrickColor.new("Institutional white") or BrickColor.new("Bright green")
		coroutine.wrap(function()
			if SignalOn == true then
				for i = 0, 0.1, 0.01 do
					Weld2.C1 = CFrame.new(0, i, 0)
					wait()
				end
				Weld2.C1 = CFrame.new(0, 0.1, 0)
			else
				for i = 0.1, 0, -0.01 do
					Weld2.C1 = CFrame.new(0, i, 0)
					wait()
				end
				Weld2.C1 = CFrame.new(0, 0, 0)
			end
		end)()
	end)
	local i = false
	coroutine.wrap(function()
		while true do
			i = not i
			wait(0.5)
		end
	end)()
	while true do
		if Vehicle:FindFirstChild("Right Front Turn Signal") ~= nil then
			if Vehicle["Right Front Turn Signal"]:FindFirstChild("Weld") == nil or SignalOn == false or i == false then
				Vehicle["Right Front Turn Signal"].Transparency = 0.5
			else
				Vehicle["Right Front Turn Signal"].Transparency = 0
			end
			if Vehicle:FindFirstChild("Right Rear Turn Signal") ~= nil then
				if Vehicle["Right Rear Turn Signal"]:FindFirstChild("Weld") == nil or SignalOn == false or i == false then
					Vehicle["Right Rear Turn Signal"].Transparency = 0.5
				else
					Vehicle["Right Rear Turn Signal"].Transparency = 0
				end
			end
		end
		wait()
	end
end)(Part, Weld)

Part = Instance.new("Part")
Part.Name = "Front Left Door"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 3, 4)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-6, 1.5, -2)
Weld.C1 = CFrame.new(-0.5, 0, -2)
local Open = Instance.new("ClickDetector")
Open.Parent = Part
coroutine.wrap(function(Weld2)
	local IsOpen = false
	local CanOpen = true
	Open.MouseClick:connect(function()
		if IsOpen == false and CanOpen == true then
			CanOpen = false
			IsOpen = true
			for i = 0, 1, 0.1 do
				Weld2.C1 = CFrame.new(Weld2.C1.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), 0)
				wait()
			end
			CanOpen = true
		elseif IsOpen == true and CanOpen == true then
			CanOpen = false
			IsOpen = false
			for i = 1, 0, -0.1 do
				Weld2.C1 = CFrame.new(Weld2.C1.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), 0)
				wait()
			end
			CanOpen = true
		end
	end)
end)(Weld)

Part = Instance.new("Part")
Part.Name = "Front Right Door"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 3, 4)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(6, 1.5, -2)
Weld.C1 = CFrame.new(0.5, 0, -2)
local Open = Instance.new("ClickDetector")
Open.Parent = Part
coroutine.wrap(function(Weld2)
	local IsOpen = false
	local CanOpen = true
	Open.MouseClick:connect(function()
		if IsOpen == false and CanOpen == true then
			CanOpen = false
			IsOpen = true
			for i = 0, 1, 0.1 do
				Weld2.C1 = CFrame.new(Weld2.C1.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * i), 0)
				wait()
			end
			CanOpen = true
		elseif IsOpen == true and CanOpen == true then
			CanOpen = false
			IsOpen = false
			for i = 1, 0, -0.1 do
				Weld2.C1 = CFrame.new(Weld2.C1.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * i), 0)
				wait()
			end
			CanOpen = true
		end
	end)
end)(Weld)

Part = Instance.new("Part")
Part.Name = "Rear Right Bumper"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 2)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 0.95)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5, 0, 10.55)

Part = Instance.new("Part")
Part.Name = "Rear Left Bumper"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 2)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 0.95)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5, 0, 10.55)

Part = Instance.new("Part")
Part.Name = "Rear Center Bumper"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(8, 1, 3)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 0, 10)

Part = Instance.new("Part")
Part.Name = "Rear Left Roof Support"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 3, 1)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5, 4.729, 2.355)

Part = Instance.new("Part")
Part.Name = "Rear Right Roof Support"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 4, 1)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5, 4.729, 2.355)

Part = Instance.new("Part")
Part.Name = "Rear Window"
Part.BrickColor = BrickColor.new("Institutional white")
Part.Transparency = 0.75
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(8, 3, 1)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 4.729, 2.355)

Part = Instance.new("Part")
Part.Name = "Center"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(12, 3.25, 1)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 1.625, 2.355)

Part = Instance.new("Part")
Part.Name = "Left Rear Wall"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 4, 4)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5.5, 2, 4.5)

Part = Instance.new("Part")
Part.Name = "Right Rear Wall"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 4, 4)
Part.Parent = Vehicle
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5.5, 2, 4.5)

Part = Instance.new("Part")
Part.Name = "Rear Left Well 1"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 2, 3)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1.25, 1)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5.5, 2.75, 8)

Part = Instance.new("Part")
Part.Name = "Rear Left Well 2"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 4, 2)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.875, 1)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5.5, 2.25, 10.5)

Part = Instance.new("Part")
Part.Name = "Rear Right Well 1"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 2, 3)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1.25, 1)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5.5, 2.75, 8)

Part = Instance.new("Part")
Part.Name = "Rear Right Well 2"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 4, 2)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.875, 1)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5.5, 2.25, 10.5)

Part = Instance.new("WedgePart")
Part.Name = "Rear Left Well 3"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Wedge"
Mesh.Scale = Vector3.new(1, 0.5, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5.5, 1.25, 6.75) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)

Part = Instance.new("WedgePart")
Part.Name = "Rear Right Well 3"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Wedge"
Mesh.Scale = Vector3.new(1, 0.5, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5.5, 1.25, 6.75) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)

Part = Instance.new("WedgePart")
Part.Name = "Rear Left Well 4"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Wedge"
Mesh.Scale = Vector3.new(1, 0.5, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5.5, 1.25, 9.25) * CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(180), 0)

Part = Instance.new("WedgePart")
Part.Name = "Rear Right Well 4"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Wedge"
Mesh.Scale = Vector3.new(1, 0.5, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5.5, 1.25, 9.25) * CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(180), 0)

Part = Instance.new("Part")
Part.Name = "Rear Left Well 5"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 3)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1.01, 1.01, 1.2)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-4.5, 1, 8)

Part = Instance.new("Part")
Part.Name = "Rear Right Well 5"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 3)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1.01, 1.01, 1.2)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(4.5, 1, 8)

Part = Instance.new("Part")
Part.Name = "Trunk"
Part.BrickColor = MasterColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(10, 4, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.875, 0.5)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(0, 0.5, 11)
Weld.C1 = CFrame.new(0, -1.75, -0.25)
local Open = Instance.new("ClickDetector")
Open.Parent = Part
coroutine.wrap(function(Weld2)
	local IsOpen = false
	local CanOpen = true
	Open.MouseClick:connect(function()
		if IsOpen == false and CanOpen == true then
			CanOpen = false
			IsOpen = true
			for i = 0, 1, 0.05 do
				Weld2.C1 = CFrame.new(Weld2.C1.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), 0, 0)
				wait()
			end
			Weld2.C1 = CFrame.new(Weld2.C1.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
			CanOpen = true
		elseif IsOpen == true and CanOpen == true then
			CanOpen = false
			IsOpen = false
			for i = 1, 0, -0.05 do
				Weld2.C1 = CFrame.new(Weld2.C1.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), 0, 0)
				wait()
			end
			Weld2.C1 = CFrame.new(Weld2.C1.p)
			CanOpen = true
		end
	end)
end)(Weld)

Part = Instance.new("Part")
Part.Name = "Left Brake Light"
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 0.01)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Vehicle.Trunk
Weld.Part1 = Part
Weld.C0 = CFrame.new(-4, 0.25, 0.25)
coroutine.wrap(function(Part2)
	while true do
		if Part2:FindFirstChild("Weld") == nil or IsBraking == false then
			Part2.Transparency = 0.75
			Part2.BrickColor = BrickColor.new("Dark red")
		else
			Part2.Transparency = 0
			Part2.BrickColor = BrickColor.new("Really red")
		end
		wait()
	end
end)(Part)

Part = Instance.new("Part")
Part.Name = "Left Rear Turn Signal"
Part.BrickColor = BrickColor.new("New Yeller")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.5, 1.5, 0.01)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5.25, 2.25, 11.5)

Part = Instance.new("Part")
Part.Name = "Right Brake Light"
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 1, 0.01)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Vehicle.Trunk
Weld.Part1 = Part
Weld.C0 = CFrame.new(4, 0.25, 0.25)
coroutine.wrap(function(Part2)
	while true do
		if Part2:FindFirstChild("Weld") == nil or IsBraking == false then
			Part2.Transparency = 0.75
			Part2.BrickColor = BrickColor.new("Dark red")
		else
			Part2.Transparency = 0
			Part2.BrickColor = BrickColor.new("Really red")
		end
		wait()
	end
end)(Part)

Part = Instance.new("Part")
Part.Name = "Right Rear Turn Signal"
Part.BrickColor = BrickColor.new("New Yeller")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(1, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0.5, 1.5, 0.01)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5.25, 2.25, 11.5)

Part = Instance.new("Part")
Part.Name = "Left Reverse Light"
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.5, 0.01)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Vehicle.Trunk
Weld.Part1 = Part
Weld.C0 = CFrame.new(-4, -0.5, 0.25)
coroutine.wrap(function(Part2)
	wait()
	while true do
		if Part2:FindFirstChild("Weld") == nil or ThrottlePercent >= 0 then
			Part2.Transparency = 0.5
			Part2.BrickColor = BrickColor.new("White")
		else
			Part2.Transparency = 0
			Part2.BrickColor = BrickColor.new("Institutional white")
		end
		wait()
	end
end)(Part)

Part = Instance.new("Part")
Part.Name = "Right Reverse Light"
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(2, 1, 1)
Part.Parent = Vehicle
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(1, 0.5, 0.01)
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Vehicle.Trunk
Weld.Part1 = Part
Weld.C0 = CFrame.new(4, -0.5, 0.25)
coroutine.wrap(function(Part2)
	wait()
	while true do
		if Part2:FindFirstChild("Weld") == nil or ThrottlePercent >= 0 then
			Part2.Transparency = 0.5
			Part2.BrickColor = BrickColor.new("White")
		else
			Part2.Transparency = 0
			Part2.BrickColor = BrickColor.new("Institutional white")
		end
		wait()
	end
end)(Part)

Part = Instance.new("Part")
Part.Name = "Rear Right Wheel"
Part.BrickColor = BrickColor.new("Really black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(3, 2, 3)
Part.Friction = TireFriction
Part.Elasticity = TireElasticity
Part.Parent = Vehicle
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5, 0, 8) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))

Part = Instance.new("Part")
Part.Name = "Rear Left Wheel"
Part.BrickColor = BrickColor.new("Really black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(3, 2, 3)
Part.Friction = TireFriction
Part.Elasticity = TireElasticity
Part.Parent = Vehicle
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5, 0, 8) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))

Part = Instance.new("Part")
Part.Name = "Front Right Wheel"
Part.BrickColor = BrickColor.new("Really black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(3, 2, 3)
Part.Friction = TireFriction
Part.Elasticity = TireElasticity
Part.Parent = Vehicle
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(5, 0, -4) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))

Part = Instance.new("Part")
Part.Name = "Front Left Wheel"
Part.BrickColor = BrickColor.new("Really black")
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.FormFactor = "Custom"
Part.Size = Vector3.new(3, 2, 3)
Part.Friction = TireFriction
Part.Elasticity = TireElasticity
Part.Parent = Vehicle
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = Part
Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Base
Weld.Part1 = Part
Weld.C0 = CFrame.new(-5, 0, -4) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))

Vehicle:MoveTo((Workspace:FindFirstChild("DarkShadow6") == nil and Vector3.new() or Workspace.DarkShadow6.Torso.Position) + Vector3.new(9, 3, 0))

loadstring(game:GetService("InsertService"):LoadAsset(62456942)["VehicleSupport"].Value)()