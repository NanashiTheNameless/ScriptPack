--[[
VSS Vintorez
Used by the Russian Spetsnaz in the late 1900s and early 2000s. Fires 10 9mm rounds.
--]]


if script == nil then return end


ModelName = "VSS Vintorez"
AmmoType = "9mm"
MagazineCapacity = 10
MagazineCapacityAdd = 1
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6Alt")
Selected = false
Connected = false
Button1Down = false
CanUse = true
BulletData = [[Velocity_Transfer = 1.5

Damage_Head = 100
Damage_Torso = 50
Damage_Limb = 40
Damage_Other = 20

Dust_Size_Min = 5
Dust_Size_Max = 10
Dust_Add = 0.05

Spark_Min = 15
Spark_Max = 35
Spark_Size_Min = 15
Spark_Size_Max = 25
Spark_Add = 0.1

Chunk_Min = 10
Chunk_Max = 15
]] ..game:GetService("InsertService"):LoadAsset(60263276)["BulletData"].Value
FirstPerson = [[FirstPersonOffset = CFrame.new(-0.1, -0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10), 0)
]] ..game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value
ScopeZoom = [=[ScopeZoomRange = 200
]=] ..game:GetService("InsertService"):LoadAsset(64175271)["ScopeZoom"].Value
AmmoCounter = game:GetService("InsertService"):LoadAsset(66610412)["AmmoCounter"].Value


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


loadstring(game:GetService("InsertService"):LoadAsset(65363615)["tagHumanoid"].Value)()


loadstring(game:GetService("InsertService"):LoadAsset(63178291)["CameraPunch"].Value)()


