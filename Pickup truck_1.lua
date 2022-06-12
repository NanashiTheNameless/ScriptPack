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

Vehicle:MoveTo((Workspace:FindFirstChild("adamfontenot") == nil and Vector3.new() or Workspace.adamfontenot.Torso.Position) + Vector3.new(9, 3, 0))
--[[
Vehicle Support v8
Variables:

Health
MaxHealth
ToughnessMinorDamage
ToughnessMajorDamage

DriftAcceleration
DriftSteerDifficulty
DriftSteerPower

Acceleration
TopSpeed
Deceleration
BrakePower

SteerDifficulty
SteerPower

TireFriction
TireElasticity
MasterColor
Wrecked

Vehicle (Model)
Base (Part)
Thrust (BodyVelocity)
Steer (BodyGyro)
Seat (VehicleSeat)
--]]


Wheels = {}
RearTraction = false
FrontTraction = false

DriftCheck = 0
Drifting = false

ThrottlePercent = 0
IsBraking = false

SteerPercent = 0

if Wrecked == true then Health = math.random(1, MaxHealth) end

for _, Part in pairs(Vehicle:GetChildren()) do
if Part:IsA("BasePart") then
Part.Locked = true
if Wrecked == true then
pcall(function() Part.Weld.C1 = Part.Weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-7.5, 7.5)), math.rad(math.random(-7.5, 7.5)), math.rad(math.random(-7.5, 7.5))) end)
if math.random(1, 5) == 1 then Part.Material = "CorrodedMetal" end
if math.random(1, 10) == 1 then Part.BrickColor = BrickColor.new("Black") end
if math.random(1, 50) == 1 then Part.BrickColor = BrickColor.new("Really black") end
end
if string.match(Part.Name, "VehicleSeat") == nil and string.match(Part.Name, "VehicleEngine") == nil and string.match(Part.Name, "VehicleBase") == nil and string.match(Part.Name, " Wheel") == nil then
Part.Touched:connect(function(Hit)
if Hit.Parent == nil then return end
if Hit.Parent == Vehicle then return end
if Hit.CanCollide == false then return end
if Part:FindFirstChild("Weld") == nil then return end
if string.match(Hit.Name, "VehicleSeat") or string.match(Hit.Name, "VehicleEngine") or string.match(Hit.Name, "VehicleBase") then return end
local velocity1 = {
math.abs(Part.Velocity.x),
math.abs(Part.Velocity.y),
math.abs(Part.Velocity.z)
}
local rotvelocity1 = {
math.abs(Part.RotVelocity.x),
math.abs(Part.RotVelocity.y),
math.abs(Part.RotVelocity.z)
}
local velocity2 = {
math.abs(Hit.Velocity.x),
math.abs(Hit.Velocity.y),
math.abs(Hit.Velocity.z)
}
local rotvelocity2 = {
math.abs(Hit.RotVelocity.x),
math.abs(Hit.RotVelocity.y),
math.abs(Hit.RotVelocity.z)
}
for i = 1, #velocity1 do
local Total = math.abs(velocity1[i] - velocity2[i])
if Total > ToughnessMinorDamage / 2 then
Health = Health - (Total / 10)
end
if Total > ToughnessMinorDamage then
ThrottlePercent = ThrottlePercent * 0.9
pcall(function() Part.Weld.C0 = Part.Weld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10))) end)
pcall(function() Part.Weld.C1 = Part.Weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10))) end)
end
if Total > ToughnessMajorDamage and Hit:GetMass() > 3 then
ThrottlePercent = 0
Part:BreakJoints()
Part.Velocity = Part.Velocity + math.random(math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10))
Part.RotVelocity = Part.RotVelocity + math.random(math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25))
end
if Total > math.random(50, 75) then
if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
local Tag = Instance.new("ObjectValue", Hit.Parent.Humanoid)
Tag.Name = "creator"
Tag.Value = Driver
coroutine.wrap(function() wait(1) Tag:Remove() end)()
end
Hit:BreakJoints()
end
end
for i = 1, #rotvelocity1 do
local Total = math.abs(velocity1[i] - velocity2[i])
if Total > ToughnessMinorDamage / 4 and not string.match(Part.Name, " Wheel") then
Health = Health - (Total / 10)
end
if Total > ToughnessMinorDamage / 2 and not string.match(Part.Name, " Wheel") then
ThrottlePercent = ThrottlePercent * 0.9
pcall(function() Part.Weld.C0 = Part.Weld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10))) end)
pcall(function() Part.Weld.C1 = Part.Weld.C1 * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10)), math.rad(math.random(-Total / 10, Total / 10))) end)
end
if Total > ToughnessMajorDamage / 2 and Hit:GetMass() > 3 then
ThrottlePercent = ThrottlePercent * 0.75
Part:BreakJoints()
Part.Velocity = Part.Velocity + Vector3.new(math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10), math.random(-Total / 10, Total / 10))
Part.RotVelocity = Part.RotVelocity + Vector3.new(math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25), math.random(-Total / 25, Total / 25))
end
if Total > math.random(50, 75) then
if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
local Tag = Instance.new("ObjectValue", Hit.Parent.Humanoid)
Tag.Name = "creator"
Tag.Value = Driver
coroutine.wrap(function() wait(1) Tag:Remove() end)()
end
Hit:BreakJoints()
end
end
end)
end
if string.match(Part.Name, " Wheel") then
table.insert(Wheels, Part)
end
Part.ChildRemoved:connect(function(Object)
if Object.Name == "Weld" then
Health = Health - 25
end
end)
end
end


