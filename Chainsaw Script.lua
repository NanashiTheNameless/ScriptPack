--[[
Script Version 1.0
Changelog Revision 1

A chaninsaw.
Script by DarkShadow6

Changelog:
 o 1.0
    o Final tweaks to the script / model.
    o Kept the basic animations... For now.
 o 0.9
    o Added a model... Eww.
 o 0.2 - 0.8
    o Changes to script
 o 0.1
    o Copied the Combat Knife.
    o Basic sounds.
    o Basic animations.
--]]


if script == nil then return end


Player = game.Players.LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:remove()
end
Name = "Chainsaw"
selected = false
Button1Down = false
damage = 10
canUse = true
activated = false
swordType = "normal"


animation = {}
animation["slashing"] = nil


function makeParts(format)
	local model = Instance.new("Model")
	model.Name = Name
	model.Parent = Player.Character
	local pm2 = Instance.new("Part")
	pm2.Name = "Weld Point"
	pm2.FormFactor = "Custom"
	pm2.Size = Vector3.new(1, 1, 1)
	pm2.BrickColor = BrickColor.new("Really black")
	pm2.Transparency = 1
	pm2.Locked = true
	pm2.TopSurface = 0
	pm2.BottomSurface = 0
	pm2.Parent = model
	if format ~= nil then
		local w = Instance.new("Weld")
		w.Part0 = pm2
		if format == "hand" then
			w.Part1 = Player.Character:FindFirstChild("Right Arm")
			w.C0 = CFrame.new(0, 1.1, 0.3)
			w.C1 = CFrame.new()
			w.Parent = pm2
		elseif format == "holster" then
			w.Part1 = Player.Character:FindFirstChild("Torso")
			w.C0 = CFrame.new(-0.9, -0.5, -0.8) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0)
			w.C1 = CFrame.new()
			w.Parent = pm2
			model.Name = Name.. " (Holstered)"
		else
			print("Error: Incorrect format string!")
		end
	end
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.FormFactor = "Custom"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Bright orange")
	pm.Reflectance = 0.025
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.6, 0.9, 1)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = pm2
	w.C0 = CFrame.new()
	w.C1 = CFrame.new()
	w.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Start"
	s.SoundId = "http://www.roblox.com/Asset/?id=2766589"
	s.Volume = 1
	s.Pitch = 2
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Saw"
	s.SoundId = "http://www.roblox.com/Asset/?id=2766576"
	s.Volume = 1
	s.Pitch = 0.25
	s.Looped = true
	s.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Back"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Bright orange")
	p.Reflectance = 0.025
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.6, 0.8, 0.9)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.9, 0) * CFrame.fromEulerAnglesXYZ(math.rad(270), 0, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Blade"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 3)
	p.CanCollide = false
	p.BrickColor = BrickColor.new("Institutional white")
	p.Reflectance = 0.2
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.03, 0.7, 0.9)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.075, 1.85)
	w.C1 = CFrame.new()
	w.Parent = p
	p.Touched:connect(function(hit) onTouched(hit, p, "sword") end)
	local p = Instance.new("Part")
	p.Name = "Blade Tip"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.CanCollide = false
	p.BrickColor = BrickColor.new("Institutional white")
	p.Reflectance = 0.2
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.7, 0.03, 0.7)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.075, 0, 3.2) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(90))
	w.C1 = CFrame.new()
	w.Parent = p
	p.Touched:connect(function(hit) onTouched(hit, p, "sword") end)
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


function onTouched(hit, source, format)
	if format == "sword" then
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= Player.Character then
			tagHumanoid(hit.Parent.Humanoid)
			if swordType == "normal" then
				hit.Parent.Humanoid:TakeDamage(1)
			elseif swordType == "slash" then
				hit.Parent.Humanoid:TakeDamage(damage)
			end
			delay(3, function() untagHumanoid(hit.Parent.Humanoid) end)
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
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end


function playAnimation(format, mouse)
	if format == "normal" then
		SetSpeed(1, 0.2, Player.Character)
		SetAngle(1, math.rad(90), Player.Character)
	end
	if format == "slashStart" then
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, math.rad(10), Player.Character)
		wait(0.05)
		animation["slashing"] = true
		while animation["slashing"] == true do
			SetSpeed(1, 0.075, Player.Character)
			SetAngle(1, math.rad(math.random(10, 45)), Player.Character)
			Player.Character[Name].Handle.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-30, 30)), 0, 0)
			wait(math.random(5, 10) / 100)
		end
	end
	if format == "slashEnd" then
		animation["slashing"] = false
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, math.rad(90), Player.Character)
		Player.Character[Name].Handle.Weld.C0 = CFrame.new()
	end
end


function Weld(x, y)
	local weld = Instance.new("Weld")
	weld.Part0 = x
	weld.Part1 = y
	CJ = CFrame.new(x.Position)
	C0 = x.CFrame:inverse() * CJ
	C1 = y.CFrame:inverse() * CJ
	weld.C0 = C0
	weld.C1 = C1
	weld.Parent = x
