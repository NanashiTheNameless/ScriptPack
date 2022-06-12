local Main = game:GetService("Players"):findFirstChild("acb227")

local Driver = nil

local colors = {"Navy blue", "Bright red", "Hot pink", "New Yeller", "Bright green"}

local ThrottlePercent = 0
local Acceleration = 0.0005
local Deceleration = 0.0025
local BrakePower = 0.01
local IsBraking = false
local TopSpeed = 250 

local SteerPercent = 0
local SteerDifficulty = 0.09
local SteerPower = 30

local TireFriction = 0.7
local TireElasticity = 0.95

local MasterColor = colors[math.random(1, 5)]

local Vehicle = Instance.new("Model", Workspace)
Vehicle.Name = "Car"

function MakePart(Type, Color, Elasticity, formFactor, Friction, Name, Parent, Mesh, Size, WInUse, WC0, WName, WP0, WP1, WParent)
	local Part = Instance.new((Type or "") .. "Part", Parent or Vehicle)
	Part.BottomSurface = "Smooth"
	Part.BrickColor = BrickColor.new(Color or MasterColor)
	Part.Elasticity = Elasticity or 0.5
	Part.formFactor = formFactor or "Symmetric"
	Part.Friction = Friction or 0.3
	Part.Name = Name or "Part"
	Part.Size = Size or Vector3.new(1, 1, 1)
	Part.TopSurface = "Smooth"
	local Weld, mesh
	if WInUse then
		Weld = Instance.new("Weld", WParent or Part)
		Weld.C0 = WC0 or CFrame.new(0, 0, 0)
		Weld.Name = WName or "Weld"
		Weld.Part0 = WP0 or Part
		Weld.Part1 = WP1 or Part
	end
	if Mesh then
		mesh = Instance.new(Mesh, Part)
	end
	return {Part, Weld, mesh}
end

local Base = MakePart("", MasterColor, 0, "Symmetric", 1, "Base", Vehicle, "BlockMesh", Vector3.new(8, 1, 17))

local Seat1 = Instance.new("VehicleSeat", Vehicle)
Seat1.BottomSurface = "Smooth"
Seat1.BrickColor = BrickColor.new("Black")
Seat1.HeadsUpDisplay = false
Seat1.MaxSpeed = 0
Seat1.Size = Vector3.new(2, 1, 2)
Seat1.Torque = 0
Seat1.TopSurface = "Smooth"
local Weld1 = Instance.new("Weld", Seat1)
Weld1.C0 = CFrame.new(-2.5, 0.375, 1.5)
Weld1.Part0 = Base[1]
Weld1.Part1 = Seat1

local Seat2 = Instance.new("VehicleSeat", Vehicle)
Seat2.BottomSurface = "Smooth"
Seat2.BrickColor = BrickColor.new("Black")
Seat2.HeadsUpDisplay = false
Seat2.MaxSpeed = 0
Seat2.Size = Vector3.new(2, 1, 2)
Seat2.Torque = 0
Seat2.TopSurface = "Smooth"
local Weld2 = Instance.new("Weld", Seat2)
Weld2.C0 = CFrame.new(2.5, 0.375, 1.5)
Weld2.Part0 = Base[1]
Weld2.Part1 = Seat2

local FrontLeftWheel = MakePart("", "Really black", TireElasticity, "Symmetric",  TireFriction, "Front Left Wheel", Vehicle, "CylinderMesh", Vector3.new(3, 2, 3), true, (CFrame.new(-5, 0, -4) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))), "Weld")
FrontLeftWheel[2].Parent = FrontLeftWheel[1]
FrontLeftWheel[2].Part0 = Base[1]
FrontLeftWheel[2].Part1 = FrontLeftWheel[1]

local FrontRightWheel = MakePart("", "Really black", TireElasticity, "Symmetric",  TireFriction, "Front Right Wheel", Vehicle, "CylinderMesh", Vector3.new(3, 2, 3), true, (CFrame.new(5, 0, -4) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))), "Weld")
FrontRightWheel[2].Parent = FrontRightWheel[1]
FrontRightWheel[2].Part0 = Base[1]
FrontRightWheel[2].Part1 = FrontRightWheel[1]

