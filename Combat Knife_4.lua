--[[
A Combat Knife, with a handle filled with explosives.
--]]


if script == nil then return end


Name = "PaperCut"


Player = game:GetService("Players").LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:Destroy()
end
Name = "PaperCut"
selected = false
Button1Down = false
damage = 3
canUse = true
swordType = "normal"
swordType2 = "normal"


function makeParts(format)
	local model = Instance.new("Model")
	model.Name = Name
	model.Parent = Player.Character
	local pm2 = Instance.new("Part")
	pm2.Material = "SmoothPlastic"
	pm2.Name = "Weld Point"
	pm2.formFactor = "Symmetric"
	pm2.Size = Vector3.new(1, 1, 1)
	pm2.BrickColor = BrickColor.new("Really black")
	pm2.Transparency = 1
	pm2.Locked = true
	pm2.CanCollide = false
	pm2.TopSurface = 0
	pm2.BottomSurface = 0
	pm2.Parent = model
	if format ~= nil then
		local w = Instance.new("Weld")
		w.Part0 = pm2
		if format == "hand" then
			w.Part1 = Player.Character:FindFirstChild("Right Arm")
			w.C0 = CFrame.new(0, 1.1, 0.7)
			w.C1 = CFrame.new()
			w.Parent = pm2
		elseif format == "holster" then
			w.Part1 = Player.Character:FindFirstChild("Torso")
			w.C0 = CFrame.new(0.6, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(90), 0)
			w.C1 = CFrame.new()
			w.Parent = pm2
			model.Name = Name.. " (Holstered)"
		else
			print("Error: Incorrect format string!")
		end
	end
	local pm = Instance.new("Part")
	pm.Material = "SmoothPlastic"
	pm.Name = "Handle"
	pm.formFactor = "Symmetric"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Really black")
	pm.Locked = true
	pm.CanCollide = false
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.3, 0.5, 0.1)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = pm2
	w.C0 = CFrame.new()
	w.C1 = CFrame.new()
	w.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Slash"
	s.SoundId = "rbxasset://sounds/swordslash.wav"
	s.Volume = 1
	s.Pitch = 2
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Throw"
	s.SoundId = "http://www.roblox.com/asset/?id=18426149"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Impact"
	s.SoundId = "http://www.roblox.com/asset/?id=10209596"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Tick"
	s.SoundId = "http://www.roblox.com/asset/?id=15666462"
	s.Volume = 1
	s.Pitch = 0.5
	s.Looped = false
	s.Parent = pm
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Grip"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.25, 0.4, 0.9)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, -0.5)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Blade"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Silver")
	p.Reflectance = 0.2
	p.Locked = true
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("BlockMesh")
	m.Scale = Vector3.new(0.01, 0.3, 0.85)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 0.4)
	w.C1 = CFrame.new()
	w.Parent = p
	p.Touched:connect(function(hit) onTouched(hit, p, "sword") end)
	local p = Instance.new("Part")
	p.Material = "SmoothPlastic"
	p.Name = "Blade Tip"
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Silver")
	p.Reflectance = 0.2
	p.CanCollide = false
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = model
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Wedge"
	m.Scale = Vector3.new(0.01, 0.3, 0.35)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(180))
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
				hit.Parent.Humanoid:TakeDamage(2)
			elseif swordType == "slash" then
				hit.Parent.Humanoid:TakeDamage(damage)
			elseif swordType == "stab" then
				--Weld(hit, source)
				local OldHealth = hit.Parent.Humanoid.Health
				wait(0.5)
				hit.Parent.Humanoid.Health = 0
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
		SetSpeed(1, 0.75, Player.Character)
		SetAngle(1, math.rad(190), Player.Character)
		pcall(function() Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.random(70, 110)), 0) end)
		pcall(function() Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0) end)
	end
	if format == "slashEnd1" then
		SetSpeed(1, 0.9, Player.Character)
		SetAngle(1, math.rad(0), Player.Character)
		Player.Character[Name].Handle.Slash:Play()
		wait(0.2)
		ResetLimbCFrame(1, Player.Character)
		SetSpeed(1, 0.5, Player.Character)
		SetAngle(1, math.rad(90), Player.Character)
	end
	if format == "slashEnd2" then
		SetSpeed(1, 0.9, Player.Character)
		SetAngle(1, math.rad(25), Player.Character)
		Player.Character[Name].Handle.Slash:Play()
		wait(0.3)
		ResetLimbCFrame(1, Player.Character)
		SetSpeed(1, 0.1, Player.Character)
		SetAngle(1, math.rad(90), Player.Character)
	end
	if format == "equip1" then
		for i = 1, 0, -0.1 do
			Player.Character[Name].Handle.Weld.C0 = CFrame.new(0, 0, i * 1.25) * CFrame.fromEulerAnglesXYZ(math.rad(i * (180 + 360)), 0, 0)
			wait()
		end
	end
	if format == "equip2" then
		for i = 0, 1, 0.1 do
			Player.Character[Name].Handle.Weld.C0 = CFrame.new(0, 0, i * 1.25) * CFrame.fromEulerAnglesXYZ(math.rad(i * (180 + 360)), 0, 0)
			wait()
		end
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
	tag.Value = "stabbed"
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
	if Player.Character:FindFirstChild(Name) ~= nil and Button1Down == false and canUse == true then
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
		playAnimation("slashStart")
		Button1Down = true
	end
