--[[
Kevlar Vest
An armor plate made of Kevlar.
--]]


if script == nil then return end


ModelName = "Kevlar Vest"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
On = false
Button1Down = false
CanUse = true
MainColor = BrickColor.new("Black")
AccentColor = BrickColor.new("Bright orange")


loadstring(game:GetService("InsertService"):LoadAsset(65636834)["CFrameTween"].Value)()


function CreateParts(Parent)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	Parts.Parent = Player.Character

	local MasterPart = Instance.new("Part")
	MasterPart.Name = "Handle"
	MasterPart.Transparency = 1
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(2, 2, 1)
	MasterPart.Parent = Parts
	local Weld = Instance.new("Weld", MasterPart)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Player.Character:FindFirstChild("Torso")

	local Part = Instance.new("Part")
	Part.Name = "Front"
	Part.BrickColor = MainColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1.7, 1, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.05 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.3, 0.525)

	for i = -1, 1, 2 do
		local Part = Instance.new("WedgePart")
		Part.Name = "Front Top Wedge " ..i
		Part.BrickColor = MainColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.7, 0.4)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Wedge"
		Mesh.Scale = Vector3.new(0.05 / 0.2, 1, 1)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), 0)
		Weld.C1 = CFrame.new(0.65 * i, 0.55, -0.525)
	end

	for i = -1, 1, 2 do
		local Part = Instance.new("WedgePart")
		Part.Name = "Front Top Collar Wedge " ..i
		Part.BrickColor = MainColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.3)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Wedge"
		Mesh.Scale = Vector3.new(0.05 / 0.2, 1, 1)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * i), 0)
		Weld.C1 = CFrame.new(0.2 * i, 0.8, -0.525)
	end

	for i = -1, 1, 2 do
		local Part = Instance.new("Part")
		Part.Name = "Front Top Bar " ..i
		Part.BrickColor = MainColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.7, 0.2)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.1 / 0.2, 1, 0.05 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.4 * i, -0.55, 0.525)
	end

	local Part = Instance.new("Part")
	Part.Name = "Front Top"
	Part.BrickColor = MainColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.7, 0.5, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.05 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, -0.45, 0.525)

	for i = -0.1, 0.7, 0.2 do
		local Part = Instance.new("Part")
		Part.Name = "Front Bar " ..i
		Part.BrickColor = AccentColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1.6, 0.2, 0.2)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(1, 0.025 / 0.2, 0.01 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0, i, 0.55)
	end

	for i = -1, 1, 2 do
		local Part = Instance.new("Part")
		Part.Name = "Front Top Bar " ..i
		Part.BrickColor = AccentColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.6, 0.2)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.025 / 0.2, 1, 0.01 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.3375 * i, -0.4, 0.55)
	end

	for i = -1, 1, 2 do
		local Part = Instance.new("Part")
		Part.Name = "Front Strap " ..i
		Part.BrickColor = MainColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.7, 0.2)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(1, 1, 0.025 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.7 * i, -0.65, 0.5125)
	end

	local Part = Instance.new("Part")
	Part.Name = "Back"
	Part.BrickColor = MainColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1.7, 1.3, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.05 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.2, -0.525)

	for i = -1, 1, 2 do
		local Part = Instance.new("Part")
		Part.Name = "Back Bar " ..i
		Part.BrickColor = AccentColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 1.3, 0.2)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.025 / 0.2, 1, 0.01 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.3375 * i, 0.2, -0.55)
	end

	for i = -1, 1, 2 do
		local Part = Instance.new("Part")
		Part.Name = "Back Strap " ..i
		Part.BrickColor = MainColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.55, 0.2)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(1, 1, 0.025 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.7 * i, -0.725, -0.5125)
	end

	for i = -1, 1, 2 do
		local Part = Instance.new("Part")
		Part.Name = "Top Strap " ..i
		Part.BrickColor = MainColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 1.05)
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(1, 0.025 / 0.2, 1)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart
		Weld.C0 = CFrame.new(0.7 * i, -1.0125, 0)
	end

	for _, Part in pairs(Parts:GetChildren()) do
		Part.Locked = true
		Part.CanCollide = false
	end
end


function RemoveParts(Parent, Format)
	pcall(function() Parent[ModelName]:Remove() end)
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


