--[[
8 Gauge Shotgun
A humungous shotgun that fires 6 deadly 8-gauge shells.
--]]


if script == nil then return end


ModelName = "8 Gauge"
AmmoType = "8-gauge shell"
MagazineCapacity = 6
MagazineCapacityAdd = 1
Player = Game:GetService("Players").LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:Destroy()
end
Selected = false
Connected = false
Button1Down = false
CanUse = true
Aiming = true


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


function tagHumanoid(humanoid)
	local tag = Instance.new("ObjectValue")
	tag.Name = "creator"
	tag.Value = Player
	tag.Parent = humanoid
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:FindFirstChild("creator")
		if tag ~= nil then
			tag:Remove()
		end
	end
end


--[[
CameraPunch v5

Functions:
CameraPunch
CameraSlide
--]]


function CameraPunch(X, Y)
	X, Y = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000)
	Workspace.CurrentCamera.CoordinateFrame =
		CFrame.new(Workspace.CurrentCamera.Focus.p) *
		CFrame.fromEulerAnglesXYZ(CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p, Workspace.CurrentCamera.Focus.p):toEulerAnglesXYZ()) *
		CFrame.fromEulerAnglesXYZ(X, Y, 0) *
		CFrame.new(0, 0, (Workspace.CurrentCamera.CoordinateFrame.p - Workspace.CurrentCamera.Focus.p).magnitude)
end


function CameraSlide(X, Y, Step)
	X, Y, Step = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000), Step or 0.1
	for i = 0, 1, Step do
		CameraPunch(Step * X, Step * Y)
		wait()
	end
end


SoundToServer = function(Name, SoundId, Pitch, Volume, Looped, Parent)
local Sound = Instance.new("Sound") 
Sound.Name = Name
Sound.SoundId = SoundId
Sound.Pitch = Pitch
Sound.Volume = Volume
Sound.Looped = Looped
Sound.Parent = Parent
Sound:Play()
end


--[[
CFrameTween v4

Functions:
PropertyCFrameTween
--]]


function PropertyCFrameTween(Part, Property, End, Step, Wrap)
	if Part == nil then return end
	local StartPosition = Part[Property].p
	local StartAngle = Vector3.new(Part[Property]:toEulerAnglesXYZ())
	local EndPosition = End.p
	local EndAngle = Vector3.new(End:toEulerAnglesXYZ())
	local Loop = coroutine.create(function()
		for i = 0, 1, Step do
			Part[Property] =
				CFrame.new((StartPosition * (1 - i)) + (EndPosition * i)) *
				CFrame.fromEulerAnglesXYZ(
					(StartAngle.x * (1 - i)) + (EndAngle.x * i),
					(StartAngle.y * (1 - i)) + (EndAngle.y * i),
					(StartAngle.z * (1 - i)) + (EndAngle.z * i)
				)
			wait()
		end
		Part[Property] = End
	end)
	coroutine.resume(Loop)
	if Wrap ~= true then
		while coroutine.status(Loop) ~= "dead" do wait() end
	end
