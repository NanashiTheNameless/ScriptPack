--[[
Desert Eagle
A humungous and powerful .44 (8-round capacity) weapon created by Magnum Research, inc.
--]]


if script == nil then return end


ModelName = "Desert Eagle"
AmmoType = ".44"
MagazineCapacity = 8
MagazineCapacityAdd = 1
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Dual = script:FindFirstChild("Dual") ~= nil
BulletData = [[Velocity_Transfer = 1

Damage_Head = 60
Damage_Torso = 40
Damage_Limb = 20
Damage_Other = 20

Dust_Size_Min = 4
Dust_Size_Max = 5
Dust_Add = 0.25

Spark_Min = 3
Spark_Max = 5
Spark_Size_Min = 4
Spark_Size_Max = 6
Spark_Add = 0.35

Chunk_Min = 4
Chunk_Max = 6
]] ..game:GetService("InsertService"):LoadAsset(60263276)["BulletData"].Value
FirstPerson = [[
]] ..game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value
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
	elseif Format == 3 then
		Parts.Name = Parts.Name.. " (Holstered Dual)"
	elseif Format == 4 then
		Parts.Name = Parts.Name.. " (Dual)"
	end
	Parts.Parent = Parent

	local MasterPart1 = Instance.new("Part")
	MasterPart1.Name = "Handle"
	MasterPart1.BrickColor = BrickColor.new("Dark stone grey")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(0.2, 1.3, 0.2)
	MasterPart1.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", MasterPart1)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.075 / 0.2, 1, 0.1 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart1
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.new(0.6, 0.4, -0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-20))
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0, -1.5, -0.5)
	elseif Format == 3 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.new(-0.6, 0.4, -0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(20))
	elseif Format == 4 then
		Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
		Weld.C1 = CFrame.new(0, -1.5, -0.5)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip 1"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.231, 0.3, 0.65)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(8), 0, 0)
	Weld.C1 = CFrame.new(0, 0.425, 0.3)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Magazine"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.24, 0.7)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(8), 0, 0)
	Weld.C1 = CFrame.new(0, 0.41, 0.315)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip 2"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.23, 0.3, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.1 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.468, -0.65)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("WedgePart")
	Part.Name = "Grip 3"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.23, 0.3, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
	Weld.C1 = CFrame.new(0, 0.53, 0.225)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip 4"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.23, 0.25, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.05 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-3), 0, 0)
	Weld.C1 = CFrame.new(0, 0.65, 0.075)
	Weld.Parent = Weld.Part0

	local MasterPart2 = Instance.new("Part")
	MasterPart2.Name = "Slide"
	MasterPart2.BrickColor = BrickColor.new("Dark stone grey")
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(0.25, 0.4, 0.3)
	MasterPart2.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart2
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.35, 0.1)
	Weld.C1 = CFrame.new(0, (function()
		if Format == 1 or Format == 2 then
			return script.Magazine.Value > 0 and 0 or 0.4
		elseif Format == 3 or Format == 4 then
			return script.Dual.Main.Magazine.Value > 0 and 0 or 0.4
		end
	end)(), 0)
	Weld.Parent = Weld.Part0

	for i = -1, 1, 2 do
		local Part = Instance.new("WedgePart")
		Part.Name = "Slide Back"
		Part.BrickColor = BrickColor.new("Dark stone grey")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.3)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Wedge"
		Mesh.Scale = Vector3.new(0.09 / 0.2, 0.1 / 0.2, 1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(0.08 * i, -0.25, 0)
		Weld.Parent = Weld.Part0
	end

	local Part = Instance.new("Part")
	Part.Name = "Slide Front"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.7, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.125 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.55, -0.09)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Barrel 1"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.2, 0.25)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.05, 0.125)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Barrel 2"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.2, 0.25)
	Part.Parent = Parts
	Instance.new("SpecialMesh", Part).MeshType = "Sphere"
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.05, 0.125)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Barrel 3"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.7, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1 / 0.2, 1, 0.175 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.4, 0.1375)
	Weld.Parent = Weld.Part0

	for i = -1, 1, 2 do
		local Part = Instance.new("WedgePart")
		Part.Name = "Barrel 4 " ..i
		Part.BrickColor = BrickColor.new("Dark stone grey")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.7, 0.2, 0.2)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Wedge"
		Mesh.Scale = Vector3.new(1, 0.075 / 0.2, 0.15 / 0.2)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90 * i))
		Weld.C1 = CFrame.new(0.0875 * i, -0.4, -0.15)
		Weld.Parent = Weld.Part0
	end

	local Part = Instance.new("Part")
	Part.Name = "Barrel 5"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.125 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.65, 0.025)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Trigger Guard 1"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.3, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.5, 1, 0.05 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.1, -0.075)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Trigger Guard 2"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.25, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.5, 1, 0.1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.15, -0.275)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Trigger Guard 3"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.5, 0.1, 0.2 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.015, -0.1825)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Trigger"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.35, 0.1, 0.7)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-15), 0, 0)
	Weld.C1 = CFrame.new(0, 0.14, 0.175)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Source"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.CanCollide = false
	Part.Transparency = 1
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.9, 0.2)
	Weld.Parent = Weld.Part0
	local Fire = Instance.new("Fire", Part)
	Fire.Enabled = false
	Fire.Size = 2
	Fire.Heat = -10
	Fire.Color = Color3.new(0.9, 0.9, 0.4)
	Fire.SecondaryColor = Color3.new(0.3, 0.2, 0.2)
	local Smoke = Instance.new("Smoke", Part)
	Smoke.Enabled = false
	Smoke.Size = 3
	Smoke.RiseVelocity = -5
	Smoke.Color = Color3.new(0.85, 0.85, 0.85)
	Smoke.Opacity = 0.05

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
	elseif Format == 3 then
		pcall(function() Parent[ModelName.. " (Holstered Dual)"]:Remove() end)
	elseif Format == 4 then
		pcall(function() Parent[ModelName.. " (Dual)"]:Remove() end)
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
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 10, 0.8, false, Player.Character[ModelName].Handle)
		if script.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		script.Magazine.Value = script.Magazine.Value - 1
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=2760979", 0.5, 1, false, Player.Character[ModelName].Handle)
		coroutine.wrap(function()
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = true
				Player.Character[ModelName].Source.Smoke.Enabled = true
				Player.Character[ModelName].Slide.Weld.C1 = CFrame.new(0, 0.4, 0)
			end)
			wait(0.075)
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = false
				Player.Character[ModelName].Source.Smoke.Enabled = false
				if script.Magazine.Value > 0 then
					Player.Character[ModelName].Slide.Weld.C1 = CFrame.new()
				end
			end)
		end)()
		pcall(function() 
			local Shell = Instance.new("Part", Workspace)
			Shell.Name = "Shell"
			Shell.TopSurface = 0
			Shell.BottomSurface = 0
			Shell.FormFactor = "Custom"
			Shell.BrickColor = BrickColor.new("New Yeller")
			Shell.Size = Vector3.new(0.2, 0.3, 0.2)
			Shell.CFrame = Player.Character[ModelName].Handle.CFrame * CFrame.new(0.5, 0.5, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			Shell.Velocity = ((Player.Character[ModelName].Handle.Position - (Player.Character[ModelName].Handle.CFrame * CFrame.new(-1, 0, 0)).p).unit) * 40
			Shell:BreakJoints()
			local Mesh = Instance.new("CylinderMesh")
			Mesh.Scale = Vector3.new(0.5, 1, 0.5)
			Mesh.Parent = Shell
			game:GetService("Debris"):AddItem(Shell, 10)
		end)
		local Bullet = Instance.new("Part", Workspace)
		Bullet.Name = "Bullet"
		Bullet.TopSurface = 0
		Bullet.BottomSurface = 0
		Bullet.BrickColor = BrickColor.new("Really black")
		Bullet.Locked = true
		Bullet.FormFactor = "Custom"
		Bullet.Size = Vector3.new(0.2, 0.2, 0.2)
		Bullet.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, -1.5, 0)
		Bullet.Elasticity = 0
		Bullet.Friction = 0
		local Mesh = Instance.new("SpecialMesh", Bullet)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0.25, 0.25, 0.25)
		tagHumanoid(Bullet)
		local BodyVelocity = Instance.new("BodyVelocity", Bullet)
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 300) + Vector3.new(math.random(-2000, 2000) / 1000, math.random(-2000, 2000) / 1000, math.random(-2000, 2000) / 1000)
		game:GetService("Debris"):AddItem(Bullet, 2)
		TouchedToServer(BulletData, Bullet)
		CameraPunch(math.rad(math.random(5000, 6000) / 1000), math.rad(math.random(-7500, 7500) / 1000))
		SetSpeed(1, 0.1, Player.Character)
		SetAngle(1, math.rad(100), Player.Character)
		if Dual == false then
			SetSpeed(2, 0.1, Player.Character)
			SetAngle(2, math.rad(100), Player.Character)
		end
		wait(0.1)
		SetAngle(1, math.rad(90), Player.Character)
		if Dual == false then
			SetAngle(2, math.rad(90), Player.Character)
		end
		wait(0.1)
		CanUse = true
	end
