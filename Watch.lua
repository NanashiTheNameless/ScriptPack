--[[
Watch
Zomg a watch.
--]]


if script == nil then return end


ModelName = "Watch"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6Alt")
Selected = false
Connected = false
Button1Down = false
CanUse = true
WatchColor = BrickColor.new("Lime green")
FaceColor = BrickColor.new("Lime green")
FaceBackColor = BrickColor.new("Really black")
CenterHandColor = BrickColor.new("Lime green")
NotchColor1 = BrickColor.new("Bright green")
NotchColor2 = BrickColor.new("Bright green")
HourHandColor = BrickColor.new("Lime green")
MinuteHandColor = BrickColor.new("Lime green")
SecondHandColor = BrickColor.new("Really red")
FirstPerson = game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


loadstring(game:GetService("InsertService"):LoadAsset(62991657)["PacketFunctions"].Value)()


function Time()
	local Hours = math.floor((tick() / 3600) % 24)
	local Minutes = math.floor((tick() % 3600) / 60)
	local Seconds = math.floor(tick() % 60)
	local Section = ""
	if Hours == 24 or Hours < 12 then
		Section = "AM"
	else
		Section = "PM"
	end
	if Hours > 12 then
		Hours = Hours - 12
	end
	if Minutes <= 9 then
		Minutes = "0" ..tostring(Minutes)
	end
	if Seconds <= 9 then
		Seconds = "0" ..tostring(Seconds)
	end
	return Hours, Minutes, Seconds, Section
