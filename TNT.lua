--[[
TNT
Old-fashon explosives!
--]]


if script == nil then return end


ModelName = "TNT"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Primed = false
Thrown = false
ProjectileData = [[Blast_Size = 25
Blast_Strength = 90
Blast_Sound = false
]] ..game:GetService("InsertService"):LoadAsset(60548640)["ProjectileData"].Value
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
	MasterPart1.BrickColor = BrickColor.new("White")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(0.51, 0.2, 0.51)
	MasterPart1.Parent = Parts
	Instance.new("CylinderMesh", MasterPart1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart1
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Left Leg")
		Weld.C0 = CFrame.new(-0.65, 0, 0.8) * CFrame.fromEulerAnglesXYZ(0, math.rad(180), math.rad(90))
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0, -1.2, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(90), 0)
	end
	Weld.Parent = Weld.Part0
	local Smoke = Instance.new("Smoke", MasterPart1)
	Smoke.Enabled = false
	Smoke.RiseVelocity = 5
	Smoke.Size = 1
	Smoke.Opacity = 0.3

	for i = 1, 3 do
		local Part = Instance.new("Part")
		Part.Name = "Stick " ..i
		Part.BrickColor = BrickColor.new("Really red")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.35, 1.5, 0.35)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.new(0, 0, 0.19) * CFrame.fromEulerAnglesXYZ(0, math.rad(360) * (i / 3), 0)
		Weld.Parent = Weld.Part0
		Instance.new("CylinderMesh", Part)

		local Part = Instance.new("Part")
		Part.Name = "Stick Band " ..i
		Part.BrickColor = BrickColor.new("White")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.4, 0.2, 0.4)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.new(0, 0, 0.19) * CFrame.fromEulerAnglesXYZ(0, math.rad(360) * (i / 3), 0)
		Weld.Parent = Weld.Part0
		Instance.new("CylinderMesh", Part)

		local Part = Instance.new("Part")
		Part.Name = "Stick Wick End " ..i
		Part.BrickColor = BrickColor.new("White")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.2)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.new(0, -0.75, 0.19) * CFrame.fromEulerAnglesXYZ(0, math.rad(360) * (i / 3), 0)
		Weld.Parent = Weld.Part0
		Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.3, 0.1, 0.3)

		local Part = Instance.new("Part")
		Part.Name = "Stick Wick " ..i
		Part.BrickColor = BrickColor.new("White")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.2)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.new(0, -0.75, 0.09) * CFrame.fromEulerAnglesXYZ(0, math.rad(360) * (i / 3), 0)
		Weld.Parent = Weld.Part0
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.3, 0.1, 0.9)
	end

	local Part = Instance.new("Part")
	Part.Name = "Wick"
	Part.BrickColor = BrickColor.new("White")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.5, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1, 0)
	Weld.Parent = Weld.Part0
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.3, 1, 0.3)

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
	Weld.C0 = CFrame.new(0, 0, 0.375)
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
		Player.Character[ModelName].Match.Weld.C1 = CFrame.new(0, -1.01, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
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
				CFrame.fromEulerAnglesXYZ(math.rad(i * 50), 0, math.rad(i * 90)) * CFrame.new(-0.15 * i, 0, 0.15 * i)
		end)
		wait()
	end
	pcall(function()
		Player.Character.Torso["Left Shoulder 2"].C0 =
			CFrame.new(-1.1, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110), 0)
		Player.Character[ModelName].Match.Weld.C0 =
			CFrame.fromEulerAnglesXYZ(math.rad(50), 0, math.rad(90)) * CFrame.new(-0.15, 0, 0.15)
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
				CFrame.fromEulerAnglesXYZ(math.rad(60 * i), 0, 0)
		end)
		wait()
	end
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 =
			CFrame.new(1.1, 0.5, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(95), 0)
		Player.Character[ModelName].Handle.Weld.C0 =
			CFrame.fromEulerAnglesXYZ(math.rad(60), 0, 0)
	end)
	wait(math.random(900, 1200) / 1000)
	SoundToServer("Fire", "http://www.roblox.com/Asset/?id=31760113", 2, 1, true, Player.Character[ModelName].Handle)
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
				CFrame.fromEulerAnglesXYZ(math.rad(60 * (1 - i)), 0, 0)
		end)
		wait()
	end
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
	DisableLimb(1, Player.Character)
	pcall(function() Player.Character[ModelName].Handle.Weld.C0 = CFrame.new() end)
	pcall(function() Player.Character[ModelName].Handle.Smoke.Enabled = true end)
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
	wait(0.1)
	tagHumanoid(Player.Character[ModelName].Handle)
	Instance.new("Configuration", Player.Character[ModelName].Handle).Name = "CanExplode"
	SendToServer([[wait(math.random(3000, 10000) / 1000)
if Source.Parent == nil then return end
Source.Parent.Parent = Workspace
pcall(function() Source.Weld:Remove() end)
for i = 1, 10 do
	local Sound = Instance.new("Sound")
	Sound.Name = "Explode"
	Sound.SoundId = "rbxasset://sounds/collide.wav"
	Sound.Volume = 1
	Sound.Pitch = math.random(400, 600) / 1000
	Sound.Parent = Source
	Sound:Play()
end
for _, Part in pairs(Source:GetChildren()) do
	if Part.Name == "Fire" then
		pcall(function()
			Part:Stop()
			Part.Volume = 0
		end)
	end
end
]] ..ProjectileData, "TNT", {"Source", Player.Character[ModelName].Handle})
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
	if CanUse == false then return end
	if Player.Character:FindFirstChild(ModelName) ~= nil and Thrown == false then
		Thrown = true
		SetSpeed(1, 0.75, Player.Character)
		SetAngle(1, 0, Player.Character)
		wait()
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=31760113", 2, 1, true, Player.Character[ModelName].Handle)
		pcall(function() Player.Character[ModelName].Handle.Weld:Remove() end)
		for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
			pcall(function() Part.CanCollide = true end)
		end
		local BodyVelocity = Instance.new("BodyVelocity")
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = (Mouse.Hit.p - Player.Character[ModelName].Handle.Position).unit * 75
		BodyVelocity.Parent = Player.Character[ModelName].Handle
		game:GetService("Debris"):AddItem(BodyVelocity, 0.1)
		game:GetService("Debris"):AddItem(Player.Character[ModelName], 10)
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
			SetAngle(1, math.rad(200), Player.Character)
			CameraSlide(math.rad(5), 0, 0.3)
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