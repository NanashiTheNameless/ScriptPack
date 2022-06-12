--[[
M1 Garand
The most reliable and powerful production service rifle I have ever seen. Fires 8 .30-06 Springfield rifle rounds.
--]]


if script == nil then return end


ModelName = "M1 Garand"
AmmoType = ".30-06 Springfield"
MagazineCapacity = 8
MagazineCapacityAdd = 0
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
BulletData = [[Velocity_Transfer = 2

Damage_Head = 75
Damage_Torso = 50
Damage_Limb = 20
Damage_Other = 10

Dust_Size_Min = 1
Dust_Size_Max = 4
Dust_Add = 0.05

Spark_Min = 3
Spark_Max = 6
Spark_Size_Min = 3
Spark_Size_Max = 6
Spark_Add = 0.1

Chunk_Min = 3
Chunk_Max = 5
]] ..game:GetService("InsertService"):LoadAsset(60263276)["BulletData"].Value
FirstPerson = [[FirstPersonOffset = CFrame.new(0, -0.2, 0) * CFrame.new(0, math.rad(-20), 0)
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


loadstring(game:GetService("InsertService"):LoadAsset(65636834)["CFrameTween"].Value)()


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Parent

	local MasterPart1 = Instance.new("Part", Parts)
	MasterPart1.Name = "Handle"
	MasterPart1.BrickColor = BrickColor.new("Reddish brown")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(0.2, 0.9, 0.3)
	local Weld = Instance.new("Weld", MasterPart1)
	Weld.Part0 = Weld.Parent
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0) * CFrame.new(0.8, -0.5, -0.6)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(10)) * CFrame.new(-0.2, -1.5, -0.6)
	end

	local Part = Instance.new("Part", Parts)
	Part.Name = "Stock 1"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.3, 0.3)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, 0) * CFrame.new(0, -0.541, -0.041)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Grip"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.4, 0.3)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-70), 0, 0) * CFrame.new(0, -0.66, -0.192)

	local Part = Instance.new("Part")
	Part.Name = "Trigger Guard"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	Weld.C1 = CFrame.new(0, 0.35, 0.175)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
	Mesh.Scale = Vector3.new(0.25, 0.25, 0.24)

	local Part = Instance.new("Part")
	Part.Name = "Trigger"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.35, -0.2)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.05 / 0.2, 0.01 / 0.2, 0.1 / 0.2)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Stock 2"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(40), 0, 0) * CFrame.new(0, -0.79, -0.09)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Stock 3"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 1.3, 0.4)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1.45, -0.15)

	local Part = Instance.new("WedgePart", Parts)
	Part.Name = "Stock 4"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 1.3, 0.3)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0) * CFrame.new(0, -1.45, -0.5)

	local Part = Instance.new("WedgePart", Parts)
	Part.Name = "Body 1"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.9, 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0) * CFrame.new(0, 0.9, -0.05)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Body 2"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.9, 0.2)
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.1 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.9, 0.1)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Body 3"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 0.0125 / 0.2, 0.1 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 1.35625, 0.1)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Receiver"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.195 / 0.2, 1, 0.1 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.3, 0.2)

	for i = -1, 1, 2 do
		local Part = Instance.new("Part", Parts)
		Part.Name = "Bolt Assembly Side " ..i
		Part.BrickColor = BrickColor.new("Black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.7, 0.2)
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.025 / 0.2, 1, 0.1 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.new(0.085 * i, 0.15, 0.2)
	end

	local Part = Instance.new("Part", Parts)
	Part.Name = "Rear Sight Stand"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.19 / 0.2, 0.15 / 0.2, 0.1 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.1625, 0.225)

	for i = -1, 1, 2 do
		local Part = Instance.new("Part", Parts)
		Part.Name = "Rear Sight " ..i
		Part.BrickColor = BrickColor.new("Black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.2)
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.03 / 0.2, 0.1 / 0.2, 0.05 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.new(0.04 * i, -0.175, 0.3)
	end

	local Part = Instance.new("Part", Parts)
	Part.Name = "Bolt Assembly Front"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.15 / 0.2, 1, 0.1 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.4, 0.2)

	local MasterPart2 = Instance.new("Part", Parts)
	MasterPart2.Name = "Bolt"
	MasterPart2.BrickColor = BrickColor.new("Black")
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(0.2, 0.4, 0.2)
	Instance.new("CylinderMesh", MasterPart2).Scale = Vector3.new(0.19 / 0.2, 1, 0.19 / 0.2)
	local Weld = Instance.new("Weld", MasterPart2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.1, 0.15)
	Weld.C1 = CFrame.new(0, script.Magazine.Value <= 0 and 0.3 or 0, 0)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Bolt Handle"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1 / 0.2, 0.05 / 0.2, 0.05 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(-0.125, 0.175, 0.025)

	for i = -1, 1, 2 do
		local Part = Instance.new("Part", Parts)
		Part.Name = "Bolt Rail " ..i
		Part.BrickColor = BrickColor.new("Black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.6, 0.2)
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.05 / 0.2, 1, 0.05 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(i * 0.1025, 0.5, 0.025)
	end

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 1"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.19 / 0.2, 1, 0.19 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.6, 0.15)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 2"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.18 / 0.2, 0.025 / 0.2, 0.18 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.7125, 0.15)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 3"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.65, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.19 / 0.2, 1, 0.19 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 1.05, 0.15)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 4"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.18 / 0.2, 0.025 / 0.2, 0.18 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 1.3875, 0.15)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 5"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.7, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.19 / 0.2, 1, 0.19 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 1.75, 0.15)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 6"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.18 / 0.2, 0.025 / 0.2, 0.18 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 2.1125, 0.15)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 7"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.5, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.075 / 0.2, 1, 0.075 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 2.375, 0.105)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 8"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.4, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.075 / 0.2, 1, 0.075 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 2.3125, 0.182)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 9"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.09 / 0.2, 0.1125 / 0.2, 0.09 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 2.5675, 0.182)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel 9"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.065 / 0.2, 0.1 / 0.2, 0.065 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 2.6675, 0.182)

	local Part = Instance.new("Part", Parts)
	Part.Name = "Barrel Sight"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.04 / 0.2, 0.06 / 0.2, 0.075 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 2.5675, 0.25)

	local MasterPart3 = Instance.new("Part", Parts)
	MasterPart3.Name = "Magazine"
	MasterPart3.BrickColor = BrickColor.new("Black")
	MasterPart3.Transparency = script.MagazineIn.Value == false and 1 or 0
	MasterPart3.TopSurface = 0
	MasterPart3.BottomSurface = 0
	MasterPart3.FormFactor = "Custom"
	MasterPart3.Size = Vector3.new(0.2, 0.2, 0.25)
	local Mesh = Instance.new("SpecialMesh", MasterPart3)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.15 / 0.2, 0.025 / 0.2, 1)
	local Weld = Instance.new("Weld", MasterPart3)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.0125, 0.07)

	for i = -1, 1, 2 do
		local Part = Instance.new("Part", Parts)
		Part.Name = "Magazine Casing"
		Part.BrickColor = BrickColor.new("Black")
		Part.Transparency = script.MagazineIn.Value == false and 1 or 0
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.25)
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.025 / 0.2, 0.1 / 0.2, 1)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart3
		Weld.C0 = CFrame.new(i * 0.0625, 0.0625, 0)
	end

	for i = 0, 7 do
		local Part = Instance.new("Part", Parts)
		Part.Name = "Bullet"
		Part.BrickColor = BrickColor.new("New Yeller")
		Part.Transparency = i + 1 > script.Magazine.Value and 1 or 0
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.25, 0.2)
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.05 / 0.2, 1, 0.05 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart3
		Weld.C0 = CFrame.new((((i % 2) - 0.5) * 2) * 0.025, 0.1375, (((i / 7) - 0.5) * 2) * 0.1)
	end

	local Part = Instance.new("Part", Parts)
	Part.Name = "Source"
	Part.Transparency = 1
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 3.2, 0.19)
	Weld.Parent = Weld.Part0
	local Fire = Instance.new("Fire", Part)
	Fire.Enabled = false
	Fire.Size = 2
	Fire.Heat = -15
	Fire.Color = Color3.new(1, 0.6, 0.4)
	Fire.SecondaryColor = Color3.new(0.7, 0.2, 0)
	local Smoke = Instance.new("Smoke", Part)
	Smoke.Enabled = false
	Smoke.Size = 3
	Smoke.RiseVelocity = -5
	Smoke.Color = Color3.new(0.9, 0.9, 0.9)
	Smoke.Opacity = 0.1

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