local RearLeftWheel = MakePart("", "Really black", TireElasticity, "Symmetric",  TireFriction, "Rear Left Wheel", Vehicle, "CylinderMesh", Vector3.new(3, 2, 3), true, (CFrame.new(-5, 0, 7.875) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))), "Weld")
RearLeftWheel[2].Parent = RearLeftWheel[1]
RearLeftWheel[2].Part0 = Base[1]
RearLeftWheel[2].Part1 = RearLeftWheel[1]

local RearRightWheel = MakePart("", "Really black", TireElasticity, "Symmetric", TireFriction, "Rear Right Wheel", Vehicle, "CylinderMesh", Vector3.new(3, 2, 3), true, (CFrame.new(5, 0, 7.875) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))), "Weld")
RearRightWheel[2].Parent = RearRightWheel[1]
RearRightWheel[2].Part0 = Base[1]
RearRightWheel[2].Part1 = RearRightWheel[1]

local FrontLeftWheelCorner = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Front Left Wheel Corner", Vehicle, "BlockMesh", Vector3.new(2, 1, 3), true, CFrame.new(-5, 0, -7.05), "Weld")
FrontLeftWheelCorner[2].Parent = FrontLeftWheelCorner[1]
FrontLeftWheelCorner[2].Part0 = Base[1]
FrontLeftWheelCorner[2].Part1 = FrontLeftWheelCorner[1]
FrontLeftWheelCorner[3].Scale = Vector3.new(1, 1, 0.95)

local FrontRightWheelCorner = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Front Right Wheel Corner", Vehicle, "BlockMesh", Vector3.new(2, 1, 3), true, CFrame.new(5, 0, -7.05), "Weld")
FrontRightWheelCorner[2].Parent = FrontRightWheelCorner[1]
FrontRightWheelCorner[2].Part0 = Base[1]
FrontRightWheelCorner[2].Part1 = FrontRightWheelCorner[1]
FrontRightWheelCorner[3].Scale = Vector3.new(1, 1, 0.95)

local RearLeftWheelCorner = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Rear Left Wheel Corner", Vehicle, "BlockMesh", Vector3.new(2, 1, 2), true, CFrame.new(-5, 0, 10.55), "Weld")
RearLeftWheelCorner[2].Parent = RearLeftWheelCorner[1]
RearLeftWheelCorner[2].Part0 = Base[1]
RearLeftWheelCorner[2].Part1 = RearLeftWheelCorner[1]
RearLeftWheelCorner[3].Scale = Vector3.new(1, 1, 0.95)

local RearRightWheelCorner = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Rear Right Wheel Corner", Vehicle, "BlockMesh", Vector3.new(2, 1, 2), true, CFrame.new(5, 0, 10.55), "Weld")
RearRightWheelCorner[2].Parent = RearRightWheelCorner[1]
RearRightWheelCorner[2].Part0 = Base[1]
RearRightWheelCorner[2].Part1 = RearRightWheelCorner[1]
RearRightWheelCorner[3].Scale = Vector3.new(1, 1, 0.95)

local UpperRightSkirt = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Upper Right Skirt", Vehicle, "BlockMesh", Vector3.new(1, 1, 9), true, CFrame.new(4.5, 0, 2), "Weld")
UpperRightSkirt[2].Parent = UpperRightSkirt[1]
UpperRightSkirt[2].Part0 = Base[1]
UpperRightSkirt[2].Part1 = UpperRightSkirt[1]

local LowerRightSkirt = MakePart("", MasterColor, 0.5, "Plate", 0.3, "Lower Right Skirt", Vehicle, "BlockMesh", Vector3.new(1, 0.4, 9), true, CFrame.new(5.5, -0.3, 2), "Weld")
LowerRightSkirt[2].Parent = LowerRightSkirt[1]
LowerRightSkirt[2].Part0 = Base[1]
LowerRightSkirt[2].Part1 = LowerRightSkirt[1]

