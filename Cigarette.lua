if script == nil then return end


Player = game.Players:FindFirstChild("DarkShadow6")
Button1Down = false
smoking = false
cigOut = false
lighterOut = false
lighterLit = false



function makeParts1()
	local cig = Instance.new("Model")
	cig.Name = "Cig"
	cig.Parent = Player.Character
	local pm = Instance.new("Part")
	pm.Name = "Filter"
	pm.FormFactor = "Custom"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Bright orange")
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = cig
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.1, 0.5, 0.1)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = Player.Character:FindFirstChild("Head")
	w.C0 = (CFrame.new(0, 0.75, 0.025) * CFrame.fromEulerAnglesXYZ(math.rad(80), math.rad(160), 0))
	w.C1 = CFrame.new()
	w.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Tobacco"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Institutional white")
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = cig
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.1, 0.7, 0.1)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.6, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Burn"
	p.FormFactor = "Custom"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Really black")
	p.Transparency = 1
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = cig
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(0.11, 0.05, 0.11)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0.93, 0)
	w.C1 = CFrame.new()
	w.Parent = p
	local s = Instance.new("Smoke")
	s.Parent = p
	s.RiseVelocity = 0
	s.Size = 0
	s.Color = Color3.new(0.5, 0.5, 0.5)
	s.Enabled = false
end


function makeParts2()
	local lighter = Instance.new("Model")
	lighter.Name = "Lighter"
	lighter.Parent = Player.Character
	local pm = Instance.new("Part")
	pm.Name = "Lighter"
	pm.Size = Vector3.new(1, 1, 1)
	pm.BrickColor = BrickColor.new("Dark stone grey")
	pm.Reflectance = 0.1
	pm.Locked = true
	pm.TopSurface = 0
	pm.BottomSurface = 0
	pm.Parent = lighter
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.5, 0.75, 1)
	m.Parent = pm
	local w = Instance.new("Weld")
	w.Part0 = pm
	w.Part1 = Player.Character:FindFirstChild("Left Arm")
	w.C0 = CFrame.new(-0.4, 1, 0.5)
	w.C1 = CFrame.new()
	w.Parent = pm
	local p = Instance.new("Part")
	p.Name = "Cap 1"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Dark stone grey")
	p.Reflectance = 0.1
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = lighter
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.5, 0.75, 0.5)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 0.75)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Wick"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Dark stone grey")
	p.Reflectance = 0.1
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = lighter
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.25, 0.5, 0.25)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 0.55)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Flame"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Bright red")
	p.Transparency = 1
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = lighter
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Sphere"
	m.Scale = Vector3.new(0.4, 0.4, 0.75)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, 0, 1)
	w.C1 = CFrame.new()
	w.Parent = p
	local p = Instance.new("Part")
	p.Name = "Cap 2"
	p.Size = Vector3.new(1, 1, 1)
	p.BrickColor = BrickColor.new("Dark stone grey")
	p.Reflectance = 0.1
	p.Transparency = 1
	p.Locked = true
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = lighter
	local m = Instance.new("SpecialMesh")
	m.MeshType = "Brick"
	m.Scale = Vector3.new(0.5, 0.75, 0.5)
	m.Parent = p
	local w = Instance.new("Weld")
	w.Part0 = p
	w.Part1 = pm
	w.C0 = CFrame.new(0, -0.9, 0.75)
	w.C1 = CFrame.new()
	w.Parent = p
end


function removeParts1()
	if Player.Character:FindFirstChild("Cig") ~= nil then
		Player.Character.Cig:Remove()
	end
end


function removeParts2()
	if Player.Character:FindFirstChild("Lighter") ~= nil then
		Player.Character.Lighter:Remove()
	end
end


function onDied()
	wait(4.9)
	if script.Parent.Parent == nil then return end
	script.Parent.Parent = nil
	wait(0.1)
	script.Parent = Player.Backpack
	Player.Character.Humanoid.Died:connect(onDied)
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
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
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
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
	Button1Down = true
	if lighterOut == true then
		DisableLimb(2, Player.Character)
		SetSpeed(2, 0.25, Player.Character)
		if cigOut == true then
			SetAngle(2, math.rad(60), Player.Character)
			if Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-100), 0)
			end
			Player.Character.Lighter.Lighter.Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(-10), 0)
		else
			SetAngle(2, 3.14 / 3, Player.Character)
		end
		wait(0.05)
		if Player.Character.Lighter:FindFirstChild("Cap 1") ~= nil and Player.Character.Lighter:FindFirstChild("Cap 2") ~= nil and Player.Character.Lighter:FindFirstChild("Flame") ~= nil then
			Player.Character.Lighter["Cap 1"].Transparency = 1
			Player.Character.Lighter["Cap 2"].Transparency = 0
			Player.Character.Lighter.Flame.Transparency = 1
		end
		wait(0.3)
		while Button1Down == true do
			if Player.Character.Lighter:FindFirstChild("Flame") ~= nil then
				Player.Character.Lighter.Flame.Transparency = math.random(0, 5) / 10
				random1 = math.random(1, 3)
				random2 = math.random(1, 25)
				if random1 == 1 then
					Player.Character.Lighter.Flame.BrickColor = BrickColor.new("Bright red")
				elseif random1 == 2 then
					Player.Character.Lighter.Flame.BrickColor = BrickColor.new("Bright orange")
				elseif random1 == 3 then
					Player.Character.Lighter.Flame.BrickColor = BrickColor.new("Bright yellow")
				end
				if random2 == 1 and cigOut == true then
					smoking = true
					if Player.Character.Cig:FindFirstChild("Burn") ~= nil then
						Player.Character.Cig.Burn.Transparency = 0
						Player.Character.Cig.Burn.Smoke.Enabled = true
					end
				end
			end
			wait(0.1)
		end
	end
