--[[
RPG-7 (Ruchnoy [Hand-held] Protivotankovyy [Anti-Tank] Granatomyot [Grenade Launcher])
Used/manufactured by nearly every country I know of. Cheap and efficient. If a FPS doesn't have one of these, it isn't a FPS.
--]]


if script == nil then return end


ModelName = "RPG-7"
AmmoType = "RPG-7 Rockets"
MagazineCapacity = 1
MagazineCapacityAdd = 0
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6Alt")
Selected = false
Connected = false
Button1Down = false
CanUse = true
ProjectileData = [[Blast_Size = 25
Blast_Strength = 100
]] ..game:GetService("InsertService"):LoadAsset(60548640)["ProjectileData"].Value
FirstPerson = [[FirstPersonOffset = CFrame.new(0.1, -0.25, 0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10), 0)
]] ..game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value
AmmoCounter = game:GetService("InsertService"):LoadAsset(66610412)["AmmoCounter"].Value


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


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
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.35, 1.5, 0.35)
	Mesh.Parent = MasterPart
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.new(-0.65, 1, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(190), math.rad(90), 0)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C0 = CFrame.new(0, 1.5, 0.75)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip / Trigger Housing"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.29, 0.75, 0.1)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.2, -0.15)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Grip 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
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
	Weld.C0 = CFrame.new(0, -0.4, -0.65)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Grip 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.Material = "Wood"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.29, 0.35, 0.8)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -1.1, -0.575)
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
	Mesh.Scale = Vector3.new(0.1, 0.25, 0.025)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.1, -0.5)
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
	Mesh.Scale = Vector3.new(0.1, 0.025, 0.3)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.01, -0.35)
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
	Weld.C0 = CFrame.new(0, -0.11, -0.275)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Center 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.4, 0.5, 0.4)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -1, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Center 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.Material = "Wood"
	Part.Locked = true
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.45, 1, 0.45)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -1.75, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Center 3"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.Material = "Wood"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=1778999"
	Mesh.Scale = Vector3.new(0.335, 0.45, 0.335)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -2.6225, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Center 4"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.Material = "Wood"
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.325, 1.25, 0.325)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -3, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "End 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.31, 0.1, 0.31)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -3.625, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "End 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=1778999"
	Mesh.Scale = Vector3.new(0.425, 0.875, 0.425)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 3.61, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)
	Weld.Parent = Part
	local Fire = Instance.new("Fire")
	Fire.Enabled = false
	Fire.Name = "Fire"
	Fire.Color = Color3.new(1, 0.5, 0)
	Fire.SecondaryColor = Color3.new(1, 0.75, 0.5)
	Fire.Heat = -25
	Fire.Size = 5
	Fire.Parent = Part
	local Smoke = Instance.new("Smoke")
	Smoke.Enabled = false
	Smoke.Name = "Smoke"
	Smoke.Opacity = 0.5
	Smoke.Color = Color3.new(0.8, 0.8, 0.8)
	Smoke.RiseVelocity = -10
	Smoke.Size = 5
	Smoke.Parent = Part

	local Part = Instance.new("Part")
	Part.Name = "Source"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.Transparency = 1
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.9, 0)
	Weld.Parent = Part
	local Fire = Instance.new("Fire")
	Fire.Enabled = false
	Fire.Name = "Fire"
	Fire.Color = Color3.new(1, 0.5, 0)
	Fire.SecondaryColor = Color3.new(1, 0.75, 0.5)
	Fire.Heat = -25
	Fire.Size = 2.5
	Fire.Parent = Part
	local Smoke = Instance.new("Smoke")
	Smoke.Enabled = false
	Smoke.Name = "Smoke"
	Smoke.Opacity = 0.3
	Smoke.Color = Color3.new(0.8, 0.8, 0.8)
	Smoke.RiseVelocity = -10
	Smoke.Size = 2.5
	Smoke.Parent = Part

	local MasterPart2 = Instance.new("Part")
	if script.Magazine.Value <= 0 then MasterPart2.Transparency = 1 end
	MasterPart2.Name = "Projectile Source"
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(1, 1, 1)
	MasterPart2.BrickColor = BrickColor.new("Grime")
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.2, 1, 0.2)
	Mesh.Parent = MasterPart2
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart2
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.3, 0)
	Weld.Parent = MasterPart2
	local Fire = Instance.new("Fire")
	Fire.Enabled = false
	Fire.Name = "Fire"
	Fire.Color = Color3.new(1, 0.5, 0)
	Fire.SecondaryColor = Color3.new(1, 0.75, 0.5)
	Fire.Heat = 50
	Fire.Size = 2
	Fire.Parent = MasterPart2
	local Smoke = Instance.new("Smoke")
	Smoke.Enabled = false
	Smoke.Name = "Smoke"
	Smoke.Opacity = 0.25
	Smoke.Color = Color3.new(0.8, 0.8, 0.8)
	Smoke.RiseVelocity = 10
	Smoke.Size = 5
	Smoke.Parent = MasterPart2

	local Part = Instance.new("Part")
	if script.Magazine.Value <= 0 then Part.Transparency = 1 end
	Part.Name = "Projectile Center 1"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Grime")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=1033714"
	Mesh.Scale = Vector3.new(0.25, 1.25, 0.25)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.65, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	if script.Magazine.Value <= 0 then Part.Transparency = 1 end
	Part.Name = "Projectile Center 2"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.BrickColor = BrickColor.new("Grime")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=1033714"
	Mesh.Scale = Vector3.new(0.25, 1.1, 0.25)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, -1.53, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)
	Weld.Parent = Part

	local Part = Instance.new("Part")
	if script.Magazine.Value <= 0 then Part.Transparency = 1 end
	Part.Name = "Projectile Tip"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(2, 2, 2)
	Part.BrickColor = BrickColor.new("Grime")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh")
	Mesh.Scale = Vector3.new(0.05, 0.05, 0.05)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 1.89, 0)
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
		local Position = Mouse.Hit.p
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 15, 0.25, false, Player.Character[ModelName].Handle)
		if script.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		SoundToServer("Fire", "rbxasset://sounds/Shoulder fired rocket.wav", math.random(900, 1100) / 1000, 1, false, Player.Character[ModelName].Handle)
		script.Magazine.Value = script.Magazine.Value - 1
		coroutine.wrap(function()
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = true
				Player.Character[ModelName].Source.Smoke.Enabled = true
				Player.Character[ModelName]["End 2"].Fire.Enabled = true
				Player.Character[ModelName]["End 2"].Smoke.Enabled = true
			end)
			wait(0.2)
			pcall(function()
				Player.Character[ModelName].Source.Fire.Enabled = false
				Player.Character[ModelName].Source.Smoke.Enabled = false
				Player.Character[ModelName]["End 2"].Fire.Enabled = false
				Player.Character[ModelName]["End 2"].Smoke.Enabled = false
			end)
		end)()
		if Player.Character[ModelName]:FindFirstChild("Projectile Source") == nil or Player.Character[ModelName]:FindFirstChild("Projectile Tip") == nil then return end
		local ProjectileModel = Instance.new("Model")
		ProjectileModel.Name = ModelName.. " Projectile"
		local ProjectileSource = Player.Character[ModelName]:FindFirstChild("Projectile Source"):Clone()
		ProjectileSource.Transparency = 0
		ProjectileSource.CanCollide = true
		ProjectileSource.CFrame = CFrame.new(Player.Character[ModelName].Source.Position, Position) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		ProjectileSource.Parent = ProjectileModel
		pcall(function() ProjectileSource.Fire.Enabled = true end)
		pcall(function() ProjectileSource.Smoke.Enabled = true end)
		for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
			if string.match(Part.Name, "Projectile") then
				if Part.Name ~= "Projectile Source" then
					local Clone = Part:Clone()
					Clone.Transparency = 0
					Clone.CanCollide = true
					Clone.Parent = ProjectileModel
					Clone.CFrame = ProjectileSource.CFrame * (Part.Weld.C0 * Part.Weld.C1):inverse()
					local Weld = Instance.new("Weld")
					Weld.Part0 = Clone
					Weld.Part1 = ProjectileSource
					Weld.C0 = Part.Weld.C0
					Weld.C1 = Part.Weld.C1
					Weld.Parent = Weld.Part0
				end
				Part.Transparency = 1
			end
		end
		ProjectileModel.Parent = Workspace
		local creator = Instance.new("ObjectValue", ProjectileModel["Projectile Tip"])
		creator.Name = "creator"
		creator.Value = Player
		local BodyVelocity = Instance.new("BodyVelocity")
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = ((Position - Player.Character[ModelName].Source.Position).unit * 500) + Vector3.new(math.random(-2000, 2000) / 1000, math.random(-2000, 2000) / 1000, math.random(-2000, 2000) / 1000)
		BodyVelocity.Parent = ProjectileSource
		local BodyGyro = Instance.new("BodyGyro")
		BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		BodyGyro.cframe = CFrame.new(Player.Character[ModelName].Source.Position, Position) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		BodyGyro.Parent = ProjectileSource
		coroutine.wrap(function()
			wait(0.1)
			Instance.new("Configuration", ProjectileModel["Projectile Tip"]).Name = "CanExplode"
		end)()
		TouchedToServer(ProjectileData, ProjectileModel["Projectile Tip"])
		game:GetService("Debris"):AddItem(ProjectileModel, 10)
		local X = math.rad(math.random(40000, 50000) / 1000)
		local Y = math.rad(math.random(-10000, 10000) / 1000)
		CameraPunch(X, Y)
		CameraSlide(-X, -Y, 0.03)
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
			if script.Magazine.Value >= MagazineCapacity or Player.Backpack.Ammo[AmmoType].Value <= 0 or Player.Character[ModelName]:FindFirstChild("Projectile Source") == nil or Player.Character[ModelName]:FindFirstChild("Projectile Tip") == nil then return end
			CanUse = false
			SoundToServer("Reload", "http://www.roblox.com/Asset/?id=2691591", 1.78, 0, false, Player.Character[ModelName].Handle)
			while Player.Character[ModelName].Handle:FindFirstChild("Reload") == nil do wait() end
			local Sound = Player.Character[ModelName].Handle.Reload
			coroutine.wrap(function()
				for i = 0, 1, 0.06 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25 + i / 10, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(i * 90))
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.75, 0.1)
						Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(0, -1.4 * i, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-i * 170))
					end)
					wait()
				end
			end)()
			for i = 1, 0, -0.1 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90) * i, 0, math.rad(67.5) * i)
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0, 1.85 * i, 0)
				end)
				wait()
			end
			local ProjectileModel = Instance.new("Model")
			ProjectileModel.Name = ModelName.. " Projectile"
			local ProjectileSource = Player.Character[ModelName]:FindFirstChild("Projectile Source"):Clone()
			ProjectileSource.Transparency = 0
			ProjectileSource.Parent = ProjectileModel
			for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				if string.match(Part.Name, "Projectile") then
					if Part.Name ~= "Projectile Source" then
						local Clone = Part:Clone()
						Clone.Transparency = 0
						Clone.Parent = ProjectileModel
						local Weld = Instance.new("Weld")
						Weld.Part0 = Clone
						Weld.Part1 = ProjectileSource
						Weld.C0 = Part.Weld.C0
						Weld.C1 = Part.Weld.C1
						Weld.Parent = Weld.Part0
					end
				end
			end
			ProjectileModel.Parent = Workspace
			local Weld = Instance.new("Weld", ProjectileSource)
			Weld.Part0 = Weld.Parent
			Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
			Weld.C0 = CFrame.new(0.2, -0.8, -0.6) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(-37.5))
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(110) * i, 0, math.rad(67.5) * i)
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0.35 * i, 1.85 * i, 0)
				end)
				wait()
			end
			Sound.Volume = 1
			Sound.Pitch = 0.9
			for i = 0, 0.9, 0.1 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + i, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(110), 0, math.rad(67.5))
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0.35 * (1 - i), 1.85, 0)
				end)
				wait()
			end
			coroutine.wrap(function()
				Sound:Stop()
				wait()
				Sound:Remove()
			end)()
			ProjectileModel:Remove()
			for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				if string.match(Part.Name, "Projectile") then
					Part.Transparency = 0
				end
			end
			script.Magazine.Value = MagazineCapacity
			Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
			coroutine.wrap(function()
				for i = 1, 0, -0.1 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25 + i / 10, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(i * 90))
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.75, 0.1)
						Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(0, -1.4 * i, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-i * 170))
					end)
					wait()
				end
			end)()
			for i = 0.9, 0, -0.1 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + i, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(110), 0, math.rad(67.5))
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 1.85, 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C1 = CFrame.new()
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(67.5))
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 1.85, 0)
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
				Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(0, 0.75, 0.1)
			end)
			wait(0.1)
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
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, 0, Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.5, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.1)
	coroutine.wrap(function()
		for i = 0, 1, 0.025 do
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90) * i, 0, math.rad(67.5) * i)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0, 1.85 * i, 0)
			end)
			wait()
		end
	end)()
	for i = 0, 1, 0.05 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, -0.25 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90) * i, 0, math.rad(-20) * i)
			Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
		end)
		wait()
	end
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	for i = 0, 1, 0.05 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 * (1 - i), 0.5 * (1 - i), -0.25 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(-90) * (1 - i), 0, math.rad(-20) * (1 - i)) * CFrame.new(1.25 * i, 0.5 * i, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90) * i, 0, 0)
			Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0, 0.75 * i, 0.1 * i)
		end)
		pcall(function()
			Player.Character[ModelName].Handle.Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(-90) * (1 - i), 0, 0)
		end)
		wait()
	end
	pcall(function()
		Player.Character[ModelName].Handle.Weld.C1 = CFrame.new()
	end)
	pcall(function()
		Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(67.5))
		Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 1.85, 0)
		Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		Player.Character.Torso["Right Shoulder 2"].C1 =  CFrame.new(0, 0.75, 0.1)
	end)
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
	coroutine.wrap(function()
		for i = 1, 0, -0.025 do
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90) * i, 0, math.rad(67.5) * i)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0, 1.85 * i, 0)
			end)
			wait()
		end
	end)()
	for i = 1, 0, -0.05 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 * (1 - i), 0.5 * (1 - i), -0.25 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(-90) * (1 - i), 0, math.rad(-20) * (1 - i)) * CFrame.new(1.25 * i, 0.5 * i, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90) * i, 0, 0)
			Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5 * (1 - i), 0) * CFrame.new(0, 0.75 * i, 0.1 * i)
		end)
		pcall(function()
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 1.5, 0.75)
			Player.Character[ModelName].Handle.Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(-90) * (1 - i), 0, 0)
		end)
		wait()
	end
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	for i = 1, 0, -0.05 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, -0.25 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90) * i, 0, math.rad(-20) * i)
			Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
		end)
		wait()
	end
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
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
	if Player.Backpack:FindFirstChild("Ammo") == nil then
		Instance.new("Configuration", Player.Backpack).Name = "Ammo"
	end
	if Player.Backpack.Ammo:FindFirstChild(AmmoType) == nil then
		Instance.new("IntValue", Player.Backpack.Ammo).Name = AmmoType
		Player.Backpack.Ammo[AmmoType].Value = 5
	end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	wait()
	CreateParts(Player.Character, 1)
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
	coroutine.wrap(loadstring(AmmoCounter))()
end