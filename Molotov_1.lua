--[[
Molotov
A makeshift fire grenade, made up of an old bottle of some unknown vodka and a slice of t-shirt.
--]]


if script == nil then return end


ModelName = "Molotov"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Thrown = false
FirstPerson = game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value


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

	local MasterPart1 = Instance.new("Part")
	MasterPart1.Name = "Handle"
	MasterPart1.BrickColor = BrickColor.new("Earth green")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(0.6, 1, 0.6)
	MasterPart1.Parent = Parts
	Instance.new("CylinderMesh", MasterPart1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart1
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.new(-0.75, 0.55, 0.8) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(10))
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0, -1.2, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Label"
	Part.BrickColor = BrickColor.new("White")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.6001, 0.4, 0.6001)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Neck Angle"
	Part.BrickColor = BrickColor.new("Earth green")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.6, 0.5, 0.6)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=1033714"
	Mesh.Scale = Part.Size * Vector3.new(0.5, 1.335, 0.5)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.75, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Neck"
	Part.BrickColor = BrickColor.new("Earth green")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.5, 0.25)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Cloth"
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 1.5, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0.1 / 0.2, 1, 0.1 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1.25, 0)
	Weld.Parent = Weld.Part0
	local Fire = Instance.new("Fire", Part)
	Fire.Enabled = false
	Fire.Size = 3
	Fire.Heat = 0

	local Part = Instance.new("Part")
	Part.Name = "Match Duct Tape 1"
	Part.BrickColor = BrickColor.new("Medium stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.57, 0.3, 0.57)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0.015, -0.1, 0.015)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Match Duct Tape 2"
	Part.BrickColor = BrickColor.new("Medium stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.3, 0.2)
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.06 / 0.2, 1, 0.06 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0.215, -0.1, 0.215)
	Weld.Parent = Weld.Part0

	local MasterPart2 = Instance.new("Part")
	MasterPart2.Name = "Match"
	MasterPart2.BrickColor = BrickColor.new("Pastel brown")
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(0.2, 0.5, 0.2)
	MasterPart2.Parent = Parts
	Instance.new("CylinderMesh", MasterPart2).Scale = Vector3.new(0.025 / 0.2, 1, 0.025 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart2
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0.225, -0.15, 0.225)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Match Tip"
	Part.BrickColor = BrickColor.new("Bright red")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0.06 / 0.2, 0.09 / 0.2, 0.06 / 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, -0.25, 0)
	Weld.Parent = Weld.Part0

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
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.25, Player.Character)
	SetAngle(2, math.rad(90), Player.Character)
	for i = 0, 1, 0.08 do
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-1.5 + (0.4 * i), 0.5, -0.3 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (35 * i)), 0)
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.5 - (0.4 * i), 0.5, -0.3 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (35 * i)), 0)
		end)
		wait()
	end
	pcall(function()
		Player.Character.Torso["Left Shoulder 2"].C0 =
			CFrame.new(-1.1, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-125), 0)
		Player.Character.Torso["Right Shoulder 2"].C0 =
			CFrame.new(1.1, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(125), 0)
		Player.Character[ModelName].Match.Weld.Part1 = Player.Character["Left Arm"]
		Player.Character[ModelName].Match.Weld.C0 = CFrame.new()
		Player.Character[ModelName].Match.Weld.C1 = CFrame.new(0, -1.3, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
	end)
	SetSpeed(2, 0.1, Player.Character)
	SetAngle(2, math.rad(100), Player.Character)
	for i = 0, 1, 0.2 do
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-1.1, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-125 + (10 * i)), 0)
		end)
		wait()
	end
	SetAngle(2, math.rad(110), Player.Character)
	SetSpeed(2, 0.025, Player.Character)
	for i = 0, 1, 0.2 do
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-1.1, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (5 * i)), 0)
			Player.Character[ModelName].Match.Weld.C0 =
				CFrame.fromEulerAnglesXYZ(0, 0, math.rad(i * 90))
		end)
		wait()
	end
	pcall(function()
		Player.Character.Torso["Left Shoulder 2"].C0 =
			CFrame.new(-1.1, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110), 0)
	end)
	SetAngle(2, math.rad(50), Player.Character)
	SetSpeed(2, 0.1, Player.Character)
	SoundToServer("Light", "http://www.roblox.com/Asset/?id=19095020", 1, 1, false, Player.Character.Torso)
	do
		SendToServer([[while Source.Parent ~= nil do
	local Part = Instance.new("Part")
	Part.Name = "Flame"
	Part.BrickColor = BrickColor.new("Neon orange")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Anchored = true
	Part.CanCollide = false
	Part.CFrame = CFrame.new(Source.CFrame.p) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-10000, 10000) / 1000), math.rad(math.random(-10000, 10000) / 1000), math.rad(math.random(-10000, 10000) / 1000))
	Part.Parent = Workspace
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0.08 / 0.2, 0.08 / 0.2, 0.08 / 0.2)
	coroutine.wrap(function()
		local Velocity = Source.Velocity
		for x = 0, 1, 0.05 do
			Part.CFrame = Part.CFrame * CFrame.new(0, 0.1, 0) * CFrame.new(Velocity / 50)
			Part.Transparency = x
			wait()
		end
		Part:Remove()
	end)()
	wait(math.random() * 0.1)
