if script == nil then return end


ModelName = "Fists"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
MouseAim = game:GetService("InsertService"):LoadAsset(61527949)["MouseAim"].Value
Damage = {
	0,
	0,
	0,
	0
}
Connections = {
	nil,
	nil,
	nil,
	nil
}


function SetLimbDamage(Limb, DamageNew, Time)
	if DamageDefault == nil then
		DamageDefault = {
			Damage[1],
			Damage[2],
			Damage[3],
			Damage[4]
		}
	end
	if DamageReset == nil then
		DamageReset = {
			0,
			0,
			0,
			0
		}
	end
	if DamageNew == "Default" then
		Damage[Limb] = DamageDefault[Limb]
	elseif type(DamageNew) == "number" then
		Damage[Limb] = DamageNew
	end
	if Time ~= nil then
		coroutine.wrap(function()
			local DamageResetDefault = time()
			DamageReset[Limb] = DamageResetDefault
			wait(Time)
			if DamageReset[Limb] == DamageResetDefault then
				Damage[Limb] = DamageDefault[Limb]
			end
		end)()
	end
end


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Right Leg") == nil or Player.Character:FindFirstChild("Left Leg") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


loadstring(game:GetService("InsertService"):LoadAsset(62991657)["PacketFunctions"].Value)()


function CreateParts(Parent)
	Connections[1] = Parent["Right Arm"].Touched:connect(function(Hit) LimbTouched(Hit, 1) end)
	Connections[2] = Parent["Left Arm"].Touched:connect(function(Hit) LimbTouched(Hit, 2) end)
	Connections[3] = Parent["Right Leg"].Touched:connect(function(Hit) LimbTouched(Hit, 3) end)
	Connections[4] = Parent["Left Leg"].Touched:connect(function(Hit) LimbTouched(Hit, 4) end)
end


function RemoveParts()
	pcall(function() Connections[1]:disconnect() end)
	pcall(function() Connections[2]:disconnect() end)
	pcall(function() Connections[3]:disconnect() end)
	pcall(function() Connections[4]:disconnect() end)
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


