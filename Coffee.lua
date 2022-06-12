--[[
Script Version 1

Coffee coffee coffee.

Script by DarkShadow6
--]]


if script == nil then return end


Player = game.Players:FindFirstChild("DarkShadow6")
Name = "Coffee"
selected = false
Button1Down = false
canUse = true


function makeParts(format)
	local bottle = Instance.new("Model")
	bottle.Name = Name
	bottle.Parent = Player.Character
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.FormFactor = "Custom"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Industral white")
	pm.Reflectance = 0.1
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = bottle
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(1, 1.1, 1)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	if format == "hand" then
		w.Part1 = Player.Character:FindFirstChild("Right Arm")
		w.C0 = CFrame.new(0, 0, 1.2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		w.C1 = CFrame.new()
	elseif format == "holster" then
		w.Part1 = Player.Character:FindFirstChild("Left Leg")
		w.C0 = CFrame.new(0, -0.4, -0.5)
		w.C1 = CFrame.new()
		bottle.Name = Name.. " (Holstered)"
	end
	w.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Drink"
	s.SoundId = "http://www.roblox.com/Asset/?id=10722059"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Throw"
	s.SoundId = "http://www.roblox.com/Asset/?id=18426149"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Coffee"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Reddish brown")
	p.Reflectance = 0.3
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = bottle
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.875, 1.09, 0.875)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.01, 0)
	w.C1 = CFrame.new()
	w.Parent = p
end


function removeParts(format)
	if format == "hand" then
		if Player.Character:FindFirstChild(Name) ~= nil then
			Player.Character[Name]:Remove()
		end
	elseif format == "holster" then
		if Player.Character:FindFirstChild(Name.. " (Holstered)") ~= nil then
			Player.Character[Name.. " (Holstered)"]:Remove()
		end
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
	for i = 1, #Joints do
		if Joints[i] == nil then
			local Joint = Instance.new("Motor")
			if i == 1 then
				Joint.Name = "Right Shoulder"
			elseif i == 2 then
				Joint.Name = "Left Shoulder"
			elseif i == 3 then
				Joint.Name = "Right Hip"
			elseif i == 4 then
				Joint.Name = "Left Hip"
			end
			Joint.Parent = Character.Torso
		end
	end
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end


function playAnimation(format, mouse)
	if format == "normal" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			for i = 10, 0, -1 do
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 - i), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-3), math.rad(90), 0)
				else return false end
				wait()
			end
		else return false end
	end
	if format == "drinkStart" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			for i = 0, 10, 1 do
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - i / 50, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 + i * 3.5), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-3), math.rad(90), 0)
				end
				wait()
			end
		end
	end
	if format == "drinkLoopStart" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			for i = 0, 10, 1 do
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(i * 2), math.rad(135), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-3), math.rad(90), 0)
				end
				wait()
			end
		end
	end
	if format == "drinkLoopStop" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			for i = 10, 0, -1 do
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(i * 2), math.rad(135), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-3), math.rad(90), 0)
				end
				wait()
			end
		end
	end
	if format == "drinkStop" then
		if Player.Character:FindFirstChild("Torso") ~= nil then
			for i = 10, 0, -1 do
				if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - i / 50, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(100 + i * 3.5), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-3), math.rad(90), 0)
				end
				wait()
			end
		end
	end
end


function Weld(x, y)
	weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	CJ = CFrame.new(x.Position)
	C0 = x.CFrame:inverse() * CJ
	C1 = y.CFrame:inverse() * CJ
	weld.C0 = C0
	weld.C1 = C1
	weld.Parent = x
end


loadstring(game:GetService("InsertService"):LoadAsset(65363615)["tagHumanoid"].Value)()


