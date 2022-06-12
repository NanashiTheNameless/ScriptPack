if script == nil then return end


ModelName = "Radio"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Activated = false
Channel = 1


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


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
	MasterPart.BrickColor = BrickColor.new("Black")
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(0.3, 1.5, 0.5)
	MasterPart.Locked = true
	MasterPart.Parent = Parts
	local Weld = Instance.new("Weld", MasterPart)
	Weld.Part0 = Weld.Parent
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Left Leg")
		Weld.C1 = CFrame.new(-0.625, 1, 0)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
		Weld.C1 = CFrame.new(0, -1, -0.1)
	end

	local Part = MasterPart:Clone()
	Part.Name = "Antenna"
	Part.Size = Vector3.new(0.2, 1, 0.2)
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh", Part)
	Mesh.Scale = Vector3.new(0.5, 1, 0.5)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 1.25, 0.1)
	Weld.Parent = Weld.Part0

	local Part = MasterPart:Clone()
	Part.Name = "Light"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.BrickColor = Activated == true and BrickColor.new("Bright green") or BrickColor.new("Really red")
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new(0, 0.75, -0.1)
	Weld.Parent = Weld.Part0
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
	local Joint = Instance.new("Motor")
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


function ToggleRadio()
	if Activated == true then
		Activated = false
		pcall(function() Player.Character[ModelName].Light.BrickColor = BrickColor.new("Really red") end)
		pcall(function() Player.PlayerGui.RadioChannelGui.Channel.TextColor3 = Color3.new(0.9, 0, 0) end)
		if Player.Channels:FindFirstChild(Channel) ~= nil then
			Player.Channels[Channel]:Remove()
		end
	else
		Activated = true
		pcall(function() Player.Character[ModelName].Light.BrickColor = BrickColor.new("Bright green") end)
		pcall(function() Player.PlayerGui.RadioChannelGui.Channel.TextColor3 = Color3.new(0, 0.8, 0) end)
		local NewChannel = Instance.new("Model", Player.Channels)
		NewChannel.Name = Channel
		local CanSend = Instance.new("BoolValue", NewChannel)
		CanSend.Name = "CanSend"
		CanSend.Value = true
	end
end


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if Player:FindFirstChild("Channels") == nil then return end
	if CanUse == true then
		CanUse = false
		ToggleRadio()
		CanUse = true
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if CheckPlayer() == true then
		if Button1Down == false and CanUse == true then
			if Key == "q" then
				if Mouse.Target == nil then return end
				if CheckPlayer() == false then return end
				local NewPlayer = game:GetService("Players"):GetPlayerFromCharacter(Mouse.Target.Parent)
				if NewPlayer == nil then return end
				if NewPlayer.Character == nil then return end
				if NewPlayer.Character:FindFirstChild("Torso") == nil then return end
				if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
				if Activated == true then Button1Down(Mouse) end
				onDeselected(Mouse)
				wait()
				RemoveParts(Player.Character, 1)
				script.Parent.Parent = NewPlayer.Backpack
				Player = NewPlayer
			end
			if Key == "e" or Key == "r" then
				CanUse = false
				KeyERDown = true
				while KeyERDown == true do
					local Reactivate = Activated
					if Activated == true then
						ToggleRadio()
					end
					Channel = Channel + (Key == "e" and -1 or 1)
					if Channel < 1 or Channel > 9 then
						pcall(function()
							Player.PlayerGui.RadioChannelGui.Channel.Text = "Scanning for channel " ..Channel.. "..."
							Player.PlayerGui.RadioChannelGui.Channel.TextColor3 = Color3.new(0.4, 0.4, 0.4)
						end)
						wait(math.random(100, 500) / 1000)
						pcall(function()
							Player.PlayerGui.RadioChannelGui.Channel.Text = "Cannot broadcast to channel " ..Channel.. "."
							Player.PlayerGui.RadioChannelGui.Channel.TextColor3 = Color3.new(0.9, 0, 0)
						end)
						wait(2.5)
						Channel = Channel < 1 and 1 or 9
						pcall(function() Player.PlayerGui.RadioChannelGui.Channel.Text = "Channel: " ..Channel end)
						if Activated == true then
							pcall(function() Player.PlayerGui.RadioChannelGui.Channel.TextColor3 = Color3.new(0, 0.9, 0) end)
						else
							pcall(function() Player.PlayerGui.RadioChannelGui.Channel.TextColor3 = Color3.new(0.9, 0, 0) end)
						end
						break
					end
					pcall(function()
						Player.PlayerGui.RadioChannelGui.Channel.Text = "Scanning for channel " ..Channel.. "..."
						Player.PlayerGui.RadioChannelGui.Channel.TextColor3 = Color3.new(0.4, 0.4, 0.4)
					end)
					wait(math.random(1, 250) / 1000)
					pcall(function() Player.PlayerGui.RadioChannelGui.Channel.Text = "Channel: " ..Channel end)
					if Reactivate == true then
						ToggleRadio()
					else
						pcall(function() Player.PlayerGui.RadioChannelGui.Channel.TextColor3 = Color3.new(0.9, 0, 0) end)
					end
				end
				CanUse = true
			end
		end
	end
end


function onKeyUp(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if CheckPlayer() == true then
		if Key == "e" or Key == "r" then
			KeyERDown = false
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
	pcall(function()
		local Gui = Instance.new("ScreenGui", Player.PlayerGui)
		Gui.Name = "RadioChannelGui"
		local TextLabel = Instance.new("TextLabel", Gui)
		TextLabel.Name = "Channel"
		TextLabel.Size = UDim2.new(1, 0, 0, 30)
		TextLabel.Position = UDim2.new(0, 0, 1, -100)
		TextLabel.BackgroundTransparency = 1
		TextLabel.TextXAlignment = "Right"
		TextLabel.FontSize = "Size24"
		TextLabel.Text = "Channel: " ..Channel
		TextLabel.TextColor3 = Activated == false and Color3.new(0.9, 0, 0) or Color3.new(0, 0.8, 0)
	end)
	if Activated == true then
		pcall(function()
			Player.Channels[Channel].CanSend.Value = true
		end)
	end
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	Mouse.KeyUp:connect(function(Key) onKeyUp(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
	Button1Down = false
	while CanUse == false do wait() end
	if Selected == true then return end
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Right Shoulder 2"] end) == false then
		RemoveParts(Player.Character, 2)
		CreateParts(Player.Character, 1)
		SetSpeed(1, 0.25, Player.Character)
		SetAngle(1, 0, Player.Character)
		ResetLimbCFrame(1, Player.Character)
		EnableLimb(1, Player.Character)
		return
	end
	CanUse = false
	if Activated == true then
		pcall(function()
			Player.Channels[Channel].CanSend.Value = false
		end)
	end
	pcall(function()
		Player.PlayerGui.RadioChannelGui:Remove()
	end)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	SetSpeed(1, 0.25, Player.Character)
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
end