end]], "Match", {"Source", Player.Character[ModelName]["Match Tip"]})
	end
	wait(0.4)
	SetAngle(2, math.rad(100), Player.Character)
	SetSpeed(2, 0.1, Player.Character)
	for i = 0, 1, 0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.1, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(125 - (30 * i)), 0)
			Player.Character[ModelName].Handle.Weld.C0 =
				CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-55 * i))
		end)
		wait()
	end
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 =
			CFrame.new(1.1, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(95), 0)
		Player.Character[ModelName].Handle.Weld.C0 =
			CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-55))
	end)
	wait(math.random(900, 1200) / 1000)
	pcall(function() Player.Character[ModelName].Cloth.Fire.Enabled = true end)
	SoundToServer("Fire", "http://www.roblox.com/Asset/?id=31760113", 1, 1, true, Player.Character[ModelName].Handle)
	SetSpeed(1, 0.1, Player.Character)
	SetSpeed(2, 0.1, Player.Character)
	SetAngle(1, math.rad(200), Player.Character)
	SetAngle(2, 0, Player.Character)
	for i = 0, 1, 0.1 do
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-1.1 - (0.4 * i), 0.5, -0.3 * (1 - i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110 + (20 * i)), 0)
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.1 + (0.4 * i), 0.5, -0.3 * (1 - i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(95 - (5 * i)), 0)
			Player.Character[ModelName].Handle.Weld.C0 =
				CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-55 * (1 - i)))
		end)
		wait()
	end
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
	DisableLimb(1, Player.Character)
	pcall(function() Player.Character[ModelName].Handle.Weld.C0 = CFrame.new() end)
	pcall(function() Player.Character[ModelName].Match.Weld:Remove() end)
	for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
		if Part.Name == "Match" or Part.Name == "Match Tip" then
			pcall(function()
				Part.CanCollide = true
				Part.Parent = Workspace
				game:GetService("Debris"):AddItem(Part, 5)
			end)
		end
	end
	wait(0.5)
	Player.Character[ModelName].Changed:connect(function(Property)
		if Property == "Parent" then
			while CanUse == false do wait() end
			EnableLimb(1, Player.Character)
			UpdateFirstPerson()
			script.Parent:Remove()
		end
	end)
	CanUse = true
	coroutine.wrap(function()
		while Selected == true do
			if pcall(function() return Mouse.Target end) == false then
				Button1Down = true
				onButton1Up({Hit = Player.Character.Torso.CFrame * CFrame.new(0, 10, -10)})
			end
			wait()
		end
	end)()
end


