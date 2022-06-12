--[[
Morphene Shot
Gives a litte health.
--]]


if script == nil then return end


Player = game:GetService("Players"):FindFirstChild("DarkShadow6")
Name = "Medical Syringe"
selected = false
Button1Down = false
CanUse = true


function makeParts(format)
	local model = Instance.new("Model")
	model.Name = Name
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.FormFactor = "Custom"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Institutional white")
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.25, 1, 0.25)
	m.Parent = pm
	if format ~= nil then
		local w = Instance.new("Weld")
		w.Part0 = pm
		if format == "hand" then
			w.Part1 = Player.Character:FindFirstChild("Right Arm")
			w.C0 = CFrame.new(0, 0.1, 1.1) * CFrame.fromEulerAnglesXYZ(math.rad(70), 0, 0)
			w.C1 = CFrame.new()
		elseif format == "holster" then
			w.Part1 = Player.Character:FindFirstChild("Right Leg")
			w.C0 = CFrame.new(-0.65, -0.25, 0) * CFrame.fromEulerAnglesXYZ(math.rad(25), 0, 0)
			w.C1 = CFrame.new()
			w.Parent = pm
			model.Name = Name.. " (Holstered)"
		end
		w.Parent = pm
		model.Parent = Player.Character
	end
	local p = Instance.new("Part")
	p.Name = "Syringe Valve 1"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.15, 0.5, 0.15)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.75, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Syringe Valve 2"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.3, 0.01, 0.3)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -1, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Syringe Tip"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.2, 0.1, 0.2)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.5, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Syringe Needle"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Medium stone grey")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.01, 1, 0.01)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 1, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	return model
end


function removeParts(format)
	if format == "hand" then
		pcall(function() Player.Character[Name]:Remove() end)
	elseif format == "holster" then
		pcall(function() Player.Character[Name.. " (Holstered)"]:Remove() end)
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


function onButton1Down(mouse)
	if selected == false or CanUse == false then return end
	if Player.Character:FindFirstChild(Name) ~= nil then
		local Model = nil
		if mouse.Target ~= nil then
			if mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil and mouse.Target.Parent:FindFirstChild("Torso") ~= nil then
				Model = mouse.Target.Parent
				if (Model.Torso.Position - Player.Character[Name]["Syringe Needle"].Position).magnitude > 3 then return end
			end
		end
		if Model == nil then
			if Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Torso") ~= nil then
				Model = Player.Character
			end
		end
		if Model == nil then return end
		CanUse = false
		local Completed = false
		if Model:FindFirstChild("Right Arm") == nil then
			local Limb = Instance.new("Part")
			Limb.Name = "Right Arm"
			pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].RightArmColor)) end)
			Limb.FormFactor = 0
			Limb.Size = Vector3.new(1, 2, 1)
			Limb.Parent = Model
			Instance.new("Motor6D", Model.Torso).Name = "Right Shoulder"
			DisableLimb(1, Model)
			EnableLimb(1, Model)
			Completed = true
		end
		if Model:FindFirstChild("Left Arm") == nil then
			local Limb = Instance.new("Part")
			Limb.Name = "Left Arm"
			pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].LeftArmColor)) end)
			Limb.FormFactor = 0
			Limb.Size = Vector3.new(1, 2, 1)
			Limb.Parent = Model
			Instance.new("Motor6D", Model.Torso).Name = "Left Shoulder"
			DisableLimb(2, Model)
			EnableLimb(2, Model)
			Completed = true
		end
		if Model:FindFirstChild("Right Leg") == nil then
			local Limb = Instance.new("Part")
			Limb.Name = "Right Leg"
			pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].RightLegColor)) end)
			Limb.TopSurface = 0
			Limb.BottomSurface = 0
			Limb.FormFactor = 0
			Limb.Size = Vector3.new(1, 2, 1)
			Limb.Parent = Model
			Instance.new("Motor6D", Model.Torso).Name = "Right Hip"
			DisableLimb(3, Model)
			EnableLimb(3, Model)
			DisableLimb(3, Model)
			SetSpeed(3, 0.1, Model)
			EnableLimb(3, Model)
			Completed = true
		end
		if Model:FindFirstChild("Left Leg") == nil then
			local Limb = Instance.new("Part")
			Limb.Name = "Left Leg"
			pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].LeftLegColor)) end)
			Limb.TopSurface = 0
			Limb.BottomSurface = 0
			Limb.FormFactor = 0
			Limb.Size = Vector3.new(1, 2, 1)
			Limb.Parent = Model
			Instance.new("Motor6D", Model.Torso).Name = "Left Hip"
			DisableLimb(4, Model)
			EnableLimb(4, Model)
			DisableLimb(4, Model)
			SetSpeed(4, 0.1, Model)
			EnableLimb(4, Model)
			Completed = true
		end
		if Model.Humanoid.Health < 75 then
			Model.Humanoid.Health = Model.Humanoid.Health + math.random(1, 15)
			if math.random(1, 25) == 1 then
				coroutine.wrap(function()
					for i = 1, math.random(50, 100) do
						Model.Humanoid.Health = math.random(1, Model.Humanoid.MaxHealth)
						wait()
					end
					Model.Humanoid.Health = 0
				end)()
			end
			Completed = true
		end
		if Completed == true then
			if Model == Player.Character then
				SetSpeed(1, 0.1, Model)
				for i = 90, 0, -10 do
					SetAngle(1, math.rad(5), Model)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
					wait()
				end
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0)
			end
			coroutine.wrap(function()
				for i = 0, 1, 0.1 do
					Player.Character[Name]["Syringe Valve 1"].Weld.C0 = CFrame.new(0, -0.75 + (0.5 * i), 0)
					Player.Character[Name]["Syringe Valve 2"].Weld.C0 = CFrame.new(0, -1 + (0.5 * i), 0)
					wait()
				end
				wait(0.25)
				for i = 1, 0, -0.05 do
					Player.Character[Name]["Syringe Valve 1"].Weld.C0 = CFrame.new(0, -0.75 + (0.5 * i), 0)
					Player.Character[Name]["Syringe Valve 2"].Weld.C0 = CFrame.new(0, -1 + (0.5 * i), 0)
					wait()
				end
			end)()
			if Model == Player.Character then
				wait(0.75)
				SetSpeed(1, 0.1, Model)
				for i = 0, 90, 15 do
					SetAngle(1, math.rad(90), Model)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0)
					wait()
				end
				ResetLimbCFrame(1, Model)
			end
		end
		CanUse = true
	end
end


function onKeyDown(key, mouse)
	if selected == false then return end
	key = key:lower()
	if key == "q" and CanUse == true then
		if mouse.Target == nil then return end
		if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
			onDeselected(mouse)
			removeParts("holster")
			script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
		end
	end
end


function onSelected(mouse)
	if selected == true then return end
	selected = true
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
	local weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	removeParts("holster")
	makeParts("hand")
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
end


function onDeselected(mouse)
	if selected == false then return end
	Button1Down = false
	while canFire == false do
		wait()
	end
	selected = false
	removeParts("hand")
	makeParts("holster")
	ForceAngle(1, 0, Player.Character)
	EnableLimb(1, Player.Character)
	if Player.PlayerGui:FindFirstChild(Name) ~= nil then Player.PlayerGui[Name]:Remove() end
	if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
		if Player.Character.WeaponActivated.Value == script.Parent then
			Player.Character.WeaponActivated:Remove()
		end
	end
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	Player = script.Parent.Parent.Parent
	makeParts("holster")
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end