local UpperLeftSkirt = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Upper Left Skirt", Vehicle, "BlockMesh", Vector3.new(1, 1, 9), true, CFrame.new(-4.5, 0, 2), "Weld")
UpperLeftSkirt[2].Parent = UpperLeftSkirt[1]
UpperLeftSkirt[2].Part0 = Base[1]
UpperLeftSkirt[2].Part1 = UpperLeftSkirt[1]

local LowerLeftSkirt = MakePart("", MasterColor, 0.5, "Plate", 0.3, "Lower Left Skirt", Vehicle, "BlockMesh", Vector3.new(1, 0.4, 9), true, CFrame.new(-5.5, -0.3, 2), "Weld")
LowerLeftSkirt[2].Parent = LowerLeftSkirt[1]
LowerLeftSkirt[2].Part0 = Base[1]
LowerLeftSkirt[2].Part1 = LowerLeftSkirt[1]

local FrontWholeGrill = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Front Whole Grill", Vehicle, "BlockMesh", Vector3.new(12, 1, 3), true, CFrame.new(0, 1, -7), "Weld")
FrontWholeGrill[2].Parent = FrontWholeGrill[1]
FrontWholeGrill[2].Part0 = Base[1]
FrontWholeGrill[2].Part1 = FrontWholeGrill[1]

local FrontGrill = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Front Grill", Vehicle, "BlockMesh", Vector3.new(4, 1, 2), true, CFrame.new(0, 2, -7.5), "Weld")
FrontGrill[1].Reflectance = 0.1
FrontGrill[2].Parent = FrontGrill[1]
FrontGrill[2].Part0 = Base[1]
FrontGrill[2].Part1 = FrontGrill[1]

local LeftBlinker = MakePart("", "New Yeller", 0.5, "Symmetric", 0.3, "Left Blinker", Vehicle, "BlockMesh", Vector3.new(1, 1, 2), true, CFrame.new(-5.5, 2, -7.5), "Weld")
LeftBlinker[1].Transparency = 0.5
LeftBlinker[2].Parent = LeftBlinker[1]
LeftBlinker[2].Part0 = Base[1]
LeftBlinker[2].Part1 = LeftBlinker[1]

local LeftHeadlight = MakePart("", "Industrial white", 0.5, "Symmetric", 0.3, "Left Headlight", Vehicle, "BlockMesh", Vector3.new(3, 1, 2), true, CFrame.new(-3.5, 2, -7.5), "Weld")
LeftHeadlight[1].Transparency = 0.5
LeftHeadlight[2].Parent = LeftHeadlight[1]
LeftHeadlight[2].Part0 = Base[1]
LeftHeadlight[2].Part1 = LeftHeadlight[1]

local RightBlinker = MakePart("", "New Yeller", 0.5, "Symmetric", 0.3, "Right Blinker", Vehicle, "BlockMesh", Vector3.new(1, 1, 2), true, CFrame.new(5.5, 2, -7.5), "Weld")
RightBlinker[1].Transparency = 0.5
RightBlinker[2].Parent = RightBlinker[1]
RightBlinker[2].Part0 = Base[1]
RightBlinker[2].Part1 = RightBlinker[1]

local RightHeadlight = MakePart("", "Industrial white", 0.5, "Symmetric", 0.3, "Right Headlight", Vehicle, "BlockMesh", Vector3.new(3, 1, 2), true, CFrame.new(3.5, 2, -7.5), "Weld")
RightHeadlight[1].Transparency = 0.5
RightHeadlight[2].Parent = RightHeadlight[1]
RightHeadlight[2].Part0 = Base[1]
RightHeadlight[2].Part1 = RightHeadlight[1]

local HeadlightBack = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Headlight Backing", Vehicle, "BlockMesh", Vector3.new(12, 1, 4), true, CFrame.new(0, 2, -4.5), "Weld")
HeadlightBack[2].Parent = HeadlightBack[1]
HeadlightBack[2].Part0 = Base[1]
HeadlightBack[2].Part1 = HeadlightBack[1]