end


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Parent

	local Handle = Instance.new("Part", Parts)
	Handle.Material = "SmoothPlastic"
	Handle.Name = "Handle"
	Handle.BrickColor = BrickColor.new("Really black")
	Handle.TopSurface = 0
	Handle.BottomSurface = 0
	Handle.FormFactor = "Custom"
	Handle.Size = Vector3.new(0.5, 0.7, 1.3)
	local Weld = Instance.new("Weld", Handle)
	Weld.Part0 = Weld.Parent
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-40), math.rad(90), 0) * CFrame.new(0, 0, -0.7)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9)
	end

	local Stock1 = Instance.new("Part", Parts)
	Stock1.Material = "SmoothPlastic"
	Stock1.Name = "Stock 1"
	Stock1.BrickColor = BrickColor.new("Really black")
	Stock1.TopSurface = 0
	Stock1.BottomSurface = 0
	Stock1.FormFactor = "Custom"
	Stock1.Size = Vector3.new(0.5, 0.6, 1.6)
	local Weld = Instance.new("Weld", Stock1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-45), 0, 0) * CFrame.new(0, 0.43, -1.005)

	local Stock2 = Instance.new("WedgePart", Parts)
	Stock2.Material = "SmoothPlastic"
	Stock2.Name = "Stock 2"
	Stock2.BrickColor = BrickColor.new("Really black")
	Stock2.TopSurface = 0
	Stock2.BottomSurface = 0
	Stock2.FormFactor = "Custom"
	Stock2.Size = Vector3.new(0.5, 0.9, 0.9)
	local Weld = Instance.new("Weld", Stock2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Stock1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(135), 0, 0) * CFrame.new(0, -0.3, -0.15)

	local Pipe1 = Instance.new("Part", Parts)
	Pipe1.Material = "SmoothPlastic"
	Pipe1.Name = "Pipe 1"
	Pipe1.BrickColor = BrickColor.new("Light grey")
	Pipe1.Reflectance = 0.1
	Pipe1.TopSurface = 0
	Pipe1.BottomSurface = 0
	Pipe1.FormFactor = "Custom"
	Pipe1.Size = Vector3.new(0.3, 0.3, 3.2)
	Instance.new("BlockMesh", Pipe1)
	local Weld = Instance.new("Weld", Pipe1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, -0.15, 1.6 + 0.55)

	local Pipe2 = Instance.new("Part", Parts)
	Pipe2.Material = "SmoothPlastic"
	Pipe2.Name = "Pipe 2"
	Pipe2.BrickColor = BrickColor.new("Light grey")
	Pipe2.Reflectance = 0.1
	Pipe2.TopSurface = 0
	Pipe2.BottomSurface = 0
	Pipe2.FormFactor = "Custom"
	Pipe2.Size = Vector3.new(0.3, 0.3, 1.7)
	Instance.new("BlockMesh", Pipe2)
	local Weld = Instance.new("Weld", Pipe2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, 0.15, 0.85 + 0.55)

	local Pipe3 = Instance.new("Part", Parts)
	Pipe3.Material = "SmoothPlastic"
	Pipe3.Name = "Pipe 3"
	Pipe3.BrickColor = BrickColor.new("Light grey")
	Pipe3.Reflectance = 0.1
	Pipe3.TopSurface = 0
	Pipe3.BottomSurface = 0
	Pipe3.FormFactor = "Custom"
	Pipe3.Size = Vector3.new(0.25, 0.25, 1.6)
	Instance.new("BlockMesh", Pipe3)
	local Weld = Instance.new("Weld", Pipe3)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Pipe2
	Weld.C0 = CFrame.new(0, 0, 0.8 + 0.7)

	local Pump1 = Instance.new("Part", Parts)
	Pump1.Material = "SmoothPlastic"
	Pump1.Name = "Pump"
	Pump1.BrickColor = BrickColor.new("Really black")
	Pump1.TopSurface = 0
	Pump1.BottomSurface = 0
	Pump1.FormFactor = "Custom"
	Pump1.Size = Vector3.new(0.45, 0.45, 1.1)
	Instance.new("BlockMesh", Pump1)
	local Weld = Instance.new("Weld", Pump1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Pipe3
	Weld.C0 = CFrame.new(0, 0, -0.6)

	local Pump2 = Instance.new("Part", Parts)
	Pump2.Material = "SmoothPlastic"
	Pump2.Name = "Pump 2"
	Pump2.BrickColor = BrickColor.new("Really black")
	Pump2.TopSurface = 0
	Pump2.BottomSurface = 0
	Pump2.FormFactor = "Custom"
	Pump2.Size = Vector3.new(0.5, 0.5, 0.3)
	Instance.new("BlockMesh", Pump2)
	local Weld = Instance.new("Weld", Pump2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Pump1
	Weld.C0 = CFrame.new(0, 0, 0.5)

	for i = -20, 200, 20 do
		local TriggerGuard1 = Instance.new("Part", Parts)
		TriggerGuard1.Material = "SmoothPlastic"
		TriggerGuard1.Name = "Trigger Guard 1 " ..i
		TriggerGuard1.BrickColor = BrickColor.new("Really black")
		TriggerGuard1.TopSurface = 0
		TriggerGuard1.BottomSurface = 0
		TriggerGuard1.FormFactor = "Custom"
		TriggerGuard1.Size = Vector3.new(0.2, 0.2, 0.2)
		local Mesh = Instance.new("BlockMesh", TriggerGuard1)
		Mesh.Scale = Vector3.new(0.4, 0.6, 0.4)
		local Weld = Instance.new("Weld", TriggerGuard1)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Handle
		Weld.C0 = CFrame.new(0, 0, -0.2)
		Weld.C1 = CFrame.new(0, -0.45, -0.32) * CFrame.fromEulerAnglesXYZ(math.rad(i), 0, 0)
	end

	local TriggerGuard2 = Instance.new("Part", Parts)
	TriggerGuard2.Material = "SmoothPlastic"
	TriggerGuard2.Name = "Trigger Guard 2"
	TriggerGuard2.BrickColor = BrickColor.new("Really black")
	TriggerGuard2.TopSurface = 0
	TriggerGuard2.BottomSurface = 0
	TriggerGuard2.FormFactor = "Custom"
	TriggerGuard2.Size = Vector3.new(0.2, 0.2, 0.3)
	local Mesh = Instance.new("BlockMesh", TriggerGuard2)
	Mesh.Scale = Vector3.new(0.4, 1, 1)
	local Weld = Instance.new("Weld", TriggerGuard2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, 0.45, -0.2)
	Weld.C1 = CFrame.new(0, 0, -0.32) * CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, 0)

	local Trigger = Instance.new("Part", Parts)
	Trigger.Material = "SmoothPlastic"
	Trigger.Name = "Trigger Guard 2"
	Trigger.BrickColor = BrickColor.new("Really black")
	Trigger.TopSurface = 0
	Trigger.BottomSurface = 0
	Trigger.FormFactor = "Custom"
	Trigger.Size = Vector3.new(0.2, 0.3, 0.2)
	local Mesh = Instance.new("BlockMesh", Trigger)
	Mesh.Scale = Vector3.new(0.5, 0.9, 0.3)
	local Weld = Instance.new("Weld", Trigger)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.new(0, 0.45, 0.275) * CFrame.fromEulerAnglesXYZ(math.rad(2), 0, 0)

	local Aim = Instance.new("Part", Parts)
	Aim.Material = "SmoothPlastic"
	Aim.Name = "Aim"
	Aim.BrickColor = BrickColor.new("Really black")
	Aim.TopSurface = 0
	Aim.BottomSurface = 0
	Aim.FormFactor = "Custom"
	Aim.Size = Vector3.new(0.3, 0.2, 0.7)
	local Mesh = Instance.new("BlockMesh", Aim)
	Mesh.Scale = Vector3.new(1, 0.7, 1)
	local Weld = Instance.new("Weld", Aim)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Pipe1
	Weld.C0 = CFrame.new(0, -0.12, 1.1)

	local Aim1 = Instance.new("Part", Parts)
	Aim1.Material = "SmoothPlastic"
	Aim1.Name = "Aim 1"
	Aim1.BrickColor = BrickColor.new("Really black")
	Aim1.TopSurface = 0
	Aim1.BottomSurface = 0
	Aim1.FormFactor = "Custom"
	Aim1.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("BlockMesh", Aim1).Scale = Vector3.new(0.3, 0.7, 0.5)
	local Weld = Instance.new("Weld", Aim1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Aim
	Weld.C0 = CFrame.new(0.1, -0.1, -0.25)

	local Aim2 = Instance.new("Part", Parts)
	Aim2.Material = "SmoothPlastic"
	Aim2.Name = "Aim 2"
	Aim2.BrickColor = BrickColor.new("Really black")
	Aim2.TopSurface = 0
	Aim2.BottomSurface = 0
	Aim2.FormFactor = "Custom"
	Aim2.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("BlockMesh", Aim2).Scale = Vector3.new(0.3, 0.7, 0.5)
	local Weld = Instance.new("Weld", Aim2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Aim
	Weld.C0 = CFrame.new(-0.1, -0.1, -0.25)

	local Aim3 = Instance.new("Part", Parts)
	Aim3.Material  = "SmoothPlastic"
	Aim3.Name = "Aim 3"
	Aim3.BrickColor = BrickColor.new("Really black")
	Aim3.TopSurface = 0
	Aim3.BottomSurface = 0
	Aim3.FormFactor = "Custom"
	Aim3.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("BlockMesh", Aim3).Scale = Vector3.new(0.3, 0.7, 0.5)
	local Weld = Instance.new("Weld", Aim3)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Aim
	Weld.C0 = CFrame.new(0, -0.1, 0.25)

	local Flip = Instance.new("Part", Parts)
	Flip.Material = "SmoothPlastic"
	Flip.Name = "Flip"
	Flip.BrickColor = BrickColor.new("Light grey")
	Flip.TopSurface = 0
	Flip.BottomSurface = 0
	Flip.FormFactor = "Custom"
	Flip.Size = Vector3.new(0.2, 0.3, 0.6)
	Instance.new("BlockMesh", Flip).Scale = Vector3.new(0.3, 0.7, 0.5)
	local Weld = Instance.new("Weld", Flip)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Handle
	Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(10), 0) * CFrame.new(-0.25, -0.175, 0.2)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Source"
	Part.Transparency = 1
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Handle
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, -0.15, 4.3)
	Weld.Parent = Weld.Part0
	local Fire = Instance.new("Fire", Part)
	Fire.Enabled = false
	Fire.Size = 10
	Fire.Heat = 20
	Fire.Color = Color3.new(1, 0.6, 0.2)
	Fire.SecondaryColor = Color3.new(0.6, 0.1, 0.05)
	local Smoke = Instance.new("Smoke", Part)
	Smoke.Enabled = false
	Smoke.Size = 20
	Smoke.RiseVelocity = 15
	Smoke.Color = Color3.new(0.8, 0.8, 0.8)
	Smoke.Opacity = 0.3

	for _, Part in pairs(Parts:GetChildren()) do
		Part.Locked = true
		Part.CanCollide = false
	end
end


function RemoveParts(Parent, Format)
	if Format == 1 then
		pcall(function() Parent[ModelName.. " (Holstered)"]:Remove() end)
	elseif Format == 2 then
		pcall(function() Parent[ModelName]:Remove() end)
	end
end


function SetAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
	end
end


function ForceAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
		Joints[Joint].CurrentAngle = -Angle
	end
end


function SetSpeed(Joint, Speed, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder"),
		Character.Torso:FindFirstChild("Left Shoulder"),
		Character.Torso:FindFirstChild("Right Hip"),
		Character.Torso:FindFirstChild("Left Hip")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	local Joint = Instance.new("Motor6D")
	Joint.Parent = Character.Torso
	Joint.Part0 = Character.Torso
	Joint.Part1 = Limbs[Limb]
	if Limb == 1 then
		Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Shoulder 2"
	elseif Limb == 2 then
		Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Shoulder 2"
	elseif Limb == 3 then
		Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Hip 2"
	elseif Limb == 4 then
		Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Hip 2"
	end
	Joint.MaxVelocity = Joints[Limb].MaxVelocity
	Joint.CurrentAngle = Joints[Limb].CurrentAngle
	Joint.DesiredAngle = Joints[Limb].DesiredAngle
	Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
	if Character == nil then return false end
	if Character.Parent == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 2 then
		Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	elseif Limb == 3 then
		Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 4 then
		Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	end
end


function EnableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].Name = "Right Shoulder"
	elseif Limb == 2 then
		Joints[Limb].Name = "Left Shoulder"
	elseif Limb == 3 then
		Joints[Limb].Name = "Right Hip"
	elseif Limb == 4 then
		Joints[Limb].Name = "Left Hip"
	end
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end

attackdebounce = false
Torso = Char.Torso
CRIT = false
Damagefunc1=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=Char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(0,99)+math.random()<=5 then
			CRIT=true
			Damage=Damage*1.5
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso
			critsound(2)]] 
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