end


function onButton1Up(mouse)
	Button1Down = false
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	if Player.Character.Lighter:FindFirstChild("Cap 1") ~= nil and Player.Character.Lighter:FindFirstChild("Cap 2") ~= nil and Player.Character.Lighter:FindFirstChild("Flame") ~= nil then
		Player.Character.Lighter["Cap 1"].Transparency = 0
		Player.Character.Lighter["Cap 2"].Transparency = 1
		Player.Character.Lighter.Flame.Transparency = 1
	end
	SetAngle(2, 0, Player.Character)
	wait(0.15)
	if Button1Down == false then
		ResetLimbCFrame(2, Player.Character)
		Player.Character.Lighter.Lighter.Weld.C1 = CFrame.new()
		EnableLimb(2, Player.Character)
	end
end


function onKeyDown(key, mouse)
	key = key:lower()
	if key == "q" and Button1Down == false then
		if Player.Character ~= nil then
			if cigOut == false then
				if Player.Character:FindFirstChild("Cig") == nil then
					makeParts1()
					cigOut = true
					local s = Instance.new("Sound")
					s.SoundId = "http://www.roblox.com/Asset/?id=12517136"
					s.Pitch = 1.1
					s.PlayOnRemove = true
					s.Parent = Player.Character.Torso
					s:Remove()
				end
			elseif cigOut == true then
				removeParts1()
				cigOut = false
				local s = Instance.new("Sound")
				s.SoundId = "http://www.roblox.com/Asset/?id=12517136"
				s.Pitch = 0.9
				s.PlayOnRemove = true
				s.Parent = Player.Character.Torso
				s:Remove()
				smoking = false
			end
		end
	end
	if key == "e" and Button1Down == false then
		if Player.Character ~= nil then
			if lighterOut == false then
				if Player.Character:FindFirstChild("Lighter") == nil then
					makeParts2()
					lighterOut = true
					local s = Instance.new("Sound")
					s.SoundId = "http://www.roblox.com/Asset/?id=12517136"
					s.Pitch = 1.1
					s.PlayOnRemove = true
					s.Parent = Player.Character.Torso
					s:Remove()
				end
			elseif lighterOut == true then
				removeParts2()
				lighterOut = false
				local s = Instance.new("Sound")
				s.SoundId = "http://www.roblox.com/Asset/?id=12517136"
				s.Pitch = 0.9
				s.PlayOnRemove = true
				s.Parent = Player.Character.Torso
				s:Remove()
				EnableLimb(2, Player.Character)
			end
		end
	end
	if key == "z" then
		onButton1Up(mouse)
		onDeselected(mouse)
		removeParts1()
		removeParts2()
		mouse.Icon = ""
		script.Parent:Remove()
	end
end


function onSelected(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() onButton1Up(mouse) end)
	mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
end


function onDeselected(mouse)
	--To do
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = "Cig/Lighter"
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
	Player.Character.Humanoid.Died:connect(onDied)
elseif script.Parent.ClassName == "HopperBin" then
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end


while true do
	if smoking then
		if Player.Character ~= nil then
			if Player.Character.Humanoid ~= nil then
				Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + math.random(-3, 3)
			end
			if cigOut == true then
				if Player.Character.Cig:FindFirstChild("Burn") ~= nil then
					Player.Character.Cig.Burn.Transparency = math.random(0, 3) / 10
					random1 = math.random(1, 5)
					random2 = math.random(1, 3)
					if random1 == 1 then
						if random2 == 1 then
							Player.Character.Cig.Burn.BrickColor = BrickColor.new("Bright red")
						elseif random2 == 2 then
							Player.Character.Cig.Burn.BrickColor = BrickColor.new("Bright orange")
						elseif random2 == 3 then
							Player.Character.Cig.Burn.BrickColor = BrickColor.new("Bright yellow")
						end
					else
						Player.Character.Cig.Burn.BrickColor = BrickColor.new("Really black")
					end
				end
			end
		end
	end
	wait(0.1)
end