end


function onButton1Up(mouse)
	if selected == false or Button1Down == false then return end
	Button1Down = false
	if canUse == false then return end
	canUse = false
	coroutine.resume(coroutine.create(function()
		for i = 1, 2 do
			if Player.Character:FindFirstChild(Name) == nil then break end
			if Player.Character[Name]:FindFirstChild("Blade") ~= nil then
				local part = Player.Character[Name].Blade:Clone()
				part.Anchored = true
				part.CanCollide = false
				part.Parent = game:GetService("Workspace")
				coroutine.resume(coroutine.create(function(part2) for i = 0, 1, 0.1 do part2.Transparency = i wait() end part2:Remove() end), part)
			end
			if Player.Character[Name]:FindFirstChild("Blade Tip") ~= nil then
				local part = Player.Character[Name]["Blade Tip"]:Clone()
				part.Anchored = true
				part.CanCollide = false
				part.Parent = game:GetService("Workspace")
				coroutine.resume(coroutine.create(function(part2) for i = 0, 1, 0.1 do part2.Transparency = i wait() end part2:Remove() end), part)
			end
			wait()
		end
	end))
	if swordType2 == "normal" then
		swordType = "slash"
		playAnimation("slashEnd1")
		wait(0.1)
	elseif swordType2 == "stab" then
		swordType = "stab"
		playAnimation("slashEnd2")
		wait(1)
	end
	canUse = true
	swordType = "normal"
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
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
		if swordType2 == "normal" then
			swordType2 = "stab"
			canUse = false
			playAnimation("equip2")
			canUse = true
		elseif swordType2 == "stab" then
			swordType2 = "normal"
			canUse = false
			playAnimation("equip1")
			canUse = true
		end
	end
	if key == "z" and Button1Down == false and canUse == true then
		if mouse.Target == nil then return end
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
		wait(0.2)
		local Velocity = Instance.new("BodyVelocity")
		Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		Velocity.velocity = (mouse.Hit.p - Player.Character[Name].Handle.CFrame.p).unit * 100
		Velocity.Parent = Player.Character[Name].Handle
		local Ang = Instance.new("BodyAngularVelocity")
		Ang.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		Ang.angularvelocity = Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25))
		Ang.Parent = Player.Character[Name].Handle
		Player.Character[Name].Handle.Slash:Stop()
		Player.Character[Name].Handle.Throw.PlayOnRemove = true
		Player.Character[Name].Handle.Throw:Remove()
		local model = Player.Character[Name]
		model.Parent = game:GetService("Workspace")
		model:MakeJoints()
		canUse = true
		onDeselected(mouse)
		removeParts("holster")
		local temporary = script.Parent
		script.Parent = model
		temporary:Remove()
		wait(0.1)
		local Touched = false
		local Touched2 = false
		if script.Parent:FindFirstChild("Blade Tip") == nil then return end
		if script.Parent:FindFirstChild("Handle") == nil then return end
		script.Parent["Blade Tip"].Touched:connect(function(hit)
			if hit.Parent == model then return end
			if hit.Parent.className == "Hat" then hit:BreakJoints() if hit.Parent.Parent.className == "Model" then hit.Parent.Parent = game:GetService("Workspace") hit.CanCollide = true end end
			if Touched == true then return end
			Touched = true
			script.Parent.Handle.BodyVelocity:Remove()
			script.Parent.Handle.BodyAngularVelocity:Remove()
			script.Parent.Handle.Impact:Play()
			script.Parent.Handle.Slash:Stop()
			if hit.Parent:FindFirstChild("Humanoid") ~= nil then
				if hit.Name == "Head" then
					hit.Parent.Humanoid:TakeDamage(1000)
				else
					hit.Parent.Humanoid:TakeDamage(1000)
					local e = Instance.new("Explosion")
					e.BlastPressure = 1000000
					e.BlastRadius = 5
					e.Position = script.Parent["Blade Tip"].Position
					e.Parent = game:GetService("Workspace")
				end
			end
			Weld(script.Parent.Handle, hit)
			script.Parent["Grip"].BrickColor = BrickColor.new("Bright red")
			script.Parent.Handle.Tick:Play()
			wait(0.6)
			script.Parent["Grip"].BrickColor = BrickColor.new("Black")
			wait(1)
			script.Parent["Grip"].BrickColor = BrickColor.new("Bright red")
			script.Parent.Handle.Tick:Play()
			wait(0.5)
			script.Parent["Grip"].BrickColor = BrickColor.new("Black")
			wait(0.8)
			script.Parent["Grip"].BrickColor = BrickColor.new("Bright red")
			script.Parent.Handle.Tick:Play()
			wait(0.3)
			script.Parent["Grip"].BrickColor = BrickColor.new("Black")
			wait(0.4)
			script.Parent["Grip"].BrickColor = BrickColor.new("Bright red")
			script.Parent.Handle.Tick:Play()
			wait(0.2)
			script.Parent["Grip"].BrickColor = BrickColor.new("Black")
			wait(0.2)
			script.Parent["Grip"].BrickColor = BrickColor.new("Bright red")
			script.Parent.Handle.Tick:Play()
			wait(0.1)
			script.Parent["Grip"].BrickColor = BrickColor.new("Black")
			wait(0.2)
			script.Parent["Grip"].BrickColor = BrickColor.new("Bright red")
			script.Parent.Handle.Tick:Play()
			wait(0.1)
			script.Parent["Grip"].BrickColor = BrickColor.new("Black")
			wait(0.2)
			script.Parent["Grip"].BrickColor = BrickColor.new("Bright red")
			script.Parent.Handle.Tick:Play()
			wait(0.1)
			local e = Instance.new("Explosion")
			e.BlastPressure = 1000000
			e.BlastRadius = 17
			e.Position = script.Parent["Blade Tip"].Position
			e.Parent = game:GetService("Workspace")
			wait(3)
			script.Parent:remove()
			Touched2 = true
		end)
		script.Parent.Handle.Touched:connect(function(hit)
			if Touched == true and Touched2 == true then
				if game:GetService("Players"):GetPlayerFromCharacter(hit.Parent) ~= nil then
					local temporary = script.Parent
					Tool = Instance.new("HopperBin")
					Tool.Name = Name
					Tool.Parent = game:GetService("Players"):GetPlayerFromCharacter(hit.Parent).Backpack
					script.Parent = Tool
					temporary:Remove()
					Player = script.Parent.Parent.Parent
				end
			end
		end)
		while Touched == false do
			script.Parent.Handle.Slash:Play()
			wait(0.05)
		end
	end
	if key == "x" and Button1Down == false and canUse == true then
		if mouse.Target == nil then return end
		if Player.Character:FindFirstChild(Name) == nil then makeParts("hand") end
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		canUse = false
		playAnimation("equip2")
		if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
			Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
		end
		ForceAngle(1, 0, Player.Character)
		SetAngle(1, math.rad(-50), Player.Character)
		SetSpeed(1, 0.3, Player.Character)
		wait(0.2)
		for i = 90, 200, 20 do
			if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(i), math.rad(5), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
			end
			wait()
		end
		wait(0.3)
		for i = 200, 50, -50 do
			if Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(i), math.rad(5), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
			end
			wait()
		end
		wait(0.1)
		for i = 1, 0, -0.01 do
			Player.Character.Humanoid.Health = Player.Character.Humanoid.MaxHealth * i
			Player.Character.Humanoid.WalkSpeed = i * 16
			wait()
		end
		canUse = true
		onDeselected(mouse)
		removeParts("holster")
		Player.Character.Humanoid.Health = 0
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
	if swordType2 == "normal" then playAnimation("equip1") elseif swordType2 == "stab" then playAnimation("equip2") end
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
end


function onDeselected(mouse)
	if selected == false then return end
	Button1Down = false
	onButton1Up(nil)
	selected = false
	while canUse == false do
		wait()
	end
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