loadstring(game:GetService("InsertService"):LoadAsset(62991657)["PacketFunctions"].Value)()


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Parent

	local MasterPart = Instance.new("Part")
	MasterPart.Name = "Handle"
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(1, 1, 1)
	MasterPart.BrickColor = BrickColor.new("Black")
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.3, 0.75, 0.4)
	Mesh.Parent = MasterPart
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.new(0.65, -0.7, 0.9) * CFrame.fromEulerAnglesXYZ(math.rad(5), math.rad(-90), 0)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C0 = CFrame.new(0, 1.4, 0.5)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "ShellOut"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.Transparency = 1
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Grip"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.Material = "Wood"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.29, 0.35, 0.9)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.25, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(15), 0, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Scope Base"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1, 0.3, 0.1)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, 0.25)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Scope End 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.275, 0.375, 0.275)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.4, 0.375)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Scope End 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.275, 0.025, 0.275)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.6, 0.375)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Scope Center 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.15, 0.425, 0.15)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, 0.375)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Scope Front 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.2, 0.75, 0.2)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.575, 0.375)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Scope Front 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.2, 0.01, 0.2)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.95, 0.375)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Magazine Housing / Grip"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.3, 1, 0.3)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.7, -0.32) * CFrame.fromEulerAnglesXYZ(math.rad(-12.5), 0, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Magazine"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.25, 0.4, 0.6)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.5, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(-7.5), 0, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Trigger Housing 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1, 0.5, 0.025)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.075, -0.4)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Trigger Housing 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.295, 0.1, 0.38)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.15, -0.225)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Trigger"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1, 0.05, 0.15)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.03, -0.275)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Barrel 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.3, 0.925, 0.4)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.825, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Barrel 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.275, 2, 0.275)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 2.25, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Barrel Sight 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1, 0.3, 0.175)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 1.4, 0.1)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Barrel Sight 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1, 0.1, 0.2)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 3.2, 0.1)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Source"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0, 0, 0)
	Part.Transparency = 1
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 3.25, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Stock 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.Material = "Wood"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.3, 1.6, 0.125)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -1.125, -0.93)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Stock 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.Material = "Wood"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.301, 1.6, 0.175)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -1.125, -0.1125)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Stock 3"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.Material = "Wood"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.3, 0.2, 0.668)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -1.825, -0.5335)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Stock 4"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.Material = "Wood"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.2, 0.2, 0.8)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -1.1, -0.735) * CFrame.fromEulerAnglesXYZ(math.rad(10), 0, 0)
	Weld.Parent = Part

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


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true then
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 15, 0.25, false, Player.Character[ModelName].Handle)
		if script.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209875", 7, 0.3, false, Player.Character[ModelName].Handle)
		script.Magazine.Value = script.Magazine.Value - 1
		local Bullet = Instance.new("Part", Workspace)
		Bullet.Name = "Bullet"
		Bullet.TopSurface = 0
		Bullet.BottomSurface = 0
		Bullet.BrickColor = BrickColor.new("Really black")
		Bullet.Locked = true
		Bullet.FormFactor = "Custom"
		Bullet.Size = Vector3.new(0.5, 0.5, 0.5)
		Bullet.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, -2.5, 0)
		Bullet.Elasticity = 0
		Bullet.Friction = 0
		local Mesh = Instance.new("SpecialMesh", Bullet)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0.25, 0.25, 0.25)
		tagHumanoid(Bullet)
		local BodyVelocity = Instance.new("BodyVelocity", Bullet)
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 300) + Vector3.new(math.random(-1000, 1000) / 1000, math.random(-1000, 1000) / 1000, math.random(-1000, 1000) / 1000)
		game:GetService("Debris"):AddItem(Bullet, 10)
		TouchedToServer(BulletData, Bullet)
		CameraPunch(math.rad(5), 0)
		for i = 0, 10, 5 do
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
			end)
			wait()
		end
		for i = 10, 0, -5 do
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
			end)
			wait()
		end
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
			Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
		end)
		wait(0.075)
		CanUse = true
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
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
			if script.Magazine.Value >= MagazineCapacity + MagazineCapacityAdd or Player.Backpack.Ammo[AmmoType].Value <= 0 then return end
			CanUse = false
			local Loaded = script.Magazine.Value > 0
			local Add = math.min(script.Magazine.Value, MagazineCapacityAdd)
			SoundToServer("Reload", "http://www.roblox.com/Asset/?id=2691591", 1, 1, false, Player.Character[ModelName].Handle)
			local Clone = Player.Character[ModelName].Magazine:Clone()
			Clone.CanCollide = false
			Clone.Parent = Workspace
			Player.Character[ModelName].Magazine.Transparency = 1
			local Weld = Instance.new("Weld")
			Weld.Part0 = Clone
			Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
			Weld.C0 = CFrame.new(0, 1.1, 0)
			Weld.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Weld.Parent = Weld.Part0
			Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value + script.Magazine.Value - Add
			script.Magazine.Value = Add
			wait(0.2)
			for i = 0, 25, 2.5 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 + (i / 60), 1.2 - (i / 20), 0.8 + (i / 35)) * CFrame.fromEulerAnglesXYZ(math.rad(300 - i), math.rad(10 + -i * 3.5), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
				end)
				CameraPunch(math.rad(-1), 0)
				wait()
			end
			local Clone2 = Clone:Clone()
			Clone2.CanCollide = true
			Clone2.Parent = Workspace
			game:GetService("Debris"):AddItem(Clone2, 15)
			Clone.Transparency = 1
			wait(0.5)
			Clone.Transparency = 0
			for i = 25, 0, -2.5 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5 + ((i + 10) / 60), 1.2 - ((i + 10) / 20), 0.8 + (i / 35)) * CFrame.fromEulerAnglesXYZ(math.rad(300 - (i - 10)), math.rad(10 + -i * 3.5), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + i), math.rad(-5), 0)
				end)
				CameraPunch(math.rad(1), 0)
				wait()
			end
			Player.Character[ModelName].Magazine.Transparency = 0
			Clone:Remove()
			if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
				script.Magazine.Value = Player.Backpack.Ammo[AmmoType].Value
				Player.Backpack.Ammo[AmmoType].Value = 0
			else
				script.Magazine.Value = script.Magazine.Value + MagazineCapacity
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
			end
			wait(0.3)
			if Loaded == false then
				wait(0.1)
				local Weld = Player.Character[ModelName].Handle.Weld
				Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
				Weld.C0 = CFrame.new(-0.9, 0, 0.5) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(90), 0)
				Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(50), 0, 0)
				for i = 0, 1, 0.1 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-0.9 + (i / 10), -0.35 + (i * 1.5), 0.51 + (i / 8)) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					end)
					CameraPunch(math.rad(0.1), 0)
					wait()
				end
				for i = 0, 1, 0.25 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-0.8, 1.15 - (i / 5), 0.635) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					end)
					CameraPunch(math.rad(-1), 0)
					wait()
				end
				for i = 1, 0, -0.25 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(-0.8, 1.15 - (i / 5), 0.635) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					end)
					CameraPunch(math.rad(1), 0)
					wait()
				end
				for i = 1, 0, -0.1 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9 + (i / 10), -0.35 + (i * 1.5), 0.51 + (i / 8)) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
					end)
					CameraPunch(math.rad(-0.1), 0)
					wait()
				end
			else
				SendToServer([[for _, Part in pairs(Source:GetChildren()) do
	if Part.ClassName == "Sound" and Part.Name == "Reload" then
		coroutine.wrap(function()
			Part:Stop()
			Part.Volume = 0
			wait(1)
			Part:Remove()
		end)()
	end
end]], "Sound Stop", {"Source", Player.Character[ModelName].Handle})
				wait(0.5)
			end
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
			end)
			RemoveParts(Player.Character, 2)
			CreateParts(Player.Character, 2)
			UpdateFirstPerson(true)
			wait()
			CanUse = true
		elseif Key == "g" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 2, 1, false, Player.Character.Torso)
			for i = 0, 70, 15 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
				end)
				CameraPunch(math.rad(1), 0)
				wait()
			end
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName]["Barrel 1"].Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(17)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			for i = 70, -70, -25 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
				end)
				CameraPunch(math.rad(-3), 0)
				wait()
			end
			pcall(function() HitConnection:disconnect() end)
			for i = -70, -80, -2 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
				end)
				CameraPunch(math.rad(-1), 0)
				wait()
			end
			wait(0.05)
			for i = -80, 0, 5 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10 + i), math.rad(-90))
					Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - i), math.rad(-5), 0)
				end)
				CameraPunch(math.rad(1), 0)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
			end)
			CanUse = true
		elseif Key == "t" then
			CanUse = false
			if ScopeZoomed == false then
				for i = 0, 1, 0.075 do
					pcall(function()
						Player.Character.Torso.Neck.C0 = CFrame.new(0.35 * i, 1 - (0.15 * i), 0.15 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(21 * i), math.rad(180 - (18 * i)))
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso.Neck.C0 = CFrame.new(0.35, 0.85, 0.15) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(21), math.rad(162))
				end)
			end
			ScopeZoom(Mouse)
			CanUse = true
			if ScopeZoomed ~= false then
				coroutine.wrap(function()
					while ScopeZoomed ~= false do wait() end
					for i = 1, 0, -0.075 do
						pcall(function()
							Player.Character.Torso.Neck.C0 = CFrame.new(0.35 * i, 1 - (0.15 * i), 0.15 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(21 * i), math.rad(180 - (18 * i)))
						end)
						wait()
					end
					pcall(function()
						Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
					end)
				end)()
			end
		end
	end
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
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
	wait(0.1)
	SetSpeed(2, 0.1, Player.Character)
	ForceAngle(2, 0, Player.Character)
	SetAngle(2, math.rad(-50), Player.Character)
	CameraSlide(math.rad(-5), math.rad(4), 0.2)
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	local Weld = Player.Character[ModelName].Handle.Weld
	Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
	Weld.C0 = CFrame.new(0.5, -0.25, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), 0, 0)
	SetAngle(2, 0, Player.Character)
	CameraSlide(math.rad(-6), math.rad(15), 0.15)
	pcall(function()
		Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new()
		Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new()
	end)
	for i = 0, 1, 0.05 do
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.5 * i) + (1.5 * (1 - i)), 1.2 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(300 + ((1 - i) * 50)), math.rad(10), math.rad(-90) * i)
			Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new((-0.9 * i) + (-1.5 * (1 - i)), -0.35 * i, 0.51 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
			Weld.C0 = CFrame.new(0.5 - (i * (0.5 * 2)), -0.25 - (i * (-0.25 * 2)), -0.75 - (i * (-0.75 * 2))) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 + (i * 180)), 0)
			Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(50 - i * 25), 0, -math.rad(i * 15))
		end)
		CameraPunch(math.rad(0.6), math.rad(-1))
		wait()
	end
	pcall(function()
		Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(-0.5, 1.2, 0.8) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
		Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(-0.9, -0.35, 0.51) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	end)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 2)
	UpdateFirstPerson(true)
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
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Right Shoulder 2"] end) == false then
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
	local Weld = Player.Character[ModelName].Handle.Weld
	Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
	Weld.C0 = CFrame.new(0.5, -0.25, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(25), 0, -math.rad(15))
	for i = 1, 0, -0.05 do
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new((-0.5 * i) + (1.5 * (1 - i)), 1.2 * i, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(300 + ((1 - i) * 50)), math.rad(10), math.rad(-90) * i)
			Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new((-0.9 * i) + (-1.5 * (1 - i)), -0.35 * i, 0.51 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-5 * i), 0)
			Weld.C0 = CFrame.new(0.5 - (i * (0.5 * 2)), -0.25 - (i * (-0.25 * 2)), -0.75 - (i * (-0.75 * 2))) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 + (i * 180)), 0)
			Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(50 - i * 25), 0, -math.rad(i * 15))
		end)
		CameraPunch(math.rad(-0.6), math.rad(1))
		wait()
	end
	Weld.C0 = CFrame.new(0.5, -0.25, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), 0, 0)
	Weld.C1 = CFrame.new()
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.1, Player.Character)
	ForceAngle(2, 0, Player.Character)
	SetAngle(2, math.rad(-50), Player.Character)
	CameraSlide(math.rad(5), math.rad(-4), 0.2)
	SetAngle(2, 0, Player.Character)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
	CameraSlide(math.rad(6), math.rad(-15), 0.15)
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
	if Player.Backpack:FindFirstChild("Ammo") == nil then
		Instance.new("Configuration", Player.Backpack).Name = "Ammo"
	end
	if Player.Backpack.Ammo:FindFirstChild(AmmoType) == nil then
		Instance.new("IntValue", Player.Backpack.Ammo).Name = AmmoType
		Player.Backpack.Ammo[AmmoType].Value = 10 * 4
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
	coroutine.wrap(loadstring(ScopeZoom))()
	coroutine.wrap(loadstring(AmmoCounter))()
end