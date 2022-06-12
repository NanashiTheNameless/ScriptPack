--[[
Aerial Support
Models:
 - Smoke Grenade:
	- 0, Smoke Marker
	- {#, ...}, Supply Package
 - Laser Designator:
	- 1, RBFM Strike
 - Electronic Beacon:
	- 2, Artillery Beacon

Supply Package supplies:
 - 1, Health Bonus
 - 2, Adrenaline Bonus
 - 3, Ammo Package
 - 4, RBFM Strike
 - 5, Artillery Beacon
--]]


if script == nil then return end


ModelType = script:FindFirstChild("ModelType") ~= nil and loadstring("return " ..script.ModelType.Value)() or {1, 1, 1, 1, 2, 2, 2, 3, 3, 4, 5}
ModelName = (function()
	if ModelType == 0 then
		return "Smoke Marker"
	elseif ModelType == 1 then
		return "RBFM Strike"
	elseif ModelType == 2 then
		return "Artillery Beacon"
	elseif type(ModelType) == "table" then
		return "Supply Package"
	end
end)()
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Thrown = false
Thrown = false
RBFMProjectileData = [[Blast_Size = 80
Blast_Strength = 100
Blast_Sound = true
Blast_Sound_Pitch = 0.5
]] ..game:GetService("InsertService"):LoadAsset(60548640)["ProjectileData"].Value
FirstPerson = game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
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

	if ModelType == 0 or type(ModelType) == "table" then
		local MasterPart = Instance.new("Part")
		MasterPart.Name = "Handle"
		MasterPart.BrickColor = BrickColor.new(ModelType == 0 and "Dark red" or "Deep blue")
		MasterPart.TopSurface = 0
		MasterPart.BottomSurface = 0
		MasterPart.FormFactor = "Custom"
		MasterPart.Size = Vector3.new(0.4, 0.9, 0.4)
		MasterPart.Parent = Parts
		Instance.new("CylinderMesh", MasterPart)
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart
		if Format == 1 then
			Weld.Part1 = Player.Character:FindFirstChild("Left Leg")
			Weld.C0 = CFrame.new(0.7, 0, -0.25) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		elseif Format == 2 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C0 = CFrame.new(0, 0, 1.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		end
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Stripe Top Top"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.415, 0.2, 0.415)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.1, 1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.2, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Stripe Bottom Top"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.415, 0.2, 0.415)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.1, 1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.4, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Stripe Center Top"
		Part.BrickColor = BrickColor.new("Really " ..(ModelType == 0 and "red" or "blue"))
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.41, 0.2, 0.41)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.3, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Stripe Top Bottom"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.415, 0.2, 0.415)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.1, 1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.2, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Stripe Bottom Bottom"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.415, 0.2, 0.415)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.1, 1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.4, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Stripe Center Bottom"
		Part.BrickColor = BrickColor.new("Really " ..(ModelType == 0 and "red" or "blue"))
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.41, 0.2, 0.41)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.3, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Pin Holder"
		Part.BrickColor = BrickColor.new("Black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.4, 0.2)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, -0.5, 0)
		Weld.Parent = Weld.Part0

		local MasterPart2 = Instance.new("Part")
		MasterPart2.Name = "Pin"
		MasterPart2.BrickColor = BrickColor.new("Dark stone grey")
		MasterPart2.TopSurface = 0
		MasterPart2.BottomSurface = 0
		MasterPart2.FormFactor = "Custom"
		MasterPart2.Size = Vector3.new(0.2, 0.2, 0.2)
		MasterPart2.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", MasterPart2)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.3, 0.1, 0.1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart2
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.125, -0.6, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Pin Ring"
		Part.BrickColor = BrickColor.new("Dark stone grey")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.2)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.75, 0.1, 0.75)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(0.1, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		Weld.Parent = Weld.Part0
	elseif ModelType >= 1 and ModelType <= 1 then
		local MasterPart = Instance.new("Part")
		MasterPart.Name = "Handle"
		MasterPart.BrickColor = BrickColor.new("Medium stone grey")
		MasterPart.TopSurface = 0
		MasterPart.BottomSurface = 0
		MasterPart.FormFactor = "Custom"
		MasterPart.Size = Vector3.new(1.25, 0.75, 0.5)
		MasterPart.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart
		if Format == 1 then
			Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
			Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))
			Weld.C1 = CFrame.new(0, 0, -0.7)
		elseif Format == 2 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C0 = CFrame.new(0, 1.2, 0)
		end
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Left Edge"
		Part.BrickColor = BrickColor.new("Medium stone grey")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.5, 0.749, 0.5)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.625, 0, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Right Edge"
		Part.BrickColor = BrickColor.new("Medium stone grey")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.5, 0.749, 0.5)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(-0.625, 0, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Lens Outside"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.415, 0.2, 0.415)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.1, 1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.38, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Lens"
		Part.BrickColor = BrickColor.new("Deep blue")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Reflectance = 0.5
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.4, 0.21, 0.4)
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.1, 1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, 0.38, 0)
		Weld.Parent = Weld.Part0
	else
		local MasterPart = Instance.new("Part")
		MasterPart.Name = "Handle"
		MasterPart.FormFactor = "Custom"
		MasterPart.Size = Vector3.new(0.5, 1.25, 0.2)
		MasterPart.BrickColor = BrickColor.new("Really black")
		MasterPart.TopSurface = 0
		MasterPart.BottomSurface = 0
		MasterPart.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = MasterPart
		if Format == 1 then
			Weld.Part1 = Player.Character:FindFirstChild("Torso")
			Weld.C0 = CFrame.new(0.7, -0.25, 0.6)
		elseif Format == 2 then
			Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
			Weld.C0 = CFrame.new(-1.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(90))
		end
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Antenna"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.5, 0.2)
		Part.BrickColor = BrickColor.new("Dark stone grey")
		Part.Transparency = 0
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.5, 1, 0.5)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.1, -0.85, 0)
		Weld.Parent = Weld.Part0

		local Part = Instance.new("Part")
		Part.Name = "Light"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.2)
		Part.BrickColor = BrickColor.new("Bright green")
		Part.Transparency = 0.5
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(-0.175, -0.64, 0)
		Weld.Parent = Weld.Part0
	end

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
	if CheckPlayer() == false or Primed == true or Thrown == true or CanUse == false then return end
	CanUse = false
	Primed = true
	if ModelType == 0 or type(ModelType) == "table" then
		SoundToServer("Pin", "http://www.roblox.com/Asset/?id=2697295", 5, 1, false, Player.Character.Torso)
		pcall(function() Player.Character[ModelName].Pin.Weld:Remove() end)
		for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
			pcall(function()
				if string.match(Part.Name, "Pin") then
					Part.CanCollide = true
				end
			end)
		end
		local Find1 = math.random()
		local ParentObject = Instance.new("ObjectValue", Workspace)
		ParentObject.Name = Find1
		ParentObject.Value = Player.Character[ModelName].Handle
		local Find2 = math.random()
		local Clone = script:Clone()
		Clone.Disabled = true
		Clone.Name = Find2
		pcall(function() Clone.Player:Remove() end)
		pcall(function() Clone.ModelType:Remove() end)
		Clone.Parent = Workspace
		Instance.new("Configuration", Player.Character[ModelName].Handle).Name = "CanExplode"
		SendToServer([[local Value = Workspace["]] ..Find1.. [["]
local Source = Value.Value
Value:Remove()
local Clone = Workspace["]] ..Find2.. [["]
Clone.Parent = nil
Clone.Disabled = false
wait(4)
if Source.Parent == nil then return end
local Sound = Instance.new("Sound")
Sound.Name = "Bang"
Sound.SoundId = "rbxasset://sounds/collide.wav"
Sound.Volume = 1
Sound.Pitch = 3
Sound.Parent = Source
Sound:Play()
game:GetService("Debris"):AddItem(Sound, 0.1)
wait(0.25)
local Sound = Instance.new("Sound")
Sound.Name = "Hiss"
Sound.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
Sound.Volume = 0.25
Sound.Pitch = 2
Sound.Parent = Source
local Part = Instance.new("Part", Source.Parent)
Part.Name = "Holder"
Part.Transparency = 1
Part.TopSurface = 0
Part.BottomSurface = 0
Part.CanCollide = false
Part.Anchored = true
Part.FormFactor = "Custom"
Part.Size = Vector3.new()
local Smoke = Instance.new("Smoke", Part)
Smoke.Color = Color3.new(]] ..(ModelType == 0 and "1, 0.2, 0.2" or "0.2, 0.2, 1")..[[)
Smoke.Size = 10
Smoke.RiseVelocity = 50
]] .. (type(ModelType) == "table" and [[
coroutine.wrap(function()
	local Height = Source.Position.y + math.random(175, 215)
	local Pick = {]] ..(type(ModelType) == "table" and table.concat(ModelType, ", ") or ModelType).. [[}
	Pick = Pick[math.random(1, #Pick)]
	wait(math.random(4000, 7500) / 1000)
	local Helicopter = Instance.new("Model", Workspace)
	Helicopter.Name = "CH-47 Chinook"

	local Base = Instance.new("Part", Helicopter)
	Base.Name = "Base"
	Base.BrickColor = BrickColor.new("Dark stone grey")
	Base.TopSurface = 0
	Base.BottomSurface = 0
	Base.FormFactor = "Custom"
	Base.Size = Vector3.new(8, 10, 30)
	Base.CFrame = CFrame.fromEulerAnglesXYZ(0, math.rad(math.random(0, 360)), 0) * CFrame.new(0, Height + 200, 1000)
	local BodyVelocity = Instance.new("BodyVelocity", Base)
	BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	local BodyGyro = Instance.new("BodyGyro", Base)
	BodyGyro.P = 1000
	BodyGyro.D = 500
	BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	local Position = nil
	local function WaitUntilClose()
		while (Base.Position - Position).magnitude > 25 do wait() end
	end
	coroutine.wrap(function()
		local i = 0
		while true do
			if Position ~= nil then
				if (Base.Position - Position).magnitude > 25 then
					i = i + 0.05
				else
					i = i - 0.1
				end
				if i > 1 then i = 1 end
				if i < 0 then i = 0 end
				BodyGyro.cframe = CFrame.new(Base.Position, Position)
				BodyVelocity.velocity = Base.CFrame.lookVector * 100 * i
			else
				i = 0
				BodyVelocity.velocity = BodyVelocity.velocity * 0.95
			end
			wait()
		end
	end)()

	local Part = Instance.new("WedgePart", Helicopter)
	Part.Name = "Front Top"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(8, 5, 2.5)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Base
	Weld.C0 = CFrame.new(0, -2.5, 16.25)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part", Helicopter)
	Part.Name = "Front Bottom 1"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(8, 5, 2.5)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Base
	Weld.C0 = CFrame.new(0, 2.5, 16.25)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("WedgePart", Helicopter)
	Part.Name = "Front Bottom 2"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(8, 2.5, 3.5)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Base
	Weld.C0 = CFrame.new(0, 1.25, 19.25)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("WedgePart", Helicopter)
	Part.Name = "Front Bottom 3"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(8, 3.5, 2.5)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Base
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
	Weld.C1 = CFrame.new(0, -3.75, -19.25)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("WedgePart", Helicopter)
	Part.Name = "Back"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(8, 10, 10)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Base
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)
	Weld.C1 = CFrame.new(0, 0, 20)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("WedgePart", Helicopter)
	Part.Name = "Back Spine 1"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(3.25, 5, 3)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Base
	Weld.C0 = CFrame.new(0, -7.5, -15)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part", Helicopter)
	Part.Name = "Back Spine 2"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(3.25, 5, 8)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Base
	Weld.C0 = CFrame.new(0, -7.5, -20.5)
	Weld.Parent = Weld.Part0

	for i = 1, 4 do
		local Part = Instance.new("Part", Helicopter)
		Part.Name = "Rotor"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1.5, 0.5, 20)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = Base
		Weld.C0 = CFrame.new(0, 0, 10)
		Weld.C1 = CFrame.new(0, 10.25, 20.5)
		Weld.Parent = Weld.Part0
		coroutine.wrap(function()
			while Weld.Parent ~= nil do
				Weld.C0 = CFrame.new(Weld.C0.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i) + math.rad(tick() % 360) * 750, 0)
				wait()
			end
		end)()
	end

	local Part = Instance.new("Part", Helicopter)
	Part.Name = "Front Spine"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(2.75, 2, 4)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = Base
	Weld.C0 = CFrame.new(0, -6, 10)
	Weld.Parent = Weld.Part0

	for i = 1, 4 do
		local Part = Instance.new("Part", Helicopter)
		Part.Name = "Rotor"
		Part.BrickColor = BrickColor.new("Really black")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1.5, 0.5, 20)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = Base
		Weld.C0 = CFrame.new(0, 0, 10)
		Weld.C1 = CFrame.new(0, 7.25, -10)
		Weld.Parent = Weld.Part0
		coroutine.wrap(function()
			while Weld.Parent ~= nil do
				Weld.C0 = CFrame.new(Weld.C0.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i) + math.rad(tick() % 360) * 750, 0)
				wait()
			end
		end)()
	end

	Position = Vector3.new(Source.Position.x, Height, Source.Position.z)

	WaitUntilClose()

	wait(1)

	local Package = Instance.new("Model", Workspace)
	Package.Name = "Supply Package"

	local MasterPart = Instance.new("Part", Package)
	MasterPart.Name = "Crate"
	MasterPart.BrickColor = BrickColor.new("Deep blue")
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(4, 4, 6.5)
	MasterPart.CFrame = Base.CFrame * CFrame.new(0, -8, 20)
	local Mesh = Instance.new("BlockMesh", MasterPart)
	Mesh.Bevel = 0.25

	local Part = Instance.new("Part", Package)
	Part.Name = "Bind 1"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(4.1, 4.1, 0.5)
	local Mesh = Instance.new("BlockMesh", Part)
	Mesh.Bevel = 0.1
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, 1.75)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part", Package)
	Part.Name = "Bind 2"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(4.1, 4.1, 0.5)
	local Mesh = Instance.new("BlockMesh", Part)
	Mesh.Bevel = 0.1
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0, -1.75)
	Weld.Parent = Weld.Part0

	local Print = Instance.new("BillboardGui", MasterPart)
	Print.Name = "Print"
	Print.Adornee = MasterPart
	Print.Size = UDim2.new(9, 0, 5, 0)
	Print.StudsOffset = Vector3.new(0, 6, 0)
	coroutine.wrap(function()
		while Print.Parent ~= nil do
			Print.StudsOffset = Vector3.new(0, 6 + (((math.sin(tick() * 5) + 1) / 2) * 2), 0)
			wait()
		end
	end)()
	local TextLabel = Instance.new("TextLabel", Print)
	TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
	TextLabel.BackgroundTransparency = 0.5
	TextLabel.BorderSizePixel = 0
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.FontSize = "Size12"
	TextLabel.TextWrap = true
	TextLabel.Text = (function()
		if Pick == 1 then
			return "Health Boost"
		elseif Pick == 2 then
			return "Adrenaline Boost"
		elseif Pick == 3 then
			return "Ammo Bonus"
		elseif Pick == 4 then
			return "RBFM Strike"
		elseif Pick == 5 then
			return "Artillery Beacon"
		end
	end)()
	TextLabel.Size = UDim2.new(1, 0, 1, 0)

	MasterPart.Touched:connect(function(Hit)
		if Hit.Parent == nil then return end
		MasterPart.Velocity = MasterPart.Velocity / 10
		local Player = game:GetService("Players"):GetPlayerFromCharacter(Hit.Parent)
		if Player ~= nil then
			local Humanoid = Player.Character:FindFirstChild("Humanoid")
			if Humanoid ~= nil then
				if Pick == 1 then
					if Humanoid.Health + 150 > Humanoid.MaxHealth then
						Humanoid.MaxHealth = Humanoid.MaxHealth + ((Humanoid.Health + 150) - Humanoid.MaxHealth)
					end
					wait()
					Humanoid.Health = Humanoid.Health + 150
					coroutine.wrap(function()
						local ScreenGui = Instance.new("ScreenGui", Player.PlayerGui)
						ScreenGui.Name = "Health Boost"
						local TextLabel = Instance.new("TextLabel", ScreenGui)
						TextLabel.BackgroundColor3 = Color3.new(0, 1, 0)
						TextLabel.BorderSizePixel = 0
						TextLabel.TextColor3 = Color3.new(0, 0, 0)
						TextLabel.FontSize = "Size12"
						TextLabel.Text = "+150 health boost!"
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						for i = 0, 1, 0.025 do
							TextLabel.BackgroundTransparency = i
							TextLabel.TextColor3 = Color3.new(i, i, i)
							TextLabel.TextTransparency = i
							wait()
						end
						ScreenGui:Remove()
					end)()
				elseif Pick == 2 then
					if Player.Character:FindFirstChild("WalkSpeedChanged") ~= nil then return end
					Humanoid.WalkSpeed = Humanoid.WalkSpeed + 10
					coroutine.wrap(function()
						local ScreenGui = Instance.new("ScreenGui", Player.PlayerGui)
						ScreenGui.Name = "Adrenaline Boost"
						local TextLabel = Instance.new("TextLabel", ScreenGui)
						TextLabel.BackgroundColor3 = Color3.new(1, 0, 0)
						TextLabel.BorderSizePixel = 0
						TextLabel.TextColor3 = Color3.new(0, 0, 0)
						TextLabel.FontSize = "Size12"
						TextLabel.Text = "Adrenaline boost!"
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						for i = 0, 1, 0.025 do
							TextLabel.BackgroundTransparency = i
							TextLabel.TextColor3 = Color3.new(i, i, i)
							TextLabel.TextTransparency = i
							wait()
						end
						ScreenGui:Remove()
					end)()
				elseif Pick == 3 then
					if Player.Backpack:FindFirstChild("Ammo") == nil then return end
					for _, Ammo in pairs(Player.Backpack.Ammo:GetChildren()) do
						Ammo.Value = Ammo.Value + (function()
							if Ammo.Name:lower():match("rocket") then
								return 10
							elseif Ammo.Name:lower():match("missile") then
								return 3
							elseif Ammo.Name:lower():match("bomb") or Ammo.Name:lower():match("grenade") then
								return 15
							elseif Ammo.Name:lower():match("shot") or Ammo.Name:lower():match("gauge") or Ammo.Name:lower():match("shell") then
								return 30
							elseif Ammo.Name:lower():match("alien") then
								return 50
							elseif Ammo.Name:lower():match("arrow") then
								return 25
							else
								return 100
							end
						end)()
					end
					coroutine.wrap(function()
						local ScreenGui = Instance.new("ScreenGui", Player.PlayerGui)
						ScreenGui.Name = "Ammo Bonus"
						local TextLabel = Instance.new("TextLabel", ScreenGui)
						TextLabel.BackgroundColor3 = Color3.new(1, 1, 0)
						TextLabel.BorderSizePixel = 0
						TextLabel.TextColor3 = Color3.new(0, 0, 0)
						TextLabel.FontSize = "Size12"
						TextLabel.Text = "Ammo bonus!"
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						for i = 0, 1, 0.025 do
							TextLabel.BackgroundTransparency = i
							TextLabel.TextColor3 = Color3.new(i, i, i)
							TextLabel.TextTransparency = i
							wait()
						end
						ScreenGui:Remove()
					end)()
				else
					local ModelType = Instance.new("StringValue", Clone)
					ModelType.Name = "ModelType"
					ModelType.Value = tostring(Pick - 3)
					local PlayerValue = Instance.new("ObjectValue", Clone)
					PlayerValue.Name = "Player"
					PlayerValue.Value = Player
					Clone.Parent = Workspace
				end
			end
			Package:Remove()
		end
	end)

	wait(math.random(1000, 6000) / 1000)

	Position = (CFrame.fromEulerAnglesXYZ(0, math.rad(math.random(0, 360)), 0) * CFrame.new(0, Height + math.random(300, 500), 1000)).p + Source.Position

	WaitUntilClose()

	Helicopter:Remove()
