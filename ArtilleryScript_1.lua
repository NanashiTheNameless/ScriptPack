
if script == nil then return end


Player = game.Players.LocalPlayer
Name = "Artillery Beacon"
selected = false
Button1Down = false
thrown = false


function makeParts(format)
	local beacon = Instance.new("Model")
	beacon.Name = Name
	beacon.Parent = Player.Character
	local pm = Instance.new("Part")
	pm.Name = "Handle"
	pm.FormFactor = "Custom"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Really black")
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = beacon
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.5, 1.25, 0.2)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	if format == "hand" then
		w.Part1 = Player.Character:FindFirstChild("Right Arm")
		w.C0 = CFrame.new(-1.2, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, math.rad(90))
		w.C1 = CFrame.new()
	elseif format == "holster" then
		w.Part1 = Player.Character:FindFirstChild("Torso")
		w.C0 = CFrame.new(0.7, 0.25, 0.6)
		w.C1 = CFrame.new()
		beacon.Name = Name.. " (Holstered)"
	end
	w.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Explode"
	s.SoundId = "http://www.roblox.com/Asset/?id=2101148"
	s.Volume = 1
	s.Pitch = 1
	s.Looped = false
	s.Parent = pm
	local s = Instance.new("Sound")
	s.Name = "Beep"
	s.SoundId = "http://www.roblox.com/Asset/?id=15666462"
	s.Volume = 1
	s.Pitch = 0.75
	s.Looped = true
	s.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Antenna"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Dark stone grey")
	p.Transparency = 0
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = beacon
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.1, 0.5, 0.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0.1, -0.85, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Light"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Bright green")
	p.Transparency = 1
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = beacon
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Sphere"
	m.Scale = Vector3.new(0.1, 0.1, 0.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(-0.175, -0.64, 0)
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
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
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
	tag.Value = "blown to pieces"
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


function fire(v)
	if Player.Character:FindFirstChild(Name) == nil then makeParts("hand") end
	if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
	if Player.Character[Name].Handle:FindFirstChild("Weld") ~= nil then Player.Character[Name].Handle.Weld:Remove() end
	local bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	bodyVelocity.velocity = v * 75
	bodyVelocity.Parent = Player.Character[Name].Handle
	wait(0.1)
	bodyVelocity:Remove()
end


function onButton1Down(mouse)
	if selected == false then return end
	if Player.Character:FindFirstChild(Name) ~= nil and Button1Down ~= true and thrown ~= true then
		if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
		if Player.Character[Name]:FindFirstChild("Antenna") == nil then return end
		if Player.Character[Name]:FindFirstChild("Light") == nil then return end
		Button1Down = true
		mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
		Player.Character[Name].Light.Transparency = 0.4
		coroutine.resume(coroutine.create(function(target)
			local pos1 = target.Position
			local pos2 = pos1
			while true do
				if target == nil then return end
				if target.Parent == nil then return end
				pos2 = pos1
				pos1 = target.Position
				local trail = Instance.new("Part")
				trail.BrickColor = target.BrickColor
				trail.TopSurface = 0
				trail.BottomSurface = 0
				trail.FormFactor = target.FormFactor
				trail.Size = Vector3.new(1, 1, 1)
				trail.Reflectance = 0
				trail.Transparency = 0.3
				trail.Anchored = true
				trail.CanCollide = false
				trail.CFrame = CFrame.new((pos1 + pos2) / 2, pos2)
				trail.Parent = Workspace
				local mesh = Instance.new("SpecialMesh")
				mesh.MeshType = "Brick"
				mesh.Scale = Vector3.new(0.2, 0.2, (pos2 - pos1).magnitude)
				mesh.Parent = trail
				coroutine.resume(coroutine.create(function(part) for i = 3, 10, 1 do part.Transparency = i / 10 wait(0.1) end part:Remove() end), trail)
				wait()
			end
		end), Player.Character[Name].Light)
		wait(0.5)
		Player.Character[Name].Handle.Beep:Play()
		Player.Character[Name].Light.BrickColor = BrickColor.new("Bright orange")
		coroutine.resume(coroutine.create(function()
			wait(3)
			if Player.Character:FindFirstChild(Name) ~= nil then
				if Player.Character[Name]:FindFirstChild("Light") ~= nil then Player.Character[Name].Light.BrickColor = BrickColor.new("Really red") end
				if Player.Character[Name]:FindFirstChild("Handle") ~= nil then Player.Character[Name].Handle.Beep.Pitch = 1.25 end
				local position = Player.Character[Name].Handle.Position
				local s = Player.Character[Name].Handle.Explode:Clone()
				coroutine.resume(coroutine.create(function()
					local weld1 = Player.Character[Name].Light:FindFirstChild("Weld")
					local weld2 = Player.Character[Name].Antenna:FindFirstChild("Weld")
					if weld1 == nil then return end
					if weld2 == nil then return end
					local weld1c = weld1:Clone()
					local weld2c = weld2:Clone()
					while true do
						if Player.Character ~= nil then
							if Player.Character:FindFirstChild(Name) ~= nil then
								if weld1.Parent == nil then
									if Player.Character[Name]:FindFirstChild("Light") ~= nil then
										weld1c:Clone().Parent = Player.Character[Name].Light
										Player.Character[Name]:MakeJoints()
									end
								end
								if weld2.Parent == nil then
									if Player.Character[Name]:FindFirstChild("Handle") ~= nil then
										weld2c:Clone().Parent = Player.Character[Name].Antenna
										Player.Character[Name]:MakeJoints()
									end
								end
							end
						end
						wait()
					end
				end))
				for i = 0, math.random(30, 50) do
					if Player.Character:FindFirstChild("Humanoid") ~= nil then
						if Player.Character.Humanoid.Health <= 0 then break end
						local shell = Instance.new("Part")
						shell.Name = "Artillery Shell"
						shell.Anchored = true
						shell.BrickColor = BrickColor.new("Medium stone grey")
						shell.FormFactor = "Custom"
						shell.Size = Vector3.new(2, 5, 2)
						shell.TopSurface = 0
						shell.BottomSurface = 0
						shell.Parent = Workspace
						coroutine.resume(coroutine.create(function(part)
							local offset = Vector3.new(math.random(-50, 50), math.random(-10, 10), math.random(-50, 50))
							for i = 1000, 0, -25 do
								part.CFrame = CFrame.new((position + offset) + Vector3.new(0, i, 0))
								wait()
							end
							local e = Instance.new("Explosion")
							e.Position = part.Position
							e.BlastPressure = 500000
							e.BlastRadius = 25
							e.Parent = Workspace
							e.Hit:connect(function(hit) if hit.Parent:FindFirstChild("Humanoid") ~= nil then tagHumanoid(hit.Parent.Humanoid) delay(1, function() untagHumanoid(hit.Parent.Humanoid) end) end end)
							local s2 = s:Clone()
							s2.Pitch = math.random(70, 90) / 100
							s2.Parent = Workspace
							s2:Play()
							part:Remove()
						end), shell)
					end
					wait(math.random(1, 5) / 10)
				end
				if Player.Character:FindFirstChild(Name) ~= nil then if Player.Character[Name]:FindFirstChild("Handle") ~= nil then Player.Character[Name].Handle.Beep:Stop() end end
			end
			wait(1)
			removeParts("hand")
			wait(1)
			if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
				Player.Character.WeaponActivated:Remove()
			end
			thrown = false
			Button1Down = false
			selected = true
			onDeselected(mouse)
			removeParts("holster")
			script.Parent:Remove()
		end))
	end
end


function onButton1Up(mouse)
	if selected == false then return end
	if Button1Down == true and thrown ~= true then
		thrown = true
		mouse.Icon = "rbxasset://textures\\GunCursor.png"
		SetSpeed(1, 0.75, Player.Character)
		SetAngle(1, 0, Player.Character)
		EnableLimb(1, Player.Character)
		fire((mouse.Hit.p - Player.Character[Name].Handle.Position).unit)
	end
	Button1Down = false
end


function onKeyDown(key, mouse)
	if selected == false then return end
	key = key:lower()
	if key == "q" and Button1Down == false and thrown ~= true then
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
	while Player.Character:FindFirstChild("WeaponActivated") ~= nil or thrown == true do
		if Player.Character.WeaponActivated.Value == nil then break end
		if Player.Character.WeaponActivated.Value.Parent == nil then break end
		wait()
	end
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	removeParts("holster")
	makeParts("hand")
	local weapon = Instance.new("ObjectValue")
	weapon.Name = "WeaponActivated"
	weapon.Value = script.Parent
	weapon.Parent = Player.Character
	DisableLimb(1, Player.Character)
	SetAngle(1, math.rad(200), Player.Character)
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
end


function onDeselected(mouse)
	if selected == false then return end
	selected = false
	while Button1Down == true or thrown == true do
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
	EnableLimb(1, Player.Character)
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

--mediafire