function onButton1Down(mouse)
	if selected == false then return end
	if Player.Character:FindFirstChild(Name) ~= nil and Button1Down ~= true and canUse == true then
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		Button1Down = true
		canUse = false
		mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
		if contents.Value > 0 then
			playAnimation("drinkStart", mouse)
			while contents.Value > 0 and Button1Down == true do
				local delta = math.random(3, 10)
				contents.Value = contents.Value - delta
				if contents.Value < 0 then contents.Value = 0 end
				script.Parent.Name = tostring(contents.Value).. "%"
				if Player.Character == nil then break end
				if Player.Character:FindFirstChild(Name) == nil then break end
				if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
				if Player.Character:FindFirstChild("Humanoid") == nil then break end
				Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + (delta / 2)
				Player.Character[Name].Handle.Drink.Volume = math.random(50, 80) / 100
				Player.Character[Name].Handle.Drink.Pitch = math.random(90, 110) / 100
				Player.Character[Name].Handle.Drink:Play()
				coroutine.resume(coroutine.create(function() playAnimation("drinkLoopStart", mouse) end))
				wait(math.random(9, 11) / 10)
				coroutine.resume(coroutine.create(function() playAnimation("drinkLoopStop", mouse) end))
				Player.Character[Name].Handle.Drink:Stop()
				wait(0.3)
			end
			playAnimation("drinkStop", mouse)
			script.Parent.Name = Name
			canUse = true
			mouse.Icon = "rbxasset://textures\\GunCursor.png"
		else
			canUse = true
			mouse.Icon = "rbxasset://textures\\GunCursor.png"
		end
	end
end


function onButton1Up(mouse)
	if selected == false then return end
	Button1Down = false
end


function onKeyDown(key, mouse)
	if selected == false then return end
	key = key:lower()
	if key == "q" and Button1Down == false and canUse == true then
		if mouse.Target == nil then return end
		if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
			onDeselected(mouse)
			removeParts("holster")
			script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
		end
	end
	if key == "z" and Button1Down == false and canUse == true then
		if Player.Character:FindFirstChild(Name) == nil then makeParts("hand") end
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		canUse = false
		SetAngle(1, math.rad(200), Player.Character)
		SetSpeed(1, 0.5, Player.Character)
		wait(0.3)
		SetAngle(1, math.rad(0), Player.Character)
		SetSpeed(1, 0.75, Player.Character)
		wait(0.05)
		if Player.Character[Name].Handle:FindFirstChild("Weld") ~= nil then Player.Character[Name].Handle.Weld:Remove() end
		bodyVelocity = Instance.new("BodyVelocity")
		bodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		bodyVelocity.velocity = (mouse.Hit.p - Player.Character[Name].Handle.Position).unit * 100
		bodyVelocity.Parent = Player.Character[Name].Handle
		Player.Character[Name].Handle.Drink:Stop()
		Player.Character[Name].Handle.Throw.PlayOnRemove = true
		Player.Character[Name].Handle.Throw:Remove()
		wait(0.25)
		bodyVelocity:Remove()
		local model = Player.Character[Name]
		model.Parent = Workspace
		model:MakeJoints()
		onDeselected(mouse)
		removeParts("holster")
		script.Parent:Remove()
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
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	removeParts("holster")
	makeParts("hand")
	weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	if playAnimation("normal") == false then onDeselected(mouse) end
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
end


function onDeselected(mouse)
	if selected == false then return end
	selected = false
	while Button1Down == true do
		wait()
	end
	if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
		if Player.Character.WeaponActivated.Value == script.Parent then
			Player.Character.WeaponActivated:Remove()
		end
	end
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
		if Player.Character.WeaponActivated.Value == nil then break end
		if pcall(function() if Player.Character.WeaponActivated.Value.Parent == nil then return true end end) then break end
		wait()
	end
	removeParts("hand")
	makeParts("holster")
	SetAngle(1, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
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
	if script.Parent:FindFirstChild("Contents") == nil then
		contents = Instance.new("NumberValue")
		contents.Name = "Contents"
		contents.Value = 100
		contents.Parent = script.Parent
	else
		contents = script.Parent.Contents
	end
	Player = script.Parent.Parent.Parent
	makeParts("holster")
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end