--[[
Black Katana
A lightweight blade gives this black-hilted katana speedy and powerful slashes.
--]]


if script == nil then return end


ModelName = "Black Katana"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Damage = 0
FirstPerson = game:GetService("InsertService"):LoadAsset(60568552)["FirstPerson"].Value
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value


function SetSwordDamage(DamageNew, Time)
	if DamageDefault == nil then
		DamageDefault = Damage
	end
	if DamageNew == "Default" then
		Damage = DamageDefault
	elseif type(DamageNew) == "number" then
		Damage = DamageNew
	end
	if Time ~= nil then
		coroutine.wrap(function()
			local DamageResetDefault = time()
			DamageReset = DamageResetDefault
			wait(Time)
			if DamageReset == DamageResetDefault then
				Damage = DamageDefault
			end
		end)()
	end
end


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


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
	MasterPart1.Size = Vector3.new(0.25, 0.5, 3.5)
	MasterPart1.Locked = true
	MasterPart1.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart1
	Weld.Part1 = Player.Character:FindFirstChild("Torso")
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(150), 0, 0)
	Weld.C1 = CFrame.new(-1.1, -1.75, 0.5)
	Weld.Parent = Weld.Part0

	local MasterPart2 = Instance.new("Part")
	MasterPart2.Name = "Handle"
	MasterPart2.BrickColor = BrickColor.new("Really black")
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(0.3, 0.4, 1.25)
	MasterPart2.Locked = true
	MasterPart2.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart2
	if Format == 1 then
		Weld.Part1 = MasterPart1
		Weld.C1 = CFrame.new(0, 0, 2.625)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0, -1, -0.1)
	end
	Weld.Parent = Weld.Part0
	local Part = Instance.new("Part")
	Part.Name = "Hand Guard"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.5, 0.6, 0.25)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0, 0.75)
	Weld.Parent = Weld.Part0
	local Part = Instance.new("Part")
	Part.Name = "Blade Holder"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.375, 0.2)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0, 0.9)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.25)
	local Part = Instance.new("Part")
	Part.Name = "Blade"
	Part.BrickColor = BrickColor.new("Light stone grey")
	Part.Reflectance = 0.25
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.3, 2.75)
	Part.Locked = true
	Part.Parent = Parts
	Part.Touched:connect(SwordTouched)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0, 2.25)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1, 1, 1)
	local Part = Instance.new("WedgePart")
	Part.Name = "Blade Tip"
	Part.BrickColor = BrickColor.new("Light stone grey")
	Part.Reflectance = 0.25
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.3, 0.75)
	Part.Locked = true
	Part.Parent = Parts
	Part.Touched:connect(SwordTouched)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0, 4) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(180))
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Wedge"
	Mesh.Scale = Vector3.new(0.1, 1, 1)
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


function Weld(x, y)
	local Weld = Instance.new("Weld")
	Weld.Part0 = x
	Weld.Part1 = y
	Weld.C0 = x.CFrame:inverse() * CFrame.new(x.Position)
	Weld.C1 = y.CFrame:inverse() * CFrame.new(x.Position)
	Weld.Parent = x
end


function SwordTouched(Hit)
	if Hit:IsDescendantOf(Player.Character) then return end
	if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
		tagHumanoid(Hit.Parent.Humanoid)
		Hit.Parent.Humanoid:TakeDamage(Damage)
		wait()
		pcall(function() untagHumanoid(hit.Parent.Humanoid) end)
	end
end