end


function tagHumanoid(humanoid)
	local tag = Instance.new("ObjectValue")
	tag.Name = "creator"
	tag.Value = Player
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType1"
	tag.Value = Name
	tag.Parent = humanoid
	local tag = Instance.new("StringValue")
	tag.Name = "creatorType2"
	tag.Value = "cut into pieces"
	tag.Parent = humanoid
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:FindFirstChild("creator")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType1")
		if tag ~= nil then
			tag:Remove()
		end
		local tag = humanoid:FindFirstChild("creatorType2")
		if tag ~= nil then
			tag:Remove()
		end
	end
end


function onButton1Down(mouse)
	if selected == false then return end
	if Player.Character:FindFirstChild(Name) ~= nil and Button1Down == false and canUse == true and activated == true then
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
		Button1Down = true
		canUse = false
		coroutine.resume(coroutine.create(function() playAnimation("slashStart") end))
		for i = 0.25, 1, 0.1 do
			Player.Character[Name].Handle.Saw.Pitch = i
			wait()
		end
		swordType = "slash"
		canUse = true
	end
end


function onButton1Up(mouse)
	if selected == false or Button1Down == false then return end
	Button1Down = false
	while canUse == false do wait() end
	canUse = false
	coroutine.resume(coroutine.create(function() playAnimation("slashEnd") end))
	for i = 1, 0.25, -0.05 do
		Player.Character[Name].Handle.Saw.Pitch = i
		wait()
	end
	Player.Character[Name].Handle.Saw.Pitch = 0.25
	swordType = "normal"
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	canUse = true
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
	if key == "e" and Button1Down == false and canUse == true then
		if activated == true then
			canUse = false
			for i = 1, 0, -0.05 do
				Player.Character[Name].Handle.Saw.Volume = i
				Player.Character[Name].Handle.Saw.Pitch = Player.Character[Name].Handle.Saw.Pitch / 1.05
				wait()
			end
			Player.Character[Name].Handle.Saw:Stop()
			Player.Character[Name].Handle.Start.Pitch = 1
			Player.Character[Name].Handle.Start.Volume = 1
			Player.Character[Name].Handle.Start:Play()
			activated = false
			wait(0.3)
			canUse = true
		elseif activated == false then
			canUse = false
			Player.Character[Name].Handle.Start.Volume = 1
			Player.Character[Name].Handle.Start.Pitch = 1
			Player.Character[Name].Handle.Start:Play()
			wait(0.2)
			activated = true
			Player.Character[Name].Handle.Saw:Play()
			for i = 0, 1, 0.05 do
				Player.Character[Name].Handle.Saw.Volume = i
				Player.Character[Name].Handle.Saw.Pitch = i / 4
				wait()
			end
			Player.Character[Name].Handle.Saw.Volume = 1
			Player.Character[Name].Handle.Saw.Pitch = 0.25
			canUse = true
		end
	end
	if key == "r" and Button1Down == false and canUse == true and activated == true then
		canUse = false
		Player.Character[Name].Handle.Start.Pitch = math.random(9, 15) / 10
		Player.Character[Name].Handle.Start.Volume = 1
		Player.Character[Name].Handle.Start:Play()
		for i = 0, 1.5, 0.1 do
			Player.Character[Name].Handle.Saw.Pitch = (math.sin(i) / 1.25) + 0.25
			wait()
		end
		for i = 1.5, 3.1, 0.05 do
			Player.Character[Name].Handle.Saw.Pitch = (math.sin(i) / 1.25) + 0.25
			wait()
		end
		Player.Character[Name].Handle.Saw.Pitch = 0.25
		canUse = true
	end
	if key == "t" and Button1Down == false and canUse == true and activated == true then
		canUse = false
		Player.Character[Name].Handle.Start.Pitch = math.random(9, 15) / 10
		Player.Character[Name].Handle.Start.Volume = 1
		Player.Character[Name].Handle.Start:Play()
		wait(0.2)
		canUse = true
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
	local weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	removeParts("holster")
	makeParts("hand")
	playAnimation("normal")
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
	if connection ~= nil then connection:disconnect() end
	connection = Player.Character.Humanoid.Died:connect(function() canUse = true onDeselected(mouse) end)
end


function onDeselected(mouse)
	if selected == false then return end
	if Button1Down == true then
		coroutine.resume(coroutine.create(function() playAnimation("slashEnd") end))
		for i = 1, 0.25, -0.05 do
			Player.Character[Name].Handle.Saw.Pitch = i
			wait()
		end
		Player.Character[Name].Handle.Saw.Pitch = 0.25
		Button1Down = false
	end
	if activated == true then onKeyDown("e", mouse) end
	selected = false
	while canUse == false do
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
	swordType = "normal"
	EnableLimb(1, Player.Character)
	removeParts("hand")
	makeParts("holster")
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	Player = script.Parent.Parent.Parent
	makeParts("holster")
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end