local Hood = MakePart("Wedge", MasterColor, 0.5, "Symmetric", 0.3, "Hood", Vehicle, nil, Vector3.new(12, 1, 6), true, CFrame.new(0, 3, -5.5), "Weld")
Hood[2].Parent = Hood[1]
Hood[2].Part0 = Base[1]
Hood[2].Part1 = Hood[1]

local FrontWheelsWedge1 = MakePart("Wedge", MasterColor, 0.5, "Symmetric", 0.3, "Front Wheels Wedge 1", Vehicle, "SpecialMesh", Vector3.new(12, 1, 1), true, CFrame.new(0, 1.25, -5.25) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0), "Weld")
FrontWheelsWedge1[2].Parent = FrontWheelsWedge1[1]
FrontWheelsWedge1[2].Part0 = Base[1]
FrontWheelsWedge1[2].Part1 = FrontWheelsWedge1[1]
FrontWheelsWedge1[3].MeshType = "Wedge"
FrontWheelsWedge1[3].Scale = Vector3.new(1, 0.5, 0.5)

local FrontWheelsWedge2 = MakePart("Wedge", MasterColor, 0.5, "Symmetric", 0.3, "Front Wheels Wedge 2", Vehicle, "SpecialMesh", Vector3.new(12, 1, 1), true, CFrame.new(0, 1.25, -2.75) * CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(180), 0), "Weld")
FrontWheelsWedge2[2].Parent = FrontWheelsWedge2[1]
FrontWheelsWedge2[2].Part0 = Base[1]
FrontWheelsWedge2[2].Part1 = FrontWheelsWedge2[1]
FrontWheelsWedge2[3].MeshType = "Wedge"
FrontWheelsWedge2[3].Scale = Vector3.new(1, 0.5, 0.5)

local FrontWheelsWedgeHider = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Front Wheels Wedge Hider", Vehicle, "BlockMesh", Vector3.new(8, 1, 3), true, CFrame.new(0, 0.75, -4), "Weld")
FrontWheelsWedgeHider[2].Parent = FrontWheelsWedgeHider[1]
FrontWheelsWedgeHider[2].Part0 = Base[1]
FrontWheelsWedgeHider[2].Part1 = FrontWheelsWedgeHider[1]
FrontWheelsWedgeHider[3].Scale = Vector3.new(0.95, 0.5, 1)

local FrontLeftRoofSupport = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Front Left Roof Supporter", Vehicle, "BlockMesh", Vector3.new(1, 6, 1), true, CFrame.new(-5.5, 4, -2) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), math.rad(45)), "Weld")
FrontLeftRoofSupport[2].Parent = FrontLeftRoofSupport[1]
FrontLeftRoofSupport[2].Part0 = Base[1]
FrontLeftRoofSupport[2].Part1 = FrontLeftRoofSupport[1]

local FrontRightRoofSupport = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Front Right Roof Supporter", Vehicle, "BlockMesh", Vector3.new(1, 6, 1), true, CFrame.new(5.5, 4, -2) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), math.rad(45)), "Weld")
FrontRightRoofSupport[2].Parent = FrontRightRoofSupport[1]
FrontRightRoofSupport[2].Part0 = Base[1]
FrontRightRoofSupport[2].Part1 = FrontRightRoofSupport[1]

local WindShield = MakePart("", "Industrial white", 0.5, "Symmetric", 0.3, "WindShield", Vehicle, "BlockMesh", Vector3.new(1, 6, 10), true, CFrame.new(0, 4, -2) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), math.rad(45)), "Weld")
WindShield[1].Transparency = 0.5
WindShield[2].Parent = WindShield[1]
WindShield[2].Part0 = Base[1]
WindShield[2].Part1 = WindShield[1]

local Roof = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Roof", Vehicle, "BlockMesh", Vector3.new(12, 1, 7), true, CFrame.new(0, 6, 3.25), "Weld")
Roof[2].Parent = Roof[1]
Roof[2].Part0 = Base[1]
Roof[2].Part1 = Roof[1]