function EjectMagazine()
	SoundToServer("Bang", "http://www.roblox.com/Asset/?id=10730819", 4, 0.4, false, Player.Character[ModelName].Handle)
	SoundToServer("Ping 1", "http://www.roblox.com/Asset/?id=13114759", 1.5, 1, false, Player.Character[ModelName].Handle)
	SoundToServer("Ping 2", "http://www.roblox.com/Asset/?id=11113679", 2, 1, false, Player.Character[ModelName].Handle)
	local Model = Instance.new("Model")
	Model.Name = "Magazine"
	local Source = Player.Character[ModelName].Magazine:Clone()
	Source.Transparency = 0
	Source:BreakJoints()
	Source.Parent = Model
	for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
		pcall(function()
			if Part.Weld.Part1.Name == "Magazine" and Part.Transparency ~= 1 then
				local Clone = Part:Clone()
				Clone:BreakJoints()
				Clone.CFrame = Source.CFrame * Part.Weld.C0
				local Weld = Instance.new("Weld", Clone)
				Weld.Part0 = Clone
				Weld.Part1 = Source
				Weld.C0 = Part.Weld.C0
				Clone.Parent = Model
				Part.Transparency = 1
			end
		end)
	end
	local Velocity = Vector3.new(math.random(-1000, 1000) / 1000, math.random(20000, 40000) / 1000, math.random(-1000, 1000) / 1000)
	for _, Part in pairs(Model:GetChildren()) do
		Part.CanCollide = true
		Part.Elasticity = 0
		Part.Friction = 1
		Part.Velocity = Velocity
	end
	Model.Parent = Workspace
	game:GetService("Debris"):AddItem(Model, 20)
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
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=2691586", 0.7, 1, false, Player.Character[ModelName].Handle)
		coroutine.wrap(function()
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = true
				Player.Character[ModelName].Source.Smoke.Enabled = true
			end)
			wait(0.1)
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = false
				Player.Character[ModelName].Source.Smoke.Enabled = false
			end)
		end)()
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
		Mesh.Scale = Vector3.new(0.4, 0.4, 0.4)
		tagHumanoid(Bullet)
		local BodyVelocity = Instance.new("BodyVelocity", Bullet)
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 300) + Vector3.new(math.random(-1100, 1100) / 1000, math.random(-1100, 1100) / 1000, math.random(-1100, 1100) / 1000)
		game:GetService("Debris"):AddItem(Bullet, 8)
		TouchedToServer(BulletData, Bullet)

		coroutine.wrap(function() CameraSlide(math.rad(5), 0, 0.3) end)()
		PropertyCFrameTween(Player.Character[ModelName].Bolt.Weld, "C1",
			CFrame.new(0, 0.3, 0),
			0.5, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1, 0.6, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(93), 0, math.rad(-10)),
			0.5, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.1, 0.45, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(91), math.rad(-1), math.rad(-50)),
			0.5, false)

		script.Magazine.Value = script.Magazine.Value - 1
		for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
			if Part.Name == "Bullet" and Part.Transparency == 0 then
				Part.Transparency = 1
				break
			end
		end
		UpdateFirstPerson(true)
		pcall(function()
			local Shell = Instance.new("Part", Workspace)
			Shell.Name = "Shell"
			Shell.TopSurface = 0
			Shell.BottomSurface = 0
			Shell.FormFactor = "Custom"
			Shell.BrickColor = BrickColor.new("New Yeller")
			Shell.Size = Vector3.new(0.2, 0.25, 0.2)
			Shell.CFrame = Player.Character[ModelName].Handle.CFrame * CFrame.new(0, 0.1, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			Shell.Velocity = (((Player.Character[ModelName].Handle.Position - (Player.Character[ModelName].Handle.CFrame * CFrame.new(0, 0, 1)).p).unit) * 50) + Vector3.new(math.random(-500, 500) / 1000, math.random(-500, 500) / 1000, math.random(-500, 500) / 1000)
			Shell:BreakJoints()
			Instance.new("CylinderMesh", Shell).Scale = Vector3.new(0.05 / 0.2, 1, 0.05 / 0.2)
			game:GetService("Debris"):AddItem(Shell, 10)
		end)
		if script.Magazine.Value <= 0 then
			EjectMagazine()
		else
			PropertyCFrameTween(Player.Character[ModelName].Bolt.Weld, "C1",
				CFrame.new(),
				0.5, true)
		end

		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1, 0.6, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(120), 0, math.rad(-10)),
			0.3, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.1, 0.45, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(100), math.rad(-10), math.rad(-50)),
			0.3, false)
		coroutine.wrap(function() CameraSlide(math.rad(20), 0, 0.3) end)()

		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
			CFrame.new(-1, 0.6, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-10)),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
			CFrame.new(1.1, 0.45, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-50)),
			0.2, false)
		coroutine.wrap(function() CameraSlide(math.rad(-25), 0, 0.09) end)()

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
			if Player.Backpack.Ammo[AmmoType].Value <= 0 or script.Magazine.Value >= MagazineCapacity then return end
			CanUse = false
			local Loaded = script.Magazine.Value > 0
			local Weld = Player.Character[ModelName].Handle.Weld
			Weld.C1 = Weld.Part0.CFrame:toObjectSpace(Player.Character["Left Arm"].CFrame):inverse()
			Weld.Part1 = Player.Character["Left Arm"]

			PropertyCFrameTween(Weld, "C0",
				CFrame.new(-0.2, 0, -0.9) * CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, 0),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
				CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), math.rad(40), math.rad(10)),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1, 0.6, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(70), math.rad(20), math.rad(-10)),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(1.1, 0.45, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(70), math.rad(20), math.rad(-50)),
				0.1, false)

			if script.Magazine.Value > 0 then

				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(0.7, 0.45, -0.8) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(20), math.rad(-40)),
					0.1, false)

				PropertyCFrameTween(Player.Character[ModelName].Bolt.Weld, "C1",
					CFrame.new(0, 0.3, 0),
					0.1, true)
				PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
					CFrame.new(0.9, 0.45, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(20), math.rad(-40)),
					0.1, false)

				pcall(function()
					local Shell = Instance.new("Part", Workspace)
					Shell.Name = "Shell"
					Shell.TopSurface = 0
					Shell.BottomSurface = 0
					Shell.FormFactor = "Custom"
					Shell.BrickColor = BrickColor.new("New Yeller")
					Shell.Size = Vector3.new(0.2, 0.25, 0.2)
					Shell.CFrame = Player.Character[ModelName].Handle.CFrame * CFrame.new(0, 0.1, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
					Shell.Velocity = (((Player.Character[ModelName].Handle.Position - (Player.Character[ModelName].Handle.CFrame * CFrame.new(0, 0, 1)).p).unit) * 20) + Vector3.new(math.random(-500, 500) / 1000, math.random(-500, 500) / 1000, math.random(-500, 500) / 1000)
					Shell:BreakJoints()
					Instance.new("CylinderMesh", Shell).Scale = Vector3.new(0.05 / 0.2, 1, 0.05 / 0.2)
					game:GetService("Debris"):AddItem(Shell, 10)
				end)
				wait()
				EjectMagazine()
				UpdateFirstPerson(true)
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value + script.Magazine.Value
				script.Magazine.Value = 0
			end

			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(1.5, 0.5, 0),
				0.1, false)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(0.9, 0.6, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(100), math.rad(-10), math.rad(-55)),
				0.1, false)

			local NewMagazine = nil
			if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
				NewMagazine = Player.Backpack.Ammo[AmmoType].Value
				Player.Backpack.Ammo[AmmoType].Value = 0
			else
				NewMagazine = script.Magazine.Value + MagazineCapacity
				Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
			end
			for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				pcall(function()
					if Part.Weld.Part1.Name == "Magazine" then
						Part.Transparency = 0
					end
				end)
			end
			local i = 0
			for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				if Part.Name == "Bullet" then
					i = i + 1
					if i > NewMagazine then
						Part.Transparency = 1
					end
				end
			end
			wait()
			UpdateFirstPerson(true)

			SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209810", 2, 1, false, Player.Character[ModelName].Handle)
			Player.Character[ModelName].Magazine.Weld.C1 = CFrame.new(0, 0.2, -1)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(0.9, 0.4, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(70), math.rad(20), math.rad(-55)),
				0.07, true)
			PropertyCFrameTween(Player.Character[ModelName].Magazine.Weld, "C1",
				CFrame.new(),
				0.07, false)

			script.Magazine.Value = NewMagazine

			PropertyCFrameTween(Player.Character[ModelName].Bolt.Weld, "C1",
				CFrame.new(),
				0.3, true)

			Weld.C1 = Weld.Part0.CFrame:toObjectSpace(Player.Character["Right Arm"].CFrame):inverse()
			Weld.Part1 = Player.Character["Right Arm"]
			Weld.C0 = CFrame.new()

			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
				CFrame.new(-1, 0.6, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-10)),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
				CFrame.new(1.1, 0.45, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-50)),
				0.1, true)
			PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
				CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(40), 0),
				0.1, true)
			PropertyCFrameTween(Weld, "C1",
				CFrame.fromEulerAnglesXYZ(0, 0, math.rad(10)) * CFrame.new(-0.2, -1.5, -0.6),
				0.1, false)

			for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				if Part.Name == "Bullet" and Part.Transparency == 0 then
					Part.Transparency = 1
					break
				end
			end

			wait()
			UpdateFirstPerson(true)
			CanUse = true
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
		CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(175), 0, 0),
		0.1, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, math.rad(-10)),
		0.1, true)
	PropertyCFrameTween(AimGyroAdd, "Value",
		CFrame.fromEulerAnglesXYZ(0, math.rad(20), 0),
		0.1, false)

	local Weld = Player.Character[ModelName.. " (Holstered)"].Handle.Weld
	Weld.C0 = Player.Character[ModelName.. " (Holstered)"].Handle.CFrame:toObjectSpace(Player.Character["Left Arm"].CFrame)
	Weld.Part1 = Player.Character["Left Arm"]

	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
		CFrame.new(-1, 0.6, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-10)),
		0.1, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.1, 0.45, 0.1) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(-50)),
		0.1, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
		CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(40), 0),
		0.1, true)
	PropertyCFrameTween(AimGyroAdd, "Value",
		CFrame.fromEulerAnglesXYZ(0, math.rad(-40), 0),
		0.1, true)
	PropertyCFrameTween(Weld, "C0",
		CFrame.fromEulerAnglesXYZ(0, 0, math.rad(30)) * CFrame.new(-0.7, 0, 0.4),
		0.1, false)

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

	local Weld = Player.Character[ModelName].Handle.Weld
	Weld.C0 = Player.Character[ModelName].Handle.CFrame:toObjectSpace(Player.Character["Left Arm"].CFrame)
	Weld.Part1 = Player.Character["Left Arm"]

	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
		CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, 0),
		0.05, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-20), 0, math.rad(-10)),
		0.05, true)
	PropertyCFrameTween(Weld, "C1",
		CFrame.new(),
		0.05, true)
	PropertyCFrameTween(Weld, "C0",
		CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(90), 0) * CFrame.new(-0.5, -1, 0.55),
		0.05, false)

	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)

	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Left Shoulder 2"), "C0",
		CFrame.new(-1.5, 0.5, 0),
		0.1, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Right Shoulder 2"), "C0",
		CFrame.new(1.5, 0.5, 0),
		0.1, true)
	PropertyCFrameTween(Player.Character.Torso:FindFirstChild("Neck"), "C0",
		CFrame.new(0, 1, 0),
		0.1, true)
	PropertyCFrameTween(Weld, "C0",
		CFrame.fromEulerAnglesXYZ(0, 0, math.rad(30)) * CFrame.new(-0.7, 0, 0.4),
		0.1, false)

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
	Instance.new("BoolValue", script).Name = "MagazineIn"
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
		Player.Backpack.Ammo[AmmoType].Value = MagazineCapacity * 2
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
	coroutine.wrap(loadstring(AmmoCounter))()
end