function onButton1Up(Mouse)
	if Button1Down == false then return end
	Button1Down = false
	if Mouse == nil or pcall(function() return Mouse.Target end) == false then return end
	while CanUse == false do wait() end
	if Player.Character:FindFirstChild(ModelName) ~= nil and Thrown == false then
		Thrown = true
		SetSpeed(1, 0.75, Player.Character)
		SetAngle(1, 0, Player.Character)
		wait()
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=31760113", 1, 1, true, Player.Character[ModelName].Handle)
		pcall(function() Player.Character[ModelName].Handle.Weld:Remove() end)
		pcall(function() Player.Character[ModelName].Handle.CanCollide = true end)
		local BodyVelocity = Instance.new("BodyVelocity")
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = (Mouse.Hit.p - Player.Character[ModelName].Handle.Position).unit * 90
		BodyVelocity.Parent = Player.Character[ModelName].Handle
		game:GetService("Debris"):AddItem(BodyVelocity, 0.15)
		tagHumanoid(Player.Character[ModelName].Handle)
		Instance.new("Configuration", Player.Character[ModelName].Handle).Name = "CanExplode"
		wait(0.1)
		TouchedToServer([[if Source:FindFirstChild("CanExplode") == nil then return end
Source.CanExplode:Remove()
if Hit ~= nil then
	if Hit:GetMass() < 250 then
		Hit:BreakJoints()
	end
end
for i = 1, 10 do
	local Sound = Instance.new("Sound")
	Sound.Name = "Explode"
	Sound.SoundId = "rbxasset://sounds/collide.wav"
	Sound.Volume = 1
	Sound.Pitch = math.random(300, 600) / 1000
	Sound.Parent = Source
	Sound:Play()
end
local Sound = Instance.new("Sound")
Sound.Name = "Glass Break"
Sound.SoundId = "rbxasset://sounds/glassBreak.wav"
Sound.Volume = 1
Sound.Pitch = 1
Sound.Parent = Source
Sound:Play()
for _, Part in pairs(Source:GetChildren()) do
	if Part.Name == "Fire" then
		pcall(function()
			Part:Stop()
			Part.Volume = 0
		end)
	end
end
for _, Part in pairs(Source.Parent:GetChildren()) do
	if Part ~= Source and Part.Name ~= "Cloth" then
		pcall(function() Part:Remove() end)
	else
		Part.Transparency = 1
		Part.CanCollide = false
		Part.Anchored = true
		pcall(function() Part.Fire.Enabled = false end)
	end
end
for i = 1, math.random(50, 70) do
	local Flame = Instance.new("Part", Workspace)
	Flame.Name = "Molotov Flame"
	Flame.TopSurface = 0
	Flame.BottomSurface = 0
	Flame.Transparency = 0.8
	Flame.BrickColor = BrickColor.new("Really black")
	Flame.FormFactor = "Custom"
	Flame.Size = Vector3.new(math.random() * 2, math.random() * 2, math.random() * 2)
	Flame.Elasticity = 0
	Flame.Friction = 1
	Flame.CFrame = Source.CFrame * CFrame.new(math.random(-5000, 5000) / 1000, math.random(-5000, 2500) / 1000, math.random(-5000, 5000) / 1000)
	Flame.Velocity = Vector3.new(math.random(-100000, 100000) / 1000, math.random(-100000, 100000) / 1000, math.random(-100000, 100000) / 1000)
	game:GetService("InsertService"):LoadAsset(61110829)["RealFire"].Parent = Flame
	Source.creator:Clone().Parent = Flame["RealFire"]
	coroutine.wrap(function()
		wait(math.random(1000, 25000) / 1000)
		pcall(function() Flame["Fire Sound"]:Stop() end)
		wait(0.1)
		Flame:Remove()
	end)()
end
wait(5)
Source.Parent:Remove()]], Player.Character[ModelName].Handle)
		Player.Character[ModelName].Parent = Workspace
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
			SetSpeed(1, 0.6, Player.Character)
			SetAngle(1, math.rad(200), Player.Character)
			CameraSlide(math.rad(5), 0, 0.3)
			SetSpeed(1, 0.7, Player.Character)
			SetAngle(1, 0, Player.Character)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Handle.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=10209596", 1, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(15)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			CameraSlide(math.rad(-20), 0, 0.2)
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(1, 0.5, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			CameraSlide(math.rad(15), 0, 0.2)
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
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
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