function LimbTouched(Hit, Limb)
	if Hit:IsDescendantOf(Player.Character) or Hit.Anchored == true then return end
	if DamageDefault ~= nil then
		if Damage[Limb] ~= DamageDefault[Limb] then
			SoundToServer("Bash", "http://www.roblox.com/Asset/?id=10209590", (40 - (Damage[Limb] > 40 and 40 or Damage[Limb])) / 50, 0.25, false, Player.Character.Torso)
			if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
				tagHumanoid(Hit.Parent.Humanoid)
				Hit.Parent.Humanoid:TakeDamage(Damage[Limb])
				wait()
				pcall(function() untagHumanoid(hit.Parent.Humanoid) end)
			end
		end
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
		while Button1Down == true do
			local Format = math.random(1, 4)
			if Format == 1 then
				onKeyDown("q", Mouse, true)
			elseif Format == 2 then
				onKeyDown("e", Mouse, true)
			elseif Format == 3 then
				onKeyDown("f", Mouse, true)
			elseif Format == 4 then
				onKeyDown("g", Mouse, true)
			end
		end
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse, Bypass)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "u" then
		if KeyUGrab == true then
			KeyUGrab = false
		end
	end
	if (Button1Down == false and CanUse == true and CheckPlayer() == true) or Bypass then
		if Key == "q" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", math.random(250, 300) / 100, 1, false, Player.Character.Torso)
			local Limb = 2
			SetLimbDamage(Limb, 1, 1)
			SetSpeed(Limb, 0.1, Player.Character)
			SetAngle(Limb, math.rad(90), Player.Character)
			for i = 0, 1, 0.3 do
				pcall(function()
					if Limb == 1 then
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 + (0.1 * i), 0.5, 0.3 - (i * 1.1)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 - (i * 10)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					elseif Limb == 2 then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 - (0.1 * i), 0.5, 0.3 - (i * 1.1)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (i * 10)), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end
				end)
				wait()
			end
			SetSpeed(Limb, 0.05, Player.Character)
			SetAngle(Limb, math.rad(105), Player.Character)
			for i = 1, 0, -0.15 do
				pcall(function()
					if Limb == 1 then
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 + (0.1 * i), 0.5, 0.3 - (i * 0.9)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 - (i * 10)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					elseif Limb == 2 then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 - (0.1 * i), 0.5, 0.3 - (i * 0.9)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (i * 10)), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end
				end)
				wait()
			end
			pcall(function()
				if Limb == 1 then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(115), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				elseif Limb == 2 then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				end
			end)
			SetSpeed(Limb, 0.25, Player.Character)
			CanUse = true
		end
		if Key == "e" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", math.random(250, 300) / 100, 1, false, Player.Character.Torso)
			local Limb = 1
			SetLimbDamage(Limb, 1, 1)
			SetSpeed(Limb, 0.1, Player.Character)
			SetAngle(Limb, math.rad(90), Player.Character)
			for i = 0, 1, 0.3 do
				pcall(function()
					if Limb == 1 then
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 + (0.1 * i), 0.5, 0.3 - (i * 1.1)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 - (i * 10)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					elseif Limb == 2 then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 - (0.1 * i), 0.5, 0.3 - (i * 1.1)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (i * 10)), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end
				end)
				wait()
			end
			SetSpeed(Limb, 0.05, Player.Character)
			SetAngle(Limb, math.rad(105), Player.Character)
			for i = 1, 0, -0.15 do
				pcall(function()
					if Limb == 1 then
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 + (0.1 * i), 0.5, 0.3 - (i * 0.9)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 - (i * 10)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					elseif Limb == 2 then
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 - (0.1 * i), 0.5, 0.3 - (i * 0.9)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (i * 10)), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					end
				end)
				wait()
			end
			pcall(function()
				if Limb == 1 then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(115), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				elseif Limb == 2 then
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				end
			end)
			SetSpeed(Limb, 0.25, Player.Character)
			CanUse = true
		end
		if Key == "r" then
			CanUse = false
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			local Direction = Player.Character.Torso.CFrame.lookVector
			Player.Character.Humanoid.WalkSpeed = 0
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
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 + (i * 0.3), 0.5, 0.3 - (i * 0.3)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 * (1 - i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 - (i * 0.3), 0.5, 0.3 - (i * 0.3)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 * (1 - i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0)
			end)
			SoundToServer("Slash2", "rbxasset://sounds/swordslash.wav", math.random(300, 350) / 100, 1, false, Player.Character.Torso)
			while Player.Character.Torso:FindFirstChild("Slash2") == nil do wait() end
			SetLimbDamage(1, 3, 2.25)
			SetLimbDamage(2, 3, 2.25)
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
			BodyVelocity.velocity = Direction * (OldWalkSpeed * 0.9)
			BodyVelocity.Parent = Player.Character.Torso
			local BodyAngularVelocity = Instance.new("BodyAngularVelocity")
			BodyAngularVelocity.maxTorque = Vector3.new(0, math.huge, 0)
			BodyAngularVelocity.angularvelocity = Vector3.new(0, 20, 0)
			BodyAngularVelocity.Parent = Player.Character.Torso
			local OldCFrame1 = nil
			local NewCFrame1 = Player.Character["Left Arm"].CFrame * CFrame.new(0, -1, 0)
			local OldCFrame2 = nil
			local NewCFrame2 = Player.Character["Right Arm"].CFrame * CFrame.new(0, -1, 0)
			for i = 0, 1, 0.05 do
				Player.Character.Torso.Slash2:Play()
				OldCFrame1 = NewCFrame1
				NewCFrame1 = Player.Character["Left Arm"].CFrame * CFrame.new(0, -1, 0)
				local Trail = Instance.new("Part", Player.Character)
				Trail.Name = "Trail"
				Trail.TopSurface = 0
				Trail.BottomSurface = 0
				Trail.BrickColor = BrickColor.new("Institutional white")
				Trail.Anchored = true
				Trail.CanCollide = false
				Trail.FormFactor = "Custom"
				Trail.Size = Vector3.new(0.2, 1, (NewCFrame1.p - OldCFrame1.p).magnitude)
				Trail.CFrame = CFrame.new((NewCFrame1.p + OldCFrame1.p) / 2, OldCFrame1.p)
				local Mesh = Instance.new("SpecialMesh", Trail)
				Mesh.MeshType = "Brick"
				Mesh.Scale = Vector3.new(0.25, 1, 1)
				coroutine.wrap(function()
					for i = 0, 1, 0.1 do
						Trail.Transparency = i
						Trail.Mesh.Scale = Vector3.new(Trail.Mesh.Scale.x, 1 - i, Trail.Mesh.Scale.z)
						wait()
					end
					Trail:Remove()
				end)()
				OldCFrame2 = NewCFrame2
				NewCFrame2 = Player.Character["Right Arm"].CFrame * CFrame.new(0, -1, 0)
				local Trail = Instance.new("Part", Player.Character)
				Trail.Name = "Trail"
				Trail.TopSurface = 0
				Trail.BottomSurface = 0
				Trail.BrickColor = BrickColor.new("Institutional white")
				Trail.Anchored = true
				Trail.CanCollide = false
				Trail.FormFactor = "Custom"
				Trail.Size = Vector3.new(0.2, 1, (NewCFrame2.p - OldCFrame2.p).magnitude)
				Trail.CFrame = CFrame.new((NewCFrame2.p + OldCFrame2.p) / 2, OldCFrame2.p)
				local Mesh = Instance.new("SpecialMesh", Trail)
				Mesh.MeshType = "Brick"
				Mesh.Scale = Vector3.new(0.25, 1, 1)
				coroutine.wrap(function()
					for i = 0, 1, 0.1 do
						Trail.Transparency = i
						Trail.Mesh.Scale = Vector3.new(Trail.Mesh.Scale.x, 1 - i, Trail.Mesh.Scale.z)
						wait()
					end
					Trail:Remove()
				end)()
				wait()
			end
			Player.Character.Torso.Slash2:Remove()
			for i = 1, 25 do
				BodyVelocity.velocity = BodyVelocity.velocity / 1.2
				BodyAngularVelocity.angularvelocity = BodyAngularVelocity.angularvelocity / 1.075
				wait()
			end
			BodyVelocity:Remove()
			BodyAngularVelocity:Remove()
			SetAngle(1, math.rad(105), Player.Character)
			SetAngle(2, math.rad(105), Player.Character)
			SetAngle(3, 0, Player.Character)
			SetAngle(4, 0, Player.Character)
			for i = 1, 0, -0.075 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 + (i * 0.3), 0.5, 0.3 - (i * 0.3)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 * (1 - i)), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 - (i * 0.3), 0.5, 0.3 - (i * 0.3)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 * (1 - i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
				end)
				wait()
			end
			SetSpeed(1, 0.25, Player.Character)
			SetSpeed(2, 0.25, Player.Character)
			SetSpeed(3, 0.1, Player.Character)
			SetSpeed(4, 0.1, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			EnableLimb(3, Player.Character)
			EnableLimb(4, Player.Character)
			DisableLimb(1, Player.Character)
			DisableLimb(2, Player.Character)
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(115), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
			CanUse = true
		end
		if Key == "t" then
			CanUse = false
			DisableLimb(3, Player.Character)
			DisableLimb(4, Player.Character)
			SetSpeed(3, 0.25, Player.Character)
			SetSpeed(4, 0.5, Player.Character)
			SetAngle(3, math.rad(75), Player.Character)
			SetAngle(4, 0, Player.Character)
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", math.random(40, 55) / 100, 1, false, Player.Character.Torso)
			SendToServer([[local OldCFrame1 = nil
local NewCFrame1 = Player.Character["Left Leg"].CFrame * CFrame.new(0, -1, 0)
local OldCFrame2 = nil
local NewCFrame2 = Player.Character["Right Leg"].CFrame * CFrame.new(0, -1, 0)
local Pos = Player.Character.Torso.CFrame
local WalkSpeed = Player.Character.Humanoid.WalkSpeed
Player.Character.Humanoid.PlatformStand = true
for i = 0, 1, 0.05 do
	Player.Character.Torso.CFrame = (CFrame.new(Pos.lookVector * (WalkSpeed / 5) * i) * Pos) * CFrame.new(0, 0, 1 * i) * CFrame.fromEulerAnglesXYZ(math.rad(365 * i), 0, 0)
	Player.Character.Torso.Velocity = Vector3.new(0, 0, 0)
	Player.Character.Torso.RotVelocity = Vector3.new(0, 0, 0)
	OldCFrame1 = NewCFrame1
	NewCFrame1 = Player.Character["Left Leg"].CFrame * CFrame.new(0, -1, 0)
	local Trail = Instance.new("Part", Player.Character)
	Trail.Name = "Trail"
	Trail.TopSurface = 0
	Trail.BottomSurface = 0
	Trail.BrickColor = BrickColor.new("Institutional white")
	Trail.Anchored = true
	Trail.CanCollide = false
	Trail.FormFactor = "Custom"
	Trail.Size = Vector3.new(1, 0.2, (NewCFrame1.p - OldCFrame1.p).magnitude)
	Trail.CFrame = CFrame.new((NewCFrame1.p + OldCFrame1.p) / 2, OldCFrame1.p)
	local Mesh = Instance.new("SpecialMesh", Trail)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 0.25, 1)
	coroutine.wrap(function()
		for i = 0, 1, 0.1 do
			Trail.Transparency = i
			Trail.Mesh.Scale = Vector3.new(1 - i, Trail.Mesh.Scale.y, Trail.Mesh.Scale.z)
			wait()
		end
		Trail:Remove()
	end)()
	OldCFrame2 = NewCFrame2
	NewCFrame2 = Player.Character["Right Leg"].CFrame * CFrame.new(0, -1, 0)
	local Trail = Instance.new("Part", Player.Character)
	Trail.Name = "Trail"
	Trail.TopSurface = 0
	Trail.BottomSurface = 0
	Trail.BrickColor = BrickColor.new("Institutional white")
	Trail.Anchored = true
	Trail.CanCollide = false
	Trail.FormFactor = "Custom"
	Trail.Size = Vector3.new(1, 0.2, (NewCFrame2.p - OldCFrame2.p).magnitude)
	Trail.CFrame = CFrame.new((NewCFrame2.p + OldCFrame2.p) / 2, OldCFrame2.p)
	local Mesh = Instance.new("SpecialMesh", Trail)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 0.25, 1)
	coroutine.wrap(function()
		for i = 0, 1, 0.1 do
			Trail.Transparency = i
			Trail.Mesh.Scale = Vector3.new(1 - i, Trail.Mesh.Scale.y, Trail.Mesh.Scale.z)
			wait()
		end
		Trail:Remove()
	end)()
	wait()
end
Player.Character.Humanoid.PlatformStand = false]], "Backflip", {"Player", Player})
			wait(0.5)
			SetSpeed(4, 0.25, Player.Character)
			SetAngle(4, math.rad(-75), Player.Character)
			SetLimbDamage(3, 2.5)
			SetLimbDamage(4, 2.5)
			_, Connection1 = pcall(function()
				return Player.Character["Left Leg"].Touched:connect(function(Hit)
					if Hit.Anchored == false then
						Hit.Velocity = (Player.Character.Torso.CFrame.lookVector * math.random(25, 50)) + Vector3.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))
						pcall(function() Hit.Parent.Humanoid.Sit = true end)
					end
				end)
			end)
			_, Connection2 = pcall(function()
				return Player.Character["Right Leg"].Touched:connect(function(Hit)
					if Hit.Anchored == false then
						Hit.Velocity = (Player.Character.Torso.CFrame.lookVector * math.random(25, 50)) + Vector3.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))
						pcall(function() Hit.Parent.Humanoid.Sit = true end)
					end
				end)
			end)
			while Player.Character.Humanoid.PlatformStand == true do wait() end
			SetLimbDamage(3, "Default")
			SetLimbDamage(4, "Default")
			pcall(function() Connection1:disconnect() end)
			pcall(function() Connection2:disconnect() end)
			SetAngle(3, 0, Player.Character)
			SetAngle(4, 0, Player.Character)
			SetSpeed(3, 0.1, Player.Character)
			SetSpeed(4, 0.1, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			EnableLimb(3, Player.Character)
			EnableLimb(4, Player.Character)
			DisableLimb(1, Player.Character)
			DisableLimb(2, Player.Character)
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(115), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
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
				if (KeyUGrabCharacter.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
				CanUse = false
				KeyUGrab = true
				local Marker1 = Instance.new("IntValue", KeyUGrabCharacter.Torso)
				Marker1.Name = "IsGrabbed"
				KeyUWeld = Instance.new("Weld", Player.Character.Torso)
				KeyUWeld.Name = "IsGrabbed"
				KeyUWeld.Part0 = KeyUWeld.Parent
				KeyUWeld.Part1 = KeyUGrabCharacter.Torso
				KeyUWeld.C0 = CFrame.new(0, 0, -1.05)
				SetSpeed(1, 0.2, Player.Character)
				SetSpeed(2, 0.2, Player.Character)
				SetAngle(1, math.rad(100), Player.Character)
				SetAngle(2, math.rad(100), Player.Character)
				for i = 0, 1, 0.1 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 - (0.2 * i), 0.5, 0.3 - (1.05 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 - (5 * i)), 0)
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 + (0.2 * i), 0.5, 0.3 - (1.05 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (5 * i)), 0)
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(110), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110), 0)
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
					SetAngle(1, math.rad(110), Player.Character)
					SetAngle(2, math.rad(110), Player.Character)
					for i = 0, 1, 0.1 do
						pcall(function()
							Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.3 * i), 0.5, 0.3 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(10 + (105 * i)), 0)
							Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1 - (0.2 * i), 0.5, -0.75 + (1.05 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-60 - (55 * i)), 0)
						end)
						wait()
					end
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(115), 0)
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
					end)
				else
					SetSpeed(1, 0.5, Player.Character)
					SetSpeed(2, 0.5, Player.Character)
					SetAngle(1, math.rad(110), Player.Character)
					SetAngle(2, math.rad(110), Player.Character)
					for i = 1, 0, -0.1 do
						pcall(function()
							Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 - (0.2 * i), 0.5, 0.3 - (1.05 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 - (5 * i)), 0)
							Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 + (0.2 * i), 0.5, 0.3 - (1.05 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (5 * i)), 0)
						end)
						wait()
					end
				end
				CanUse = true
			end
		end
		if Key == "f" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", math.random(75, 85) / 100, 1, false, Player.Character.Torso)
			DisableLimb(4, Player.Character)
			SetSpeed(4, 0.3, Player.Character)
			SetAngle(4, math.rad(-25), Player.Character)
			wait(0.15)
			SetSpeed(4, 0.4, Player.Character)
			SetAngle(4, math.rad(90), Player.Character)
			SetLimbDamage(4, 4)
			wait(0.35)
			SetLimbDamage(4, "Default")
			SetAngle(4, 0, Player.Character)
			SetSpeed(4, 0.1, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			EnableLimb(4, Player.Character)
			DisableLimb(1, Player.Character)
			DisableLimb(2, Player.Character)
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(115), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
			wait(0.25)
			CanUse = true
		end
		if Key == "g" then
			CanUse = false
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", math.random(75, 85) / 100, 1, false, Player.Character.Torso)
			DisableLimb(3, Player.Character)
			SetSpeed(3, 0.3, Player.Character)
			SetAngle(3, math.rad(-25), Player.Character)
			wait(0.15)
			SetSpeed(3, 0.4, Player.Character)
			SetAngle(3, math.rad(90), Player.Character)
			SetLimbDamage(3, 4)
			wait(0.35)
			SetLimbDamage(3, "Default")
			SetAngle(3, 0, Player.Character)
			SetSpeed(3, 0.1, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			EnableLimb(3, Player.Character)
			DisableLimb(1, Player.Character)
			DisableLimb(2, Player.Character)
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(115), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
			wait(0.25)
			CanUse = true
		end
		if Key == "h" then
			CanUse = false
			DisableLimb(3, Player.Character)
			DisableLimb(4, Player.Character)
			SetSpeed(1, 0.25, Player.Character)
			SetSpeed(2, 0.25, Player.Character)
			SetSpeed(3, 0.25, Player.Character)
			SetSpeed(4, 0.25, Player.Character)
			SetAngle(1, 0, Player.Character)
			SetAngle(2, 0, Player.Character)
			SetAngle(3, 0, Player.Character)
			SetAngle(4, 0, Player.Character)
			local Pos = Player.Character.Torso.CFrame
			local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
			Player.Character.Humanoid.WalkSpeed = 0
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", math.random(70, 75) / 100, 1, false, Player.Character.Torso)
			for i = 0, 1, 0.1 do
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.3 * (1 - i)), 0.5, (1 - i) * 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (25 * (1 - i))), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.3 * (1 - i)), 0.5, (1 - i) * 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (115 * i)), 0)
				Player.Character.Torso.CFrame = (CFrame.new(0, -0.75 * i, 0) * Pos) * CFrame.new(0, 0, 1 * i) * CFrame.fromEulerAnglesXYZ(math.rad(90 * i), math.rad(90 * i), 0)
				Player.Character.Torso.Velocity = Vector3.new(0, 0, 0)
				Player.Character.Torso.RotVelocity = Vector3.new(0, 0, 0)
				wait()
			end
			SetLimbDamage(3, 5)
			SetLimbDamage(4, 5)
			_, Connection1 = pcall(function()
				return Player.Character["Left Leg"].Touched:connect(function(Hit)
					if Hit.Anchored == false then
						Hit.Velocity = Player.Character.Torso.Velocity + Vector3.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))
						pcall(function() Hit.Parent.Humanoid.Sit = true end)
					end
				end)
			end)
			_, Connection2 = pcall(function()
				return Player.Character["Right Leg"].Touched:connect(function(Hit)
					if Hit.Anchored == false then
						Hit.Velocity = Player.Character.Torso.Velocity + Vector3.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))
						pcall(function() Hit.Parent.Humanoid.Sit = true end)
					end
				end)
			end)
			SetSpeed(2, 0.5, Player.Character)
			SetAngle(2, math.rad(180), Player.Character)
			local BodyVelocity = Instance.new("BodyVelocity")
			BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
			BodyVelocity.velocity = (Pos.lookVector * (OldWalkSpeed * 3))
			BodyVelocity.Parent = Player.Character.Torso
			local BodyGyro = Instance.new("BodyGyro")
			BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			BodyGyro.cframe = CFrame.new(Pos.p, (Pos * CFrame.new(0, 0, -1)).p) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(-90), 0)
			BodyGyro.Parent = Player.Character.Torso
			wait(1)
			for i = 1, 20 do
				BodyVelocity.velocity = BodyVelocity.velocity / 1.2
				wait()
			end
			BodyVelocity:Remove()
			BodyGyro:Remove()
			SetLimbDamage(3, "Default")
			SetLimbDamage(4, "Default")
			pcall(function() Connection1:disconnect() end)
			pcall(function() Connection2:disconnect() end)
			wait(1.5)
			SetAngle(3, 0, Player.Character)
			SetAngle(4, 0, Player.Character)
			SetSpeed(3, 0.1, Player.Character)
			SetSpeed(4, 0.1, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			EnableLimb(3, Player.Character)
			EnableLimb(4, Player.Character)
			DisableLimb(1, Player.Character)
			DisableLimb(2, Player.Character)
			SetSpeed(1, 0.25, Player.Character)
			SetSpeed(2, 0.25, Player.Character)
			SetAngle(1, math.rad(105), Player.Character)
			SetAngle(2, math.rad(105), Player.Character)
			for i = 0, 1, -0.1 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.3 * i), 0.5, i * 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (25 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.3 * i), 0.5, i * 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (25 * i)), 0)
				end)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(115), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
			wait(0.5)
			Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
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
				wait()
				Player.Character.Torso.Velocity = Player.Character.Torso.Velocity + Vector3.new(0, 35, 0)
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
			SetAngle(1, math.rad(110), Player.Character)
			SetAngle(2, math.rad(110), Player.Character)
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
		if Key == "x" then
			if Player.Character.Torso.Velocity.x > 2 or Player.Character.Torso.Velocity.y > 2 or Player.Character.Torso.Velocity.z > 2 or Player.Character.Torso.Velocity.x < -2 or Player.Character.Torso.Velocity.y < -2 or Player.Character.Torso.Velocity.z < -2 then return end
			CanUse = false
			Player.Character.Torso.Anchored = true
			Player.Character.Humanoid.PlatformStand = true
			local Pos = Player.Character.Torso.CFrame
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
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 - (0.2 * i), 0.5, 0.3 - (0.3 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 + (20 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 + (0.2 * i), 0.5, 0.3 - (0.3 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 - (20 * i)), 0)
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
			SetAngle(1, math.rad(110), Player.Character)
			SetAngle(2, math.rad(110), Player.Character)
			for i = 1, 0, -0.25 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2 - (0.2 * i), 0.5, 0.3 - (0.3 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(115 + (20 * i)), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2 + (0.2 * i), 0.5, 0.3 - (0.3 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 - (20 * i)), 0)
				end)
				wait()
			end
			wait(0.1)
			SetSpeed(1, 0.25, Player.Character)
			SetSpeed(2, 0.25, Player.Character)
			SetSpeed(3, 0.1, Player.Character)
			SetSpeed(4, 0.1, Player.Character)
			EnableLimb(1, Player.Character)
			EnableLimb(2, Player.Character)
			EnableLimb(3, Player.Character)
			EnableLimb(4, Player.Character)
			DisableLimb(1, Player.Character)
			DisableLimb(2, Player.Character)
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(115), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.2, 0.5, 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
			end)
			Player.Character.Torso.Velocity = Vector3.new(0, 0, 0)
			Player.Character.Torso.Anchored = false
			Player.Character.Humanoid.PlatformStand = false
			CanUse = true
		end
	end
end


function onKeyUp(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "z" then
		KeyZDown = false
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
	SetSpeed(1, 0.25, Player.Character)
	SetAngle(1, math.rad(105), Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.25, Player.Character)
	SetAngle(2, math.rad(105), Player.Character)
	CreateParts(Player.Character)
	for i = 0, 1, 0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.3 * i), 0.5, i * 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (25 * i)), 0)
			Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.3 * i), 0.5, i * 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (25 * i)), 0)
		end)
		wait()
	end
	Mouse.Icon = "rbxasset://textures/GunCursor.png"
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
	RemoveParts()
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Right Shoulder 2"] end) == false or pcall(function() local _ = Player.Character.Torso["Left Shoulder 2"] end) == false then
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
	SetSpeed(1, 0.25, Player.Character)
	SetAngle(1, 0, Player.Character)
	SetSpeed(2, 0.25, Player.Character)
	SetAngle(2, 0, Player.Character)
	for i = 1, 0, -0.1 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.3 * i), 0.5, i * 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (25 * i)), 0)
			Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (0.3 * i), 0.5, i * 0.3) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (25 * i)), 0)
		end)
		wait()
	end
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
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
	coroutine.wrap(loadstring(MouseAim))()
end