local WheelHider = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Wheel Hider", Vehicle, "BlockMesh", Vector3.new(12, 4, 1), true, CFrame.new(0, 1.5, -2.5), "Weld")
WheelHider[2].Parent = WheelHider[1]
WheelHider[2].Part0 = Base[1]
WheelHider[2].Part1 = WheelHider[1]

local WallBack = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Back Wall", Vehicle, "BlockMesh", Vector3.new(12, 3, 1), true, CFrame.new(0, 1.3875, 5.75), "Weld")
WallBack[2].Parent = WallBack[1]
WallBack[2].Part0 = Base[1]
WallBack[2].Part1 = WallBack[1]
WallBack[3].Scale = Vector3.new(1, 1, 0.5)
WallBack[3].Offset = Vector3.new(0, 0, 0.3875)

local FrontLeftDoor = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Front Left Door", Vehicle, "BlockMesh", Vector3.new(1, 3, 5), true, CFrame.new(-5.5, 1.3875, 0.5), "Weld")
FrontLeftDoor[2].Parent = FrontLeftDoor[1]
FrontLeftDoor[2].Part0 = Base[1]
FrontLeftDoor[2].Part1 = FrontLeftDoor[1]
local FrontLeftDoorClicker = Instance.new("ClickDetector", FrontLeftDoor[1])
local FrontLeftDoorClick = false
local FrontLeftDoorOpened = false
FrontLeftDoorClicker.MouseClick:connect(function()
	if FrontLeftDoorClick then return end
	FrontLeftDoorClick = true
	if not FrontLeftDoorOpened then
		for i = 0, 75 do
			FrontLeftDoor[2].C1 = CFrame.new(-i/40, 0, -i/40) * CFrame.fromEulerAnglesXYZ(0, i/45, 0)
			wait()
		end
	end
	if FrontLeftDoorOpened then
		for i = 75, 0, -1 do
			FrontLeftDoor[2].C1 = CFrame.new(-i/40, 0, -i/40) * CFrame.fromEulerAnglesXYZ(0, i/45, 0)
			wait()
		end
	end
	FrontLeftDoorOpened = not FrontLeftDoorOpened
	FrontLeftDoorClick = false
end)

local FrontRightDoor = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Front Right Door", Vehicle, "BlockMesh", Vector3.new(1, 3, 5), true, CFrame.new(5.5, 1.3875, 0.5), "Weld")
FrontRightDoor[2].Parent = FrontRightDoor[1]
FrontRightDoor[2].Part0 = Base[1]
FrontRightDoor[2].Part1 = FrontRightDoor[1]
local FrontRightDoorClicker = Instance.new("ClickDetector", FrontRightDoor[1])
local FrontRightDoorClick = false
local FrontRightDoorOpened = false
FrontRightDoorClicker.MouseClick:connect(function()
	if FrontRightDoorClick then return end
	FrontRightDoorClick = true
	if not FrontRightDoorOpened then
		for i = 0, 75 do
			FrontRightDoor[2].C1 = CFrame.new(i/40, 0, i/40) * CFrame.fromEulerAnglesXYZ(0, i/45, 0)
			wait()
		end
	end
	if FrontRightDoorOpened then
		for i = 75, 0, -1 do
			FrontRightDoor[2].C1 = CFrame.new(i/40, 0, i/40) * CFrame.fromEulerAnglesXYZ(0, i/45, 0)
			wait()
		end
	end
	FrontRightDoorOpened = not FrontRightDoorOpened
	FrontRightDoorClick = false
end)

