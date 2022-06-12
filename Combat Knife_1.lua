--[[
Combat Knife
Standard issue knife. Serrated edge for maximum cutting power.
--]]


if script == nil then return end


ModelName = "Combat Knife"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6Alt")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Ready = false
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

	local MasterPart1 = Instance.new("Part")
	MasterPart1.Name = "Sheath"
	MasterPart1.BrickColor = BrickColor.new("Really black")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(1, 1, 1)
	MasterPart1.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.3, 0.5, 1.2)
	Mesh.Parent = MasterPart1
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart1
	Weld.Part1 = Player.Character:FindFirstChild("Right Leg")
	Weld.C0 = CFrame.new(-0.6, 0.8, 0.85) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)
	Weld.Parent = Weld.Part0

	local MasterPart2 = Instance.new("Part")
	MasterPart2.Name = "Handle"
	MasterPart2.BrickColor = BrickColor.new("Black")
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(1, 1, 1)
	MasterPart2.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.25, 0.4, 0.9)
	Mesh.Parent = MasterPart2
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart2
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Leg")
		Weld.C0 = CFrame.new(-0.6, 0.8, -0.3) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0, -1.1, -0.1)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Grip"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.3, 0.5, 0.1)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0, 0.5)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Blade"
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.Reflectance = 0.2
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.01, 0.3, 0.85)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0, 0.95)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Blade Tip"
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.Reflectance = 0.2
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Wedge"
	Mesh.Scale = Vector3.new(0.01, 0.3, 0.35)
	Mesh.Parent = Part
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0, 1.55) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(180))
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
	if CheckPlayer() == false or CanUse == false then return end
	CanUse = false
	SetSpeed(1, 0.8, Player.Character)
	SetAngle(1, math.rad(190), Player.Character)
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.random(70, 110)), 0)
	end)
	CameraSlide(math.rad(5), 0, 0.5)
	Ready = true
	CanUse = true
end