loadstring(game:GetService("InsertService"):LoadAsset(65363615)["tagHumanoid"].Value)()


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if KeyUGrab == true and KeyUGrabCharacter ~= nil and KeyUChoke ~= true and KeyUSlit ~= true then
		KeyUChoke = true
		for i = 0, 1, 0.1 do
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(110 + (25 * i)), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(-110 - (25 * i)), 0)
			end)
			wait()
		end
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(135), 0)
			Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(-135), 0)
		end)
		while Button1Down == true and KeyUGrab == true and Selected == true do
			if KeyUGrabCharacter.Humanoid.Health - 0.5 <= 0 and KeyUGrabCharacter:FindFirstChild("Head") ~= nil then
				pcall(function() KeyUWeld:Remove() end)
				for _, Part in pairs(KeyUGrabCharacter.Head:GetChildren()) do
					pcall(function()
						Part.SoundId = ""
						Part.Volume = 0
						Part.Pitch = 0
					end)
				end
				wait(0.1)
				KeyUGrabCharacter.Humanoid.Health = 0
			else
				KeyUGrabCharacter.Humanoid:TakeDamage(0.5)
			end
			if math.random(1, 20) == 1 then
				local BillboardGui = Instance.new("BillboardGui")
				BillboardGui.Parent = KeyUGrabCharacter
				BillboardGui.Adornee = KeyUGrabCharacter:FindFirstChild("Head")
				BillboardGui.Size = UDim2.new(1, 0, 1, 0)
				BillboardGui.StudsOffset = Vector3.new(0, 0.5, 0)
				local TextLabel = Instance.new("TextLabel")
				TextLabel.Parent = BillboardGui
				TextLabel.Position = UDim2.new(0, 0, 0, 0)
				TextLabel.Size = UDim2.new(1, 0, 1, 0)
				TextLabel.Text = (function()
					local Choice1 = math.random(1, 5)
					if Choice1 == 1 then
						Choice1 = "Hrk"
					elseif Choice1 == 2 then
						Choice1 = "Hk"
					elseif Choice1 == 3 then
						Choice1 = "Gak"
					elseif Choice1 == 4 then
						Choice1 = "Mmph"
					elseif Choice1 == 5 then
						Choice1 = "Mph"
					end
					local Choice2 = math.random(1, 5)
					if Choice2 == 1 then
						Choice2 = "!"
					elseif Choice2 == 2 then
						Choice2 = "?"
					elseif Choice2 == 3 then
						Choice2 = "..."
					elseif Choice2 == 4 then
						Choice2 = "-"
					elseif Choice2 == 5 then
						Choice2 = "!?"
					elseif Choice2 == 5 then
						Choice2 = "?!"
					end
					return Choice1 .. Choice2
				end)()
				TextLabel.FontSize = "Size14"
				TextLabel.TextColor3 = Color3.new(math.random(0, 255) / 255, 0, 0)
				TextLabel.BackgroundTransparency = 1
				coroutine.wrap(function()
					local Direction = Vector3.new(math.random(-75, 75) / 1000, math.random(-75, 75) / 1000, math.random(-75, 75) / 1000)
					for i = 0, math.random(25, 100) do
						BillboardGui.StudsOffset = BillboardGui.StudsOffset + Direction
						wait()
					end
					for i = 0, 1, 0.05 do
						BillboardGui.StudsOffset = BillboardGui.StudsOffset + (Direction * (1 - i)) - Vector3.new(0, 0.5 * i, 0)
						TextLabel.TextTransparency = i
						wait()
					end
					BillboardGui:Remove()
				end)()
			end
			wait()
		end
		for i = 0, 1, 0.1 do
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10 * (1 - i)), math.rad(135 - (25 * i)), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10 * (1 - i)), math.rad(-135 + (25 * i)), 0)
			end)
			wait()
		end
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(110), 0)
			Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110), 0)
		end)
		KeyUChoke = false
	elseif KeyUChoke == true and KeyUSlit ~= true then
		KeyUSlit = true
		while KeyUChoke == true do wait() end
		for i = 0, 1, 0.25 do
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1 + (0.5 * i), 0.5, -0.75 + (0.75 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(110 - (100 * i)), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110 + (50 * i)), 0)
			end)
			wait()
		end
		pcall(function() KeyUWeld:Remove() end)
		KeyUGrabCharacter.Humanoid.Health = 0
		wait(1)
		KeyUSlit = false
		CanUse = true
	elseif CanUse == true then
		CanUse = false
		SoundToServer("Slash", "rbxasset://sounds/\swordslash.wav", math.random(150, 175) / 100, 1, false, Player.Character[ModelName].Blade)
		SetSwordDamage(2)
		SetSpeed(1, 0.75, Player.Character)
		SetAngle(1, math.rad(125), Player.Character)
		wait(0.15)
		SetSwordDamage(10, 0.2)
		SetSpeed(1, 1, Player.Character)
		SetAngle(1, math.rad(-10), Player.Character)
		wait(0.15)
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, math.rad(90), Player.Character)
		wait(0.05)
		CanUse = true
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "u" then
		if KeyUGrab == true then
			KeyUGrab = false
		end
	end
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
		if Key == "e" then
			CanUse = false
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			local Direction = Player.Character.Torso.CFrame.lookVector
			Player.Character.Humanoid.WalkSpeed = 0
			DisableLimb(2, Player.Character)
			DisableLimb(3, Player.Character)
			DisableLimb(4, Player.Character)
			SetSpeed(1, 0.2, Player.Character)
			SetSpeed(2, 0.2, Player.Character)
			SetSpeed(3, 0.05, Player.Character)
			SetSpeed(4, 0.05, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			SetAngle(3, math.rad(35), Player.Character)
			SetAngle(4, math.rad(-35), Player.Character)
			for i = 0, 1, 0.075 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), math.rad(180 * i), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180 * i), 0)
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
			end)
			SetSwordDamage(10, 2.5)
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
			BodyVelocity.velocity = Direction * (OldWalkSpeed * 1.5)
			BodyVelocity.Parent = Player.Character.Torso
			local BodyAngularVelocity = Instance.new("BodyAngularVelocity")
			BodyAngularVelocity.maxTorque = Vector3.new(0, math.huge, 0)
			BodyAngularVelocity.angularvelocity = Vector3.new(0, 37.5, 0)
			BodyAngularVelocity.Parent = Player.Character.Torso
			for i = 0, 1, 0.01 do
				SoundToServer("Slash", "rbxasset://sounds/\swordslash.wav", math.random(125, 200) / 100, 1, false, Player.Character[ModelName].Blade)
				local Wave = Instance.new("Part")
				Wave.Name = "Wave"
				Wave.BrickColor = BrickColor.new("Light stone grey")
				Wave.TopSurface = 0
				Wave.BottomSurface = 0
				Wave.Transparency = math.cos(i * math.pi * 1.85)
				Wave.Transparency = Wave.Transparency < 0.4 and 0.4 or Wave.Transparency
				Wave.Anchored = true
				Wave.CanCollide = false
				Wave.FormFactor = "Custom"
				Wave.Size = Vector3.new(math.random(12, 16), 1, math.random(12, 16))
				Wave.CFrame = Player.Character.Torso.CFrame * CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-5, 5)), 0, math.rad(math.random(-5, 5)))
				Wave.Parent = Workspace
				local Mesh = Instance.new("CylinderMesh", Wave)
				local Size = math.random(14, 16)
				Mesh.Scale = Vector3.new(1, 0.075, 1)
				coroutine.wrap(function()
					for i = Wave.Transparency, 1, 0.1 do
						Wave.Transparency = i
						wait()
					end
					Wave:Remove()
				end)()
				wait()
			end
			for i = 1, 25 do
				BodyVelocity.velocity = BodyVelocity.velocity / 1.2
				BodyAngularVelocity.angularvelocity = BodyAngularVelocity.angularvelocity / 1.075
				wait()
			end
			BodyVelocity:Remove()
			BodyAngularVelocity:Remove()
			SetAngle(2, 0, Player.Character)
			SetAngle(3, 0, Player.Character)
			SetAngle(4, 0, Player.Character)
			for i = 1, 0, -0.075 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), math.rad(180 * i), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
			end)
			ResetLimbCFrame(1, Player.Character)
			ResetLimbCFrame(2, Player.Character)
			ResetLimbCFrame(3, Player.Character)
			ResetLimbCFrame(4, Player.Character)
			SetSpeed(1, 0.5, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetSpeed(3, 0.1, Player.Character)
			SetSpeed(4, 0.1, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			EnableLimb(3, Player.Character)
			EnableLimb(4, Player.Character)
			DisableLimb(1, Player.Character)
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
			CanUse = true
		end
		if Key == "r" then
			CanUse = false
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			local Direction = Player.Character.Torso.CFrame.lookVector
			Player.Character.Humanoid.WalkSpeed = 0
			DisableLimb(2, Player.Character)
			DisableLimb(3, Player.Character)
			DisableLimb(4, Player.Character)
			SetSpeed(1, 0.1, Player.Character)
			SetSpeed(2, 0.1, Player.Character)
			SetSpeed(3, 0.075, Player.Character)
			SetSpeed(4, 0.075, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, math.rad(-45), Player.Character)
			SetAngle(3, math.rad(90), Player.Character)
			SetAngle(4, math.rad(-60), Player.Character)
			SoundToServer("Slash", "rbxasset://sounds/\swordslash.wav", math.random(75, 100) / 100, 1, false, Player.Character[ModelName].Blade)
			for i = 0, 1, 0.075 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), 0, 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
			end)
			SetSwordDamage(20, 1)
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
			BodyVelocity.velocity = Direction * (OldWalkSpeed * 5)
			BodyVelocity.Parent = Player.Character.Torso
			for i = 1, 20 do
				BodyVelocity.velocity = BodyVelocity.velocity / 1.15
				wait()
			end
			BodyVelocity:Remove()
			SetAngle(2, 0, Player.Character)
			SetAngle(3, 0, Player.Character)
			SetAngle(4, 0, Player.Character)
			for i = 1, 0, -0.1 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), 0, 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
			end)
			SetSpeed(1, 0.5, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetSpeed(3, 0.1, Player.Character)
			SetSpeed(4, 0.1, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			EnableLimb(3, Player.Character)
			EnableLimb(4, Player.Character)
			DisableLimb(1, Player.Character)
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
			CanUse = true
		end
		if Key == "t" then
			CanUse = false
			KeyTDown = true
			local KeyTCharge = 0
			local KeyTFire = false
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed / 10
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 - (100 * i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (90 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), 0, 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(180), 0)
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
			end)
			while KeyTDown == true and Mouse ~= nil and Selected == true do
				KeyTCharge = KeyTCharge + 1
				if KeyTCharge >= 35 then
					KeyTFire = true
					local Shock = Instance.new("Part", Workspace)
					Shock.Name = "Shock Ring"
					Shock.BrickColor = BrickColor.new("Institutional white")
					Shock.Transparency = 0.5
					Shock.Anchored = true
					Shock.CanCollide = false
					Shock.FormFactor = "Custom"
					Shock.Size = Vector3.new(1.5, 1, 1.5)
					Shock.CFrame = Player.Character["Right Arm"].CFrame * CFrame.new(0, -1.5, 0.125) * CFrame.fromEulerAnglesXYZ(math.rad(180 + math.random(-25, 25)), 0, math.rad(math.random(-25, 25)))
					local Mesh = Instance.new("SpecialMesh", Shock)
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = "http://www.roblox.com/Asset/?id=20329976"
					Mesh.Scale = Shock.Size
					coroutine.wrap(function()
						wait()
						for i = Shock.Transparency, 1, 0.05 do
							Shock.Transparency = i
							Shock.CFrame = Shock.CFrame * CFrame.new(0, 0.5, 0)
							wait()
						end
						Shock:Remove()
					end)()
				end
				wait()
			end
			SoundToServer("Slash", "rbxasset://sounds/\swordslash.wav", math.random(125, 150) / 100, 1, false, Player.Character[ModelName].Blade)
			wait(0.05)
			SetSwordDamage(20, 0.5)
			local _, Position = pcall(function() return Mouse.Hit.p end)
			for i = 0, 1, KeyTFire == true and 0.1 or 0.2 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10 + (170 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 + (10 * i)), 0, 0)
				end)
				if KeyTFire == true and type(Position) == "userdata" then
					local Shock = Instance.new("Part", Workspace)
					Shock.Name = "Shock Ring"
					Shock.BrickColor = BrickColor.new("Institutional white")
					Shock.TopSurface = 0
					Shock.BottomSurface = 0
					Shock.Anchored = true
					Shock.CanCollide = false
					Shock.FormFactor = "Custom"
					Shock.Size = Vector3.new(0.2, 0.2, 0.2)
					Shock.CFrame = CFrame.new(Player.Character[ModelName].Blade.Position, Position) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(math.sin((i + 1.5) * math.pi) * 25))
					coroutine.wrap(function()
						wait()
						for i = 0, 1, 0.05 do
							Shock.Transparency = i
							local NewPosition = Shock.CFrame * CFrame.new(0, 3, 0)
							Shock.Size = Shock.Size + Vector3.new(0.75, 0.5, 0.05)
							Shock.CFrame = NewPosition
							wait()
						end
						Shock:Remove()
					end)()
					coroutine.wrap(function()
						TouchedToServer([[	if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
		pcall(function() Hit.Parent.Humanoid:TakeDamage(15) end)
	end]], Shock)
					end)()
				end
				wait()
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(160), 0)
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100), 0, 0)
			end)
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(160 - (70 * i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(180 - (90 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100 * (1 - i)), 0, 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
			end)
			ResetLimbCFrame(1, Player.Character)
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
			CanUse = true
		end
		if Key == "y" then
			CanUse = false
			KeyYDown = true
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed / 5
			for i = 0, 1, 0.25 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), 0, 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
			end)
			for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				if Part.Name ~= "Sheath" then
					pcall(function() Part.Transparency = 1 end)
				end
			end
			SetSwordDamage(10)
			while KeyYDown == true and Mouse ~= nil and Selected == true do
				SoundToServer("Slash", "rbxasset://sounds/\swordslash.wav", math.random(150, 175) / 100, 1, false, Player.Character[ModelName].Blade)
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + math.random(-30, 30)), math.rad(math.random(-30, 30)), 0)
				end)
				local Ghost = Instance.new("Part", Workspace)
				Ghost.Name = "Ghost"
				Ghost.BrickColor = BrickColor.new("Institutional white")
				Ghost.Anchored = true
				Ghost.CanCollide = false
				Ghost.FormFactor = "Custom"
				Ghost.Size = Vector3.new(0.2, 0.2, 4)
				Ghost.CFrame = Player.Character[ModelName].Handle.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25)), 0) * CFrame.new(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-4, -3))
				local Mesh = Instance.new("SpecialMesh", Ghost)
				Mesh.MeshType = "Sphere"
				coroutine.wrap(function()
					wait()
					for i = 0, 1, 0.1 do
						Ghost.Transparency = i
						wait()
					end
					Ghost:Remove()
				end)()
				wait()
			end
			ResetLimbCFrame(1, Player.Character)
			SetSwordDamage(0)
			for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				if Part.Name ~= "Sheath" then
					pcall(function() Part.Transparency = 0 end)
				end
			end
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100 * (1 - i)), 0, 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
			end)
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
			CanUse = true
		end
		if Key == "u" then
			if KeyUGrab ~= true then
				if Player.Character.Torso:FindFirstChild("IsGrabbed") ~= nil then return end
				if Mouse.Target == nil then return end
				KeyUGrabCharacter = Mouse.Target.Parent
				if KeyUGrabCharacter == nil then return end
				if KeyUGrabCharacter:FindFirstChild("Torso") == nil or KeyUGrabCharacter:FindFirstChild("Head") == nil or KeyUGrabCharacter:FindFirstChild("Humanoid") == nil then return end
				if KeyUGrabCharacter.Torso:FindFirstChild("IsGrabbed") ~= nil then return end
				if (KeyUGrabCharacter.Torso.Position - Player.Character.Torso.Position).magnitude > 5 then return end
				CanUse = false
				KeyUGrab = true
				local Marker1 = Instance.new("IntValue", KeyUGrabCharacter.Torso)
				Marker1.Name = "IsGrabbed"
				KeyUWeld = Instance.new("Weld", Player.Character.Torso)
				KeyUWeld.Name = "IsGrabbed"
				KeyUWeld.Part0 = KeyUWeld.Parent
				KeyUWeld.Part1 = KeyUGrabCharacter.Torso
				KeyUWeld.C0 = CFrame.new(0, 0, -1.05)
				DisableLimb(2, Player.Character)
				SetSpeed(1, 0.2, Player.Character)
				SetSpeed(2, 0.2, Player.Character)
				SetAngle(1, math.rad(100), Player.Character)
				SetAngle(2, math.rad(100), Player.Character)
				for i = 0, 1, 0.1 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (20 * i)), 0)
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (20 * i)), 0)
						Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(160 * i), math.rad(110 * i), 0)
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(110), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(160), math.rad(110), 0)
				end)
				while KeyUGrab == true and Selected == true do
					if CheckPlayer() == false then break end
					if KeyUWeld.Parent == nil then break end
					if KeyUGrabCharacter == nil then break end
					if KeyUGrabCharacter:FindFirstChild("Torso") == nil or KeyUGrabCharacter:FindFirstChild("Humanoid") == nil then break end
					if KeyUGrabCharacter.Humanoid.Health <= 0 then break end
					KeyUGrabCharacter.Humanoid.PlatformStand = true
					wait()
				end
				KeyUGrab = false
				while KeyUChoke == true do wait() end
				pcall(function() KeyUWeld:Remove() end)
				pcall(function() Marker1:Remove() end)
				pcall(function() Marker2:Remove() end)
				pcall(function() KeyUGrabCharacter.Humanoid.Sit = true end)
				if KeyUSlit == true then
					while KeyUSlit == true do wait() end
					SetSpeed(1, 0.5, Player.Character)
					SetSpeed(2, 0.5, Player.Character)
					SetAngle(1, math.rad(90), Player.Character)
					SetAngle(2, 0, Player.Character)
					for i = 0, 1, 0.1 do
						pcall(function()
							Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(10 + (80 * i)), 0)
							Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1 - (0.5 * i), 0.5, -0.75 + 0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10 - (80 * i)), 0)
							Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(160 * (1 - i)), math.rad(110 * (1 - i)), 0)
						end)
						wait()
					end
				else
					SetSpeed(1, 0.5, Player.Character)
					SetSpeed(2, 0.5, Player.Character)
					SetAngle(1, math.rad(90), Player.Character)
					SetAngle(2, 0, Player.Character)
					for i = 1, 0, -0.1 do
						pcall(function()
							Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (20 * i)), 0)
							Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (20 * i)), 0)
							Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(160 * i), math.rad(110 * i), 0)
						end)
						wait()
					end
				end
				ResetLimbCFrame(1, Player.Character)
				ResetLimbCFrame(2, Player.Character)
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
				EnableLimb(1, Player.Character)
				EnableLimb(2, Player.Character)
				DisableLimb(1, Player.Character)
				CanUse = true
			end
		end
		if Key == "f" then
			CanUse = false
			DisableLimb(2, Player.Character)
			SetSpeed(1, 0.3, Player.Character)
			SetSpeed(2, 0.3, Player.Character)
			SetAngle(1, math.rad(45), Player.Character)
			SetAngle(2, math.rad(45), Player.Character)
			SoundToServer("Slash", "rbxasset://sounds/\swordslash.wav", math.random(65, 80) / 100, 1, false, Player.Character[ModelName].Blade)
			for i = 0, 1, 0.25 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), math.rad(213.25 * i), math.rad(-39 * i))
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100), math.rad(213.25), math.rad(-39))
			end)
			wait(0.35)
			SetSpeed(1, 0.75, Player.Character)
			SetSpeed(2, 0.75, Player.Character)
			SetAngle(1, math.rad(135), Player.Character)
			SetAngle(2, math.rad(135), Player.Character)
			SetSwordDamage(15, 0.5)
			Player.Character.Humanoid.Jump = true
			local Connection = Player.Character[ModelName].Blade.Touched:connect(function(Hit)
				if Hit:IsDescendantOf(Player.Character) then return end
				pcall(function() Hit.Parent.Humanoid.Sit = true end)
				pcall(function() Hit.Parent.Torso.Velocity = (Player.Character.Torso.CFrame.lookVector * math.random(10, 25)) + Vector3.new(math.random(-10, 10), 75, math.random(-10, 10)) end)
			end)
			for i = 0, 1, 0.25 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100 + (45 * i)), math.rad(213.25 - (66.5 * i)), math.rad(-39))
				end)
				wait()
			end
			wait(0.5)
			Connection:disconnect()
			wait(0.25)
			SetSpeed(1, 0.5, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 1, 0, -0.1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(145 * i), math.rad(146.75 * i), math.rad(-39 * i))
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
			end)
			ResetLimbCFrame(1, Player.Character)
			ResetLimbCFrame(2, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			DisableLimb(1, Player.Character)
			CanUse = true
		end
		if Key == "g" then
			CanUse = false
			DisableLimb(2, Player.Character)
			SetSpeed(1, 0.3, Player.Character)
			SetSpeed(2, 0.3, Player.Character)
			SetAngle(1, math.rad(135), Player.Character)
			SetAngle(2, math.rad(135), Player.Character)
			SoundToServer("Slash", "rbxasset://sounds/\swordslash.wav", math.random(65, 80) / 100, 1, false, Player.Character[ModelName].Blade)
			for i = 0, 1, 0.25 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(-28.125 * i), math.rad(-39 * i))
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(-28.125), math.rad(-39))
			end)
			Player.Character.Humanoid.Jump = true
			wait(0.4)
			SetSpeed(1, 0.75, Player.Character)
			SetSpeed(2, 0.75, Player.Character)
			SetAngle(1, math.rad(45), Player.Character)
			SetAngle(2, math.rad(45), Player.Character)
			SetSwordDamage(20, 0.5)
			for i = 0, 1, 0.25 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10 + (90 * i)), math.rad(-28.125 + (66.5 * i)), math.rad(-39))
				end)
				wait()
			end
			wait(0.5)
			SetSpeed(1, 0.5, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, 0, Player.Character)
			for i = 1, 0, -0.1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(145 * i), math.rad(146.75 * i), math.rad(-39 * i))
				end)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
			end)
			ResetLimbCFrame(1, Player.Character)
			ResetLimbCFrame(2, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			DisableLimb(1, Player.Character)
			CanUse = true
		end
		if Key == "h" then
			CanUse = false
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed / 10
			SetAngle(1, math.rad(90), Player.Character)
			SetSwordDamage(10)
			for i = 0, 1, 0.01 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(360 * 15 * i), 0)
				end)
				SoundToServer("Slash", "rbxasset://sounds/\swordslash.wav", math.random(125, 200) / 100, 1, false, Player.Character[ModelName].Blade)
				local Size = math.random(8, 12)
				local Wave = Instance.new("Part")
				Wave.Name = "Wave"
				Wave.BrickColor = BrickColor.new("Light stone grey")
				Wave.TopSurface = 0
				Wave.BottomSurface = 0
				Wave.Transparency = math.cos(i * math.pi * 1.85)
				Wave.Transparency = Wave.Transparency < 0.4 and 0.4 or Wave.Transparency
				Wave.Anchored = true
				Wave.CanCollide = math.random(1, 3) == 1 and true or false
				Wave.FormFactor = "Custom"
				Wave.Size = Vector3.new(Size, 1, Size)
				Wave.CFrame = Player.Character["Right Arm"].CFrame * CFrame.new(0, math.random(-150, -125) / 100, 0) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-5, 5)), 0, math.rad(math.random(-5, 5)))
				Wave.Parent = Workspace
				local Mesh = Instance.new("CylinderMesh", Wave)
				Mesh.Scale = Vector3.new(1, 0.075, 1)
				coroutine.wrap(function()
					for i = Wave.Transparency, 1, 0.1 do
						Wave.Transparency = i
						wait()
					end
					Wave:Remove()
				end)()
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
			end)
			SetSwordDamage("Default")
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
			CanUse = true
		end
		if Key == "x" then
			if Player.Character.Torso.Velocity.x > 2 or Player.Character.Torso.Velocity.y > 2 or Player.Character.Torso.Velocity.z > 2 or Player.Character.Torso.Velocity.x < -2 or Player.Character.Torso.Velocity.y < -2 or Player.Character.Torso.Velocity.z < -2 then return end
			CanUse = false
			Player.Character.Torso.Anchored = true
			Player.Character.Humanoid.PlatformStand = true
			local Pos = Player.Character.Torso.CFrame
			DisableLimb(2, Player.Character)
			DisableLimb(3, Player.Character)
			DisableLimb(4, Player.Character)
			SetSpeed(1, 0.3, Player.Character)
			SetSpeed(2, 0.3, Player.Character)
			SetSpeed(3, 0.3, Player.Character)
			SetSpeed(4, 0.3, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			SetAngle(3, 0, Player.Character)
			SetAngle(4, 0, Player.Character)
			for i = 0, 1, 0.25 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(-28.125 * i), math.rad(-39 * i))
				end)
				wait()
			end
			wait(0.1)
			for i = 0, math.pi, 0.05 do
				Player.Character.Torso.CFrame = Pos * CFrame.new(0, math.sin(-i) + 0.25, math.sin(-i)) * CFrame.fromEulerAnglesXYZ(math.rad(math.sin(-i) * 80), 0, 0)
				ForceAngle(3, math.rad(math.sin(i) * 80), Player.Character)
				ForceAngle(4, math.rad(math.sin(i) * 80), Player.Character)
				wait()
			end
			SetAngle(2, 0, Player.Character)
			for i = 1, 0, -0.25 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(-28.125 * i), math.rad(-39 * i))
				end)
				wait()
			end
			wait(0.1)
			SetSpeed(1, 0.2, Player.Character)
			SetSpeed(2, 0.2, Player.Character)
			SetSpeed(3, 0.1, Player.Character)
			SetSpeed(4, 0.1, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			EnableLimb(3, Player.Character)
			EnableLimb(4, Player.Character)
			DisableLimb(1, Player.Character)
			Player.Character.Torso.Velocity = Vector3.new(0, 0, 0)
			Player.Character.Torso.Anchored = false
			Player.Character.Humanoid.PlatformStand = false
			CanUse = true
		end
		if Key == "j" then
			CanUse = false
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			local Direction = (Player.Character.Torso.Position - (Player.Character.Torso.CFrame * CFrame.new(3, 0, 0)).p).unit
			Player.Character.Humanoid.WalkSpeed = 0
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
			BodyVelocity.velocity = Direction * (OldWalkSpeed * 10)
			BodyVelocity.Parent = Player.Character.Torso
			for i = 1, 20 do
				BodyVelocity.velocity = BodyVelocity.velocity / 1.2
				wait()
			end
			BodyVelocity:Remove()
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
			CanUse = true
		end
		if Key == "k" then
			CanUse = false
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			local Direction = (Player.Character.Torso.Position - (Player.Character.Torso.CFrame * CFrame.new(-3, 0, 0)).p).unit
			Player.Character.Humanoid.WalkSpeed = 0
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
			BodyVelocity.velocity = Direction * (OldWalkSpeed * 10)
			BodyVelocity.Parent = Player.Character.Torso
			for i = 1, 20 do
				BodyVelocity.velocity = BodyVelocity.velocity / 1.2
				wait()
			end
			BodyVelocity:Remove()
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
			CanUse = true
		end
		if Key == "z" then
			if KeyZDown == true then return end
			local KeyZMaxTime = 25
			if KeyZTime == nil then KeyZTime = KeyZMaxTime end
			if KeyZTime <= 0 then return end
			CanUse = false
			KeyZDown = true
			DisableLimb(2, Player.Character)
			SetSpeed(1, 0.5, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetAngle(1, math.rad(10), Player.Character)
			SetAngle(2, math.rad(10), Player.Character)
			local KeyZMovement1 = Player.Character.Humanoid.Running:connect(function(Speed)
				if Speed > 0 then
					SetAngle(1, math.rad(-45), Player.Character)
					SetAngle(2, math.rad(-45), Player.Character)
				else
					SetAngle(1, math.rad(10), Player.Character)
					SetAngle(2, math.rad(10), Player.Character)
				end
			end)
			local KeyZMovement2 = Player.Character.Humanoid.Jumping:connect(function()
				--Player.Character.Torso.Velocity = Player.Character.Torso.Velocity + Vector3.new(0, 35, 0)
				wait()
				SetAngle(1, math.rad(-45), Player.Character)
				SetAngle(2, math.rad(-45), Player.Character)
				wait(0.15)
				SetAngle(1, math.rad(180), Player.Character)
				SetAngle(2, math.rad(180), Player.Character)
				wait(0.5)
			end)
			local KeyZMovement3 = Player.Character.Humanoid.FreeFalling:connect(function()
				SetAngle(1, math.rad(180), Player.Character)
				SetAngle(2, math.rad(180), Player.Character)
			end)
			local Gui = Instance.new("ScreenGui", Player.PlayerGui)
			Gui.Name = ModelName.. " Stamina Bar"
			local BarUnderlay = Instance.new("Frame", Gui)
			BarUnderlay.Name = "BarUnderlay"
			BarUnderlay.BackgroundColor3 = Color3.new(1, 0, 0)
			BarUnderlay.BorderColor3 = Color3.new(0, 0, 0)
			BarUnderlay.Size = UDim2.new(0, 250, 0, 15)
			BarUnderlay.Position = UDim2.new(1, -300, 1, -100)
			local BarOverlay = Instance.new("Frame", Gui)
			BarOverlay.Name = "BarOverlay"
			BarOverlay.BackgroundColor3 = Color3.new(0, 1, 0)
			BarOverlay.BorderColor3 = Color3.new(0, 0, 0)
			BarOverlay.Position = UDim2.new(1, -300, 1, -100)
			local TextLabel = Instance.new("TextLabel", Gui)
			TextLabel.Name = "Stamina"
			TextLabel.Text = "Stamina"
			TextLabel.BackgroundTransparency = 1
			TextLabel.BorderSizePixel = 1
			TextLabel.Size = UDim2.new(0, 250, 0, 15)
			TextLabel.Position = UDim2.new(1, -300, 1, -100)
			coroutine.wrap(function()
				for i = 1, 0, -0.1 do
					BarUnderlay.BackgroundTransparency = i
					BarOverlay.BackgroundTransparency = i
					TextLabel.TextTransparency = i
					wait()
				end
			end)()
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			Player.Character.Humanoid.WalkSpeed = 0
			wait(0.1)
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed * 2.5
			while KeyZDown == true and KeyZTime > 0 and Selected == true do
				KeyZTime = KeyZTime - 0.1
				BarOverlay.Size = UDim2.new(0, 250 - ((1 - (KeyZTime / KeyZMaxTime)) * 250), 0, 15)
				wait()
			end
			KeyZMovement1:disconnect()
			KeyZMovement2:disconnect()
			KeyZMovement3:disconnect()
			Player.Character.Humanoid.WalkSpeed = 0
			wait(0.1)
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
			SetSpeed(1, 0.2, Player.Character)
			SetSpeed(2, 0.2, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, 0, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			DisableLimb(1, Player.Character)
			while KeyZDown == true and Selected == true do
				wait()
			end
			CanUse = true
			while KeyZDown == false and KeyZTime < KeyZMaxTime and Selected == true do
				KeyZTime = KeyZTime + 0.09
				BarOverlay.Size = UDim2.new(0, 250 - ((1 - (KeyZTime / KeyZMaxTime)) * 250), 0, 15)
				wait()
			end
			coroutine.wrap(function()
				for i = 0, 1, 0.05 do
					BarUnderlay.BackgroundTransparency = i
					BarOverlay.BackgroundTransparency = i
					TextLabel.TextTransparency = i
					wait()
				end
				Gui:Remove()
			end)()
		end
	end
end


function onKeyUp(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "z" then
		KeyZDown = false
	elseif Key == "t" then
		KeyTDown = false
	elseif Key == "y" then
		KeyYDown = false
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
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.5, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.05)
	for i = 0, 1, 0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(-0.05 * i, 0.11 * i, -0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(50) * i, 0, math.rad(-45) * i) *
				CFrame.new(1.5 * (1 - i), 0.5 * (1 - i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * (1 - i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * (1 - i), 0)
		end)
		wait()
	end
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(-0.05, 0.11, -0.8) * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, math.rad(-45))
		Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
		Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 0, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(200), 0, math.rad(-45))
	end)
	wait(0.1)
	SoundToServer("Unsheath", "rbxasset://sounds/\unsheath.wav", 1.25, 1, false, Player.Character[ModelName].Sheath)
	SetSwordDamage(10, 0.5)
	SetSpeed(2, 0.025, Player.Character)
	SetAngle(2, math.rad(-15), Player.Character)
	for i = 0, 1, 0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(-0.05 + (0.4 * i), 0.11 + (0.49 * i), -0.8 - (0.1 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(50 + (130 * i)), 0, math.rad(-45 + (10 * i)))
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2 * i, 0, -0.5 * i) * CFrame.fromEulerAnglesXYZ(math.rad(200 + (87.5 * i)), 0, math.rad(-45 - (3 * i)))
			Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(150 - (40 * i)), math.rad(17.5 * i), 0)
			Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.1 - (0.375 * i), -1.75, 0.5 - (0.2 * i))
		end)
		wait()
	end
	SetAngle(2, 0, Player.Character)
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(0.35, 0.6, -0.9) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(-35))
		Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2, 0, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(287.5), 0, math.rad(-48))
		Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(110), math.rad(17.5), 0)
		Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.475, -1.75, 0.3)
	end)
	SetAngle(1, math.rad(90), Player.Character)
	for i = 0, 1, 0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.5 * i, 0.5 * i, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * i, 0) *
				CFrame.new(0.35 * (1 - i), 0.6 * (1 - i), -0.9 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(180 * (1 - i)), 0, math.rad(-35 * (1 - i)))
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * i, 0)
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2 * (1 - i), 0, -0.5 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(287.5 * (1 - i)), 0, math.rad(-48 * (1 - i)))
			Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(110 + (40 * i)), math.rad(17.5 * (1 - i)), 0)
			Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.475 + (0.375 * i), -1.75, 0.3 + (0.2 * i))
		end)
		wait()
	end
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
	SetSpeed(2, 0.2, Player.Character)
	SetAngle(2, 0, Player.Character)
	EnableLimb(2, Player.Character)
	DisableLimb(1, Player.Character)
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
	while CanUse == false do wait() end
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Right Shoulder 2"] end) == false then
		RemoveParts(Player.Character, 2)
		CreateParts(Player.Character, 1)
		SetSpeed(1, 0.25, Player.Character)
		SetAngle(1, 0, Player.Character)
		ResetLimbCFrame(1, Player.Character)
		EnableLimb(1, Player.Character)
		return
	end
	if Selected == true then return end
	CanUse = false
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, 0, Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.5, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.1)
	SetSpeed(2, 0.025, Player.Character)
	SetAngle(2, math.rad(-15), Player.Character)
	for i = 1, 0, -0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.5 * i, 0.5 * i, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * i, 0) *
				CFrame.new(0.35 * (1 - i), 0.6 * (1 - i), -0.9 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(180 * (1 - i)), 0, math.rad(-35 * (1 - i)))
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * i, 0)
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2 * (1 - i), 0, -0.5 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(287.5 * (1 - i)), 0, math.rad(-48 * (1 - i)))
			Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(110 + (40 * i)), math.rad(17.5 * (1 - i)), 0)
			Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.475 + (0.375 * i), -1.75, 0.3 + (0.2 * i))
		end)
		wait()
	end
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(0.35, 0.6, -0.9) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(-35))
		Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2, 0, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(287.5), 0, math.rad(-48))
		Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(110), math.rad(17.5), 0)
		Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.475, -1.75, 0.3)
	end)
	SoundToServer("Sheath", "rbxasset://sounds/\unsheath.wav", -1.1, 1, true, Player.Character[ModelName].Sheath)
	coroutine.wrap(function()
		while Player.Character[ModelName].Sheath:FindFirstChild("Sheath") == nil do
			wait()
		end
		wait(0.05)
		Player.Character[ModelName].Sheath.Sheath.Looped = false
	end)()
	wait(0.15)
	SetAngle(2, 0, Player.Character)
	for i = 1, 0, -0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(-0.05 + (0.4 * i), 0.11 + (0.49 * i), -0.8 - (0.1 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(50 + (130 * i)), 0, math.rad(-45 + (10 * i)))
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2 * i, 0, -0.5 * i) * CFrame.fromEulerAnglesXYZ(math.rad(200 + (87.5 * i)), 0, math.rad(-45 - (3 * i)))
			Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(150 - (40 * i)), math.rad(17.5 * i), 0)
			Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.1 - (0.375 * i), -1.75, 0.5 - (0.2 * i))
		end)
		wait()
	end
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(-0.05, 0.11, -0.8) * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, math.rad(-45))
		Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
		Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 0, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(200), 0, math.rad(-45))
	end)
	wait(0.1)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	for i = 1, 0, -0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(-0.05 * i, 0.11 * i, -0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(50) * i, 0, math.rad(-45) * i) *
				CFrame.new(1.5 * (1 - i), 0.5 * (1 - i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * (1 - i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * (1 - i), 0)
		end)
		wait()
	end
	SetSpeed(1, 0.25, Player.Character)
	SetAngle(1, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
	SetSpeed(2, 0.2, Player.Character)
	SetAngle(2, 0, Player.Character)
	EnableLimb(2, Player.Character)
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