end)()
]] or "") .. [[
for i = 1, 0, -0.001 do
	Smoke.Opacity = i
	Sound.Volume = i
	Sound:Play()
	Part.CFrame = CFrame.new(Source.Position)
	wait()
end
Smoke.Enabled = false
wait(5)
pcall(function() Source.Parent:Remove() end)]])
		CanUse = true
	elseif ModelType == 1 then
		CanUse = false
		local Missile = Instance.new("Model", Workspace)
		Missile.Name = "RBFM Strike"
		local Body = Instance.new("Part", Missile)
		Body.Name = "Projectile Source"
		Body.TopSurface = 0
		Body.BottomSurface = 0
		Body.BrickColor = BrickColor.new("Black")
		Body.FormFactor = "Custom"
		Body.Size = Vector3.new(1, 10, 1)
		Body.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(math.random(-50000, 50000) / 1000, 2500, math.random(-50000, 50000) / 1000), Mouse.Hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		local Fire = Instance.new("Fire", Body)
		Fire.Heat = 50
		Fire.Size = 15
		local Smoke = Instance.new("Smoke", Body)
		Smoke.RiseVelocity = 10
		Smoke.Size = 30
		local BodyVelocity = Instance.new("BodyVelocity", Body)
		BodyVelocity.P = 150
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		local BodyGyro = Instance.new("BodyGyro", Body)
		BodyGyro.P = 1000
		BodyGyro.D = 100
		BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		Instance.new("CylinderMesh", Body)
		local Tip = Instance.new("Part", Missile)
		Tip.Name = "Projectile Tip"
		Tip.TopSurface = 0
		Tip.BottomSurface = 0
		Tip.BrickColor = BrickColor.new("Black")
		Tip.FormFactor = "Custom"
		Tip.Size = Vector3.new(1, 5, 1)
		Instance.new("SpecialMesh", Tip).MeshType = "Sphere"
		local Weld = Instance.new("Weld", Tip)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Body
		Weld.C0 = CFrame.new(0, 5, 0)
		for i = 1, 4 do
			local Wing = Instance.new("WedgePart", Missile)
			Wing.Name = "Wing"
			Wing.TopSurface = 0
			Wing.BottomSurface = 0
			Wing.BrickColor = BrickColor.new("Black")
			Wing.FormFactor = "Custom"
			Wing.Size = Vector3.new(0.3, 3, 2)
			local Weld = Instance.new("Weld", Wing)
			Weld.Part0 = Weld.Parent
			Weld.Part1 = Body
			Weld.C0 = CFrame.new(0, 3, 1.5) * CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(i * 90), 0)
		end
		tagHumanoid(Tip)
		Instance.new("Configuration", Tip).Name = "CanExplode"
		TouchedToServer(RBFMProjectileData, Tip)
		coroutine.wrap(function()
			while Button1Down == true and Selected == true and CheckPlayer() == true do
				BodyGyro.cframe = CFrame.new(Body.Position, Mouse.Hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
				BodyVelocity.velocity = (Body.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)).lookVector * 500
				wait()
			end
		end)()
		CanUse = true
	elseif ModelType == 2 then
		CanUse = false
		SoundToServer("Button", "http://www.roblox.com/Asset/?id=2697295", 2.5, 1, false, Player.Character.Torso)
		tagHumanoid(Player.Character[ModelName].Handle)
		SendToServer([[coroutine.wrap(function()
	if Source.Parent:FindFirstChild("Light") ~= nil then
		Source.Parent.Light.Transparency = 0.2
		local Position1 = Source.Parent.Light.Position
		local Position2 = Position1
		while true do
			if Source.Parent == nil then break end
			if Source.Parent:FindFirstChild("Light") == nil then break end
			Position2 = Position1
			Position1 = Source.Parent.Light.Position
			local Trail = Instance.new("Part", Workspace)
			Trail.Name = "Artillery Beacon Trail"
			Trail.BrickColor = Source.Parent.Light.BrickColor
			Trail.TopSurface = 0
			Trail.BottomSurface = 0
			Trail.FormFactor = "Custom"
			Trail.Size = Vector3.new(0.2, 0.2, 1)
			Trail.Transparency = 0.3
			Trail.Anchored = true
			Trail.CanCollide = false
			Trail.CFrame = CFrame.new((Position1 + Position2) / 2, Position2)
			local Mesh = Instance.new("SpecialMesh", Trail)
			Mesh.MeshType = "Brick"
			Mesh.Scale = Vector3.new(1, 1, (Position2 - Position1).magnitude)
			coroutine.wrap(function()
				for i = Trail.Transparency, 1, 0.05 do
					Trail.Transparency = i
					wait()
				end
				Trail:Remove()
			end)()
			wait()
		end
	end
end)()
wait(1)
local Beep = Instance.new("Sound", Source)
Beep.Name = "Beep"
Beep.SoundId = "http://www.roblox.com/Asset/?id=15666462"
Beep.Volume = 1
Beep.Pitch = 0.75
Beep.Looped = true
Beep:Play()
pcall(function() Source.Parent.Light.BrickColor = BrickColor.new("Bright orange") end)
wait(3)
Beep.Pitch = 1.25
pcall(function() Source.Parent.Light.BrickColor = BrickColor.new("Really red") end)
local Position = Source.Position
for i = 1, math.random(35, 50) do
	local ArtilleryShell = Instance.new("Part", Workspace)
	ArtilleryShell.Name = "Artillery Shell"
	ArtilleryShell.TopSurface = 0
	ArtilleryShell.BottomSurface = 0
	ArtilleryShell.BrickColor = BrickColor.new("Medium stone grey")
	ArtilleryShell.Locked = true
	ArtilleryShell.FormFactor = "Custom"
	ArtilleryShell.Size = Vector3.new(1, 3, 1)
	ArtilleryShell.CFrame = CFrame.new(Position + Vector3.new(math.random(-100, 100), math.random(1500, 2500), math.random(-100, 100)))
	ArtilleryShell.Touched:connect(function(Hit)
		local Explosion = Instance.new("Explosion")
		Explosion.Position = ArtilleryShell.Position
		Explosion.BlastPressure = 500000
		Explosion.BlastRadius = 25
		Explosion.Parent = Workspace
		Explosion.Hit:connect(function(Part)
			if Part.Parent:FindFirstChild("Humanoid") ~= nil then
				local creator = Source.Parent.creator:Clone()
				creator.Parent = Part.Parent.Humanoid
				wait()
				creator:Remove()
			end
		end)
		local Sound = Instance.new("Sound")
		Sound.Name = "Explode"
		Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
		Sound.Volume = 1
		Sound.Pitch = math.random(700, 900) / 1000
		Sound.Parent = ArtilleryShell
		Sound:Play()
		wait()
		ArtilleryShell:Remove()
	end)
	wait(math.random(1, 5) / 10)
end
Beep:Stop()
pcall(function() Source.Parent.Light.BrickColor = BrickColor.new("Bright green") end)]], "Artillery", {"Source", Player.Character[ModelName].Handle})
		CanUse = true
	end
	Player.Character[ModelName].Changed:connect(function(Property)
		if Property == "Parent" then
			while CanUse == false do wait() end
			EnableLimb(1, Player.Character)
			UpdateFirstPerson()
			script.Parent:Remove()
		end
	end)