end


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Player.Character

	local MasterPart1 = Instance.new("Part")
	MasterPart1.Name = "Handle"
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(1.1, 0.2, 1.1)
	MasterPart1.BrickColor = WatchColor
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.Parent = Parts
	Instance.new("BlockMesh", MasterPart1).Bevel = 0.05
	local Weld = Instance.new("Weld", MasterPart1)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
	Weld.C0 = CFrame.new(0, 0.7, 0)

	local MasterPart2 = Instance.new("Part")
	MasterPart2.Name = "Watch"
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(0.5, 0.21, 0.5)
	MasterPart2.BrickColor = WatchColor
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.Parent = Parts
	Instance.new("CylinderMesh", MasterPart2)
	local Weld = Instance.new("Weld", MasterPart2)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(90), 0) * CFrame.new(-0.5, 0, 0)

	for i = 0, 360, 15 do
		local Part = Instance.new("Part")
		Part.Name = "Face Rim"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.2)
		Part.BrickColor = WatchColor
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		Instance.new("BlockMesh", Part).Scale = Vector3.new(0.065 / 0.2, 0.03 / 0.2, 0.05 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(0, 0.12, 0.224) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
	end

	local Part = Instance.new("Part")
	Part.Name = "Face"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.4, 0.2, 0.4)
	Part.BrickColor = FaceColor
	Part.Transparency = 0.8
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.06 / 0.2, 1)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.1, 0)

	local Part = Instance.new("Part")
	Part.Name = "Face Back"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.4, 0.2, 0.4)
	Part.BrickColor = FaceBackColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(1, 0.0105 / 0.2, 1)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.1, 0)

	local Part = Instance.new("Part")
	Part.Name = "Hand Center"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = CenterHandColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("CylinderMesh", Part).Scale = Vector3.new(0.035 / 0.2, 0.04 / 0.2, 0.035 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.1, 0)

	for i = 0, 360, 360 / 20 do
		if i % (360 / 4) ~= 0 then
			local Part = Instance.new("Part")
			Part.Name = "Notch 1"
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(0.2, 0.2, 0.2)
			Part.BrickColor = NotchColor1
			Part.TopSurface = 0
			Part.BottomSurface = 0
			Part.Parent = Parts
			Instance.new("BlockMesh", Part).Scale = Vector3.new(0.01 / 0.2, 0.01075 / 0.2, 0.03 / 0.2)
			local Weld = Instance.new("Weld", Part)
			Weld.Part0 = Weld.Parent
			Weld.Part1 = MasterPart2
			Weld.C0 = CFrame.new(0, 0.1, 0.17) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
		end
	end

	for i = 0, 360, 360 / 4 do
		local Part = Instance.new("Part")
		Part.Name = "Notch 2"
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 0.2)
		Part.BrickColor = NotchColor2
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.Parent = Parts
		Instance.new("BlockMesh", Part).Scale = Vector3.new(0.02 / 0.2, 0.011 / 0.2, 0.05 / 0.2)
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(0, 0.1, 0.17) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
	end

	local Part = Instance.new("Part")
	Part.Name = "Hand Hour"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = HourHandColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.03 / 0.2, 0.015 / 0.2, 0.1 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.11, 0.05)

	local Part = Instance.new("Part")
	Part.Name = "Hand Minute"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = MinuteHandColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.02 / 0.2, 0.0125 / 0.2, 0.15 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.11, 0.075)

	local Part = Instance.new("Part")
	Part.Name = "Hand Second"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = SecondHandColor
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.Parent = Parts
	Instance.new("BlockMesh", Part).Scale = Vector3.new(0.01 / 0.2, 0.01 / 0.2, 0.17 / 0.2)
	local Weld = Instance.new("Weld", Part)
	Weld.Part0 = Weld.Parent
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.11, 0.085)

	for _, Part in pairs(Parts:GetChildren()) do
		Part.Locked = true
		Part.CanCollide = false
	end

	coroutine.wrap(function()
		while Parts.Parent ~= nil do
			local Hours, Minutes, Seconds = Time()
			SoundToServer("Tick", "http://www.roblox.com/Asset/?id=14863866", 5, 0.5, false, Parts:FindFirstChild("Watch"))
			pcall(function() Parts["Hand Hour"].Weld.C1 = CFrame.fromEulerAnglesXYZ(0, (math.pi * (Hours / 12) * 2) - math.rad(90), 0) end)
			pcall(function() Parts["Hand Minute"].Weld.C1 = CFrame.fromEulerAnglesXYZ(0, (math.pi * (Minutes / 60) * 2) - math.rad(90), 0) end)
			pcall(function() Parts["Hand Second"].Weld.C1 = CFrame.fromEulerAnglesXYZ(0, (math.pi * (Seconds / 60) * 2) - math.rad(90), 0) end)
			wait(1)
		end
	end)()
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
		CanUse = false
		DisableLimb(1, Player.Character)
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, 0, Player.Character)
		RemoveParts(Player.Character, 1)
		CreateParts(Player.Character, 2)
		wait(0.2)
		for i = 0, 1, 0.075 do
			pcall(function()
				Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (40 * i)), math.rad(-5 * i), math.rad(180 - (15 * i)))
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.15 * i), 0.5, -0.2 * i) * CFrame.fromEulerAnglesXYZ(math.rad(100 * i), math.rad(90 + (130 * i)), math.rad(40 * i))
			end)
			wait()
		end
		pcall(function()
			Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-130), math.rad(-5), math.rad(165))
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.35, 0.5, -0.2) * CFrame.fromEulerAnglesXYZ(math.rad(100), math.rad(220), math.rad(40))
		end)
		wait(0.1)
		CanUse = true
		coroutine.wrap(function()
			while Selected == true and Button1Down == true do
				wait()
			end
			CanUse = false
			for i = 1, 0, -0.075 do
				pcall(function()
					Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 - (40 * i)), math.rad(-5 * i), math.rad(180 - (15 * i)))
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.15 * i), 0.5, -0.2 * i) * CFrame.fromEulerAnglesXYZ(math.rad(100 * i), math.rad(90 + (130 * i)), math.rad(40 * i))
				end)
				wait()
			end
			pcall(function()
				Player.Character.Torso.Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
			end)
			ResetLimbCFrame(1, Player.Character)
			EnableLimb(1, Player.Character)
			RemoveParts(Player.Character, 2)
			CreateParts(Player.Character, 1)
			CanUse = true
		end)()
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
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	CanUse = true
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
	CreateParts(Player.Character, 1)
	coroutine.wrap(loadstring(FirstPerson))()
end