local RearLeftDoor = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Rear Left Door", Vehicle, "BlockMesh", Vector3.new(1, 3, 3), true, CFrame.new(-5.5, 1.3875, 4.5), "Weld")
RearLeftDoor[2].Parent = RearLeftDoor[1]
RearLeftDoor[2].Part0 = Base[1]
RearLeftDoor[2].Part1 = RearLeftDoor[1]
local RearLeftDoorClicker = Instance.new("ClickDetector", RearLeftDoor[1])
local RearLeftDoorClick = false
local RearLeftDoorOpened = false
RearLeftDoorClicker.MouseClick:connect(function()
	if RearLeftDoorClick then return end
	RearLeftDoorClick = true
	if not RearLeftDoorOpened then
		for i = 0, 75 do
			RearLeftDoor[2].C1 = CFrame.new(-i/40, 0, -i/40) * CFrame.fromEulerAnglesXYZ(0, i/45, 0)
			wait()
		end
	end
	if RearLeftDoorOpened then
		for i = 75, 0, -1 do
			RearLeftDoor[2].C1 = CFrame.new(-i/40, 0, -i/40) * CFrame.fromEulerAnglesXYZ(0, i/45, 0)
			wait()
		end
	end
	RearLeftDoorOpened = not RearLeftDoorOpened
	RearLeftDoorClick = false
end)

local RearRightDoor = MakePart("", MasterColor, 0.5, "Symmetric", 0.3, "Rear Right Door", Vehicle, "BlockMesh", Vector3.new(1, 3, 3), true, CFrame.new(5.5, 1.3875, 4.5), "Weld")
RearRightDoor[2].Parent = RearRightDoor[1]
RearRightDoor[2].Part0 = Base[1]
RearRightDoor[2].Part1 = RearRightDoor[1]
local RearRightDoorClicker = Instance.new("ClickDetector", RearRightDoor[1])
local RearRightDoorClick = false
local RearRightDoorOpened = false
RearRightDoorClicker.MouseClick:connect(function()
	if RearRightDoorClick then return end
	RearRightDoorClick = true
	if not RearRightDoorOpened then
		for i = 0, 75 do
			RearRightDoor[2].C1 = CFrame.new(i/40, 0, i/40) * CFrame.fromEulerAnglesXYZ(0, i/45, 0)
			wait()
		end
	end
	if RearRightDoorOpened then
		for i = 75, 0, -1 do
			RearRightDoor[2].C1 = CFrame.new(i/40, 0, i/40) * CFrame.fromEulerAnglesXYZ(0, i/45, 0)
			wait()
		end
	end
	RearRightDoorOpened = not RearRightDoorOpened
	RearRightDoorClick = false
end)

local TrunkFloor = MakePart("", "Really white", 0.5, "Symmetric", 0.3, "Trunk Floor", Vehicle, "BlockMesh", Vector3.new(8, 1, 3), true, CFrame.new(0, 0, 10), "Weld")
TrunkFloor[2].Parent = TrunkFloor[1]
TrunkFloor[2].Part0 = Base[1]
TrunkFloor[2].Part1 = TrunkFloor[1]






Vehicle:MoveTo(Main.Character.Torso.Position + Vector3.new(0, 0, 5))

local Thrust = Instance.new("BodyVelocity", Base[1])
Thrust.maxForce = Vector3.new(math.huge, 0, math.huge)
Thrust.P = 100
Thrust.velocity = Vector3.new(0, 0, 0)

local Steer = Instance.new("BodyGyro", Base[1])
Steer.cframe = CFrame.new()
Steer.maxTorque = Vector3.new(0, math.huge, 0)
Steer.P = 7500