function onButton1Up(Mouse)
	if Button1Down == false then return end
	Button1Down = false
	if CheckPlayer() == false then return end
	while CanUse == false do wait() end
	if Selected == false or Ready == false then return end
	CanUse = false
	Ready = false
	SoundToServer("Slash", "http://www.roblox.com/Asset/?id=10209640", math.random(1500, 2000) / 1000, 1, false, Player.Character.Torso)
	SetSpeed(1, 0.9, Player.Character)
	SetAngle(1, 0, Player.Character)
	local HasHit = false
	local _, HitConnection = pcall(function() return Player.Character[ModelName].Blade.Touched:connect(function(Hit)
		if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
		HasHit = true
		local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
		if Humanoid ~= nil then
			SoundToServer("Stab", "http://www.roblox.com/Asset/?id=10209590", math.random(900, 1100) / 1000, 1, false, Player.Character.Torso)
			tagHumanoid(Humanoid)
			Humanoid:TakeDamage(math.random(10, 30))
			wait()
			pcall(function() untagHumanoid(Humanoid) end)
		else
			SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 2, 0.5, false, Player.Character.Torso)
		end
	end) end)
	CameraSlide(math.rad(-10), 0, 0.2)
	ResetLimbCFrame(1, Player.Character)
	pcall(function() HitConnection:disconnect() end)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	CameraSlide(math.rad(3), 0, 0.5)
	CanUse = true
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
		elseif Key == "e" then
			CanUse = false
			local AimGyroAdd = Instance.new("CFrameValue", Player.Character)
			AimGyroAdd.Name = "AimGyroAdd"
			pcall(function() Player.Character.Torso.Neck.MaxVelocity = 0 end)
			for i = 0, 1, 0.075 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.25 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (40 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90 * i), 0, 0)
					Player.Character.Torso.Neck.CurrentAngle = math.rad(70 * i)
				end)
				AimGyroAdd.Value = CFrame.fromEulerAnglesXYZ(0, math.rad(-70 * i), 0)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(130), 0)
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
				Player.Character.Torso.Neck.CurrentAngle = math.rad(70)
			end)
			AimGyroAdd.Value = CFrame.fromEulerAnglesXYZ(0, math.rad(-70), 0)
			wait(0.1)
			SoundToServer("Slash", "http://www.roblox.com/Asset/?id=10209640", 0.75, 1, false, Player.Character.Torso)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Blade.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					SoundToServer("Stab", "http://www.roblox.com/Asset/?id=2801263", 0.8, 1, false, Player.Character.Torso)
					SoundToServer("Stab", "http://www.roblox.com/Asset/?id=10209590", 0.4, 1, false, Player.Character.Torso)
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(math.random(50, 700))
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				else
					SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1, 0.75, false, Player.Character.Torso)
				end
			end) end)
			for i = 0, 1, 0.125 do
				AimGyroAdd.Value = CFrame.fromEulerAnglesXYZ(0, math.rad(-70 + (160 * i)), 0)
				wait()
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25 + (0.25 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(130 - (130 * i) + (math.sin(i * math.pi) * 60)), 0)
					Player.Character.Torso.Neck.CurrentAngle = math.rad(70 - (160 * i))
				end)
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0)
				Player.Character.Torso.Neck.CurrentAngle = math.rad(-90)
			end)
			AimGyroAdd.Value = CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			HitConnection:disconnect()
			wait(0.5)
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * (1 - i)), 0, 0)
					Player.Character.Torso.Neck.CurrentAngle = math.rad(-90 * (1 - i))
				end)
				AimGyroAdd.Value = CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
				wait()
			end
			ResetLimbCFrame(1, Player.Character)
			pcall(function()
				Player.Character.Torso.Neck.MaxVelocity = 0.1
				Player.Character.Torso.Neck.CurrentAngle = 0
			end)
			AimGyroAdd:Remove()
			CanUse = true
		elseif Key == "r" then
			CanUse = false
			for i = 0, 1, 0.1 do
				wait()
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90 * i), math.rad(90 * i), 0)
				end)
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0)
			end)
			SoundToServer("Slash", "http://www.roblox.com/Asset/?id=10209850", 1.1, 1, false, Player.Character.Torso)
			local AimGyroAdd = Instance.new("CFrameValue", Player.Character)
			AimGyroAdd.Name = "AimGyroAdd"
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Blade.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					SoundToServer("Stab", "http://www.roblox.com/Asset/?id=10209590", 0.5, 1, false, Player.Character.Torso)
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(math.random(10, 40))
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				else
					SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1.5, 0.75, false, Player.Character.Torso)
				end
			end) end)
			for i = 0, 1, 0.1 do
				AimGyroAdd.Value = CFrame.fromEulerAnglesXYZ(0, math.rad(i * 360), 0)
				wait()
			end
			HitConnection:disconnect()
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * (1 - i)), 0, 0)
				end)
				wait()
			end
			ResetLimbCFrame(1, Player.Character)
			AimGyroAdd:Remove()
			CanUse = true
		elseif Key == "z" then
			CanUse = false
			SoundToServer("Throw", "http://www.roblox.com/Asset/?id=18426149", 0.9, 1, false, Player.Character.Torso)
			SetSpeed(1, 0.55, Player.Character)
			SetAngle(1, math.rad(200), Player.Character)
			wait(0.2)
			SetSpeed(1, 0.7, Player.Character)
			SetAngle(1, 0, Player.Character)
			wait()
			pcall(function() Player.Character[ModelName].Handle.Weld:Remove() end)
			for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				if Part.Name ~= "Blade Tip" then
					pcall(function() Part.CanCollide = true end)
				end
			end
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			BodyVelocity.velocity = (Mouse.Hit.p - Player.Character[ModelName].Handle.Position).unit * 150
			BodyVelocity.Parent = Player.Character[ModelName].Handle
			local BodyGyro = Instance.new("BodyGyro", Player.Character[ModelName].Handle)
			BodyGyro.P = 5000
			BodyGyro.D = 100
			BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			BodyGyro.cframe = CFrame.new(Player.Character[ModelName].Handle.Position, Mouse.Hit.p)
			local Find1 = math.random()
			local ParentObject = Instance.new("ObjectValue", Workspace)
			ParentObject.Name = Find1
			ParentObject.Value = Player.Character[ModelName]:FindFirstChild("Blade")
			local Find2 = math.random()
			local Clone = script:Clone()
			Clone.Disabled = true
			Clone.Name = Find2
			pcall(function() Clone.Player:Remove() end)
			pcall(function() Clone.ModelType:Remove() end)
			Clone.Parent = Workspace
			tagHumanoid(Player.Character[ModelName]:FindFirstChild("Blade"))
			wait(0.1)
			SendToServer([[local Value = Workspace["]] ..Find1.. [["]
local Source = Value.Value
Value:Remove()
local Clone = Workspace["]] ..Find2.. [["]
Clone.Parent = nil
Clone.Disabled = false
Status = 0
Source.Touched:connect(function(Hit)
	if Status == 2 then
		if Hit.Parent == nil then return end
		local Player = game:GetService("Players"):GetPlayerFromCharacter(Hit.Parent)
		if Player ~= nil then
			local PlayerValue = Instance.new("ObjectValue", Clone)
			PlayerValue.Name = "Player"
			PlayerValue.Value = Player
			Clone.Parent = Workspace
			Source.Parent:Remove()
		end
	elseif Status == 0 then
		Status = 1
		pcall(function() Source.Parent.Handle.BodyVelocity:Remove() end)
		pcall(function() Source.Parent.Handle.BodyGyro:Remove() end)
		pcall(function() Source.Parent.Handle.Velocity = Vector3.new() end)
		pcall(function() Source.Parent.Handle.RotVelocity = Vector3.new() end)
		local Sound = Instance.new("Sound", Source)
		Sound.SoundId = "http://www.roblox.com/Asset/?id=10209590"
		Sound.Pitch = math.random(400, 500) / 1000
		Sound.Volume = 1
		Sound:Play()
		local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
		if Humanoid ~= nil then
			local creator = Source.creator:Clone()
			creator.Parent = Humanoid
			Humanoid:TakeDamage(math.random(25000, 75000) / 1000)
			wait()
			creator:Remove()
		end
		local Weld = Instance.new("Weld")
		Weld.Part0 = Source
		Weld.Part1 = Hit
		Weld.C0 = Source.CFrame:inverse() * CFrame.new(Source.Position)
		Weld.C1 = Hit.CFrame:inverse() * CFrame.new(Source.Position)
		Weld.Parent = Weld.Part0
		wait(3)
		Status = 2
	end
end)
wait(25)
Source.Parent:Remove()]], "Throw")
			pcall(function() Player.Character[ModelName].Sheath:Remove() end)
			Player.Character[ModelName].Parent = Workspace
			wait(0.5)
			EnableLimb(1, Player.Character)
			UpdateFirstPerson()
			script.Parent:Remove()
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
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, 0, Player.Character)
	wait(0.4)
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	SetSpeed(1, 0.2, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	SoundToServer("Sheath", "rbxasset://sounds/\unsheath.wav", 5, 1, false, Player.Character[ModelName]:FindFirstChild("Sheath"))
	Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.4, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)
	wait(0.2)
	for i = 1, 0, -0.15 do
		pcall(function()
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.4 * i, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180 * i), 0, 0)
		end)
		CameraPunch(math.rad(1), 0)
		wait(0.03)
	end
	pcall(function()
		Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
	end)
	CameraSlide(math.rad(-6.25), 0, 0.15)
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
	if Selected == true then return end
	CanUse = false
	SetSpeed(1, 0.3, Player.Character)
	SetAngle(1, 0, Player.Character)
	SoundToServer("Sheath", "rbxasset://sounds/\unsheath.wav", 4, 1, false, Player.Character[ModelName]:FindFirstChild("Sheath"))
	for i = 0, 1, 0.25 do
		pcall(function()
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.4 * i, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180 * i), 0, 0)
		end)
		CameraPunch(math.rad(-1), 0)
		wait()
	end
	pcall(function()
		Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.4, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0)
	end)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	CameraSlide(math.rad(2.5), 0, 0.25)
	DisableLimb(1, Player.Character)
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