while true do
RearTraction = false
FrontTraction = false
for _, Part in pairs(Wheels) do
local Hit = Workspace:FindPartOnRay(Ray.new(Part.Position, (Part.Position - (Part.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90)) * CFrame.new(0, -1, 0)).p).unit * ((Part.Size.x / 2) + 0.5)), Vehicle)
if Hit ~= nil and Part:FindFirstChild("Weld") ~= nil then
if string.match(Part.Name, "Rear") then
RearTraction = true
else
FrontTraction = true
end
end
end
if Vehicle:FindFirstChild("VehicleEngine") ~= nil then
if Vehicle.VehicleEngine:FindFirstChild("Weld") == nil then
Health = 0
end
if pcall(function() return EffectHolder.Parent end) == false then
EffectHolder = Instance.new("Part")
EffectHolder.Name = ""
EffectHolder.CanCollide = false
EffectHolder.Anchored = true
EffectHolder.FormFactor = "Custom"
EffectHolder.Size = Vector3.new(1, 1, 1)
EffectHolder.TopSurface = 0
EffectHolder.BottomSurface = 0
EffectHolder.Transparency = 1
EffectHolder.Parent = Vehicle
end
EffectHolder.CFrame = CFrame.new(Vehicle.VehicleEngine.Position)
for _, Part in pairs(EffectHolder:GetChildren()) do
pcall(function() Part.Enabled = false end)
end
if Health <= 0 then
if EffectHolder:FindFirstChild("Smoke 0") == nil then
local Smoke = Instance.new("Smoke")
Smoke.Name = "Smoke 0"
Smoke.Color = Color3.new(0.05, 0.05, 0.05)
Smoke.RiseVelocity = 12.5
Smoke.Size = 12.5
Smoke.Parent = EffectHolder
end
if EffectHolder:FindFirstChild("Fire 0") == nil then
local Fire = Instance.new("Fire")
Fire.Name = "Fire 0"
Fire.Heat = 10
Fire.Size = 20
Fire.Parent = EffectHolder
end
EffectHolder["Smoke 0"].Enabled = true
EffectHolder["Fire 0"].Enabled = true
elseif Health < MaxHealth * 0.15 then
if EffectHolder:FindFirstChild("Smoke 1") == nil then
local Smoke = Instance.new("Smoke")
Smoke.Name = "Smoke 1"
Smoke.Color = Color3.new(0.25, 0.25, 0.25)
Smoke.RiseVelocity = 10
Smoke.Size = 10
Smoke.Parent = EffectHolder
end
if EffectHolder:FindFirstChild("Fire 1") == nil then
local Fire = Instance.new("Fire")
Fire.Name = "Fire 1"
Fire.Heat = 5
Fire.Size = 10
Fire.Parent = EffectHolder
end
EffectHolder["Smoke 1"].Enabled = true
EffectHolder["Fire 1"].Enabled = true
elseif Health < MaxHealth * 0.2 then
if EffectHolder:FindFirstChild("Smoke 2") == nil then
local Smoke = Instance.new("Smoke")
Smoke.Name = "Smoke 2"
Smoke.Color = Color3.new(0.5, 0.5, 0.5)
Smoke.RiseVelocity = 9
Smoke.Size = 7.5
Smoke.Parent = EffectHolder
end
EffectHolder["Smoke 2"].Enabled = true
elseif Health < MaxHealth * 0.3 then
if EffectHolder:FindFirstChild("Smoke 3") == nil then
local Smoke = Instance.new("Smoke")
Smoke.Name = "Smoke 3"
Smoke.Color = Color3.new(0.75, 0.75, 0.75)
Smoke.RiseVelocity = 7.5
Smoke.Size = 5
Smoke.Parent = EffectHolder
end
EffectHolder["Smoke 3"].Enabled = true
elseif Health < MaxHealth * 0.4 then
if EffectHolder:FindFirstChild("Smoke 4") == nil then
local Smoke = Instance.new("Smoke")
Smoke.Name = "Smoke 4"
Smoke.Color = Color3.new(1, 1, 1)
Smoke.RiseVelocity = 5
Smoke.Size = 3
Smoke.Parent = EffectHolder
end
EffectHolder["Smoke 4"].Enabled = true
end
else
Health = 0
if EffectHolder ~= nil then
EffectHolder:Remove()
EffectHolder = nil
end
end
if ThrottlePercent < 0.2 then
Drifting = false
DriftCheck = 0
end
if Seat.Throttle == 1 then
if ThrottlePercent > 0.2 and tick() - DriftCheck < 0.5 and Drifting == false then
coroutine.wrap(function()
DriftCheck = 0
Drifting = true
local OldAcceleration = Acceleration
local OldSteerDifficulty = SteerDifficulty
local OldSteerPower = SteerPower
Acceleration = DriftAcceleration
SteerDifficulty = DriftSteerDifficulty
SteerPower = DriftSteerPower
local EffectHolder1 = Instance.new("Part")
EffectHolder1.Name = ""
EffectHolder1.CanCollide = false
EffectHolder1.Anchored = true
EffectHolder1.FormFactor = "Custom"
EffectHolder1.Size = Vector3.new(1, 1, 1)
EffectHolder1.TopSurface = 0
EffectHolder1.BottomSurface = 0
EffectHolder1.Transparency = 1
EffectHolder1.Parent = Vehicle
local Smoke = Instance.new("Smoke")
Smoke.Color = Color3.new(0.9, 0.9, 0.9)
Smoke.RiseVelocity = 15
Smoke.Size = 10
Smoke.Parent = EffectHolder1
local EffectHolder2 = Instance.new("Part")
EffectHolder2.Name = ""
EffectHolder2.CanCollide = false
EffectHolder2.Anchored = true
EffectHolder2.FormFactor = "Custom"
EffectHolder2.Size = Vector3.new(1, 1, 1)
EffectHolder2.TopSurface = 0
EffectHolder2.BottomSurface = 0
EffectHolder2.Transparency = 1
EffectHolder2.Parent = Vehicle
local Smoke = Instance.new("Smoke")
Smoke.Color = Color3.new(0.9, 0.9, 0.9)
Smoke.RiseVelocity = 15
Smoke.Size = 10
Smoke.Parent = EffectHolder2
while Drifting == true do
if pcall(function() return Vehicle["Rear Left Wheel"].Weld end) == true then
EffectHolder1.CFrame = Vehicle["Rear Left Wheel"].CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
else
EffectHolder1.Smoke.Enabled = false
end
if pcall(function() return Vehicle["Rear Right Wheel"].Weld end) == true then
EffectHolder2.CFrame = Vehicle["Rear Right Wheel"].CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
else
EffectHolder2.Smoke.Enabled = false
end
wait()
end
Acceleration = OldAcceleration
SteerDifficulty = OldSteerDifficulty
SteerPower = OldSteerPower
EffectHolder1.Smoke.Enabled = false
EffectHolder2.Smoke.Enabled = false
wait(7.5)
EffectHolder1:Remove()
EffectHolder2:Remove()
end)()
coroutine.wrap(function()
while Drifting == true do
if pcall(function() return Vehicle["Rear Left Wheel"].Weld end) == true then
local DriftSound = Instance.new("Sound")
DriftSound.SoundId = "http://www.roblox.com/Asset/?id=31245495"
DriftSound.Volume = 1
DriftSound.Pitch = math.random(90, 120) / 100
DriftSound.Parent = Vehicle["Rear Left Wheel"]
DriftSound:Play()
end
wait(math.random(35, 60) / 100)
end
end)()
coroutine.wrap(function()
while Drifting == true do
if pcall(function() return Vehicle["Rear Right Wheel"].Weld end) == true then
local DriftSound = Instance.new("Sound")
DriftSound.SoundId = "http://www.roblox.com/Asset/?id=31245495"
DriftSound.Volume = 1
DriftSound.Pitch = math.random(90, 120) / 100
DriftSound.Parent = Vehicle["Rear Right Wheel"]
DriftSound:Play()
end
wait(math.random(35, 60) / 100)
end
end)()
coroutine.wrap(function()
while Drifting == true do
if pcall(function() return Vehicle["Rear Wheel"].Weld end) == true then
local DriftSound = Instance.new("Sound")
DriftSound.SoundId = "http://www.roblox.com/Asset/?id=31245495"
DriftSound.Volume = 1
DriftSound.Pitch = math.random(90, 120) / 100
DriftSound.Parent = Vehicle["Rear Wheel"]
DriftSound:Play()
end
wait(math.random(35, 60) / 100)
end
end)()
end
if ThrottlePercent < 0 then
ThrottlePercent = ThrottlePercent + BrakePower
IsBraking = true
else
ThrottlePercent = ThrottlePercent + Acceleration
IsBraking = false
end
elseif Seat.Throttle == -1 then
Drifting = false
if ThrottlePercent > 0.1 then
ThrottlePercent = ThrottlePercent - BrakePower
IsBraking = true
DriftCheck = tick()
else
ThrottlePercent = ThrottlePercent - Acceleration
end
else
if ThrottlePercent < 0 then
ThrottlePercent = ThrottlePercent + Deceleration
elseif ThrottlePercent > 0 then
ThrottlePercent = ThrottlePercent - Deceleration
end
if ThrottlePercent > -Deceleration * 1.1 and ThrottlePercent < Deceleration * 1.1 then
ThrottlePercent = 0
end
end
if ThrottlePercent > 1 then ThrottlePercent = 1 end
if ThrottlePercent < -1 then ThrottlePercent = -1 end
if ThrottlePercent ~= 0 and RearTraction == true and (pcall(function() return Vehicle["Rear Left Wheel"].Weld end) == true or pcall(function() return Vehicle["Rear Right Wheel"].Weld end) == true or pcall(function() return Vehicle["Rear Wheel"].Weld end) == true) and Health > 0 then
Thrust.maxForce = Vector3.new(math.huge, 0, math.huge)
Thrust.velocity = Base.CFrame.lookVector * (TopSpeed * ThrottlePercent)
else
Thrust.maxForce = Vector3.new()
end
if Seat.Steer == 1 then
SteerPercent = SteerPercent - (SteerDifficulty * (1 - (math.abs(ThrottlePercent) / 10)))
elseif Seat.Steer == -1 then
SteerPercent = SteerPercent + (SteerDifficulty * (1 - (math.abs(ThrottlePercent) / 10)))
else
if SteerPercent < 0 then
SteerPercent = SteerPercent + SteerDifficulty
elseif SteerPercent > 0 then
SteerPercent = SteerPercent - SteerDifficulty
end
if SteerPercent > -SteerDifficulty * 1.1 and SteerPercent < SteerDifficulty * 1.1 then
SteerPercent = 0
Drifting = false
end
end
if SteerPercent > 1 then SteerPercent = 1 end
if SteerPercent < -1 then SteerPercent = -1 end
if SteerPercent ~= 0 and RearTraction == true and FrontTraction == true and (pcall(function() return Vehicle["Rear Left Wheel"].Weld end) == true or pcall(function() return Vehicle["Rear Right Wheel"].Weld end) == true) and (pcall(function() return Vehicle["Front Left Wheel"].Weld end) == true or pcall(function() return Vehicle["Front Right Wheel"].Weld end) == true) and Health > 0 then
Steer.maxTorque = Vector3.new(0, math.huge, 0)
Steer.cframe = (Base.CFrame - Base.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad((SteerPercent * SteerPower) * ((ThrottlePercent * 10) > 1 and 1 or (ThrottlePercent * 10))), 0)
ThrottlePercent = ThrottlePercent - ((Acceleration * 0.95) * (1 - math.abs(SteerPercent)))
ThrottlePercent = ThrottlePercent - (Acceleration * (SteerPercent / 2))
else
Steer.maxTorque = Vector3.new()
Steer.cframe = CFrame.new()
end
local SteerAngle = SteerPercent * (SteerPower * 1.5)
if SteerAngle > 80 then SteerAngle = 80 end
if SteerAngle < -80 then SteerAngle = -80 end
for _, Part in pairs(Wheels) do
if string.match(Part.Name, "Front ") then
pcall(function()
Part.Weld.C0 = CFrame.new(Part.Weld.C0.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(SteerAngle), math.rad(90))
end)
end
end
if Seat:FindFirstChild("SeatWeld") ~= nil and Driver == nil then
local Part1 = Seat.SeatWeld.Part1
if Part1 ~= nil then
Driver = game:GetService("Players"):GetPlayerFromCharacter(Part1.Parent)
if Driver ~= nil then
local PlayerGui = Driver:FindFirstChild("PlayerGui")
if PlayerGui == nil then return end
local DriverGui = Instance.new("ScreenGui", PlayerGui)
DriverGui.Name = "DriverGui"
local Frame = Instance.new("Frame")
Frame.Name = "Content"
Frame.Size = UDim2.new(1, 0, 0, 100)
Frame.Position = UDim2.new(0, 0, 1, -100)
Frame.BorderSizePixel = 1
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
Frame.Parent = DriverGui
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "SpeedText1"
TextLabel.Size = UDim2.new(0, 85, 0, 15)
TextLabel.Position = UDim2.new(0, 15, 0, 7.5)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.Text = "Speed"
TextLabel.TextXAlignment = "Left"
TextLabel.FontSize = "Size12"
TextLabel.Parent = DriverGui.Content
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "SpeedText2"
TextLabel.Size = UDim2.new(0, 85, 0, 15)
TextLabel.Position = UDim2.new(0, 15, 0, 7.5 + 15)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.Text = "Bricks/sec."
TextLabel.TextXAlignment = "Left"
TextLabel.FontSize = "Size12"
TextLabel.Parent = DriverGui.Content
for i = 0, 1, 0.1 do
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "SpeedTextInc" ..i
TextLabel.Size = UDim2.new(0, 0, 0, 15)
TextLabel.Position = UDim2.new(0, 92 + (i * 200), 0, 37.5)
TextLabel.BorderSizePixel = 1
TextLabel.BackgroundTransparency = 0
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.Text = math.floor(TopSpeed * i)
TextLabel.TextXAlignment = "Left"
TextLabel.Parent = DriverGui.Content
end
local Frame = Instance.new("Frame")
Frame.Name = "SpeedBack"
Frame.Size = UDim2.new(0, 200, 0, 30)
Frame.Position = UDim2.new(0, 100, 0, 7.5)
Frame.BorderSizePixel = 1
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Parent = DriverGui.Content
local Frame = Instance.new("Frame")
Frame.Name = "SpeedFront"
Frame.BorderSizePixel = 1
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BackgroundColor3 = Color3.new(0, 0, 0.9)
Frame.Parent = DriverGui.Content
coroutine.wrap(function()
while DriverGui.Parent ~= nil do
DriverGui.Content.SpeedFront.Size = DriverGui.Content.SpeedBack.Size - UDim2.new(0, DriverGui.Content.SpeedBack.Size.X.Offset * (1 - math.abs(ThrottlePercent)), 0, 0)
DriverGui.Content.SpeedFront.Position = DriverGui.Content.SpeedBack.Position
wait()
end
end)()
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "DamageText"
TextLabel.Size = UDim2.new(0, 85, 0, 30)
TextLabel.Position = UDim2.new(0, 215, 0, 57.5)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.Text = "Damage"
TextLabel.TextXAlignment = "Left"
TextLabel.FontSize = "Size12"
TextLabel.Parent = DriverGui.Content
local Frame = Instance.new("Frame")
Frame.Name = "DamageBack"
Frame.Size = UDim2.new(0, 250, 0, 30)
Frame.Position = UDim2.new(0, 300, 0, 57.5)
Frame.BorderSizePixel = 1
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BackgroundColor3 = Color3.new(0, 0.5, 0)
Frame.Parent = DriverGui.Content
local Frame = Instance.new("Frame")
Frame.Name = "DamageFront"
Frame.BorderSizePixel = 1
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BackgroundColor3 = Color3.new(0.9, 0, 0)
Frame.Parent = DriverGui.Content
coroutine.wrap(function()
local i = math.pi * 1.5
while DriverGui.Parent ~= nil do
DriverGui.Content.DamageFront.Size = DriverGui.Content.DamageBack.Size - UDim2.new(0, DriverGui.Content.DamageBack.Size.X.Offset * (1 - ((MaxHealth - Health) / MaxHealth)), 0, 0)
DriverGui.Content.DamageFront.Position = DriverGui.Content.DamageBack.Position
if Health < MaxHealth * 0.15 then
i = i + 0.4
elseif Health < MaxHealth * 0.2 then
i = i + 0.25
elseif Health < MaxHealth * 0.3 then
i = i + 0.1
elseif Health < MaxHealth * 0.4 then
i = i + 0.075
end
DriverGui.Content.DamageFront.BackgroundColor3 = Color3.new(1 - ((math.sin(i) + 1) / 2), 0, 0)
DriverGui.Content.DamageBack.BackgroundColor3 = Color3.new(0, 0.5 - (((math.sin(i) + 1) / 2) * 0.5), 0)
wait()
end
end)()
end
end
elseif Seat:FindFirstChild("SeatWeld") == nil and Driver ~= nil then
if Driver:FindFirstChild("PlayerGui") ~= nil then
if Driver.PlayerGui:FindFirstChild("DriverGui") ~= nil then
Driver.PlayerGui.DriverGui:Remove()
end
end
Driver = nil
end
if Health <= 0 then
Health = 0
ThrottlePercent = 0
if Vehicle:FindFirstChild("VehicleEngine") ~= nil then
if math.random(1, 1000) == 1 or Vehicle.VehicleEngine:FindFirstChild("Weld") == nil then
local Explosion = Instance.new("Explosion")
Explosion.BlastPressure = 5000 * ToughnessMajorDamage
Explosion.BlastRadius = ToughnessMajorDamage / 10
Explosion.Position = Vehicle.VehicleEngine.Position
Explosion.Parent = Workspace
Vehicle.VehicleEngine.Name = "Exploded VehicleEngine"
end
end
end
wait()
end