end


function onButton1Up(Mouse)
	if Button1Down == false then return end
	Button1Down = false
	if CanUse == false then return end
	if Player.Character:FindFirstChild(ModelName) ~= nil then
		if ModelType == 0 or type(ModelType) == "table" or ModelType >= 2 then
			if Thrown == false then
				Thrown = true
				SetSpeed(1, 0.75, Player.Character)
				SetAngle(1, 0, Player.Character)
				wait()
				pcall(function() Player.Character[ModelName].Handle.Weld:Remove() end)
				for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
					pcall(function() Part.CanCollide = true end)
				end
				local BodyVelocity = Instance.new("BodyVelocity")
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyVelocity.velocity = (Mouse.Hit.p - Player.Character[ModelName].Handle.Position).unit * 85
				BodyVelocity.Parent = Player.Character[ModelName].Handle
				game:GetService("Debris"):AddItem(BodyVelocity, 0.1)
				game:GetService("Debris"):AddItem(Player.Character[ModelName].Handle, 45)
				Player.Character[ModelName].Parent = Workspace
			end
		else
			CanUse = false
			wait(0.1)
			Player.Character[ModelName]:Remove()
			CanUse = true
		end
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
			if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
			onDeselected(Mouse)
			wait()
			RemoveParts(Player.Character, 1)
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		elseif Key == "g" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 2, 1, false, Player.Character.Torso)
			SetSpeed(1, 0.75, Player.Character)
			SetAngle(1, 0, Player.Character)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Handle.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(7)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			CameraSlide(math.rad(-15), 0, 0.2)
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(1, 0.5, Player.Character)
			SetAngle(1, ((ModelType == 0 or type(ModelType) == "table" or ModelType >= 2) and math.rad(200) or math.rad(90)), Player.Character)
			CameraSlide(math.rad(15), 0, 0.25)
			CanUse = true
		end
	end
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
	CanUse = false
	while true do
		if CheckPlayer() == true then
			if Player.Character.Torso:FindFirstChild("Right Shoulder") ~= nil then
				break
			end
		end
		wait(0.1)
	end
	Selected = true
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, ((ModelType == 0 or type(ModelType) == "table" or ModelType >= 2) and math.rad(200) or math.rad(90)), Player.Character)
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false or Primed == true then return end
	Selected = false
	while CanUse == false do wait() end
	if Selected == true then return end
	CanUse = false
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	SetAngle(1, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
	CanUse = true
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" and Connected == false then
	Connected = true
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	coroutine.wrap(loadstring(FirstPerson))()
	coroutine.wrap(loadstring(MouseAim))()
end