showDamage=function(Char,Dealt,du)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Material = "SmoothPlastic"
	c.Transparency=0
	c.BrickColor=BrickColor:Red()
	if CRIT==true then
		c.BrickColor=BrickColor.new("Really red")
	end
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")
	
	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1.25,1.5,1.25)
		
	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end

function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true then
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 10, 0.5, false, Player.Character[ModelName].Handle)
		if script.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=2697294", 0.75, 1, false, Player.Character[ModelName].Handle)
		coroutine.wrap(function()
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = true
				Player.Character[ModelName].Source.Smoke.Enabled = true
			end)
			wait(0.5)
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = false
				Player.Character[ModelName].Source.Smoke.Enabled = false
			end)
		end)()
		for i = 1, 8 do
			local Bullet = Instance.new("Part", Workspace)
			Bullet.Material = "SmoothPlastic"
			Bullet.Name = "Bullet"
			Bullet.TopSurface = 0
			Bullet.BottomSurface = 0
			Bullet.BrickColor = BrickColor.new("Really black")
			Bullet.Locked = true
			Bullet.FormFactor = "Custom"
			Bullet.Size = Vector3.new(0.2, 0.2, 0.2)
			Bullet.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, 1.5, 0) * CFrame.new(math.random(-750, 750) / 1000, math.random(-750, 750) / 1000, math.random(-750, 750) / 1000)
			Bullet.Elasticity = 0
			Bullet.Friction = 0
			Instance.new("SpecialMesh", Bullet).MeshType = "Sphere"
			tagHumanoid(Bullet)
			local BodyVelocity = Instance.new("BodyVelocity", Bullet)
			BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 100) + Vector3.new(math.random(-9000, 9000) / 1000, math.random(-9000, 9000) / 1000, math.random(-9000, 9000) / 1000)
			Con1 = Bullet.Touched:connect(function(hit) Damagefunc1(hit,15,10) end) 
			game:GetService("Debris"):AddItem(Bullet, 2)
		end
		CameraPunch(math.rad(40), 0)
		local AimGyroAdd = Instance.new("CFrameValue", Player.Character)
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.fromEulerAnglesXYZ(math.rad(-80), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9),
			0.2, true)
		PropertyCFrameTween(AimGyroAdd, "Value",
			CFrame.fromEulerAnglesXYZ(0, math.rad(-70), 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.5, 0.45, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(110), 0, math.rad(-25)),
			0.2, false)
		wait(0.3)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.2, 0.45, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(105), 0, math.rad(-5)),
			0.1, true)
		PropertyCFrameTween(Player.Character[ModelName].Flip.Weld, "C1",
			CFrame.new(-0.1, 0, 0.7),
			0.1, true)
		PropertyCFrameTween(Player.Character[ModelName].Pump.Weld, "C1",
			CFrame.new(0, 0, 0.7),
			0.1, false)
		pcall(function() 
			local Shell = Instance.new("Part", Workspace)
			Shell.Name = "Shell"
			Shell.TopSurface = 0
			Shell.BottomSurface = 0
			Shell.FormFactor = "Custom"
			Shell.BrickColor = BrickColor.new("Bright blue")
			Shell.Size = Vector3.new(0.25, 0.4, 0.25)
			Shell.CFrame = Player.Character[ModelName].Handle.CFrame * CFrame.new(0.5, 0.175, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			Shell.Velocity = ((Player.Character[ModelName].Handle.Position - (Player.Character[ModelName].Handle.CFrame * CFrame.new(-1, 0, 0)).p).unit) * 10
			Shell:BreakJoints()
			Instance.new("CylinderMesh", Shell)
			game:GetService("Debris"):AddItem(Shell, 10)
		end)
		script.Magazine.Value = script.Magazine.Value - 1
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(110), 0, math.rad(-25)),
			0.1, true)
		PropertyCFrameTween(Player.Character[ModelName].Flip.Weld, "C1",
			CFrame.new(),
			0.1, true)
		PropertyCFrameTween(Player.Character[ModelName].Pump.Weld, "C1",
			CFrame.new(),
			0.1, false)

		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9),
			0.2, true)
		PropertyCFrameTween(AimGyroAdd, "Value",
			CFrame.fromEulerAnglesXYZ(0, math.rad(-60), 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-35)),
			0.2, false)
		CanUse = true
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "y" and Aiming == false then
		Aiming = true
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C0",
			CFrame.new(),
			0.05, true)
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9),
			0.05, true)
		PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
			CFrame.fromEulerAnglesXYZ(0, math.rad(-60), 0),
			0.05, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
			0.05, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
			0.05, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-35)),
			0.05, false)
		CanUse = true
		return
	end
	if Button1Down == false and CanUse == true and CheckPlayer() == true then
		if Key == "q" then
			if Mouse.Target == nil then return end
			if CheckPlayer() == false then return end
			local NewPlayer = game:GetService("Players"):GetPlayerFromCharacter(Mouse.Target.Parent)
			if NewPlayer == nil then return end
			if NewPlayer.Character == nil then return end
			if NewPlayer.Character:FindFirstChild("Torso") == nil then return end
			if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
			onDeselected(Mouse)
			wait()
			RemoveParts(Player.Character, 1)
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		elseif Key == "r" then
			if script.Magazine.Value >= MagazineCapacity + MagazineCapacityAdd then return end
			CanUse = false
			local Loaded = script.Magazine.Value > 0
			local Weld = Player.Character[ModelName].Handle.Weld
			PropertyCFrameTween(Weld, "C1",
				CFrame.fromEulerAnglesXYZ(math.rad(-80), math.rad(40), math.rad(40)) * CFrame.new(-0.2, 0.25, -0.9),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
				CFrame.new(0.3, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), math.rad(-5), math.rad(-10)),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(110), math.rad(10), math.rad(-20)),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(95), 0, math.rad(-20)),
				0.1, false)
			Weld.C1 = Weld.Part0.CFrame:toObjectSpace(Player.Character["Left Arm"].CFrame):inverse()
			Weld.Part1 = Player.Character["Left Arm"]
			while script.Magazine.Value < (Loaded == true and MagazineCapacity + MagazineCapacityAdd or MagazineCapacity) and Player.Backpack.Ammo[AmmoType].Value > 0 and Button1Down == false do
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(1.5, 0.5, 0),
					0.15, false)
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - 1
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(1.3, 0.35, 0.2) * CFrame.fromEulerAnglesXYZ(math.rad(95), 0, math.rad(-45)),
					0.1, false)
				SoundToServer("Reload", "http://www.roblox.com/Asset/?id=10209845", math.random(1900, 2100) / 1000, 0.9, false, Player.Character[ModelName].Handle)
				script.Magazine.Value = script.Magazine.Value + 1
				wait()
			end
			Weld.C1 = Weld.Part0.CFrame:toObjectSpace(Player.Character["Right Arm"].CFrame):inverse()
			Weld.Part1 = Player.Character["Right Arm"]
			if Loaded == false then
				Source = Char[ModelName]:FindFirstChild("Source")
				local Sound = Instance.new("Sound", Source)