function Toggle()
	if Player.Character == nil then return false end
	if (Player.Character:FindFirstChild(ModelName) ~= nil and On == false) or CanUse == false or Selected == false then return end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character.Torso:FindFirstChild("Right Shoulder") == nil or Player.Character.Torso:FindFirstChild("Left Shoulder") == nil or Player.Character:FindFirstChild("Humanoid") == nil or Player.Character.Humanoid.Health <= 0 then
		if On == true then
			RemoveParts(Player.Character)
			On = false
		end
		return
	end
	CanUse = false
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, 0, Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.5, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.2)
	Player.Character.Torso["Neck"].C0 = CFrame.new(0, 1, 0)
	Player.Character.Torso["Neck"].C1 = CFrame.new(0, -0.5, 0)
	Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0)
	Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
	Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0)
	Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
	On = not On
	if On == true then
		PropertyCFrameTween(Player.Character.Torso["Neck"], "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-50), math.rad(-25), 0),
			0.15, true)
		PropertyCFrameTween(Player.Character.Torso["Right Shoulder 2"], "C0",
			CFrame.new(1.5, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(50), math.rad(40), math.rad(-30)),
			0.15, true)
		PropertyCFrameTween(Player.Character.Torso["Left Shoulder 2"], "C0",
			CFrame.new(-0.7, 0.3, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(20), math.rad(-20), math.rad(60)),
			0.15, false)
		
		CreateParts(Player.Character)
		coroutine.wrap(function()
			local Transparency = {}
			for i, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				Transparency[i] = Part.Transparency
			end
			for i = 1, 0, -0.1 do
				for x, Part in pairs(Player.Character[ModelName]:GetChildren()) do
					Part.Transparency = Transparency[x] + ((1 - Transparency[x]) * i)
				end
				wait()
			end
			for i, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				Part.Transparency = Transparency[i]
			end
		end)()

		local Weld = Player.Character[ModelName].Handle.Weld
		Weld.Part1 = Player.Character["Right Arm"]
		Weld.C0 = CFrame.new(0.5, 1, 1)

		PropertyCFrameTween(Weld, "C0",
			CFrame.new(1.5, -1.8, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, 0),
			0.075, true)
		PropertyCFrameTween(Player.Character.Torso["Neck"], "C0",
			CFrame.new(0, 1, 0),
			0.075, true)
		PropertyCFrameTween(Player.Character.Torso["Right Shoulder 2"], "C0",
			CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, 0),
			0.075, true)
		PropertyCFrameTween(Player.Character.Torso["Left Shoulder 2"], "C0",
			CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, 0),
			0.075, false)

		PropertyCFrameTween(Weld, "C0",
			CFrame.new(1.5, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, 0),
			0.2, false)

		RemoveParts(Player.Character)
		CreateParts(Player.Character)

		PropertyCFrameTween(Player.Character.Torso["Neck"], "C0",
			CFrame.new(0, 1, 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso["Right Shoulder 2"], "C0",
			CFrame.new(1.5, 0.5, 0),
			0.2, true)
		PropertyCFrameTween(Player.Character.Torso["Left Shoulder 2"], "C0",
			CFrame.new(-1.5, 0.5, 0),
			0.2, false)

		local Health = Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth
		Player.Character.Humanoid.MaxHealth = Player.Character.Humanoid.MaxHealth + 200
		wait(0.1)
		Player.Character.Humanoid.Health = Player.Character.Humanoid.MaxHealth * Health
	else
		local Weld = Player.Character[ModelName].Handle.Weld

		PropertyCFrameTween(Weld, "C0",
			CFrame.new(0, -2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(20)),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso["Neck"], "C0",
			CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-20)),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso["Right Shoulder 2"], "C0",
			CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, math.rad(-30)),
			0.15, true)
		PropertyCFrameTween(Player.Character.Torso["Left Shoulder 2"], "C0",
			CFrame.new(-0.7, 0.3, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(80), math.rad(80)),
			0.1, false)

		Weld.Part1 = Player.Character["Right Arm"]
		Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(120)) * CFrame.new(0, 1, 0)
		coroutine.wrap(function()
			local Transparency = {}
			for i, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				Transparency[i] = Part.Transparency
			end
			for i = 0, 1, 0.1 do
				for x, Part in pairs(Player.Character[ModelName]:GetChildren()) do
					Part.Transparency = Transparency[x] + ((1 - Transparency[x]) * i)
				end
				wait()
			end
			for i, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				Part.Transparency = Transparency[i]
			end
			RemoveParts(Player.Character)
		end)()

		PropertyCFrameTween(Player.Character.Torso["Neck"], "C0",
			CFrame.new(0, 1, 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso["Right Shoulder 2"], "C0",
			CFrame.new(1.5, 0.5, 0),
			0.1, true)
		PropertyCFrameTween(Player.Character.Torso["Left Shoulder 2"], "C0",
			CFrame.new(-1.5, 0.5, 0),
			0.1, false)

		local Health = Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth
		Player.Character.Humanoid.MaxHealth = Player.Character.Humanoid.MaxHealth - 200
		wait(0.1)
		Player.Character.Humanoid.Health = Player.Character.Humanoid.MaxHealth * Health
	end
	Player.Character.Torso["Neck"].C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
	Player.Character.Torso["Neck"].C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(2, Player.Character)
	CanUse = true
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Button1Down == false and CanUse == true then
		if Key == "q" then
			if Mouse.Target == nil then return end
			local NewPlayer = game:GetService("Players"):GetPlayerFromCharacter(Mouse.Target.Parent)
			if NewPlayer == nil then return end
			if NewPlayer.Character == nil then return end
			if NewPlayer.Character:FindFirstChild("Torso") == nil then return end
			if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
			onDeselected(Mouse)
			wait()
			if On then
				Selected = true
				Toggle()
				Selected = false
			end
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		end
	end
end


function onSelected(Mouse)
	if Selected == true then return end
	Selected = true
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(Toggle)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
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
end