end


function onButton1Up(Mouse)
	coroutine.wrap(function()
		wait(0.2)
		Button1Down = false
	end)()
	if Dual == true and Button1Down == true and CheckPlayer() == true then
		while CanUse == false do wait() end
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 10, 0.8, false, Player.Character[ModelName.. " (Dual)"].Handle)
		if script.Dual.Main.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		script.Dual.Main.Magazine.Value = script.Dual.Main.Magazine.Value - 1
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=2760979", 0.5, 1, false, Player.Character[ModelName.. " (Dual)"].Handle)
		coroutine.wrap(function()
			pcall(function()
				Player.Character[ModelName.. " (Dual)"].Source.Fire.Enabled = true
				Player.Character[ModelName.. " (Dual)"].Source.Smoke.Enabled = true
				Player.Character[ModelName.. " (Dual)"].Slide.Weld.C1 = CFrame.new(0, 0.4, 0)
			end)
			wait(0.075)
			pcall(function()
				Player.Character[ModelName.. " (Dual)"].Source.Fire.Enabled = false
				Player.Character[ModelName.. " (Dual)"].Source.Smoke.Enabled = false
				if script.Dual.Main.Magazine.Value > 0 then
					Player.Character[ModelName.. " (Dual)"].Slide.Weld.C1 = CFrame.new()
				end
			end)
		end)()
		pcall(function() 
			local Shell = Instance.new("Part", Workspace)
			Shell.Name = "Shell"
			Shell.TopSurface = 0
			Shell.BottomSurface = 0
			Shell.FormFactor = "Custom"
			Shell.BrickColor = BrickColor.new("New Yeller")
			Shell.Size = Vector3.new(0.2, 0.3, 0.2)
			Shell.CFrame = Player.Character[ModelName.. " (Dual)"].Handle.CFrame * CFrame.new(0.5, 0.5, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			Shell.Velocity = ((Player.Character[ModelName.. " (Dual)"].Handle.Position - (Player.Character[ModelName.. " (Dual)"].Handle.CFrame * CFrame.new(-1, 0, 0)).p).unit) * 40
			Shell:BreakJoints()
			local Mesh = Instance.new("CylinderMesh")
			Mesh.Scale = Vector3.new(0.5, 1, 0.5)
			Mesh.Parent = Shell
			game:GetService("Debris"):AddItem(Shell, 10)
		end)
		local Bullet = Instance.new("Part", Workspace)
		Bullet.Name = "Bullet"
		Bullet.TopSurface = 0
		Bullet.BottomSurface = 0
		Bullet.BrickColor = BrickColor.new("Really black")
		Bullet.Locked = true
		Bullet.FormFactor = "Custom"
		Bullet.Size = Vector3.new(0.2, 0.2, 0.2)
		Bullet.CFrame = Player.Character[ModelName.. " (Dual)"].Source.CFrame * CFrame.new(0, -1.5, 0)
		Bullet.Elasticity = 0
		Bullet.Friction = 0
		local Mesh = Instance.new("SpecialMesh", Bullet)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0.25, 0.25, 0.25)
		tagHumanoid(Bullet)
		local BodyVelocity = Instance.new("BodyVelocity", Bullet)
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName.. " (Dual)"].Source.Position).unit * 240) + Vector3.new(math.random(-1500, 1500) / 1000, math.random(-1500, 1500) / 1000, math.random(-1500, 1500) / 1000)
		game:GetService("Debris"):AddItem(Bullet, 2)
		TouchedToServer(BulletData, Bullet)
		CameraPunch(math.rad(math.random(1000, 3000) / 1000), math.rad(math.random(-1500, 1500) / 1000))
		SetSpeed(2, 0.1, Player.Character)
		SetAngle(2, math.rad(100), Player.Character)
		wait(0.1)
		SetAngle(2, math.rad(90), Player.Character)
		wait(0.1)
		CanUse = true
	end
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
			if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 20 then return end
			onDeselected(Mouse)
			RemoveParts(Player.Character, 1)
			if Dual == true then RemoveParts(Player.Character, 3) end
			wait()
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		elseif Key == "r" then
			if Player.Backpack.Ammo[AmmoType].Value <= 0 then return end
			if Dual == true then
				if script.Magazine.Value >= MagazineCapacity + MagazineCapacityAdd and script.Dual.Main.Magazine.Value >= MagazineCapacity + MagazineCapacityAdd then return end
				CanUse = false
				local Loaded = script.Magazine.Value > 0
				local LoadedDual = script.Dual.Main.Magazine.Value > 0
				local Add = math.min(script.Magazine.Value, MagazineCapacityAdd)
				local AddDual = math.min(script.Dual.Main.Magazine.Value, MagazineCapacityAdd)
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value + script.Magazine.Value + script.Dual.Main.Magazine.Value - Add - AddDual
				script.Magazine.Value = Add
				script.Dual.Main.Magazine.Value = AddDual
				SoundToServer("Reload 1", "http://www.roblox.com/Asset/?id=10209834", 2, 1, false, Player.Character[ModelName].Handle)
				SoundToServer("Reload 1", "http://www.roblox.com/Asset/?id=10209834", 2, 1, false, Player.Character[ModelName.. " (Dual)"].Handle)
				pcall(function()
					local Clone = Player.Character[ModelName].Magazine:Clone()
					Clone.CanCollide = true
					Clone.Velocity = (Clone.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)).lookVector * 10
					Clone.Parent = Workspace
					game:GetService("Debris"):AddItem(Clone, 10)
					Player.Character[ModelName].Magazine.Transparency = 1
				end)
				pcall(function()
					local Clone = Player.Character[ModelName.. " (Dual)"].Magazine:Clone()
					Clone.CanCollide = true
					Clone.Velocity = (Clone.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)).lookVector * 10
					Clone.Parent = Workspace
					game:GetService("Debris"):AddItem(Clone, 10)
					Player.Character[ModelName.. " (Dual)"].Magazine.Transparency = 1
				end)
				SetSpeed(1, 0.04, Player.Character)
				SetAngle(1, math.rad(110), Player.Character)
				SetSpeed(2, 0.04, Player.Character)
				SetAngle(2, math.rad(110), Player.Character)
				wait(0.3)
				SetSpeed(1, 0.15, Player.Character)
				SetAngle(1, math.rad(0), Player.Character)
				SetSpeed(2, 0.15, Player.Character)
				SetAngle(2, math.rad(0), Player.Character)
				SoundToServer("Reload 2", "http://www.roblox.com/Asset/?id=10209845", 2.5, 1, false, Player.Character[ModelName].Handle)
				SoundToServer("Reload 2", "http://www.roblox.com/Asset/?id=10209845", 2.5, 1, false, Player.Character[ModelName.. " (Dual)"].Handle)
				wait(0.6)
				if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
					script.Magazine.Value = Player.Backpack.Ammo[AmmoType].Value
					Player.Backpack.Ammo[AmmoType].Value = 0
				else
					script.Magazine.Value = script.Magazine.Value + MagazineCapacity
					Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
				end
				if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
					script.Dual.Main.Magazine.Value = Player.Backpack.Ammo[AmmoType].Value
					Player.Backpack.Ammo[AmmoType].Value = 0
				else
					script.Dual.Main.Magazine.Value = script.Dual.Main.Magazine.Value + MagazineCapacity
					Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
				end
				pcall(function() Player.Character[ModelName].Magazine.Transparency = 0 end)
				pcall(function() Player.Character[ModelName.. " (Dual)"].Magazine.Transparency = 0 end)
				SetSpeed(1, 0.2, Player.Character)
				SetAngle(1, math.rad(90), Player.Character)
				SetSpeed(2, 0.2, Player.Character)
				SetAngle(2, math.rad(90), Player.Character)
				wait(0.4)
				if Loaded == false or LoadedDual == false then
					if Loaded == false then
						SoundToServer("Reload 3", "http://www.roblox.com/Asset/?id=10209894", 3, 1, false, Player.Character[ModelName].Handle)
						wait(0.2)
						for i = 1, 0, -0.35 do
							pcall(function() Player.Character[ModelName].Slide.Weld.C1 = CFrame.new(0, 0.4 * i, 0) end)
							wait()
						end
						pcall(function() Player.Character[ModelName].Slide.Weld.C1 = CFrame.new() end)
					end
					if LoadedDual == false then
						SoundToServer("Reload 3", "http://www.roblox.com/Asset/?id=10209894", 3, 1, false, Player.Character[ModelName.. " (Dual)"].Handle)
						wait(0.2)
						for i = 1, 0, -0.35 do
							pcall(function() Player.Character[ModelName.. " (Dual)"].Slide.Weld.C1 = CFrame.new(0, 0.4 * i, 0) end)
							wait()
						end
						pcall(function() Player.Character[ModelName.. " (Dual)"].Slide.Weld.C1 = CFrame.new() end)
					end
				end
				CanUse = true
			else
				if script.Magazine.Value >= MagazineCapacity + MagazineCapacityAdd then return end
				CanUse = false
				local Loaded = script.Magazine.Value > 0
				local Add = math.min(script.Magazine.Value, MagazineCapacityAdd)
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value + script.Magazine.Value - Add
				script.Magazine.Value = Add
				SetSpeed(1, 0.1, Player.Character)
				SetAngle(1, math.rad(110), Player.Character)
				SetSpeed(2, 0.1, Player.Character)
				SetAngle(2, 0, Player.Character)
				SoundToServer("Reload 1", "http://www.roblox.com/Asset/?id=10209834", 2, 1, false, Player.Character[ModelName].Handle)
				pcall(function()
					local Clone = Player.Character[ModelName].Magazine:Clone()
					Clone.CanCollide = true
					Clone.Velocity = (Clone.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)).lookVector * 5
					Clone.Parent = Workspace
					game:GetService("Debris"):AddItem(Clone, 10)
					Player.Character[ModelName].Magazine.Transparency = 1
				end)
				for i = 1, 0, -0.05 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 =
							CFrame.new(-1.5 + (0.9 * i), 0.5 - (0.05 * i), -0.4 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(45 * i), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end)
					wait()
				end
				pcall(function()
					local Magazine = Player.Character[ModelName].Magazine:Clone()
					Magazine.Name = "New Magazine"
					Magazine.Transparency = 0
					Magazine.Parent = Player.Character[ModelName]
					local Weld = Instance.new("Weld", Magazine)
					Weld.Part0 = Weld.Parent
					Weld.Part1 = Player.Character["Left Arm"]
					Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(-10), math.rad(45))
					Weld.C1 = CFrame.new(0.2, -1, -0.4)
				end)
				SetSpeed(1, 0.025, Player.Character)
				SetAngle(1, math.rad(90), Player.Character)
				SetAngle(2, math.rad(85), Player.Character)
				SoundToServer("Reload 2", "http://www.roblox.com/Asset/?id=10209845", 2, 1, false, Player.Character[ModelName].Handle)
				for i = 0, 1, 0.1 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 =
							CFrame.new(-1.5 + (0.9 * i), 0.5 - (0.05 * i), -0.4 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (30 * i)), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
						Player.Character.Torso["Right Shoulder 2"].C0 =
							CFrame.new(0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (10 * i)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-0.6, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(0, math.rad(-120), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 =
						CFrame.new(0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(100), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				end)
				wait(0.1)
				pcall(function()
					Player.Character[ModelName].Magazine.Transparency = 0
					Player.Character[ModelName]["New Magazine"]:Remove()
				end)
				if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
					script.Magazine.Value = Player.Backpack.Ammo[AmmoType].Value
					Player.Backpack.Ammo[AmmoType].Value = 0
				else
					script.Magazine.Value = script.Magazine.Value + MagazineCapacity
					Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
				end
				if Loaded == true then
					SetAngle(2, math.rad(100), Player.Character)
					SetAngle(2, math.rad(90), Player.Character)
					wait(0.1)
					for i = 0, 1, 0.1 do
						pcall(function()
							Player.Character.Torso["Left Shoulder 2"].C0 =
								CFrame.new(-0.6, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(0, math.rad(-120 - (15 * i)), 0)
							Player.Character.Torso["Left Shoulder 2"].C1 =
								CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
							Player.Character.Torso["Right Shoulder 2"].C0 =
								CFrame.new(0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 - (10 * i)), 0)
							Player.Character.Torso["Right Shoulder 2"].C1 =
								CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
						end)
						wait()
					end
				else
					wait(0.5)
					SoundToServer("Reload 3", "http://www.roblox.com/Asset/?id=10209894", 3, 1, false, Player.Character[ModelName].Handle)
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 =
							CFrame.new(-0.6, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(0, math.rad(-120), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end)
					SetSpeed(2, 0.1, Player.Character)
					SetAngle(2, math.rad(110), Player.Character)
					for i = 0, 1, 0.2 do
						pcall(function()
							Player.Character.Torso["Right Shoulder 2"].C0 =
								CFrame.new(0.6, 0.55, -0.1 + (0.2 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(100), 0)
							Player.Character.Torso["Right Shoulder 2"].C1 =
								CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
						end)
						wait()
					end
					wait(0.1)
					coroutine.wrap(function()
						for i = 1, 0, -0.3 do
							pcall(function() Player.Character[ModelName].Slide.Weld.C1 = CFrame.new(0, 0.3 * i, 0) end)
							wait()
						end
						pcall(function() Player.Character[ModelName].Slide.Weld.C1 = CFrame.new() end)
					end)()
					SetAngle(2, math.rad(90), Player.Character)
					for i = 0, 1, 0.2 do
						pcall(function()
							Player.Character.Torso["Left Shoulder 2"].C0 =
								CFrame.new(-0.6, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(0, math.rad(-120 - (15 * i)), 0)
							Player.Character.Torso["Left Shoulder 2"].C1 =
								CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
							Player.Character.Torso["Right Shoulder 2"].C0 =
								CFrame.new(0.6, 0.55, 0.1 - (0.2 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 - (10 * i)), 0)
							Player.Character.Torso["Right Shoulder 2"].C1 =
								CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
						end)
						wait()
					end
				end
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-0.6, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(0, math.rad(-135), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 =
						CFrame.new(0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				end)
				CanUse = true
			end
		elseif Key == "g" then
			CanUse = false
			SetSpeed(2, 0.1, Player.Character)
			SetAngle(2, math.rad(10), Player.Character)
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 =
						CFrame.new(0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (60 * i)), 0)
				end)
				CameraPunch(0, math.rad(6))
				wait()
			end
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 1.8, 1, false, Player.Character.Torso)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Handle.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(50)
					pcall(function()
						Humanoid.Sit = true
						Hit.Parent.Torso.Velocity = (Player.Character.Torso.Position - (Player.Character.Torso.CFrame * CFrame.new(-1, 0.6, 0.5)).p).unit * 150
					end)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			for i = 1, 0, -0.2 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 =
						CFrame.new(0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(150 * i), 0)
				end)
				CameraPunch(0, math.rad(-24))
				wait()
			end
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(2, 0.2, Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 =
						CFrame.new(0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), 0)
				end)
				CameraPunch(0, math.rad(6))
				wait()
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 =
					CFrame.new(0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			end)
			CanUse = true
		elseif Key == "y" then
			if Dual == false then
				local Weapon = nil
				for _, Part in pairs(Player.Backpack:GetChildren()) do
					if Part.Name == ModelName and Part ~= script.Parent then
						if Part.Main:FindFirstChild("Dual") == nil then
							Weapon = Part
							break
						end
					end
				end
				if Weapon == nil then return end
				CanUse = false
				SetSpeed(2, 0.3, Player.Character)
				SetAngle(2, math.rad(-40), Player.Character)
				for i = 1, 0, -0.1 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 =
							CFrame.new(-1.5 + (0.9 * i), 0.5 - (0.05 * i), -0.4 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(45 * i), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end)
					wait()
				end
				for i = 0, 1, 0.2 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 =
							CFrame.new(-1.5 + (0.2 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(40 * i), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end)
					wait()
				end
				Weapon.Name = "Dual"
				Weapon.Parent = script
				Dual = true
				RemoveParts(Player.Character, 1)
				CreateParts(Player.Character, 4)
				UpdateFirstPerson(true)
				SetSpeed(2, 0.6, Player.Character)
				SetAngle(2, math.rad(90), Player.Character)
				for i = 0, 1, 0.15 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 =
							CFrame.new(-1.3 + (0.7 * i), 0.5 + (0.05 * i), -0.1 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-50) - math.rad(40 * i), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				end)
			else
				CanUse = false
				SetSpeed(2, 0.25, Player.Character)
				SetAngle(2, math.rad(-40), Player.Character)
				for i = 1, 0, -0.1 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 =
							CFrame.new(-1.3 + (0.7 * i), 0.5 + (0.05 * i), -0.1 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-50) - math.rad(40 * i), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end)
					wait()
				end
				RemoveParts(Player.Character, 4)
				CreateParts(Player.Character, 1)
				UpdateFirstPerson(true)
				Dual = false
				local Weapon = script.Dual
				Weapon.Name = ModelName
				Weapon.Parent = Player.Backpack
				SetSpeed(2, 0.3, Player.Character)
				SetAngle(2, 0, Player.Character)
				for i = 1, 0, -0.2 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 =
							CFrame.new(-1.5 + (0.2 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(40 * i), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end)
					wait()
				end
				SetSpeed(2, 0.3, Player.Character)
				SetAngle(2, math.rad(90), Player.Character)
				for i = 0, 1, 0.1 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 =
							CFrame.new(-1.5 + (0.9 * i), 0.5 - (0.05 * i), -0.4 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(45 * i), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 =
							CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-0.6, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(0, math.rad(-135), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				end)
			end
			CanUse = true
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
	SetSpeed(1, 0.3, Player.Character)
	SetAngle(1, math.rad(-40), Player.Character)
	if Dual == true then
		DisableLimb(2, Player.Character)
		SetSpeed(2, 0.3, Player.Character)
		SetAngle(2, math.rad(-40), Player.Character)
	end
	for i = 0, 1, 0.2 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.5 - (0.2 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) - math.rad(40 * i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		end)
		if Dual == true then
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-1.5 + (0.2 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(40 * i), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
		end
		wait()
	end
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	SetSpeed(1, 0.6, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	if Dual == true then
		RemoveParts(Player.Character, 3)
		CreateParts(Player.Character, 4)
		SetSpeed(2, 0.6, Player.Character)
		SetAngle(2, math.rad(90), Player.Character)
	else
		DisableLimb(2, Player.Character)
		SetSpeed(2, 0.3, Player.Character)
		SetAngle(2, math.rad(90), Player.Character)
	end
	for i = 0, 1, 0.15 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.3 - (0.7 * i), 0.5 + (0.05 * i), -0.1 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(50) + math.rad(40 * i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		end)
		if Dual == true then
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-1.3 + (0.7 * i), 0.5 + (0.05 * i), -0.1 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-50) - math.rad(40 * i), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
		else
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-1.5 + (0.9 * i), 0.5 - (0.05 * i), -0.4 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(45 * i), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
		end
		wait()
	end
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 =
			CFrame.new(0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Player.Character.Torso["Right Shoulder 2"].C1 =
			CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	end)
	if Dual == true then
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-0.6, 0.55, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			Player.Character.Torso["Left Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		end)
	else
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-0.6, 0.45, -0.4) * CFrame.fromEulerAnglesXYZ(0, math.rad(-135), 0)
			Player.Character.Torso["Left Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		end)
	end
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
		if Dual == true then
			RemoveParts(Player.Character, 4)
			CreateParts(Player.Character, 3)
		end
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
	SetSpeed(1, 0.25, Player.Character)
	SetAngle(1, math.rad(-40), Player.Character)
	if Dual == true then
		SetSpeed(2, 0.25, Player.Character)
		SetAngle(2, math.rad(-40), Player.Character)
	else
		SetSpeed(2, 0.3, Player.Character)
		SetAngle(2, 0, Player.Character)
	end
	for i = 1, 0, -0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.3 - (0.7 * i), 0.5 + (0.05 * i), -0.1 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(50) + math.rad(40 * i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		end)
		if Dual == true then
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-1.3 + (0.7 * i), 0.5 + (0.05 * i), -0.1 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-50) - math.rad(40 * i), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
		else
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-1.5 + (0.9 * i), 0.5 - (0.05 * i), -0.4 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(45 * i), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
		end
		wait()
	end
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	SetSpeed(1, 0.3, Player.Character)
	SetAngle(1, 0, Player.Character)
	if Dual == true then
		RemoveParts(Player.Character, 4)
		CreateParts(Player.Character, 3)
		SetSpeed(2, 0.3, Player.Character)
		SetAngle(2, 0, Player.Character)
	else
		ResetLimbCFrame(2, Player.Character)
		EnableLimb(2, Player.Character)
	end
	for i = 1, 0, -0.2 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.5 - (0.2 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) - math.rad(40 * i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		end)
		if Dual == true then
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-1.5 + (0.2 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(40 * i), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
		end
		wait()
	end
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
	if Dual == true then
		ResetLimbCFrame(2, Player.Character)
		EnableLimb(2, Player.Character)
	end
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
		Player.Backpack.Ammo[AmmoType].Value = MagazineCapacity * 3
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	if Dual == true then CreateParts(Player.Character, 3) end
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
	coroutine.wrap(loadstring(AmmoCounter))()
end