Sound.Name = "Reload"
Sound.SoundId = "http://www.roblox.com/Asset/?id=2697294"
Sound.Pitch = 0.75
Sound.Volume = 0
Sound:Play()
wait(0.5)
for i = 0, 1, 0.2 do
	Sound.Volume = i
	wait()
end
Sound.Volume = 1
wait(1.5)
Sound:Remove()

				PropertyCFrameTween(Weld, "C1",
					CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(20), 0) * CFrame.new(0, -0.9, -0.3),
					0.08, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(50), math.rad(5)),
					0.08, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1.4, 0.45, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(125), 0, math.rad(-10)),
					0.08, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(1.1, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(50), math.rad(40), math.rad(-40)),
					0.08, false)

				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(5), math.rad(45), math.rad(10)),
					0.1, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1.4, 0.45, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(20)),
					0.1, true)
				PropertyCFrameTween(Player.Character[ModelName].Flip.Weld, "C1",
					CFrame.new(-0.1, 0, 0.7),
					0.1, true)
				PropertyCFrameTween(Player.Character[ModelName].Pump.Weld, "C1",
					CFrame.new(0, 0, 0.7),
					0.1, false)

				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
					CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(50), math.rad(5)),
					0.1, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
					CFrame.new(-1.4, 0.45, 0.4) * CFrame.fromEulerAnglesXYZ(math.rad(125), 0, math.rad(-10)),
					0.1, true)
				PropertyCFrameTween(Player.Character[ModelName].Flip.Weld, "C1",
					CFrame.new(),
					0.1, true)
				PropertyCFrameTween(Player.Character[ModelName].Pump.Weld, "C1",
					CFrame.new(),
					0.1, false)
			end
			PropertyCFrameTween(Weld, "C1",
				CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-10), 0) * CFrame.new(0, 0.5, -0.9),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
				CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-35)),
				0.05, false)
			wait()
			CanUse = true
		    elseif Key == "y" then
			CanUse = false
			PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C0",
				CFrame.fromEulerAnglesXYZ(math.rad(-60), math.rad(3), math.rad(-20)) * CFrame.new(0.5, -0.5, 0.6),
				0.05, true)
			PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
				CFrame.fromEulerAnglesXYZ(math.rad(18), 0, 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.AimGyroAdd, "Value",
				CFrame.fromEulerAnglesXYZ(0, math.rad(40), 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
				CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-40), 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1.5, 0.5, 0),
				0.05, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, 0),
				0.05, false)
			Aiming = false
		end
	end