while wait() do
	if Seat1.Throttle == 1 then
		if ThrottlePercent < 0 then
			ThrottlePercent = ThrottlePercent + BrakePower
			IsBraking = true
		else
			ThrottlePercent = ThrottlePercent + Acceleration
			IsBraking = false
		end
		if ThrottlePercent > 1 then ThrottlePercent = 1 end
	elseif Seat1.Throttle == -1 then
		if ThrottlePercent > 0 then
			ThrottlePercent = ThrottlePercent - BrakePower
			IsBraking = true
		else
			ThrottlePercent = ThrottlePercent - Acceleration
			IsBraking = false
		end
		if ThrottlePercent < -1 then ThrottlePercent = -1 end
	else
		if ThrottlePercent < 0 then
			ThrottlePercent = ThrottlePercent + Deceleration*2
		elseif ThrottlePercent > 0 then
			ThrottlePercent = ThrottlePercent - Deceleration*2
		end
		if ThrottlePercent > -Deceleration*1.1 and ThrottlePercent < Deceleration*1.1 then
			ThrottlePercent = 0
		end
	end
	if ThrottlePercent ~= 0 then
		Thrust.maxForce = Vector3.new(math.huge, 0, math.huge)
		Thrust.velocity = Base[1].CFrame.lookVector*(TopSpeed*ThrottlePercent)
	else
		Thrust.maxForce = Vector3.new(0, 0, 0)
	end
	if Seat1.Steer == 1 then
		SteerPercent = SteerPercent - (SteerDifficulty*(1 - (math.abs(ThrottlePercent) / 10)))
		if SteerPercent < -1  then SteerPercent = -1 end
	elseif Seat1.Steer == -1 then
		SteerPercent = SteerPercent + (SteerDifficulty*(1 - (math.abs(ThrottlePercent) / 10)))
		if SteerPercent > 1 then SteerPercent = 1 end
	else
		if SteerPercent < 0 then
			SteerPercent = SteerPercent + SteerDifficulty
		elseif SteerPercent > 0 then
			SteerPercent = SteerPercent - SteerDifficulty
		end
		if SteerPercent > -SteerDifficulty*1.1 and SteerPercent < SteerDifficulty*1.1 then
			SteerPercent = 0
		end
	end
	if SteerPercent ~= 0 and ((FrontLeftWheel[1] and FrontLeftWheel[1].Parent == Vehicle) or (FrontRightWheel[1] and FrontRightWheel[1].Parent == Vehicle)) then
		Steer.maxTorque = Vector3.new(0, math.huge, 0)
		Steer.cframe = (Base[1].CFrame - Base[1].CFrame.p)*CFrame.fromEulerAnglesXYZ(0, math.rad((SteerPercent*SteerPower)*((ThrottlePercent*10) > 1 and 1 or (ThrottlePercent*10))), 0)
		ThrottlePercent = ThrottlePercent - ((Acceleration*0.95)*(1 - math.abs(SteerPercent)))
		local SteerAngle = SteerPercent*(SteerPower*1.5)
		if SteerAngle > 80 then SteerAngle = 80 end
		if SteerAngle < -80 then SteerAngle = -80 end
		pcall(function() FrontLeftWheel[2].C0 = CFrame.new(FrontLeftWheel[2].C0.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(SteerAngle), math.rad(90)) end)
		pcall(function() FrontRightWheel[2].C0 = CFrame.new(FrontRightWheel[2].C0.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(SteerAngle), math.rad(90)) end)
	else
		Steer.maxTorque = Vector3.new(0, 0, 0)
		pcall(function() FrontLeftWheel[2].C0 = CFrame.new(FrontLeftWheel[2].C0.p) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90)) end)
		pcall(function() FrontRightWheel[2].C0 = CFrame.new(FrontRightWheel[2].C0.p) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90)) end)
	end
	if Seat1:findFirstChild("SeatWeld") and not Driver then
		local Part = Seat1.SeatWeld.Part1
		if Part then
			Driver = game:GetService("Players"):GetPlayerFromCharacter(Part.Parent)
			if Driver then
				local PlayerGui = Driver:findFirstChild("PlayerGui")
				if not PlayerGui then PlayerGui = Instance.new("PlayerGui", Driver) end
				local DriverGui = Instance.new("ScreenGui", PlayerGui)
				DriverGui.Name = "DriverGui"
				local Background = Instance.new("Frame", DriverGui)
				Background.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
				Background.BorderColor3 = Color3.new(0, 0, 0)
				Background.BorderSizePixel = 1
				Background.Name = "Content"
				Background.Position = UDim2.new(0, 0, 1, -175/2)
				Background.Size = UDim2.new(1, 0, 0, 175)
				local SpeedText = Instance.new("TextLabel", Background)
				SpeedText.BackgroundTransparency = 1
				SpeedText.BorderSizePixel = 0
				SpeedText.FontSize = "Size12"
				SpeedText.Position = UDim2.new(0, 15, 0, 7.5)
				SpeedText.Size = UDim2.new(0, 85, 0, 45)
				SpeedText.Text = "Speed"
				SpeedText.TextColor3 = Color3.new(255, 255, 255)
				SpeedText.TextXAlignment = "Left"
				local SpeedBack = Instance.new("Frame", Background)
				SpeedBack.BackgroundColor3 = Color3.new(0.9, 0, 0)
				SpeedBack.BorderColor3 = Color3.new(0, 0, 0)
				SpeedBack.BorderSizePixel = 1
				SpeedBack.Name = "SpeedBack"
				SpeedBack.Position = UDim2.new(0, 100, 0, 7.5)
				SpeedBack.Size = UDim2.new(0, 175, 0, 30)
				local SpeedFront = Instance.new("Frame", Background)
				SpeedFront.BackgroundColor3 = Color3.new(0, 0.9, 0)
				SpeedFront.BorderColor3 = Color3.new(0, 0, 0)
				SpeedFront.BorderSizePixel = 1
				SpeedFront.Name = "SpeedFront"
				local rt = Instance.new("TextButton", Background)
				rt.BackgroundColor3 = Color3.new(0, 0.9, 0)
				rt.BorderColor3 = Color3.new(0, 0, 0) 
				rt.Text = "RTurn" 
				rt.Position = UDim2.new(0, 280, 0, 45)
				rt.Size = UDim2.new(0, 85, 0, 25)
				rt.BorderSizePixel = 1
				rt.Name = "right blinker on"
				local flp = Instance.new("TextButton", Background)
				flp.BackgroundColor3 = Color3.new(0, 0.9, 0)
				flp.BorderColor3 = Color3.new(0, 0, 0) 
				flp.Text = "Flip" 
				flp.Position = UDim2.new(0, 120, 0, 45)
				flp.Size = UDim2.new(0, 85, 0, 25)
				flp.BorderSizePixel = 1
				flp.Name = "FLIPPER" 
				local ry = Instance.new("TextButton", Background)
				ry.BackgroundColor3 = Color3.new(0, 0.9, 0)
				ry.BorderColor3 = Color3.new(0, 0, 0)
				ry.Position = UDim2.new(0, 280, 0, 45)
				ry.Size = UDim2.new(0, 85, 0, 25)
				ry.BorderSizePixel = 1 
				ry.Text = "RTurn off" 
				ry.Active = false 
				ry.Visible = false 
				ry.Name = "right blinker off"
				rt.MouseButton1Click:connect(function() 
				rt.Active = false 
				rt.Visible = false 
				RightBlinker[1].Transparency = 0 
				RightBlinker[1].Reflectance = 0.5
				ry.Active = true 
				ry.Visible = true 
				end) 
				ry.MouseButton1Click:connect(function() 
				rt.Active = true 
				rt.Visible = true 
				RightBlinker[1].Transparency = 0.5 
				RightBlinker[1].Reflectance = 0
				ry.Active = false 
				ry.Visible = false 
				end) 
				flp.MouseButton1Click:connect(function() 
				
				end) 
				coroutine.wrap(function()
					while DriverGui and DriverGui.Parent do
						SpeedFront.Position = SpeedBack.Position
						SpeedFront.Size = SpeedBack.Size - UDim2.new(0, SpeedBack.Size.X.Offset*(1 - math.abs(ThrottlePercent)), 0, 0)
						wait()
					end
				end)()
			end
		end
	elseif not Seat1:findFirstChild("SeatWeld") and Driver then
		if Driver:findFirstChild("PlayerGui") then
			if Driver.PlayerGui:findFirstChild("DriverGui") then
				Driver.PlayerGui.DriverGui:Remove()
			end
		end
		Driver = nil
	end
	wait()
end