end


function onSelected(Mouse)
	if Selected == true then return end
	CanUse = false
	while true do
		if CheckPlayer() == true then
			if Player.Character.Torso:FindFirstChild("Right Shoulder") ~= nil and Player.Character.Torso:FindFirstChild("Left Shoulder") ~= nil then
				break
			end
		end
		wait(0.1)
	end
	Selected = true
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, 0, Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.5, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.2)
	Player.Character.Torso["Neck"].C0 = CFrame.new(0, 1, 0)
	Player.Character.Torso["Neck"].C1 = CFrame.new(0, -0.5, 0)
	Player.Character.Torso:FindFirstChild("Left Shoulder 2").C0 = CFrame.new(-1.5, 0.5, 0)
	Player.Character.Torso:FindFirstChild("Left Shoulder 2").C1 = CFrame.new(0, 0.5, 0)
	Player.Character.Torso:FindFirstChild("Right Shoulder 2").C0 = CFrame.new(1.5, 0.5, 0)
	Player.Character.Torso:FindFirstChild("Right Shoulder 2").C1 = CFrame.new(0, 0.5, 0)
	local AimGyroAdd = Instance.new("CFrameValue", Player.Character)
	AimGyroAdd.Name = "AimGyroAdd"
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
		CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, math.rad(-10)),
		0.15, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(50), 0),
		0.15, true)
	PropertyCFrameTween(AimGyroAdd, "Value",
		CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
		0.15, false)
	wait()
	local Weld = Player.Character[ModelName.. " (Holstered)"].Handle.Weld
	Weld.C0 = Player.Character[ModelName.. " (Holstered)"].Handle.CFrame:toObjectSpace(Player.Character["Right Arm"].CFrame)
	Weld.Part1 = Player.Character["Right Arm"]
	PropertyCFrameTween(Weld, "C0",
		CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0) * CFrame.new(0, 0.9, 0.5),
		0.05, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.2, 0.45, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-70)),
		0.05, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
		CFrame.new(-1.4, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-35)),
		0.05, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
		CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(60), 0),
		0.05, true)
	PropertyCFrameTween(AimGyroAdd, "Value",
		CFrame.fromEulerAnglesXYZ(0, math.rad(-60), 0),
		0.05, false)
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
	while CanUse == false do wait() end
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso:FindFirstChild("Right Shoulder 2") end) == false then
		RemoveParts(Player.Character, 2)
		CreateParts(Player.Character, 1)
		SetAngle(1, 0, Player.Character)
		ResetLimbCFrame(1, Player.Character)
		EnableLimb(1, Player.Character)
		SetAngle(2, 0, Player.Character)
		ResetLimbCFrame(2, Player.Character)
		EnableLimb(2, Player.Character)
		return
	end
	if Selected == true then return end
	CanUse = false
	Player.Character.AimGyroAdd:Remove()

	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
		CFrame.new(0, 1, 0),
		0.1, true)

	if Aiming == true then
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
			CFrame.new(-0.2, -0.58, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(60), 0, math.rad(40)),
			0.05, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1.5, 0.5, 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(50), math.rad(-90), 0),
			0.05, false)
	else
		Aiming = true
		PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C0",
			CFrame.new(),
			0.1, true)
	end

	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(50), 0),
		0.05, true)
	PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
		CFrame.new(0.1, 0.3, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(120), 0, math.rad(50)),
		0.05 * 2, false)
	PropertyCFrameTween(Player.Character[ModelName].Handle.Weld, "C1",
		CFrame.new(-0.65, -0.2, -1.6) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, math.rad(90)),
		0.05 * 2, false)

	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)

	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, 0),
		0.025 * 5, false)
	Player.Character.Torso["Neck"].C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
	Player.Character.Torso["Neck"].C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
	SetAngle(1, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
	SetAngle(2, 0, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(2, Player.Character)
	CanUse = true
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	Instance.new("IntValue", script).Name = "Magazine"
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" and Connected == false then
	Connected = true
	Player = script.Parent.Parent.Parent
    end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
    end
	Instance.new("Configuration", Player.Backpack).Name = "Ammo"
	Instance.new("IntValue", Player.Backpack.Ammo).Name = AmmoType
	Player.Backpack.Ammo[AmmoType].Value = MagazineCapacity * 2
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	--[[
MouseAim v11
--]]


script.Parent.Selected:connect(function(Mouse)
	while Selected == false do wait() end
	while Selected == true do
		if script.Parent == nil then break end
		if Player.Character:FindFirstChild("Humanoid") == nil or Player.Character:FindFirstChild("Torso") == nil then break end
		if Player.Character.Humanoid.Health > 0 and Player.Character.Humanoid.Sit == false and Player.Character.Humanoid.PlatformStand == false and Player.Character.Torso:FindFirstChild("BodyGyro") == nil and Player.Character.Torso:FindFirstChild("BodyAngularVelocity") == nil and Player.Character:FindFirstChild("Ragdoll") == nil then
			local AimGyro = Instance.new("BodyGyro")
			game:GetService("Debris"):AddItem(AimGyro, 0)
			AimGyro.Parent = Player.Character.Torso
			AimGyro.Name = "AimGyro"
			AimGyro.P = 40000
			AimGyro.D = 300
			AimGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			AimGyro.cframe = CFrame.new(Player.Character.Torso.Position, Vector3.new(Mouse.Hit.p.x, Player.Character.Torso.Position.y, Mouse.Hit.p.z)) * (Player.Character:FindFirstChild("AimGyroAdd") and Player.Character.AimGyroAdd.Value or CFrame.new())
		end
		wait()
	end
end)
	--[[
AmmoCounter v5
--]]


local Gui = nil


local function Remove()
	if Gui ~= nil then
		local Gui2 = Gui
		Gui = nil
		if Gui2.Parent ~= nil then
			Gui2.AmmoCounter:TweenPosition(UDim2.new(0.35, 0, 1, 0), "In", "Quart", 0.5, true)
			wait(0.5)
		end
		Gui2:Remove()
	end
end


script.Parent.Selected:connect(function(Mouse)
	while Selected == false do wait() end
	local DualConnection1, DualConnection2
	Gui = Instance.new("ScreenGui", Player.PlayerGui)
	Gui.Name = "AmmoCounter"
	local AmmoCounter = Instance.new("Frame", Gui)
	AmmoCounter.Name = "AmmoCounter"
	AmmoCounter.BorderColor3 = Color3.new(0, 0, 0)
	AmmoCounter.BackgroundTransparency = 0.8
	AmmoCounter.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
	AmmoCounter.Size = UDim2.new(0.3, 0, 0, 100)
	AmmoCounter.Position = UDim2.new(0.35, 0, 1, 0)
	AmmoCounter:TweenPosition(UDim2.new(0.35, 0, 1, -200), "Out", "Quart", 0.5, true)
	local Notification = Instance.new("TextLabel", AmmoCounter)
	Notification.Name = "Notification"
	Notification.Text = ""
	Notification.TextTransparency = 1
	Notification.Font = "ArialBold"
	Notification.FontSize = "Size18"
	Notification.BorderColor3 = Color3.new(0, 0, 0)
	Notification.BackgroundTransparency = 0.3
	Notification.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	Notification.Size = UDim2.new(1, -10, 0, 20)
	Notification.Position = UDim2.new(0, 5, 0, 5)
	coroutine.wrap(function()
		local Reloading = false
		local OldMagazine = script.Magazine.Value
		local OldMagazineDual = nil
		pcall(function() OldMagazineDual = script.Dual.Main.Magazine.Value end)
		while Notification.Parent ~= nil do
			if OldMagazineDual == nil then
				pcall(function() OldMagazineDual = script.Dual.Main.Magazine.Value end)
			end
			if Reloading == false then
				if ((script.Magazine.Value > OldMagazine or OldMagazine - script.Magazine.Value > 1) or (Dual == true and (script.Dual.Main.Magazine.Value > OldMagazineDual or OldMagazineDual - script.Dual.Main.Magazine.Value > 1))) and CanUse == false then
					Reloading = true
				end
			else
				if CanUse == true then
					Reloading = false
				end
			end
			OldMagazine = script.Magazine.Value
			pcall(function() OldMagazineDual = script.Dual.Main.Magazine.Value end)
			if Reloading == true then
				Notification.TextTransparency = 0
				Notification.TextColor3 = Color3.new(0.1, 0.8, 0.1)
				Notification.Text = "Reloading..."
				wait()
			else
				if (script.Magazine.Value / MagazineCapacity < 0.2) or (Dual == true and (script.Dual.Main.Magazine.Value / MagazineCapacity < 0.2)) then
					Notification.TextColor3 = Color3.new(1, 0.1, 0.05)
					Notification.TextTransparency = 0
				else
					Notification.TextColor3 = CanUse == false and Color3.new(0.8, 0.8, 0.8) or Color3.new(0, 0, 0)
					Notification.TextTransparency = 0
				end
				Notification.Text = "Magazine: " ..script.Magazine.Value .. (Dual == true and ("/" ..script.Dual.Main.Magazine.Value) or "")
				wait()
			end
		end
	end)()
	for x = 1, Dual ~= nil and 2 or 1 do
		for i = 1, MagazineCapacity + MagazineCapacityAdd do
			local Bullet = Instance.new("Frame", AmmoCounter)
			Bullet.Name = i.. ", " ..x
			Bullet.BorderColor3 = Color3.new(0, 0, 0)
			if i > script.Magazine.Value then
				Bullet.BackgroundTransparency = 0.8
				Bullet.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
			else
				Bullet.BackgroundTransparency = 0.3
				Bullet.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
			end
			Bullet.Size = UDim2.new(1 / (MagazineCapacity + MagazineCapacityAdd), -10, 0, Dual ~= nil and 20 or 40)
			Bullet.Position = UDim2.new((i - 1) / (MagazineCapacity + MagazineCapacityAdd), 5, 0, 30 + (20 * (x - 1)))
		end
	end
	local function Check(Value, y)
		return Value.Changed:connect(function()
			for i = 1, MagazineCapacity + MagazineCapacityAdd do
				AmmoCounter[i.. ", " ..y].BackgroundTransparency = 0.8
				AmmoCounter[i.. ", " ..y].BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
			end
			for i = 1, Value.Value do
				AmmoCounter[i.. ", " ..y].BackgroundTransparency = 0.3
				AmmoCounter[i.. ", " ..y].BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
			end
		end)
	end
	Check(script.Magazine, 1)
	if Dual == true then
		DualConnection1 = Check(script.Dual.Main.Magazine, 2)
		coroutine.wrap(function()
			while Dual == true do
				wait()
			end
			pcall(function() DualConnection1:disconnect() end)
		end)()
	else
		DualConnection1 = script.ChildAdded:connect(function(Child)
			if Child.Name == "Dual" then
				DualConnection2 = Check(Child.Main.Magazine, 2)
				coroutine.wrap(function()
					wait()
					for i = 1, MagazineCapacity + MagazineCapacityAdd do
						AmmoCounter[i.. ", 2"].BackgroundTransparency = 0.8
						AmmoCounter[i.. ", 2"].BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
					end
					for i = 1, Child.Main.Magazine.Value do
						AmmoCounter[i.. ", 2"].BackgroundTransparency = 0.3
						AmmoCounter[i.. ", 2"].BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					end
					while Dual == true do
						wait()
					end
					pcall(function() DualConnection2:disconnect() end)
					for i = 1, MagazineCapacity + MagazineCapacityAdd do
						AmmoCounter[i.. ", 2"].BackgroundTransparency = 0.8
						AmmoCounter[i.. ", 2"].BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
					end
				end)()
			end
		end)
	end
	local ModelNameLabel = Instance.new("TextLabel", AmmoCounter)
	ModelNameLabel.Name = "ModelNameLabel"
	ModelNameLabel.Text = " " ..ModelName
	ModelNameLabel.TextColor3 = Color3.new(0, 0, 0)
	ModelNameLabel.Font = "ArialBold"
	ModelNameLabel.FontSize = "Size14"
	ModelNameLabel.TextXAlignment = "Left"
	ModelNameLabel.BorderColor3 = Color3.new(0, 0, 0)
	ModelNameLabel.BackgroundTransparency = 0.3
	ModelNameLabel.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	ModelNameLabel.Size = UDim2.new(1, -10, 0, 20)
	ModelNameLabel.Position = UDim2.new(0, 5, 0, 75)
	local TotalAmmo = ModelNameLabel:Clone()
	TotalAmmo.Parent = AmmoCounter
	TotalAmmo.Name = "TotalAmmo"
	TotalAmmo.Text = Player.Backpack.Ammo[AmmoType].Value.. " " ..AmmoType.. " "
	TotalAmmo.TextXAlignment = "Right"
	TotalAmmo.BorderSizePixel = 0
	TotalAmmo.BackgroundTransparency = 1
	TotalAmmo.Size = UDim2.new(1, - 10, 0, 20)
	TotalAmmo.Position = UDim2.new(0, 5, 1, -25)
	Player.Backpack.Ammo[AmmoType].Changed:connect(function()
		TotalAmmo.Text = Player.Backpack.Ammo[AmmoType].Value.. " " ..AmmoType.. " "
	end)
	coroutine.wrap(function()
		while Selected == true do
			wait()
		end
		Remove()
		pcall(function() DualConnection1:disconnect() end)
		pcall(function() DualConnection2:disconnect() end)
	end)()
end)
end