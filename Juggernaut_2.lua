-- params : ...

wait(0.016666666666667)
local Player = game.Players.localPlayer
local Character = Player.Character
script.Name = "GG"
local Player = game.Players.LocalPlayer
local Character = Player.Character
	local Effects = {}
	local Humanoid = Character.Humanoid
	local mouse = Player:GetMouse()
	local m = Instance.new("Model", Character)
	m.Name = "WeaponModel"
	local can = Instance.new("Model", Character)
	can.Name = "WeaponModel2"
	local g = Instance.new("Model", Character)
	local ge = Instance.new("Model", Character)
	local LeftArm = Character["Left Arm"]
	local RightArm = Character["Right Arm"]
	local LeftLeg = Character["Left Leg"]
	local RightLeg = Character["Right Leg"]
	local Head = Character.Head
	local Torso = Character.Torso
	local cam = game.Workspace.CurrentCamera
	local RootPart = Character.HumanoidRootPart
	local RootJoint = RootPart.RootJoint
	local equipped = false
	local attack = false
	local Anim = "Idle"
	local idle = 0
	local attacktype = 1
	local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velocity = RootPart.Velocity.y
	local sine = 0
	local change = 1
	local grabbed = false
	local cn = CFrame.new
	local mr = math.rad
	local angles = CFrame.Angles
	local ud = UDim2.new
	local c3 = Color3.new
	local minigun = false
	local railcannon = false
	Humanoid.Animator.Parent = nil
	Character.Animate.Parent = nil
	local omega = false
	local newMotor = function(part0, part1, c0, c1)
	
	local w = Instance.new("Motor", part0)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	return w
end

	clerp = function(a, b, t)
	
	return a:lerp(b, t)
end

	RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
	NeckCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0))
	local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
	local RH = newMotor(Torso, RightLeg, CFrame.new(0.5, -2, 0), CFrame.new(0, 0, 0))
	local LH = newMotor(Torso, LeftLeg, CFrame.new(-0.5, -2, 0), CFrame.new(0, 0, 0))
	RootJoint.C1 = CFrame.new(0, 0, 0)
	RootJoint.C0 = CFrame.new(0, 0, 0)
	Torso.Neck.C1 = CFrame.new(0, 0, 0)
	Torso.Neck.C0 = CFrame.new(0, 1.5, 0)
	local rarmc1 = RW.C1
	local larmc1 = LW.C1
	local rlegc1 = RH.C1
	local llegc1 = LH.C1
	local resetc1 = false
	PlayAnimationFromTable = function(table, speed, bool)	
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed)
	Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed)
	RW.C0 = clerp(RW.C0, table[3], speed)
	LW.C0 = clerp(LW.C0, table[4], speed)
	RH.C0 = clerp(RH.C0, table[5], speed)
	LH.C0 = clerp(LH.C0, table[6], speed)
	if bool == true and resetc1 == false then
		resetc1 = true
		RootJoint.C1 = RootJoint.C1
		Torso.Neck.C1 = Torso.Neck.C1
		RW.C1 = rarmc1
		LW.C1 = larmc1
		RH.C1 = rlegc1
		LH.C1 = llegc1
	end
end

	ArtificialHB = Instance.new("BindableEvent", Player.PlayerGui)
	ArtificialHB.Name = "Heartbeat"
	Player.PlayerGui:WaitForChild("Heartbeat")
	frame = 0.033333333333333
	tf = 0
	allowframeloss = false
	tossremainder = false
	lastframe = tick()
	Player.PlayerGui.Heartbeat:Fire()
	local gg = false
	game:GetService("RunService").Heartbeat:connect(function(s, p)
	
	if Player.PlayerGui:FindFirstChild("Heartbeat") == nil then
		gg = true
	end
	if gg == true then
		return 
	end
	tf = tf + s
	if frame <= tf then
		if allowframeloss then
			Player.PlayerGui.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				Player.PlayerGui.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end
)
	swait = function(num)
	
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

	local RbxUtility = LoadLibrary("RbxUtility")
	local Create = RbxUtility.Create
	RemoveOutlines = function(part)
	
	part.TopSurface = 10
end

	local co1 = 5
	local co2 = 15
	local co3 = 15
	local co4 = 15
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local co5 = 12
	local co6 = 18
	local co7 = 20
	local co8 = 30
	local cooldown5 = 0
	local cooldown6 = 0
	local cooldown7 = 0
	local cooldown8 = 0
	local skillcolorscheme = BrickColor.new("Bright red").Color
	local scrn = Instance.new("ScreenGui", Player.PlayerGui)
	makeframe = function(par, trans, pos, size, color)
	
	local frame = Instance.new("Frame", par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end

	makelabel = function(par, text)
	
	local label = Instance.new("TextLabel", par)
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Position = UDim2.new(0, 0, 0, 0)
	label.TextColor3 = Color3.new(255, 255, 255)
	label.TextStrokeTransparency = 0
	label.FontSize = Enum.FontSize.Size32
	label.Font = Enum.Font.SourceSansLight
	label.BorderSizePixel = 0
	label.TextScaled = true
	label.Text = text
end

	framesk1 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.85, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
	framesk2 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.74, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
	framesk3 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.63, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
	framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.52, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
	bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	text1 = Instance.new("TextLabel", framesk1)
	text1.BackgroundTransparency = 1
	text1.Size = UDim2.new(1, 0, 1, 0)
	text1.Position = UDim2.new(0, 0, 0, 0)
	text1.TextColor3 = Color3.new(255, 255, 255)
	text1.TextStrokeTransparency = 0
	text1.FontSize = Enum.FontSize.Size18
	text1.Font = Enum.Font.SourceSansLight
	text1.BorderSizePixel = 0
	text1.TextScaled = true
	text1.Text = "[Z]\n Charger"
	text2 = Instance.new("TextLabel", framesk2)
	text2.BackgroundTransparency = 1
	text2.Size = UDim2.new(1, 0, 1, 0)
	text2.Position = UDim2.new(0, 0, 0, 0)
	text2.TextColor3 = Color3.new(255, 255, 255)
	text2.TextStrokeTransparency = 0
	text2.FontSize = Enum.FontSize.Size18
	text2.Font = Enum.Font.SourceSansLight
	text2.BorderSizePixel = 0
	text2.TextScaled = true
	text2.Text = "[X]\n Equip DDJ Multishot"
	text3 = Instance.new("TextLabel", framesk3)
	text3.BackgroundTransparency = 1
	text3.Size = UDim2.new(1, 0, 1, 0)
	text3.Position = UDim2.new(0, 0, 0, 0)
	text3.TextColor3 = Color3.new(255, 255, 255)
	text3.TextStrokeTransparency = 0
	text3.FontSize = Enum.FontSize.Size18
	text3.Font = Enum.Font.SourceSansLight
	text3.BorderSizePixel = 0
	text3.TextScaled = false
	text3.Text = "[C]\n Equip QRR-3 Railcannon"
	text4 = Instance.new("TextLabel", framesk4)
	text4.BackgroundTransparency = 1
	text4.Size = UDim2.new(1, 0, 1, 0)
	text4.Position = UDim2.new(0, 0, 0, 0)
	text4.TextColor3 = Color3.new(255, 255, 255)
	text4.TextStrokeTransparency = 0
	text4.FontSize = Enum.FontSize.Size18
	text4.Font = Enum.Font.SourceSansLight
	text4.BorderSizePixel = 0
	text4.TextScaled = true
	text4.Text = "[V]\n Equip RRE3 Blackout"
	CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	
	local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
	RemoveOutlines(Part)
	return Part
end

	CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

	CreateWeld = function(Parent, Part0, Part1, C0, C1)
	
	local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
	return Weld
end

	CFuncs = {
Part = {Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	
	local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
	RemoveOutlines(Part)
	return Part
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Weld = {Create = function(Parent, Part0, Part1, C0, C1)
	
	local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
	return Weld
end
}
, 
Sound = {Create = function(id, par, vol, pit)
	
	coroutine.resume(coroutine.create(function()
		
		local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId = id, Parent = par or workspace})
		wait()
		S:play()
		game:GetService("Debris"):AddItem(S, 6)
	end
))
end
}
, 
ParticleEmitter = {Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
	
	local fp = Create("ParticleEmitter")({Parent = Parent, Color = ColorSequence.new(Color1, Color2), LightEmission = LightEmission, Size = Size, Texture = Texture, Transparency = Transparency, ZOffset = ZOffset, Acceleration = Accel, Drag = Drag, LockedToPart = LockedToPart, VelocityInheritance = VelocityInheritance, EmissionDirection = EmissionDirection, Enabled = Enabled, Lifetime = LifeTime, Rate = Rate, Rotation = Rotation, RotSpeed = RotSpeed, Speed = Speed, VelocitySpread = VelocitySpread})
	return fp
end
}
}
	Handle = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Handle", Vector3.new(1.01000023, 1.36000001, 1.02999997))
	HandleWeld = CreateWeld(m, Character["Left Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459e-06, 0.33297348, 0.00253295898, 0, 0, -1, 0, 0.999999881, 0, 1, 0, 0))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Maroon", "Part", Vector3.new(1.09000027, 0.320000052, 0.959999979))
	PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0750000477, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.24000025, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.579999924, 0.5050354, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.410000205, 1.5, 0.200000003))
	PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0378875732, 0.0699999332, 0.743743896, 0.529920995, 0, -0.848047018, 0, 1, 0, 0.848047018, 0, 0.529920995))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.410000205, 1.5, 0.200000003))
	PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0110931396, 0.0699999332, -0.743213654, -0.499998987, 0, -0.866025984, 0, 1, 0, 0.866025984, 0, -0.499998987))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.24000025, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.699999809, 0.5050354, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Maroon", "Part", Vector3.new(0.590000272, 0.320000052, 0.519999981))
	PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.55499959, -0.0950164795, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright red", "Part", Vector3.new(1.24000025, 1.13000011, 0.200000003))
	PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.0550000668, 0.465042114, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Handle2 = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Handle2", Vector3.new(1.01000023, 1.36000001, 1.02999997))
	Handle2Weld = CreateWeld(m, Character["Right Arm"], Handle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00157546997, 0.332973957, 0.00706481934, 0, 0, 1, 0, 0.999999881, 0, -1, 0, 0))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.24000025, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.579999924, 0.5050354, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.24000025, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.699998975, 0.5050354, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.410000205, 1.5, 0.200000003))
	PartWeld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.037902832, 0.0699999332, 0.743736267, 0.529920995, 0, -0.848047018, 0, 1, 0, 0.848047018, 0, 0.529920995))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Maroon", "Part", Vector3.new(0.590000272, 0.320000052, 0.519999981))
	PartWeld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.554999113, -0.0950164795, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Bright red", "Part", Vector3.new(1.24000025, 1.13000011, 0.200000003))
	PartWeld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.0550000668, 0.465042114, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Maroon", "Part", Vector3.new(1.09000027, 0.320000052, 0.959999979))
	PartWeld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.0750000477, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.410000205, 1.5, 0.200000003))
	PartWeld = CreateWeld(m, Handle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0110931396, 0.0699999332, -0.743202209, -0.499998987, 0, -0.866025984, 0, 1, 0, 0.866025984, 0, -0.499998987))
	Misc = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Misc", Vector3.new(1.08000004, 2.74999976, 1.13999987))
	MiscWeld = CreateWeld(m, Character.Torso, Misc, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.318688393, 0.211323738, 0.0388641357, 0.00561500341, 0.999839604, 0.0170100089, -0.0775420293, 0.0173944011, -0.996837378, -0.996973336, 0.0042782547, 0.0776272565))
	CreateMesh("CylinderMesh", Misc, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.779999971, 1.21000004, 0.200000003))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.84437561, 0.305374146, 1.68695641, 0.554451048, 0.0740119815, 0.828918874, 0.832042634, -0.0289405994, -0.553956509, -0.0170100089, 0.996837378, -0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.589999974, 1.21000004, 0.200000003))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.20437622, 0.42061615, 1.80695152, 0.690509677, 0.0678621382, 0.720132947, 0.723123312, -0.0413529053, -0.689480186, -0.0170100089, 0.996837378, -0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.859999955, 1.21000004, 0.200000003))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.80438232, 0.305374146, -0.203042984, 0.554451048, 0.0740119815, 0.828918874, 0.832042634, -0.0289405994, -0.553956509, -0.0170100089, 0.996837378, -0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.21000004, 2.32999992))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.39937592, 0.42061615, 0.741949081, 0.690509677, 0.0678621382, 0.720132947, 0.723123312, -0.0413529053, -0.689480186, -0.0170100089, 0.996837378, -0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(2.90999985, 1.21000004, 0.879999876))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.56022644, 0.36340332, 0.746948242, 0.554451048, 0.0740119815, 0.828918874, 0.832042634, -0.0289405994, -0.553956509, -0.0170100089, 0.996837378, -0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.859999955, 1.21000004, 0.200000003))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.79576111, 0.299560547, -1.68694878, 0.563761175, -0.0545582324, -0.824134052, 0.825762749, 0.0577817485, 0.561050117, 0.0170100089, -0.996837378, 0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.779999971, 1.21000004, 0.200000003))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.83575439, 0.299560547, 0.203050613, 0.563761175, -0.0545582324, -0.824134052, 0.825762749, 0.0577817485, 0.561050117, 0.0170100089, -0.996837378, 0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.589999974, 1.21000004, 0.200000003))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.19690704, 0.413391113, -1.80695724, 0.698587894, -0.0436957441, -0.714189053, 0.715322256, 0.0663778186, 0.6956352, 0.0170100089, -0.996837378, 0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(2.89999986, 1.21000004, 0.879999995))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.57575989, 0.299560547, -0.741949081, 0.563761175, -0.0545582324, -0.824134052, 0.825762749, 0.0577817485, 0.561050117, 0.0170100089, -0.996837378, 0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.589999974, 1.21000004, 0.200000003))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.20437622, 0.42061615, -0.32305336, 0.690509677, 0.0678621382, 0.720132947, 0.723123312, -0.0413529053, -0.689480186, -0.0170100089, 0.996837378, -0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.589999974, 1.21000004, 0.200000003))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.19690704, 0.413391113, 0.323051453, 0.698587894, -0.0436957441, -0.714189053, 0.715322256, 0.0663778186, 0.6956352, 0.0170100089, -0.996837378, 0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.799999952, 0.71999979, 1.75999999))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413290024, 2.14399338, 0.378707886, 0.927011371, 0.354349732, 0.122825913, -0.37498194, 0.870347321, 0.319193125, 0.00620479928, -0.341953099, 0.93969661))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.940000057, 0.210000008, 0.889999866))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.29999924, 0, 1, 1.45519152e-10, 0, 1.45519152e-10, 1.00000012, 0, 0, 0, 1.00000012))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.910000086, 2.90999985, 0.869999886))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.380825043, -0.954467773, -0.803100586, 0.839223146, 0.434805185, 0.326571941, 0.543739617, -0.663012385, -0.514550328, -0.00720792357, 0.609392464, -0.79283601))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(2.7900002, 1.21000004, 0.779999971))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0898132324, -0.600757599, -0.691949844, -0.0292818137, -0.0781018436, -0.996515393, 0.999426603, 0.014677668, -0.0305177197, 0.0170100089, -0.996837378, 0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.589999914, 0.529999852, 0.609999895))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413282394, -2.26901627, -0.378753662, 0.927011371, 0.354349732, 0.122825913, 0.37498194, -0.870347321, -0.319193125, -0.00620479928, 0.341953099, -0.93969661))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.21000004, 2.08999991))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.13438416, 0.305381775, 0.741949081, 0.554451048, 0.0740119815, 0.828918874, 0.832042634, -0.0289405994, -0.553956509, -0.0170100089, 0.996837378, -0.0776272565))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Really red", "Part", Vector3.new(0.940000057, 0.200000003, 1.13999987))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.29499912, 0, 1, 1.45519152e-10, 0, 1.45519152e-10, 1.00000012, 0, 0, 0, 1.00000012))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Smoky grey", "Part", Vector3.new(0.759999812, 0.709999859, 1.70999992))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.47265625, 2.13467407, -0.390716553, 0.928664148, 0.330795914, -0.167801037, -0.370842725, 0.818673849, -0.438462138, -0.00766716897, 0.46941179, 0.882946134))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.79999995, 0.71999979, 1.8499999))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.532877922, 1.96745396, -0.0040435791, 0.927311003, 0.373456627, -0.0249933787, -0.374290138, 0.92502141, -0.06513381, -0.0012052455, 0.0697540641, 0.997563541))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Smoky grey", "Part", Vector3.new(1.79999995, 0.71999985, 1.70999992))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.532875061, 1.98745728, -0.0040435791, 0.927311003, 0.373456627, -0.0249933787, -0.374290138, 0.92502141, -0.06513381, -0.0012052455, 0.0697540641, 0.997563541))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.21000004, 2.32999992))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.39190674, 0.413391113, -0.741949081, 0.698587894, -0.0436957441, -0.714189053, 0.715322256, 0.0663778186, 0.6956352, 0.0170100089, -0.996837378, 0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.60000002, 1.34999979, 1.8499999))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.532877922, 1.27745056, -0.00405883789, 0.927311003, 0.373456627, -0.0249933787, -0.374290138, 0.92502141, -0.06513381, -0.0012052455, 0.0697540641, 0.997563541))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.910000086, 2.71999979, 0.869999886))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.634326935, 0.970718384, -0.636886597, 0.73713702, 0.672070861, -0.0703546554, -0.603258193, 0.607577503, -0.516651869, -0.304480761, 0.423285276, 0.853300214))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.21000004, 2.08999991))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.12574768, 0.299560547, -0.741949081, 0.563761175, -0.0545582324, -0.824134052, 0.825762749, 0.0577817485, 0.561050117, 0.0170100089, -0.996837378, 0.0776272565))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.740000069, 1.34999979, 0.559999943))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413281441, 1.45401764, 0.378753662, 0.927011371, 0.354349732, 0.122825913, -0.37498194, 0.870347321, 0.319193125, 0.00620479928, -0.341953099, 0.93969661))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.799999952, 0.71999979, 1.75999999))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.472660065, 2.11967468, -0.390686035, 0.928664148, 0.330795914, -0.167801037, -0.370842725, 0.818673849, -0.438462138, -0.00766716897, 0.46941179, 0.882946134))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.740000069, 1.34999979, 0.559999943))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.47265625, 1.42967987, -0.390686035, 0.928664148, 0.330795914, -0.167801037, -0.370842725, 0.818673849, -0.438462138, -0.00766716897, 0.46941179, 0.882946134))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(1.79999995, 0.529999852, 1.6099999))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.532876015, -2.09245396, 0.0040435791, 0.927311003, 0.373456627, -0.0249933787, 0.374290138, -0.92502141, 0.06513381, 0.0012052455, -0.0697540641, -0.997563541))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Thruster1 = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Thruster1", Vector3.new(0.200000003, 0.529999852, 0.200000003))
	Thruster1Weld = CreateWeld(m, Misc, Thruster1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.532876015, -2.09245396, 0.0040435791, 0.927311003, 0.373456627, -0.0249933787, 0.374290138, -0.92502141, 0.06513381, 0.0012052455, -0.0697540641, -0.997563541))
	CreateMesh("CylinderMesh", Thruster1, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Smoky grey", "Part", Vector3.new(0.759999812, 0.709999859, 0.73999995))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413290024, 2.15899658, 0.378692627, 0.927011371, 0.354349732, 0.122825913, -0.37498194, 0.870347321, 0.319193125, 0.00620479928, -0.341953099, 0.93969661))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.589999914, 0.529999852, 0.609999895))
	PartWeld = CreateWeld(m, Misc, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.472652435, 2.24468994, 0.39074707, -0.928664148, -0.330795914, 0.167801037, -0.370842725, 0.818673849, -0.438462138, 0.0076671592, -0.46941179, -0.882946134))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Thruster2 = CreatePart(m, Enum.Material.Plastic, 0, 0, "Smoky grey", "Thruster2", Vector3.new(0.200000003, 0.709999859, 0.200000003))
	Thruster2Weld = CreateWeld(m, Misc, Thruster2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413290024, 2.15899658, 0.378692627, 0.927011371, 0.354349732, 0.122825913, -0.37498194, 0.870347321, 0.319193125, 0.00620479928, -0.341953099, 0.93969661))
	CreateMesh("CylinderMesh", Thruster2, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Thruster3 = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Thruster3", Vector3.new(0.200000003, 0.529999852, 0.200000003))
	Thruster3Weld = CreateWeld(m, Misc, Thruster3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.472652435, 2.24468994, 0.39074707, -0.928664148, -0.330795914, 0.167801037, -0.370842725, 0.818673849, -0.438462138, 0.0076671592, -0.46941179, -0.882946134))
	CreateMesh("CylinderMesh", Thruster3, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	AMotor = CreatePart(g, Enum.Material.Neon, 0, 1, "Bright red", "AMotor", Vector3.new(1.13, 1.13, 1.13999999))
	AMotorWeld = CreateWeld(g, Character.HumanoidRootPart, AMotor, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.78009033, 1.56501913, -2.5500164, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	AFMotor = CreatePart(g, Enum.Material.Neon, 0, 0, "Bright red", "Part", Vector3.new(1.13, 1.13, 1.13999999))
	AFMotorWeld = CreateWeld(g, AMotor, AFMotor, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", AFMotor, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.420000017, 0.550000012, 3.5))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.568473816, 0.0246200562, 2.22000694, 0.788011909, -0.615659952, 0, 0.615659952, 0.788011909, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 3.5))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.724983215, 0.0370483398, 2.21999931, -0.374605179, -0.927184403, 0, 0.927184463, -0.374605179, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 3.5))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.75, 4.76837158e-06, 2.22000694, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 3))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.695045471, 0.0371246338, 2.47000504, -0.374605179, -0.927184403, 0, 0.927184463, -0.374605179, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 3))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700344086, 0.038772583, 2.47000885, 0.241925001, -0.970295012, 0, 0.970295012, 0.241925001, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 3.5))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.676864624, 0.0224075317, 2.22001076, -0.829035699, -0.559195817, 0, 0.559195757, -0.82903564, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 3.5))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.719696045, 0.0388336182, 2.21999931, 0.241925001, -0.970295012, 0, 0.970295012, 0.241925001, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 3))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.669952393, -2.86102295e-06, 2.47000122, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(1.70000005, 1.48000002, 1.53999996))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.060009, -0.0500030518, -5.7220459e-06, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 3))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.743179321, 0.0223388672, 2.47000504, -0.829035699, -0.559195817, 0, 0.559195757, -0.82903564, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 3))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.741523743, 0.0246429443, 2.47000504, 0.788011909, -0.615659952, 0, 0.615659952, 0.788011909, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.380000025, 5.11000013))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.415756226, 0.0135955811, 3.91500664, -0.309016854, -0.95105654, 0, 0.95105654, -0.309016854, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.350000024, 5.17000008))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.396598816, -0.00938415527, 3.88500595, -0.309016854, -0.95105654, 0, 0.95105654, -0.309016854, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.350000024, 5.21000004))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.391353607, -0.00505065918, 3.8650074, 0.374606907, -0.927183747, 0, 0.927183747, 0.374606907, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.370000035, 5.17000008))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.412441254, -0.0043182373, 3.88500595, 0.374606907, -0.927183747, 0, 0.927183747, 0.374606907, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.26000002, 5.19000006))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.245681763, -0.301566601, 3.87500763, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.230000004, 0.230000019, 5.23000002))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.261567116, 0.234344482, 3.85500717, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.19000006))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.245697021, 0.278434277, 3.87500763, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 5.19000006))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.234344482, 0.288434505, 3.87500763, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 2.76999998))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.245681763, 0.00843334198, 2.66500854, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.380000025, 2.46999979))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.234329224, -0.0015668869, 2.81500816, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.245681763, 0.00843334198, 4.39000511, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.245681763, 0.00843334198, 4.88000298, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.245681763, 0.00843334198, 5.34000778, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.245681763, 0.00843334198, 5.83000565, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.245681763, 0.00843334198, 6.34000969, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.244277954, 0.00843334198, 4.39000511, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.244277954, 0.00843334198, 5.34000778, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.244277954, 0.00843334198, 6.34000969, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.244277954, 0.00843334198, 5.83000565, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.200000003))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.244277954, 0.00843334198, 4.88000298, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.25999999, 0.550000012, 0.549999952))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.773193359, 1.8505249, 1.6411438, -0.829034865, -0.559196949, 0, 0.374176353, -0.554733455, 0.743143976, -0.415563852, 0.616092265, 0.669131637))
	Part = CreatePart(g, Enum.Material.Plastic, 0, 0, "Bright red", "Part", Vector3.new(0.289999992, 0.450000018, 0.469999969))
	PartWeld = CreateWeld(g, AFMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.78817749, 1.8505249, 1.64115143, -0.829034865, -0.559196949, 0, 0.374176353, -0.554733455, 0.743143976, -0.415563852, 0.616092265, 0.669131637))
	Barrel = CreatePart(g, Enum.Material.Plastic, 0, 1, "Black", "Barrel", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	BarrelWeld = CreateWeld(g, AFMotor, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0193023682, -0.0115666389, 6.37000847, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	AMotor2 = CreatePart(ge, Enum.Material.Neon, 0, 1, "Bright red", "AMotor2", Vector3.new(1.13, 1.13, 1.13999999))
	AMotor2Weld = CreateWeld(ge, Character.HumanoidRootPart, AMotor2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.47993469, 1.56501913, -1.70001793, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	AFMotor2 = CreatePart(ge, Enum.Material.Neon, 0, 0, "Bright red", "AFMotor2", Vector3.new(1.13, 1.13, 1.13999999))
	AFMotor2Weld = CreateWeld(ge, AMotor2, AFMotor2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", AFMotor2, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	H3 = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Maroon", "H3", Vector3.new(0.529999971, 0.200000003, 0.200000003))
	H3Weld = CreateWeld(ge, AFMotor2, H3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0150237083, 0.0300445557, 2.22999191, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", H3, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.64999998, 1.64999998, 1))
	H3 = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Maroon", "H3", Vector3.new(0.529999971, 0.200000003, 0.200000003))
	H3Weld = CreateWeld(ge, AFMotor2, H3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00497722626, 0.0500335693, 1.27000046, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", H3, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.64999998, 1.64999998, 5))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.669952393, -2.86102295e-06, 1.90999985, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2.5))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.75, 4.76837158e-06, 1.66000557, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.741531372, 0.0246505737, 1.91000366, 0.788011909, -0.615659952, 0, 0.615659952, 0.788011909, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2.5))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.678466797, 0.0246276855, 1.66000557, 0.788011909, -0.615659952, 0, 0.615659952, 0.788011909, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2.5))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.71969986, 0.038848877, 1.65999794, 0.241925001, -0.970295012, 0, 0.970295012, 0.241925001, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.700340271, 0.038772583, 1.91000748, 0.241925001, -0.970295012, 0, 0.970295012, 0.241925001, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2.5))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.724990845, 0.0370483398, 1.65999794, -0.374605179, -0.927184403, 0, 0.927184463, -0.374605179, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.695037842, 0.0371398926, 1.91000366, -0.374605179, -0.927184403, 0, 0.927184463, -0.374605179, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.743179321, 0.0223464966, 1.91000366, -0.829035699, -0.559195817, 0, 0.559195757, -0.82903564, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.550000012, 2.5))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.676864624, 0.0224151611, 1.66000938, -0.829035699, -0.559195817, 0, 0.559195757, -0.82903564, 0, 0, 0, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(1.70000005, 1.48000002, 1.53999996))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.00000763, -0.0500030518, -5.7220459e-06, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.360000014, 0.389999986))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.89001083, -0.0200195313, -2.86102295e-06, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.319999993, 0.26000002, 0.389999986))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95000458, -0.0200195313, -0.35998106, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Barrel2 = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Really black", "Barrel2", Vector3.new(0.329999983, 0.200000003, 0.200000003))
	Barrel2Weld = CreateWeld(ge, AFMotor2, Barrel2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95500565, -0.0200195313, -0.359973907, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CreateMesh("SpecialMesh", Barrel2, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95500946, -0.0200195313, 0.36000824, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.319999993, 0.26000002, 0.389999986))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95000076, -0.0200195313, 0.360001087, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.319999993, 0.26000002, 0.389999986))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95000839, -0.0128479004, 0.375328064, 0, 0, 1, -0.642785966, -0.766045868, 0, 0.766045868, -0.642785966, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95500946, -0.0128479004, 0.375328064, 0, 0, 1, -0.642785966, -0.766045868, 0, 0.766045868, -0.642785966, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95501328, -0.0128631592, -0.344657898, 0, 0, 1, -0.642785966, -0.766045868, 0, 0.766045868, -0.642785966, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.319999993, 0.26000002, 0.389999986))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95000458, -0.0128555298, -0.344650269, 0, 0, 1, -0.642785966, -0.766045868, 0, 0.766045868, -0.642785966, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.319999993, 0.26000002, 0.389999986))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95000458, 0.0014333725, 0.37991333, 0, 0, 1, 0.0697560087, -0.997564137, 0, 0.997564137, 0.0697560087, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95500565, 0.00143671036, 0.37991333, 0, 0, 1, 0.0697560087, -0.997564137, 0, 0.997564137, 0.0697560087, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95500946, 0.00140047073, -0.340026855, 0, 0, 1, 0.0697560087, -0.997564137, 0, 0.997564137, 0.0697560087, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.319999993, 0.26000002, 0.389999986))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95000076, 0.00140476227, -0.340026855, 0, 0, 1, 0.0697560087, -0.997564137, 0, 0.997564137, 0.0697560087, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95500946, 0.0148391724, -0.346588135, 0, 0, 1, 0.743143797, -0.669131815, 0, 0.669131815, 0.743143797, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95500183, 0.0148849487, 0.373306274, 0, 0, 1, 0.743143797, -0.669131815, 0, 0.669131815, 0.743143797, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.319999993, 0.26000002, 0.389999986))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.94999695, 0.0148468018, -0.346588135, 0, 0, 1, 0.743143797, -0.669131815, 0, 0.669131815, 0.743143797, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(ge, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.319999993, 0.26000002, 0.389999986))
	PartWeld = CreateWeld(ge, AFMotor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95000076, 0.0148849487, 0.373306274, 0, 0, 1, 0.743143797, -0.669131815, 0, 0.669131815, 0.743143797, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	AMotor3 = CreatePart(can, Enum.Material.Neon, 0, 1, "Bright red", "AMotor3", Vector3.new(2.22000003, 2.06999993, 2.21999979))
	AMotor3Weld = CreateWeld(can, Character.HumanoidRootPart, AMotor3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57763672e-05, 5.96501923, -2.98002052, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", AMotor3, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	AFMotor3 = CreatePart(can, Enum.Material.Neon, 0, 1, "Bright red", "AFMotor3", Vector3.new(2.22000003, 2.06999993, 2.21999979))
	AFMotor3Weld = CreateWeld(can, AMotor3, AFMotor3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", AFMotor3, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.66000021, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00537109375, -1.5340519, 2.07501221, -0.9993909, 0.0348989964, 0, -0.0348989964, -0.9993909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.66000021, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103515625, 1.58404732, 2.07501221, -0.9993909, 0.0348989964, 0, -0.0348989964, -0.9993909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.66000021, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.055770874, 1.50053406, 2.07501221, -0.587785721, 0.809016645, 0, -0.809016705, -0.587785661, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.66000021, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0764083862, -1.52354431, 2.07501221, -0.587785721, 0.809016645, 0, -0.809016705, -0.587785661, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.66000021, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0458526611, -1.50465393, 2.07501221, -0.615662754, -0.788009703, 0, 0.788009703, -0.615662754, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.66000021, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0630645752, 1.61345673, 2.07501221, -0.615662754, -0.788009703, 0, 0.788009703, -0.615662754, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 3.31999993))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0762939453, 0.804522514, 3.29501343, -0.9993909, 0.0348989964, 0, -0.0348989964, -0.9993909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0197601318, -0.814492226, 9.15501404, -0.9993909, 0.0348989964, 0, -0.0348989964, -0.9993909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 7.61999989))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143280029, -0.78678894, 5.44501305, -0.848048866, -0.529917955, 0, 0.529917955, -0.848048866, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 7.61999989))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0708465576, 0.832229614, 5.44501305, -0.848048866, -0.529917955, 0, 0.529917955, -0.848048866, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00718688965, -0.76612854, 3.39501381, -0.374608994, -0.927182972, 0, 0.927182972, -0.374608994, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.049369812, 0.852905273, 3.39501381, -0.374608994, -0.927182972, 0, 0.927182972, -0.374608994, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0383796692, -0.762374878, 3.39501381, 0.275638193, -0.96126157, 0, 0.96126157, 0.275638193, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 3.51999998))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0181770325, 0.856658936, 3.39501381, 0.275638193, -0.96126157, 0, 0.96126157, 0.275638193, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 7.61999989))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00761413574, 0.841720581, 5.44501305, 0.788011909, -0.615659952, 0, 0.615659952, 0.788011909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 7.62000036))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0641555786, -0.777328491, 5.44501495, 0.788011909, -0.615659952, 0, 0.615659952, 0.788011909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.879999995, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0641555786, -1.11732483, 1.73501396, 0.788011909, -0.615659952, 0, 0.615659952, 0.788011909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.899999976, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0708465576, 1.18222809, 1.73501396, -0.848048866, -0.529917955, 0, 0.529917955, -0.848048866, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.959999979, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143280029, -1.16678619, 1.73501396, -0.848048866, -0.529917955, 0, 0.529917955, -0.848048866, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.800000012, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00760650635, 1.141716, 1.73501396, 0.788011909, -0.615659952, 0, 0.615659952, 0.788011909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.049369812, 0.852905273, 9.15501595, -0.374608994, -0.927182972, 0, 0.927182972, -0.374608994, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0181770325, 0.856658936, 9.15501595, 0.275638193, -0.96126157, 0, 0.96126157, 0.275638193, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00718688965, -0.76612854, 9.15501404, -0.374608994, -0.927182972, 0, 0.927182972, -0.374608994, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0383796692, -0.762374878, 9.15501404, 0.275638193, -0.96126157, 0, 0.96126157, 0.275638193, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 3.5199995))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0197601318, -0.814492226, 3.3950119, -0.9993909, 0.0348989964, 0, -0.0348989964, -0.9993909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.620000243, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0762939453, 0.804522514, 9.15501404, -0.9993909, 0.0348989964, 0, -0.0348989964, -0.9993909, 0, 0, 0, 1))
	Part = CreatePart(can, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(2.44000006, 1.54999995, 1.53999996))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.91000938, -0.0449829102, -5.7220459e-06, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(can, Enum.Material.Neon, 0, 0, "Bright red", "Part", Vector3.new(2.22000003, 2.06999993, 2.21999979))
	PartWeld = CreateWeld(can, AFMotor3, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Barrel3 = CreatePart(can, Enum.Material.Plastic, 0, 1, "Black", "Barrel3", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	Barrel3Weld = CreateWeld(can, AFMotor3, Barrel3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00719451904, -0.01612854, 9.15501404, -0.374608994, -0.927182972, 0, 0.927182972, -0.374608994, 0, 0, 0, 1))
	can.Parent = nil
	rayCast = function(Position, Direction, Range, Ignore)
	
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

	local GetNearest = function(obj, distance)
	
	local last, lastx = distance + 1, nil
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
			local t = v.Torso
			local dist = t.Position - obj.Position.magnitude
			if dist <= distance and dist < last then
				last = dist
				lastx = v
			end
		end
	end
	return lastx
end

	Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	
	if hit.Parent == nil then
		return 
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _,v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
			return 
		end
		local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
		game:GetService("Debris"):AddItem(c, 0.5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil and block.className == "IntValue" and block.Value > 0 then
			blocked = true
			block.Value = block.Value - 1
			print(block.Value)
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - Damage / 2
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
		
		swait(1)
		HHumanoid.PlatformStand = false
	end
), hum)
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
			local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
			game:GetService("Debris"):AddItem(bodvol, 0.5)
			game:GetService("Debris"):AddItem(rl, 0.5)
		elseif Type == "Normal" then
					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
					if knockback > 0 then
						vp.Parent = hit.Parent.Torso
					end
					game:GetService("Debris"):AddItem(vp, 0.5)
				elseif Type == "Up" then
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 1)
						elseif Type == "Snare" then
									local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
									game:GetService("Debris"):AddItem(bp, 1)
								elseif Type == "Freeze" then
											local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
											local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
											hit.Parent.Torso.Anchored = true
											coroutine.resume(coroutine.create(function(Part)
		
		swait(1.5)
		Part.Anchored = false
	end
), hit.Parent.Torso)
											game:GetService("Debris"):AddItem(BodPos, 3)
											game:GetService("Debris"):AddItem(BodGy, 3)
										end
											local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
											game:GetService("Debris"):AddItem(debounce, Delay)
											c = Instance.new("ObjectValue")
											c.Name = "creator"
											c.Value = Player
											c.Parent = h
											game:GetService("Debris"):AddItem(c, 0.5)
										end
									end

	ShowDamage = function(Pos, Text, Time, Color)
	
	local Rate = 0.033333333333333
	if not Pos then
		local Pos = Vector3.new(0, 0, 0)
	end
	local Text = Text or ""
	local Time = Time or 2
	if not Color then
		local Color = Color3.new(1, 0, 1)
	end
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
	local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
	game.Debris:AddItem(EffectPart, Time + 0.1)
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		
		local Frames = Time / Rate
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = Frame / Frames
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end
)
end

	MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
	
	for _,c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
				end
			end
		end
	end
end

	EffectModel = Instance.new("Model", Character)
	EffectModel.Name = "Effects"
	Effects = {
Block = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
	else
		if Type == 2 then
			table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
		end
	end
end
}
, 
Sphere = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Ring = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Cylinder = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3, msh}
end
}
, 
Wave = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Break = {Create = function(brickcolor, cframe, x1, y1, z1)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
}
}
	Shoot = function(orgpos)
	
	rand = 1.5
	spread = Vector3.new((math.random(-1, 0) + math.random()) * rand, (math.random(-1, 0) + math.random()) * rand, (math.random(-1, 0) + math.random()) * rand) * (orgpos - mouse.Hit.p).magnitude / 100
	local MouseLook = CFrame.new((orgpos + mouse.Hit.p) / 2, mouse.Hit.p + spread)
	Effects.Sphere.Create(BrickColor.new("Really red"), CFrame.new(orgpos), 5, 5, 5, 1, 1, 1, 0.1)
	table.insert(Effects, {MouseLook.lookVector, "Shoot", 50, orgpos, 5, 7, 0, 1, 2})
end

	Shoot2 = function(orgpos)
	
	local MouseLook = CFrame.new((orgpos + mouse.Hit.p) / 2, mouse.Hit.p)
	Effects.Sphere.Create(BrickColor.new("Really red"), CFrame.new(orgpos), 5, 5, 5, 3, 3, 3, 0.1)
	table.insert(Effects, {MouseLook.lookVector, "Shoot2", 50, orgpos, 5, 7, 0, 1, 1})
end

	attackone = function()
	
	attack = true
	local con = RightArm.Touched:connect(function(hit)
		
		Damagefunc(RightArm, hit, 10, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://191395549", 1)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-8.19563866e-08, -0.926991284, 0.26000905, 0.642788053, -2.1072232e-07, -0.76604408, 0.383023053, 0.866024733, 0.321394652, 0.663413048, -0.500001192, 0.556670368), CFrame.new(2.32182992e-06, 1.50000072, -1.66944517e-06, 0.882947683, 2.74181366e-06, 0.469471604, -1.92224979e-06, 1.00000012, -2.23517418e-06, -0.469471574, 1.13248825e-06, 0.882947683), CFrame.new(1.46558726, 0.204997286, -0.167155817, 0.946657062, -0.316108316, 0.0625789165, 0.173647285, 0.336823672, -0.925416887, 0.271453917, 0.886919022, 0.373747736), CFrame.new(-0.665765822, 0.648539662, -0.845699847, 0.283812433, -0.950440884, -0.126935989, -0.21073103, 0.0673191994, -0.975223362, 0.935437262, 0.303529859, -0.181181341), CFrame.new(0.872051775, -2.2949996, 0.466255367, 0.858161926, -0.282309622, -0.428788513, 0.397847503, 0.893582463, 0.207913056, 0.324461967, -0.349015445, 0.879154563), CFrame.new(-0.48063159, -1.99999714, -0.137818694, 0.970295548, -0.128200591, 0.205161899, 3.27825546e-07, 0.848046899, 0.529921412, -0.241923124, -0.514180243, 0.822855949)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231917961", RootPart, 1, 1.5)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.389811993, -0.0587998107, -1.35773087, 0.224407896, -0.577476978, 0.784959555, 0.0698799714, 0.812965989, 0.578103065, -0.971986532, -0.0748779476, 0.222790077), CFrame.new(0.222052127, 1.4264009, 0.148264557, 0.521589875, 0.512562335, -0.682073295, -0.577217638, 0.800701499, 0.160303235, 0.628302455, 0.310092151, 0.713497758), CFrame.new(1.47409725, 0.672455788, -0.958007276, 0.606644511, 0.443375945, 0.65984869, 0.532932937, 0.389079511, -0.751398623, -0.589885592, 0.807486951, -0.000256672502), CFrame.new(-1.17105567, 0.824866772, -1.02421784, 0.951292276, -0.22673665, 0.208886206, 0.0737030655, -0.490651935, -0.868233085, 0.299350679, 0.841338933, -0.450042278), CFrame.new(0.712329865, -1.9457705, -0.605054796, 0.371164441, -0.194775641, -0.907909334, -0.345265985, 0.878701806, -0.329658598, 0.861990988, 0.435827821, 0.25889343), CFrame.new(-0.889490485, -1.59166956, -1.11138487, 0.687172055, 0.298594475, -0.662295997, -0.4064188, 0.913634777, -0.00977404043, 0.602178216, 0.275885969, 0.749178648)}, 0.3, false)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.269812316, -0.14880009, -1.14773154, 0.663143218, -0.410594463, 0.625822067, 0.0633100197, 0.863882959, 0.499697924, -0.745810211, -0.29175052, 0.5988729), CFrame.new(0.101694278, 1.53342617, 0.0394362025, 0.929754734, 0.350646675, -0.112263024, -0.356580615, 0.933515787, -0.0373977572, 0.091685921, 0.0748015046, 0.992974639), CFrame.new(1.48052311, 0.44670859, -0.587891102, 0.921421409, 0.296231985, 0.251454353, 0.375434518, -0.511921763, -0.772648036, -0.100158155, 0.806339145, -0.582911253), CFrame.new(-1.41428804, 0.472952932, -0.465051353, 0.932108521, 0.265078962, 0.246793225, 0.343949646, -0.43441236, -0.832457006, -0.113456786, 0.860824585, -0.496093273), CFrame.new(1.16719246, -1.66911542, -0.848163724, 0.758130491, -0.242845088, -0.605197906, -0.141788512, 0.84447962, -0.516478777, 0.63650161, 0.477368414, 0.605792999), CFrame.new(-0.535024107, -1.78884733, -0.659196734, 0.950908542, 0.118247926, -0.285990536, -0.150128737, 0.984360635, -0.0921713412, 0.270618796, 0.130581871, 0.953789234)}, 0.3, false)
	end
	con:disconnect()
	attack = false
end

	attacktwo = function()
	
	attack = true
	local con = LeftArm.Touched:connect(function(hit)
		
		Damagefunc(LeftArm, hit, 10, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://191395549", 1)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-3.57627869e-07, -0.311072171, 0.259536475, 0.719340086, 2.46536985e-07, 0.694658101, -0.144428015, 0.978147566, 0.149559394, -0.679478049, -0.207912162, 0.703620791), CFrame.new(-0.00403206423, 1.50866973, -0.168565765, 0.868102551, -0.109439641, -0.484170496, 0.139950305, 0.989784956, 0.0272000879, 0.476247847, -0.0913722664, 0.874550819), CFrame.new(1.71053994, 0.401797831, -0.218020931, 0.927188873, -0.33934617, 0.158634782, 0.277330935, 0.337177336, -0.89966619, 0.251810163, 0.878154755, 0.406738281), CFrame.new(-1.58522081, 0.57710588, 0.0882365853, 0.56041044, -0.0241708159, -0.827862263, -0.822142422, -0.137058645, -0.552536786, -0.100110441, 0.990268111, -0.0966809094), CFrame.new(0.632559597, -1.715204, -0.597933352, 0.984807849, -1.34110451e-07, -0.173648149, 1.63912773e-07, 1.00000012, 8.94069672e-08, 0.173648149, -1.34110451e-07, 0.984807849), CFrame.new(-0.73102808, -2.07069063, 0.239238739, 0.984807849, 0.0650493801, -0.161003947, 1.63912773e-07, 0.927184522, 0.374605268, 0.173648149, -0.368914247, 0.913098454)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231917961", RootPart, 1, 1.8)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0155655742, -0.311072022, -1.23832858, 0.468161941, 0.0963771641, -0.878371179, 0.167635977, 0.966295958, 0.195372581, 0.867595851, -0.238712624, 0.436226696), CFrame.new(0.0293009467, 1.5340941, -0.185427338, 0.804762483, -0.281303942, 0.522709906, 0.234380901, 0.959614992, 0.155578732, -0.545365214, -0.00269068778, 0.83819437), CFrame.new(1.49328589, 0.140407741, -0.218264878, 0.988339663, 0.12733686, 0.0834876299, 0.0394009799, 0.315751076, -0.948023796, -0.147079676, 0.940258861, 0.307052106), CFrame.new(-1.43885946, 0.879315019, -0.981875777, 0.600022733, 0.653021514, -0.462099105, -0.479813218, -0.168435588, -0.861051023, -0.640118778, 0.738371432, 0.212263182), CFrame.new(0.638569057, -1.94573832, -0.437098205, 0.995236516, 0.0701678097, 0.0676821172, -0.069176957, 0.997461736, -0.0168768615, -0.0686945617, 0.0121144131, 0.997564256), CFrame.new(-0.866744161, -1.71565473, -0.414347857, 0.863139033, 0.439523697, 0.248616189, -0.319669306, 0.856724083, -0.404766202, -0.390899748, 0.26989454, 0.879974127)}, 0.3, false)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0155678391, -0.311080545, -1.23834062, 0.763116896, 0.0963793695, -0.639038563, 0.0822451115, 0.966304779, 0.243945107, 0.641007423, -0.238712624, 0.729474902), CFrame.new(0.0966357067, 1.53412056, -0.160952657, 0.950461924, -0.259809315, 0.170655966, 0.234385133, 0.959622741, 0.155581251, -0.204184979, -0.107874453, 0.972977281), CFrame.new(1.45807779, 0.257657468, -0.104592152, 0.971470833, -0.234161496, -0.0376187563, 0.0394039005, 0.315753937, -0.948031962, 0.233871043, 0.919499755, 0.315971196), CFrame.new(-1.2602191, 0.691950202, -0.608101606, 0.796123207, 0.328872085, -0.507969677, -0.479815751, -0.168435544, -0.861059844, -0.368736863, 0.929238677, 0.0237016603), CFrame.new(0.755801916, -1.94576848, -0.166058868, 0.948501468, 0.0605239719, -0.310940623, -0.0691750348, 0.997470737, -0.016877003, 0.309132606, 0.0375175029, 0.950285435), CFrame.new(-0.648413956, -1.7156713, -0.708873153, 0.946721911, 0.321297288, -0.0220597982, -0.319670171, 0.929202139, -0.185481369, -0.0390961468, 0.182651147, 0.982403576)}, 0.3, false)
	end
	con:disconnect()
	attack = false
end

	attackthree = function()
	
	attack = true
	local con = RightArm.Touched:connect(function(hit)
		
		Damagefunc(RightArm, hit, 10, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://191395549", 1)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.00929157436, 1.08033419e-07, 0.302203268, 0.848044395, -0.110175796, -0.518339515, 0, 0.978147864, -0.207910523, 0.529919326, 0.176317334, 0.829512894), CFrame.new(0.0635877922, 1.48837936, -0.212326095, 0.866024196, 0, 0.500002265, -0.103955716, 0.978147864, 0.180055529, -0.489076138, -0.207910523, 0.847099781), CFrame.new(1.59116602, 0.511400402, -0.287502974, 0.984807611, 0.0121147037, 0.173225865, 0.169854075, 0.14020817, -0.975444138, -0.0361049175, 0.990048051, 0.136020347), CFrame.new(-1.71726346, -0.0722900257, -0.340096414, 0.984807611, 0.111620426, -0.13302201, -0.169854701, 0.778457224, -0.604279697, 0.0361019969, 0.617693722, 0.785589814), CFrame.new(0.447006732, -1.97392821, 0.332865596, 0.984808564, 0, -0.173644274, 0.0361024663, 0.978147864, 0.204752028, 0.169849783, -0.207910523, 0.963288426), CFrame.new(-0.628189504, -1.9523015, -0.334949553, 0.951055348, 0.0747591928, 0.299841464, -0.0642486662, 0.996928871, -0.0447755903, -0.302268028, 0.0233196467, 0.952937722)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231917961", RootPart, 1, 2)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.150700375, 0.0663888603, -0.843914688, 0.0131689543, 0.108801603, 0.993973136, -0.204883918, 0.973264575, -0.103820346, -0.978694618, -0.202281937, 0.0351085775), CFrame.new(0.0546556115, 1.52673519, -0.278289795, 0.314958513, 0.15719229, -0.935997725, 0.165985525, 0.961868107, 0.217390224, 0.934478402, -0.223830998, 0.276856989), CFrame.new(1.78718209, 0.369111359, -0.269202977, 0.793624938, -0.604179978, -0.0715958178, 0.248083979, 0.428809822, -0.868663669, 0.55553019, 0.671631277, 0.490201563), CFrame.new(-1.35658503, -0.0722829998, -1.10649741, 0.852582932, -0.408921659, -0.325400263, -0.169855624, 0.372022748, -0.91255039, 0.494217873, 0.833296061, 0.247722581), CFrame.new(0.92930758, -1.87670553, 0.47637701, 0.8369627, -0.204883918, -0.507460415, 0.229201645, 0.973264575, -0.0149234831, 0.496950835, -0.103820346, 0.86154592), CFrame.new(-0.427098006, -2.03601527, 0.118608348, 0.812621593, 0.0875203013, -0.576182544, 0.0223887265, 0.983241737, 0.180927277, 0.582361579, -0.159925371, 0.79704392)}, 0.3, false)
	end
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.150699973, 0.066389136, -0.843913615, 0.777764738, 0.0460220762, 0.626863539, -0.111311011, 0.991637707, 0.0653037652, -0.618616164, -0.120567776, 0.776383519), CFrame.new(-0.0225694887, 1.53084791, -0.259515226, 0.930863917, 0.0271560997, -0.364355624, 0.0810273215, 0.957058311, 0.27834174, 0.356268227, -0.288621008, 0.888690591), CFrame.new(1.52179766, 0.517595887, -0.656128168, 0.955706477, 0.253106773, 0.150206998, 0.145480365, 0.0374001786, -0.988653958, -0.255852818, 0.966715217, -0.00107847899), CFrame.new(-1.46092606, 0.414187402, -0.0133414343, 0.904185414, 0.3494322, -0.245654047, -0.271388531, 0.0258599296, -0.96212256, -0.329843998, 0.936604679, 0.118214041), CFrame.new(0.74789077, -1.97789741, -0.333561718, 0.977152228, -0.111311011, -0.181062788, 0.0972389579, 0.991637707, -0.0848487392, 0.188993275, 0.0653037652, 0.979804635), CFrame.new(-0.513150632, -2.00339508, 0.354237109, 0.96541512, 0.0335939676, 0.258544713, -0.0822335109, 0.980280161, 0.179690391, -0.247409672, -0.194736823, 0.949139714)}, 0.3, false)
	end
	con:disconnect()
	attack = false
end

	boost = function()
	
	attack = true
	local con = RightArm.Touched:connect(function(hit)
		
		Damagefunc(RightArm, hit, 10, 18, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://231917806", 2)
	end
)
	for i = 0, 1, 0.075 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.00391239673, -1.86264515e-07, 0.132759839, 0.927184582, -0.103254825, -0.360093355, 0, 0.961261988, -0.275636673, 0.374604821, 0.255566061, 0.89126724), CFrame.new(0.104889624, 1.51345134, -0.163900763, 0.994522095, 0, 0.104525983, -0.0288112015, 0.961261988, 0.274126768, -0.100476846, -0.275636673, 0.955996275), CFrame.new(1.43631327, 0.456409395, -0.294848949, 0.98480773, -0.0478649437, 0.16692099, 0.166921437, 0.525896132, -0.834008873, -0.0478633344, 0.849201024, 0.525896311), CFrame.new(-1.56367612, -0.043448586, -0.15152283, 0.984807789, 0.120623961, -0.124913871, -0.166920543, 0.855879307, -0.489498019, 0.0478659868, 0.502911985, 0.863011301), CFrame.new(0.47172308, -1.75763869, -0.179767966, 0.98480767, 0, -0.173648566, 0.0478639007, 0.961261988, 0.271449089, 0.166921735, -0.275636673, 0.946658075), CFrame.new(-0.628586531, -1.95874405, 0.424958766, 0.970295727, 0, 0.241922066, -0.066682592, 0.961261988, 0.267449051, -0.232550442, -0.275636673, 0.932708323)}, 0.2, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=240517987", RootPart, 1, 2)
	local parti = Instance.new("ParticleEmitter", Thruster1)
	parti.LightEmission = 1
	parti.Texture = "http://www.roblox.com/asset/?id=359293256"
	parti.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2.06), NumberSequenceKeypoint.new(1, 0)})
	parti.ZOffset = 0
	parti.LockedToPart = true
	parti.EmissionDirection = "Top"
	parti.Lifetime = NumberRange.new(0, 1.5)
	parti.Rate = 1000
	parti.Speed = NumberRange.new(2, 4)
	local parti2 = Instance.new("ParticleEmitter", Thruster2)
	parti2.LightEmission = 1
	parti2.Texture = "http://www.roblox.com/asset/?id=359293256"
	parti2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.06), NumberSequenceKeypoint.new(1, 0)})
	parti2.ZOffset = 0
	parti2.LockedToPart = true
	parti2.EmissionDirection = "Bottom"
	parti2.Lifetime = NumberRange.new(0, 1.5)
	parti2.Rate = 1000
	parti2.Speed = NumberRange.new(2, 4)
	local parti3 = Instance.new("ParticleEmitter", Thruster3)
	parti3.LightEmission = 1
	parti3.Texture = "http://www.roblox.com/asset/?id=359293256"
	parti3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.06), NumberSequenceKeypoint.new(1, 0)})
	parti3.ZOffset = 0
	parti3.LockedToPart = true
	parti3.EmissionDirection = "Bottom"
	parti3.Lifetime = NumberRange.new(0, 1.5)
	parti3.Rate = 1000
	parti3.Speed = NumberRange.new(2, 4)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.035269767, -0.34604463, -0.556671143, 0.719338238, 0.191475794, 0.667749643, -0.260225087, 0.96554184, 0.00346233556, -0.644077241, -0.176255807, 0.744377911), CFrame.new(0.104893088, 1.51344919, -0.163899526, 0.913545012, -1.04308128e-07, -0.406737924, 0.112112775, 0.961261451, 0.251808256, 0.390981376, -0.27563864, 0.87815547), CFrame.new(0.8536461, 0.301312327, -0.835722506, 0.679229259, 0.714323819, 0.168491006, 0.0933744684, 0.14360176, -0.98522073, -0.727962136, 0.68492341, 0.030838903), CFrame.new(-1.56367016, -0.0434497148, -0.151517451, 0.771243215, 0.624164939, -0.124908745, -0.595103145, 0.63737464, -0.489495754, -0.225912362, 0.451853812, 0.863013268), CFrame.new(0.604393482, -1.72069025, -0.512978137, 0.984807014, 0.0361037254, -0.169858038, 0.0478659645, 0.883817971, 0.46537596, 0.166925341, -0.466435909, 0.868662), CFrame.new(-0.628583908, -1.958745, 0.424968272, 0.97029686, -2.5331974e-06, 0.24191761, -0.0666790009, 0.961261988, 0.267450064, -0.232546806, -0.275636792, 0.932709277)}, 0.3, false)
	end
	for i = 0, 5 do
		for i = 0, 1, 0.1 do
			swait()
			Torso.Velocity = RootPart.CFrame.lookVector * 75
			PlayAnimationFromTable({CFrame.new(-0.0352721214, -0.346046209, -0.556673169, 0.719338238, -0.0966780856, 0.687899649, -0.260225087, 0.880657077, 0.395886421, -0.644077241, -0.463784903, 0.608332276), CFrame.new(0.169040173, 1.49889517, -0.233877718, 0.913545012, 0.0706292391, -0.40055868, -0.0566073358, 0.9973014, 0.0467479229, 0.40277946, -0.0200317502, 0.915077865), CFrame.new(0.8536461, 0.615182996, -0.640914381, 0.679229259, 0.714323819, 0.168491006, 0.381392211, -0.147398382, -0.912586331, -0.627046883, 0.684116364, -0.372554898), CFrame.new(-1.56367111, 0.0219350085, -0.156092331, 0.771243215, 0.6358428, 0.0298009217, -0.451765805, 0.579748511, -0.678085089, -0.448432624, 0.50950551, 0.734379113), CFrame.new(0.79140538, -1.38841283, -0.989657521, 0.984807014, 0.0361037254, -0.169858038, -0.0241673738, 0.997124493, 0.0718230307, 0.171962678, -0.066626817, 0.982847929), CFrame.new(-0.847571194, -2.11993861, -0.201637805, 0.97029686, -2.5331974e-06, 0.24191761, 0.0336715579, 0.990267694, -0.135041565, -0.239562824, 0.13917619, 0.960853755)}, 0.3, false)
		end
	end
	for i = 0, 1, 0.075 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * 10
		PlayAnimationFromTable({CFrame.new(-0.369770408, -0.346045107, -0.479932427, 0.295811146, 0.463011116, -0.835533738, -0.260225117, 0.880657077, 0.39588654, 0.919118404, 0.100319214, 0.380995333), CFrame.new(0.169045389, 1.49889588, -0.233876124, 0.737500429, -0.117239244, 0.665092468, -0.0657278001, 0.96768105, 0.243461519, -0.672140598, -0.223268062, 0.70595932), CFrame.new(1.4051218, 0.675374985, -0.412314236, 0.96937716, 0.178659379, 0.168489397, 0.221912861, -0.343425125, -0.912586391, -0.105178654, 0.922030449, -0.372555345), CFrame.new(-1.47490251, 0.331612647, 0.0469399467, 0.771242917, 0.531924129, -0.349630058, -0.451765448, 0.0704561248, -0.889350414, -0.44843328, 0.843855977, 0.29464373), CFrame.new(1.08964574, -1.523844, -0.492351711, 0.914350629, -0.367575347, -0.169856936, 0.383490056, 0.920747817, 0.0718262494, 0.129993871, -0.130812764, 0.982847929), CFrame.new(-0.606477261, -1.55521417, -1.29940081, 0.970295846, 0.0983953923, 0.221007496, 0.0336730108, 0.84972775, -0.526145518, -0.239566386, 0.517958879, 0.821174026)}, 0.3, false)
	end
	con:disconnect()
	attack = false
	parti2.Parent = nil
	parti3.Parent = nil
	parti.Parent = nil
end

	minigunmode = function()
	
	attack = true
	minigun = true
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.920504808, 0, -0.390731037, 0, 1, 0, 0.390731037, 0, 0.920504808), CFrame.new(-3.35276127e-08, 1.50000012, -7.4505806e-08, 0.920504749, -0.0408425145, 0.388590544, 0, 0.994521916, 0.104528457, -0.390731007, -0.096218951, 0.915462136), CFrame.new(1.93064535, 0.670000315, -0.537570596, -0.10086076, -0.907824099, 0.407040954, 0.984575033, -0.0322870314, 0.171958223, -0.142965674, 0.418106169, 0.897077441), CFrame.new(-1.49244416, 3.27825546e-07, 0.264654547, 0.805377722, 0.290638238, 0.516619623, -0.0969422758, 0.924393654, -0.368915528, -0.584780812, 0.247034103, 0.772661269), CFrame.new(0.419332564, -2, -0.272318661, 0.920504749, 0, 0.390731007, 0, 1, 0, -0.390731007, 0, 0.920504749), CFrame.new(-0.419336081, -2, 0.272320151, 0.920504749, 0, 0.390731007, 0, 1, 0, -0.390731007, 0, 0.920504749)}, 0.3, false)
		AFMotor2Weld.C0 = clerp(AFMotor2Weld.C0, CFrame.new(0, 1, -1.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.920504808, 0, -0.390731037, 0, 1, 0, 0.390731037, 0, 0.920504808), CFrame.new(-3.35276127e-08, 1.50000012, -7.4505806e-08, 0.920504749, -0.0408425145, 0.388590544, 0, 0.994521916, 0.104528457, -0.390731007, -0.096218951, 0.915462136), CFrame.new(1.93064535, 0.670000315, -0.537570596, -0.10086076, -0.907824099, 0.407040954, 0.984575033, -0.0322870314, 0.171958223, -0.142965674, 0.418106169, 0.897077441), CFrame.new(-1.49244416, 3.27825546e-07, 0.264654547, 0.805377722, 0.290638238, 0.516619623, -0.0969422758, 0.924393654, -0.368915528, -0.584780812, 0.247034103, 0.772661269), CFrame.new(0.419332564, -2, -0.272318661, 0.920504749, 0, 0.390731007, 0, 1, 0, -0.390731007, 0, 0.920504749), CFrame.new(-0.419336081, -2, 0.272320151, 0.920504749, 0, 0.390731007, 0, 1, 0, -0.390731007, 0, 0.920504749)}, 0.3, false)
		AFMotor2Weld.C0 = clerp(AFMotor2Weld.C0, CFrame.new(0, 1, -1.5) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.642787576, 0, -0.766044378, 0, 1, 0, 0.766044378, 0, 0.642787576), CFrame.new(-7.4505806e-08, 1.50000012, -5.21540642e-08, 0.642787516, -0.080073446, 0.761847854, 0, 0.994521916, 0.104528457, -0.766044319, -0.0671895966, 0.639266312), CFrame.new(1.60207367, 0.670000613, -0.727663994, -0.154772654, -0.619060934, 0.769940794, 0.984575033, -0.0322870314, 0.171958223, -0.0815935135, 0.784678876, 0.614509046), CFrame.new(-1.61730015, 7.15255737e-07, 0.310204506, 0.45211184, 0.371111691, 0.811092377, -0.0969422832, 0.924393654, -0.368915498, -0.886677384, 0.0881619602, 0.453905761), CFrame.new(0.786227643, -2, 0.0169382486, 0.999847531, 0, -0.017452687, 0, 1, 0, 0.017452687, 0, 0.999847531), CFrame.new(-0.250000417, -2, 0.433013648, 0.642787516, 0, 0.766044319, 0, 1, 0, -0.766044319, 0, 0.642787516)}, 0.3, false)
		AFMotor2Weld.C0 = clerp(AFMotor2Weld.C0, CFrame.new(5, 1, -1) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=191395766", RootPart, 1, 1.5)
	AFMotor2.Transparency = 1
	AMotor2Weld.Part0 = RightArm
	AMotor2Weld.C1 = CFrame.new(-0.035036087, -0.129943848, -1.52000952, 0, 0, 1, 1, 0, 0, 0, 0.999999881, 0)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.788010716, 0, -0.615661383, 0, 1, 0, 0.615661383, 0, 0.788010716), CFrame.new(-5.06639481e-07, 1.5, -6.2584877e-07, 0.788010657, -0.12800321, 0.602207661, 0, 0.978147626, 0.207911685, -0.615661323, -0.163836643, 0.770790756), CFrame.new(1.95475662, 0.670000613, -0.563369751, -0.134426251, -0.768676877, 0.625352085, 0.984575033, -0.0322870314, 0.171958223, -0.111989558, 0.638821721, 0.761160254), CFrame.new(-1.5233202, 2.08616257e-07, 0.124773204, 0.626582742, 0.344672084, 0.69899565, -0.0969422832, 0.924393654, -0.368915498, -0.773301959, 0.163393885, 0.61262244), CFrame.new(0.765525103, -2, 0.180034071, 0.974369884, 0, -0.224951357, 0, 1, 0, 0.224951357, 0, 0.974369884), CFrame.new(-0.440464586, -2, 0.0736047029, 0.788010716, 0, 0.615661383, 0, 1, 0, -0.615661383, 0, 0.788010716)}, 0.3, false)
		AFMotor2Weld.C0 = clerp(AFMotor2Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	attack = false
end

	unminigun = function()
	
	attack = true
	minigun = true
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.920504808, 0, -0.390731037, 0, 1, 0, 0.390731037, 0, 0.920504808), CFrame.new(-3.35276127e-08, 1.50000012, -7.4505806e-08, 0.920504749, -0.0408425145, 0.388590544, 0, 0.994521916, 0.104528457, -0.390731007, -0.096218951, 0.915462136), CFrame.new(1.93064535, 0.670000315, -0.537570596, -0.10086076, -0.907824099, 0.407040954, 0.984575033, -0.0322870314, 0.171958223, -0.142965674, 0.418106169, 0.897077441), CFrame.new(-1.49244416, 3.27825546e-07, 0.264654547, 0.805377722, 0.290638238, 0.516619623, -0.0969422758, 0.924393654, -0.368915528, -0.584780812, 0.247034103, 0.772661269), CFrame.new(0.419332564, -2, -0.272318661, 0.920504749, 0, 0.390731007, 0, 1, 0, -0.390731007, 0, 0.920504749), CFrame.new(-0.419336081, -2, 0.272320151, 0.920504749, 0, 0.390731007, 0, 1, 0, -0.390731007, 0, 0.920504749)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.920504808, 0, -0.390731037, 0, 1, 0, 0.390731037, 0, 0.920504808), CFrame.new(-3.35276127e-08, 1.50000012, -7.4505806e-08, 0.920504749, -0.0408425145, 0.388590544, 0, 0.994521916, 0.104528457, -0.390731007, -0.096218951, 0.915462136), CFrame.new(1.93064535, 0.670000315, -0.537570596, -0.10086076, -0.907824099, 0.407040954, 0.984575033, -0.0322870314, 0.171958223, -0.142965674, 0.418106169, 0.897077441), CFrame.new(-1.49244416, 3.27825546e-07, 0.264654547, 0.805377722, 0.290638238, 0.516619623, -0.0969422758, 0.924393654, -0.368915528, -0.584780812, 0.247034103, 0.772661269), CFrame.new(0.419332564, -2, -0.272318661, 0.920504749, 0, 0.390731007, 0, 1, 0, -0.390731007, 0, 0.920504749), CFrame.new(-0.419336081, -2, 0.272320151, 0.920504749, 0, 0.390731007, 0, 1, 0, -0.390731007, 0, 0.920504749)}, 0.3, false)
	end
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.642787576, 0, -0.766044378, 0, 1, 0, 0.766044378, 0, 0.642787576), CFrame.new(-7.4505806e-08, 1.50000012, -5.21540642e-08, 0.642787516, -0.080073446, 0.761847854, 0, 0.994521916, 0.104528457, -0.766044319, -0.0671895966, 0.639266312), CFrame.new(1.60207367, 0.670000613, -0.727663994, -0.154772654, -0.619060934, 0.769940794, 0.984575033, -0.0322870314, 0.171958223, -0.0815935135, 0.784678876, 0.614509046), CFrame.new(-1.61730015, 7.15255737e-07, 0.310204506, 0.45211184, 0.371111691, 0.811092377, -0.0969422832, 0.924393654, -0.368915498, -0.886677384, 0.0881619602, 0.453905761), CFrame.new(0.786227643, -2, 0.0169382486, 0.999847531, 0, -0.017452687, 0, 1, 0, 0.017452687, 0, 0.999847531), CFrame.new(-0.250000417, -2, 0.433013648, 0.642787516, 0, 0.766044319, 0, 1, 0, -0.766044319, 0, 0.642787516)}, 0.3, false)
		AFMotor2Weld.C0 = clerp(AFMotor2Weld.C0, CFrame.new(0, 0, -5) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
	end
	AMotor2Weld.Part0 = RootPart
	AMotor2Weld.C1 = CFrame.new(4.47993469, 1.56501913, -1.70001793, -1, 0, 0, 0, -1, 0, 0, 0, 1)
	attack = false
	minigun = false
end

	mattackone = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.766044438, 0, 0.642787576, -0.144595742, 0.974370062, 0.172322497, -0.626312971, -0.224951044, 0.746410787), CFrame.new(0.0480910614, 1.45409858, -0.0573127121, 0.766044438, -0.0112181902, -0.642689705, 0, 0.99984771, -0.017452389, 0.642787576, 0.0133693069, 0.765927792), CFrame.new(1.70229387, 0.883205295, -0.664011538, -0.162117422, -0.62401849, 0.764407516, 0.980277717, -0.19057098, 0.0523284823, 0.113019958, 0.757814944, 0.642606258), CFrame.new(-1.37232471, 0.0912904516, -0.50709039, 0.945729136, -0.208051592, -0.249621913, -0.173036844, 0.327782989, -0.928771555, 0.275054216, 0.921560049, 0.273993373), CFrame.new(0.782246947, -1.87060833, -0.372706503, 0.985309243, -0.144595742, -0.0908705592, 0.125790969, 0.974370062, -0.186492875, 0.115507662, 0.172322497, 0.978244662), CFrame.new(-0.391765863, -2.09435773, -0.0926613212, 0.993154049, 0.0560226291, -0.102500916, -0.0487368628, 0.99619472, 0.0722554177, 0.106158763, -0.0667651892, 0.992105186)}, 0.3, false)
	end
	for i = 0, 5 do
		for i = 0, 1, 0.5 do
			swait()
			PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.854590118, 0.035190098, 0.518109441, -0.144595742, 0.974370062, 0.172322497, -0.498766273, -0.222181529, 0.83777535), CFrame.new(-0.00292760134, 1.45299077, -0.0938585252, 0.854590118, -0.0377366394, -0.51793021, 0.035190098, 0.99927187, -0.0147433877, 0.518109441, -0.00562645495, 0.855295837), CFrame.new(1.54096782, 1.0066359, -0.916992188, -0.304768145, -0.441245884, 0.844048858, 0.888571858, -0.450755715, 0.0852015913, 0.34286499, 0.775964737, 0.529454648), CFrame.new(-1.43553936, 0.0441009998, -0.293311119, 0.981134534, -0.0747622252, -0.17828542, -0.142285034, 0.345081687, -0.927724957, 0.130881846, 0.935590327, 0.327934057), CFrame.new(0.719916224, -1.88113189, -0.365503758, 0.987393856, -0.144595742, 0.0643844604, 0.153416187, 0.974370062, -0.164518833, -0.0389455557, 0.172322497, 0.984270334), CFrame.new(-0.341048092, -2.10522199, 0.0113250762, 0.998729348, 0.0166085213, 0.0475788713, -0.0210358351, 0.995338917, 0.0941171199, -0.0457939506, -0.0949983746, 0.994423568)}, 0.4, false)
		end
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233370772", RootPart, 1, 1.2)
		Shoot(Barrel2.Position)
		for i = 0, 1, 0.5 do
			swait()
			PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.93405807, 0.0769378245, 0.348735064, -0.144595742, 0.974370062, 0.172322497, -0.32653892, -0.211384833, 0.921243072), CFrame.new(-0.0718185157, 1.44867206, -0.12724562, 0.93405807, -0.0735447183, -0.349466413, 0.0769378245, 0.997027099, -0.00418263674, 0.348735064, -0.0229803771, 0.936939597), CFrame.new(1.24298739, 0.821682334, -1.28185177, -0.186909989, -0.320542812, 0.928610265, 0.972599924, -0.193411171, 0.129001483, 0.138253093, 0.927277982, 0.347910345), CFrame.new(-1.36315918, 0.110714599, -0.609230816, 0.992805481, 0.0878583044, -0.0813536271, -0.108417258, 0.371195495, -0.92220372, -0.0508251488, 0.924388885, 0.378050327), CFrame.new(0.705901563, -1.86878705, -0.447065651, 0.956967533, -0.144595742, 0.251605332, 0.181989208, 0.974370062, -0.132222936, -0.2260378, 0.172322497, 0.958755314), CFrame.new(-0.258142084, -2.11324835, 0.126275674, 0.973016679, -0.0366126522, 0.227811456, 0.00783266127, 0.992002547, 0.125974938, -0.230601817, -0.120791331, 0.965521753)}, 0.4, false)
		end
	end
	attack = false
end

	mattackthree = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.469471633, 0, 0.882947564, 0, 1, 0, -0.882947564, 0, 0.469471633), CFrame.new(0, 1.5, 0, 0.469471604, 0, -0.882947505, 0, 1, 0, 0.882947505, 0, 0.469471604), CFrame.new(1.0305258, 1.00000048, -0.882950068, 0.848008096, 0.529983222, -9.50098038e-05, 0.215463251, -0.344919175, -0.913567901, -0.484208375, 0.774692535, -0.406686187), CFrame.new(-1.49999595, -1.87754631e-06, 3.51667404e-06, 0.817598403, 0.543970585, -0.188755706, -0.482325882, 0.467993826, -0.740502179, -0.31447494, 0.696475148, 0.645002246), CFrame.new(0.498095661, -2, 0.0435770601, 0.965925753, 0, -0.258818984, 0, 1, 0, 0.258818984, 0, 0.965925753), CFrame.new(-0.49809885, -2, -0.0435798988, 0.965925753, 0, -0.258818984, 0, 1, 0, 0.258818984, 0, 0.965925753)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.987688422, 0, 0.156434387, -0.0457369946, 0.956304729, 0.288772196, -0.149598941, -0.29237175, 0.944531083), CFrame.new(0.0211537257, 1.60987997, -0.133559421, 0.987688422, -0.00818714499, -0.156219989, 0, 0.99862957, -0.0523359627, 0.156434387, 0.0516916513, 0.986334801), CFrame.new(1.07748401, 0.67411536, -1.02287543, 0.145925522, 0.282231152, 0.948183239, 0.962904334, 0.179383934, -0.201585561, -0.226982504, 0.942426205, -0.245584935), CFrame.new(-1.6479485, -0.124089062, 0.149924487, 0.257008612, 0.861146927, 0.438603044, -0.207023472, 0.492371798, -0.845405996, -0.943974495, 0.126475468, 0.304821461), CFrame.new(0.423169494, -1.79000783, -0.931019664, 0.997208357, -0.0457369946, 0.0590220839, 0.0607874915, 0.956304729, -0.285982698, -0.0433630943, 0.288772196, 0.956415236), CFrame.new(-0.240227491, -2.03521132, -0.224069402, 0.783011556, -0.0457369946, 0.620323241, 0.213827133, 0.956304729, -0.199397042, -0.58409822, 0.288772196, 0.758577466)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233370772", RootPart, 1, 1.2)
	Shoot(Barrel2.Position)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.994541168, 0.0707310885, -0.0767150074, -0.0457369946, 0.956304729, 0.288772196, 0.0937881023, -0.283687085, 0.954319417), CFrame.new(-0.124878258, 1.60466897, -0.13943243, 0.994541168, -0.0670678094, 0.0799374133, 0.0707310885, 0.996528506, -0.0439092666, -0.0767150074, 0.0493236333, 0.995832384), CFrame.new(1.35805857, 0.769007683, -1.29268444, 0.267778158, 0.0520904884, 0.962071538, 0.949526906, 0.155058742, -0.272682041, -0.163381711, 0.986531019, -0.00793997943), CFrame.new(-1.55564368, -0.233869031, 0.528098583, 0.682602227, 0.717213154, 0.140212685, -0.639700413, 0.679180741, -0.359856814, -0.353323758, 0.155944929, 0.922411919), CFrame.new(0.658852875, -1.86664438, -0.639899731, 0.953308403, -0.0457369946, 0.29851529, 0.128167287, 0.956304729, -0.262782037, -0.273452729, 0.288772196, 0.917515337), CFrame.new(-0.537846982, -2.0791235, -0.125787899, 0.912872374, -0.061328277, 0.403612554, 0.103769839, 0.991038024, -0.084115237, -0.394836724, 0.118669257, 0.911055207)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233370772", RootPart, 1, 1.2)
	Shoot(Barrel2.Position)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.737832844, 0.227215499, -0.63559103, -0.0457369946, 0.956304729, 0.288772196, 0.673432291, -0.18399556, 0.715985119), CFrame.new(0.0244993512, 1.58054256, -0.0358743519, 0.894873619, -0.151784539, 0.41971761, 0.167697474, 0.985837996, -0.00103181601, -0.413616896, 0.0713089406, 0.907654166), CFrame.new(1.36837888, 0.682929575, -1.00599003, 0.362803906, -0.167444676, 0.916698337, 0.928528488, 0.148135036, -0.340427488, -0.0787923485, 0.974688888, 0.209221065), CFrame.new(-1.6504463, 0.183447242, 0.516261339, 0.71039921, 0.699192166, 0.0803964734, -0.676204145, 0.709750891, -0.197488174, -0.19514361, 0.0859310031, 0.977003038), CFrame.new(0.714830935, -1.80684257, -0.829074502, 0.824376106, -0.0457369946, 0.564191759, 0.199396968, 0.956304729, -0.213827267, -0.529759407, 0.288772196, 0.797474563), CFrame.new(-0.267897666, -2.10419893, 9.35792923e-06, 0.965420246, -0.034111429, 0.25845778, 0.0634135231, 0.992352903, -0.105897792, -0.25286904, 0.118625574, 0.960200548)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233370772", RootPart, 1, 1.2)
	Shoot(Barrel2.Position)
	attack = false
end

	railcannonmode = function()
	
	attack = true
	railcannon = true
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.933580399, 0, 0.35836792, 0, 1, 0, -0.35836792, 0, 0.933580399), CFrame.new(0, 1.5, 0, 0.933580339, 0, -0.35836789, 0, 1, 0, 0.35836789, 0, 0.933580339), CFrame.new(1.54411411, 1.1920929e-07, 0.0994966179, 0.966713905, -0.170457721, -0.190809011, 0.173648149, 0.98480773, 0, 0.187910169, -0.033133626, 0.981627107), CFrame.new(-1.84587193, 0.599999905, -0.42955929, 0.0428062156, 0.943859041, -0.327563226, -0.985070467, -0.0148468316, -0.171510249, -0.166744784, 0.330014557, 0.929132164), CFrame.new(0.499920011, -2, 0.00872536004, 0.939692497, 0, -0.342020184, 0, 1, 0, 0.342020184, 0, 0.939692497), CFrame.new(-0.499926776, -2, -0.00872655213, 0.981627047, 0, -0.19080919, 0, 1, 0, 0.19080919, 0, 0.981627047)}, 0.3, false)
		AFMotorWeld.C0 = clerp(AFMotorWeld.C0, CFrame.new(0, 1, -1.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.933580399, 0, 0.35836792, 0, 1, 0, -0.35836792, 0, 0.933580399), CFrame.new(0, 1.5, 0, 0.933580339, 0, -0.35836789, 0, 1, 0, 0.35836789, 0, 0.933580339), CFrame.new(1.54411411, 1.1920929e-07, 0.0994966179, 0.966713905, -0.170457721, -0.190809011, 0.173648149, 0.98480773, 0, 0.187910169, -0.033133626, 0.981627107), CFrame.new(-1.84587193, 0.599999905, -0.42955929, 0.0428062156, 0.943859041, -0.327563226, -0.985070467, -0.0148468316, -0.171510249, -0.166744784, 0.330014557, 0.929132164), CFrame.new(0.499920011, -2, 0.00872536004, 0.939692497, 0, -0.342020184, 0, 1, 0, 0.342020184, 0, 0.939692497), CFrame.new(-0.499926776, -2, -0.00872655213, 0.981627047, 0, -0.19080919, 0, 1, 0, 0.19080919, 0, 0.981627047)}, 0.3, false)
		AFMotorWeld.C0 = clerp(AFMotorWeld.C0, CFrame.new(0, 1, -1.5) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.20791164, 0, 0.978147566, 0, 1, 0, -0.978147566, 0, 0.20791164), CFrame.new(0.0978158563, 1.50000024, -0.0207916647, 0.642787576, 0.211150572, -0.736369073, 0, 0.96126163, 0.275637507, 0.766044378, -0.177176356, 0.61788702), CFrame.new(1.40917015, 2.23517418e-07, 0.0861120224, 0.731854618, -0.12904571, -0.669130623, 0.173648149, 0.98480773, 0, 0.658965051, -0.11619328, 0.743144751), CFrame.new(-1.53391707, 0.599999726, -0.672994554, 0.163157851, 0.237288922, -0.957639515, -0.985070467, -0.0148468325, -0.17151022, -0.0549153872, 0.971325636, 0.231323928), CFrame.new(0.436129451, -2, -0.0561523139, 0.777145803, 0, -0.629320502, 0, 1, 0, 0.629320502, 0, 0.777145803), CFrame.new(-0.46198675, -2, -0.202549219, 0.987688243, 0, -0.1564347, 0, 1, 0, 0.1564347, 0, 0.987688243)}, 0.3, false)
		AFMotorWeld.C0 = clerp(AFMotorWeld.C0, CFrame.new(-5, 1, -1) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=191395766", RootPart, 1, 1.5)
	AMotorWeld.Part0 = LeftArm
	AMotorWeld.C1 = CFrame.new(-0.0355796814, 0.0145721436, -1.61501646, 0, 0, 1, 1, 0, 0, 0, 0.999999881, 0)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.438371003, 0, 0.898794115, 0, 1, 0, -0.898794115, 0, 0.438371003), CFrame.new(0.0898803771, 1.50000024, -0.0438378155, 0.809016943, 0.162015691, -0.565015495, 0, 0.96126163, 0.275637507, 0.587785363, -0.2229954, 0.77767694), CFrame.new(1.56349134, 1.49011612e-07, 0.102161653, 0.977467179, -0.172353759, -0.121869534, 0.173648119, 0.984807789, 0, 0.120018095, -0.0211624131, 0.992546141), CFrame.new(-1.78267646, 0.600000024, -0.551555037, 0.145026132, 0.465225279, -0.873231292, -0.985070467, -0.0148468334, -0.171510205, -0.0927556083, 0.885067761, 0.456126511), CFrame.new(0.409590125, -2, -0.159993559, 0.906307638, 0, -0.422618568, 0, 1, 0, 0.422618568, 0, 0.906307638), CFrame.new(-0.497264832, -2, -0.0847679749, 0.996194661, 0, 0.0871553719, 0, 1, 0, -0.0871553719, 0, 0.996194661)}, 0.3, false)
		AFMotorWeld.C0 = clerp(AFMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
	end
	attack = false
end

	unrailcannon = function()
	
	attack = true
	railcannon = true
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.933580399, 0, 0.35836792, 0, 1, 0, -0.35836792, 0, 0.933580399), CFrame.new(0, 1.5, 0, 0.933580339, 0, -0.35836789, 0, 1, 0, 0.35836789, 0, 0.933580339), CFrame.new(1.54411411, 1.1920929e-07, 0.0994966179, 0.966713905, -0.170457721, -0.190809011, 0.173648149, 0.98480773, 0, 0.187910169, -0.033133626, 0.981627107), CFrame.new(-1.84587193, 0.599999905, -0.42955929, 0.0428062156, 0.943859041, -0.327563226, -0.985070467, -0.0148468316, -0.171510249, -0.166744784, 0.330014557, 0.929132164), CFrame.new(0.499920011, -2, 0.00872536004, 0.939692497, 0, -0.342020184, 0, 1, 0, 0.342020184, 0, 0.939692497), CFrame.new(-0.499926776, -2, -0.00872655213, 0.981627047, 0, -0.19080919, 0, 1, 0, 0.19080919, 0, 0.981627047)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.933580399, 0, 0.35836792, 0, 1, 0, -0.35836792, 0, 0.933580399), CFrame.new(0, 1.5, 0, 0.933580339, 0, -0.35836789, 0, 1, 0, 0.35836789, 0, 0.933580339), CFrame.new(1.54411411, 1.1920929e-07, 0.0994966179, 0.966713905, -0.170457721, -0.190809011, 0.173648149, 0.98480773, 0, 0.187910169, -0.033133626, 0.981627107), CFrame.new(-1.84587193, 0.599999905, -0.42955929, 0.0428062156, 0.943859041, -0.327563226, -0.985070467, -0.0148468316, -0.171510249, -0.166744784, 0.330014557, 0.929132164), CFrame.new(0.499920011, -2, 0.00872536004, 0.939692497, 0, -0.342020184, 0, 1, 0, 0.342020184, 0, 0.939692497), CFrame.new(-0.499926776, -2, -0.00872655213, 0.981627047, 0, -0.19080919, 0, 1, 0, 0.19080919, 0, 0.981627047)}, 0.3, false)
	end
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.20791164, 0, 0.978147566, 0, 1, 0, -0.978147566, 0, 0.20791164), CFrame.new(0.0978158563, 1.50000024, -0.0207916647, 0.642787576, 0.211150572, -0.736369073, 0, 0.96126163, 0.275637507, 0.766044378, -0.177176356, 0.61788702), CFrame.new(1.40917015, 2.23517418e-07, 0.0861120224, 0.731854618, -0.12904571, -0.669130623, 0.173648149, 0.98480773, 0, 0.658965051, -0.11619328, 0.743144751), CFrame.new(-1.53391707, 0.599999726, -0.672994554, 0.163157851, 0.237288922, -0.957639515, -0.985070467, -0.0148468325, -0.17151022, -0.0549153872, 0.971325636, 0.231323928), CFrame.new(0.436129451, -2, -0.0561523139, 0.777145803, 0, -0.629320502, 0, 1, 0, 0.629320502, 0, 0.777145803), CFrame.new(-0.46198675, -2, -0.202549219, 0.987688243, 0, -0.1564347, 0, 1, 0, 0.1564347, 0, 0.987688243)}, 0.3, false)
		AFMotorWeld.C0 = clerp(AFMotorWeld.C0, CFrame.new(0, 0, -5) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
	end
	AMotorWeld.Part0 = RootPart
	AMotorWeld.C1 = CFrame.new(-4.78009033, 1.56501913, -2.5500164, -1, 0, 0, 0, -1, 0, 0, 0, 1)
	attack = false
	railcannon = false
end

	Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	prt.Material = "Neon"
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			swait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	shoottraildd = function(mouse, partt, SpreadAmount, multiply, Type)
	
	local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
	local MainPos = partt.Position
	local MainPos2 = mouse.Hit.p + SpreadVectors
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	local speed = 50
	local num = 20
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
			if Type == "Explosive" then
				Laser(BrickColor.new("Really red"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -1, 0, -1, 0.15)
			elseif Type == "Poison" then
				Laser(BrickColor.new("Bright violet"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
				Effects.Sphere.Create(BrickColor.new("Bright violet"), CFrame.new((MainPos + pos) / 2, pos), 1, 1, 1, 2, 2, 2, 0.07)
			elseif Type == "Stun" then
				Laser(BrickColor.new("White"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
			end
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			do
				if num <= 0 then
					local refpart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						if Type == "Explosive" then
							CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233856079", refpart, 1, 2)
							Effects.Block.Create(BrickColor.new("Really red"), refpart.CFrame, 1, 1, 1, 10, 10, 10, 0.07)
							Effects.Ring.Create(BrickColor.new("Really red"), refpart.CFrame, 1, 9999, 1, 1, 0, 1, 0.02)
							MagniDamage(refpart, 15, 20, 30, 5, "Knockdown")
						else
							if Type == "Poison" then
								if hit.Name == "Head" then
									Effects.Block.Create(BrickColor.new("Bright violet"), refpart.CFrame, 1, 1, 1, 1, 1, 1, 0.07)
									MagniDamage(refpart, 5, 18 * multiply, 20 * multiply, 0, "Curse")
								else
									Effects.Sphere.Create(BrickColor.new("Bright violet"), refpart.CFrame, 1, 1, 1, 1, 1, 1, 0.07)
									MagniDamage(refpart, 5, 3 * multiply, 3 * multiply, 0, "Curse")
								end
							else
								if Type == "Stun" then
									Effects.Block.Create(BrickColor.new("White"), refpart.CFrame, 1, 1, 1, 1, 1, 1, 0.07)
									MagniDamage(refpart, 5, 10 * multiply, 10 * multiply, 0, "Freeze")
								end
							end
						end
					end
					game:GetService("Debris"):AddItem(refpart, 0)
				end
			end
		until num <= 0
	end
))
end

	mattacktwo = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.642787457, 0, -0.766044497, 0, 1, 0, 0.766044497, 0, 0.642787457), CFrame.new(0, 1.5, 0, 0.642787397, 0, 0.766044438, 0, 1, 0, -0.766044438, 0, 0.642787397), CFrame.new(1.51604533, 0, -0.656250775, 0.960815191, -0.125167504, 0.247319818, 0.235888794, 0.837791502, -0.492404014, -0.145569474, 0.531449258, 0.834488511), CFrame.new(-1.83214116, 0.600000143, -0.52276206, -0.0758163705, 0.75134778, -0.655536652, -0.996930301, -0.0700004995, 0.0350688621, -0.0195389744, 0.656183064, 0.754348636), CFrame.new(0.499997288, -2, -8.27014446e-07, 0.984807611, 0, -0.173648089, 0, 1, 0, 0.173648089, 0, 0.984807611), CFrame.new(-0.500000715, -2, -1.71363354e-06, 0.984807611, 0, -0.173648089, 0, 1, 0, 0.173648089, 0, 0.984807611)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0946200788, -1.02445483e-08, 0.0625146329, 0.754709721, 0, 0.656058848, 0, 1, 0, -0.656058848, 0, 0.754709721), CFrame.new(-0.0303973816, 1.5, -0.109256268, 0.754709661, 0, -0.656058788, 0, 1, 0, 0.656058788, 0, 0.754709661), CFrame.new(1.89339626, 0.300000608, -0.328220099, 0.399379879, -0.864509821, -0.30515331, -0.109783031, 0.285358429, -0.952112556, 0.910188615, 0.413755238, 0.0190578997), CFrame.new(-0.949671805, 0.600000203, -1.08065712, 0.0101537965, -0.559726298, -0.828615308, -0.996930361, -0.0700004995, 0.0350687429, -0.07763239, 0.825715721, -0.55871892), CFrame.new(0.49999702, -2, 1.08778477e-06, 0.98480773, 0, -0.173648208, 0, 1, 0, 0.173648208, 0, 0.98480773), CFrame.new(-0.500001788, -2, 3.88175249e-06, 0.98480773, 0, -0.173648208, 0, 1, 0, 0.173648208, 0, 0.98480773)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=192410077", RootPart, 1, 1.5)
	Shoot2(Barrel.Position)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.094619967, -1.02445483e-08, 0.0625145137, 0.99254632, 0, 0.121869221, 0, 1, 0, -0.121869221, 0, 0.99254632), CFrame.new(-0.0862959102, 1.5, -0.0735795721, 0.99254626, 0, -0.121869214, 0, 1, 0, 0.121869214, 0, 0.99254626), CFrame.new(1.61255896, 0.300000876, 0.107431374, 0.840072036, -0.485342234, -0.242326573, -0.109783031, 0.285358429, -0.952112556, 0.531250358, 0.826446474, 0.186439291), CFrame.new(-1.29411328, 0.600000143, -1.1588943, -0.0349936038, -0.00229987502, -0.999385059, -0.996930361, -0.0700004995, 0.0350687429, -0.07003811, 0.997544527, 0.000156767666), CFrame.new(0.487180531, -2, -0.112473622, 0.998629689, 0, 0.0523357466, 0, 1, 0, -0.0523357466, 0, 0.998629689), CFrame.new(-0.487187862, -2, 0.112479731, 0.998629689, 0, 0.0523357466, 0, 1, 0, -0.0523357466, 0, 0.998629689)}, 0.3, false)
	end
	attack = false
end

	ult = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-1.12503767e-06, 0, -0.39999944, 0.98480773, 0, 0.173648149, -0.0565343052, 0.945518553, 0.320622027, -0.164187551, -0.32556814, 0.931153953), CFrame.new(0.0799277425, 1.42763364, -0.453292847, 0.98480773, 0.0868240893, -0.150383711, 0, 0.866025329, 0.500000119, 0.173648149, -0.492403924, 0.852868438), CFrame.new(0.568180978, -0.228292078, -0.474152505, 0.391536057, 0.870008767, 0.299640328, 0.500365257, 0.0719806328, -0.862817109, -0.772226632, 0.4877536, -0.407139122), CFrame.new(-0.29982543, 0.654649615, -1.04775822, 0.318565607, -0.942471623, 0.1013074, -0.115927964, -0.144810557, -0.982644677, 0.94078505, 0.301292419, -0.155390501), CFrame.new(0.546569586, -1.99299693, -0.264125228, 0.98480767, -0.0565343052, -0.164187536, 0, 0.945518553, -0.32556811, 0.173648134, 0.320622027, 0.931153893), CFrame.new(-0.451785982, -2.04953146, -0.273441136, 0.98480767, -0.0565343052, -0.164187536, 0, 0.945518553, -0.32556811, 0.173648134, 0.320622027, 0.931153893)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(3.3415854e-06, 5.14090061e-07, 0.300000042, 0.991635323, -0.0942734778, -0.088158071, 0.0593911409, 0.939692676, -0.33682391, 0.114595056, 0.328770667, 0.937431514), CFrame.new(0.112005696, 1.4752928, -0.31774953, 0.991635323, 0.038589634, 0.123167254, -0.0942734778, 0.868326187, 0.486951798, -0.088158071, -0.494490057, 0.864700973), CFrame.new(1.66260803, 0.0710313246, -0.399339676, 0.963268697, -0.250757009, 0.0960957855, 0.213793606, 0.49956882, -0.839478016, 0.162498519, 0.829187572, 0.534829259), CFrame.new(-1.34094727, 0.431623071, 0.0770535022, 0.819768488, 0.565257311, 0.0919987336, -0.0703515783, 0.258820057, -0.96336019, -0.568357527, 0.783260107, 0.251939327), CFrame.new(0.557877064, -1.9732064, 0.531213284, 0.981809914, 0.0593911409, -0.180338323, 0.00596907735, 0.939692676, 0.341967821, 0.189772487, -0.33682391, 0.922245145), CFrame.new(-0.631497324, -1.90305054, 0.517219603, 0.991635263, 0.0593911409, 0.114595048, -0.0942734703, 0.939692676, 0.328770638, -0.0881580636, -0.33682391, 0.937431455)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231917822", RootPart, 1, 1)
	Effects.Sphere.Create(BrickColor.new("Persimmon"), RootPart.CFrame, 55, 55, 55, 0.5, 0.5, 0.5, 0.03)
	g.Parent = nil
	ge.Parent = nil
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(-6.27711415e-07, -3.87430191e-07, 0.300000131, 0.991635323, -0.0942734778, -0.088158071, 0.0449828133, 0.892621279, -0.448557526, 0.120978847, 0.440839857, 0.889395535), CFrame.new(0.0916699693, 1.4270997, -0.494957238, 0.991635323, 0.0232916679, 0.126952082, -0.0942734778, 0.802509308, 0.589144588, -0.088158071, -0.59618485, 0.797992349), CFrame.new(1.85559225, 0.0200719386, -0.442782521, 0.811071634, -0.584664524, 0.0181698967, 0.400982082, 0.533107102, -0.744989991, 0.425882787, 0.611526072, 0.666828156), CFrame.new(-1.6423732, 0.452560455, 0.0670740306, 0.600761533, 0.79627198, 0.0709684417, -0.221347541, 0.250986785, -0.942343235, -0.768173754, 0.550415039, 0.327036113), CFrame.new(0.586140335, -1.88879371, 0.758852243, 0.90506351, 0.0449828133, -0.422890574, 0.153661013, 0.892621279, 0.42381072, 0.39654538, -0.448557526, 0.800966859), CFrame.new(-0.604041457, -1.83279824, 0.750926971, 0.991635263, 0.0449828133, 0.12097884, -0.0942734703, 0.892621279, 0.440839827, -0.0881580636, -0.448557526, 0.889395475)}, 0.3, false)
	end
	minigun = false
	railcannon = false
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223677456, 1.5, -0.331615418, 0.829037547, 0.271102101, -0.489081144, 0, 0.874619722, 0.484809607, 0.559192896, -0.401925355, 0.72509259), CFrame.new(0.990585089, -2.5331974e-07, -0.972866297, -0.210851848, 0.71165657, 0.670139015, 0.977479398, 0.147404209, 0.151016682, 0.00869072229, 0.686889231, -0.726710141), CFrame.new(-0.591351926, 0.600000501, -1.04965925, 0.24531807, -0.655219853, -0.714496911, -0.921867132, 0.0703826398, -0.381060779, 0.299966753, 0.752152264, -0.586759567), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223676458, 1.50000012, -0.331613988, 0.829037547, 0.144729838, -0.540138841, 0, 0.965925813, 0.258819163, 0.559192896, -0.214570805, 0.80078876), CFrame.new(0.990584075, 5.96046448e-07, -0.972867489, -0.322262019, 0.686789989, 0.651510954, 0.944314957, 0.281537294, 0.170311525, -0.066456385, 0.670116484, -0.739274919), CFrame.new(-0.425541252, 0.600001037, -0.937819362, 0.0108688176, -0.870432794, -0.492167175, -0.85132283, 0.250131786, -0.461176276, 0.524529576, 0.424005568, -0.738300681), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223677456, 1.5, -0.331615418, 0.829037547, 0.271102101, -0.489081144, 0, 0.874619722, 0.484809607, 0.559192896, -0.401925355, 0.72509259), CFrame.new(0.990584493, 0.0999999642, -0.972866416, -0.210851848, 0.71165657, 0.670139015, 0.977479398, 0.147404209, 0.151016682, 0.00869072229, 0.686889231, -0.726710141), CFrame.new(-0.757156491, 0.800000608, -1.16149533, 0.133158714, -0.890347123, -0.43537426, -0.929765463, 0.0399093181, -0.36598298, 0.343227386, 0.453529775, -0.822499633), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223677456, 1.5, -0.331615418, 0.829037547, 0.271102101, -0.489081144, 0, 0.874619722, 0.484809607, 0.559192896, -0.401925355, 0.72509259), CFrame.new(0.990585089, -2.5331974e-07, -0.972866297, -0.210851848, 0.71165657, 0.670139015, 0.977479398, 0.147404209, 0.151016682, 0.00869072229, 0.686889231, -0.726710141), CFrame.new(-0.757156849, 0.500001431, -1.16149521, 0.133158684, -0.890347123, -0.43537426, -0.929765403, 0.0399093926, -0.36598298, 0.343227416, 0.453529775, -0.822499633), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223677456, 1.5, -0.331615418, 0.829037547, 0.271102101, -0.489081144, 0, 0.874619722, 0.484809607, 0.559192896, -0.401925355, 0.72509259), CFrame.new(0.990584493, 0.0999999642, -0.972866416, -0.210851848, 0.71165657, 0.670139015, 0.977479398, 0.147404209, 0.151016682, 0.00869072229, 0.686889231, -0.726710141), CFrame.new(-0.674255729, 0.800001264, -1.10557985, 0.20160985, -0.776596785, -0.596867561, -0.929765403, 0.0399093926, -0.36598298, 0.308041841, 0.628732622, -0.714006722), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231917822", RootPart, 1, 0.8)
	can.Parent = Character
	Effects.Sphere.Create(BrickColor.new("Persimmon"), AFMotor3.CFrame, 105, 105, 105, 0.5, 0.5, 0.5, 0.03)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223677456, 1.5, -0.331615418, 0.829037547, 0.271102101, -0.489081144, 0, 0.874619722, 0.484809607, 0.559192896, -0.401925355, 0.72509259), CFrame.new(0.990585148, -0.100000128, -0.97286576, -0.210851848, 0.71165657, 0.670139015, 0.977479398, 0.147404209, 0.151016682, 0.00869072229, 0.686889231, -0.726710141), CFrame.new(-0.674256444, 0.500000656, -1.1055783, 0.201609835, -0.776596785, -0.596867621, -0.929765463, 0.0399093032, -0.36598286, 0.308041722, 0.628732562, -0.714006662), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.325568169, 0, 0.945518494, 0, 1, 0, -0.945518494, 0, 0.325568169), CFrame.new(-8.7544322e-08, 1.50000048, 3.0733645e-08, 0.325568169, -0.0165014714, -0.945374548, 0, 0.99984777, -0.0174522996, 0.945518494, 0.00568191335, 0.325518608), CFrame.new(1.8493607, 0.400000066, -0.34360224, -0.0524368882, -0.896858752, 0.439197659, 0.993822634, -0.00379005075, 0.110915467, -0.0978109241, 0.442300647, 0.891517222), CFrame.new(-1.00463176, 0.60000205, -0.581835151, 0.752349138, -0.446394145, -0.484461486, -0.604538441, -0.175660357, -0.776966333, 0.261732548, 0.877425611, -0.402020365), CFrame.new(0.750989377, -2, 0.0219423026, 0.965925813, 0, -0.258819163, 0, 1, 0, 0.258819163, 0, 0.965925813), CFrame.new(-0.387374163, -2, -0.0333242267, 0.838670373, 0, -0.544638991, 0, 1, 0, 0.544638991, 0, 0.838670373)}, 0.3, false)
	end
	omega = true
	attack = false
end

	attackfour = function()
	
	attack = true
	local hohe = math.random(-20, -10)
	local hehe = math.random(-10, 10)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223677456, 1.5, -0.331615418, 0.829037547, 0.271102101, -0.489081144, 0, 0.874619722, 0.484809607, 0.559192896, -0.401925355, 0.72509259), CFrame.new(0.990585089, -2.5331974e-07, -0.972866297, -0.210851848, 0.71165657, 0.670139015, 0.977479398, 0.147404209, 0.151016682, 0.00869072229, 0.686889231, -0.726710141), CFrame.new(-0.591351926, 0.600000501, -1.04965925, 0.24531807, -0.655219853, -0.714496911, -0.921867132, 0.0703826398, -0.381060779, 0.299966753, 0.752152264, -0.586759567), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223676458, 1.50000012, -0.331613988, 0.829037547, 0.144729838, -0.540138841, 0, 0.965925813, 0.258819163, 0.559192896, -0.214570805, 0.80078876), CFrame.new(0.990584075, 5.96046448e-07, -0.972867489, -0.322262019, 0.686789989, 0.651510954, 0.944314957, 0.281537294, 0.170311525, -0.066456385, 0.670116484, -0.739274919), CFrame.new(-0.425541252, 0.600001037, -0.937819362, 0.0108688176, -0.870432794, -0.492167175, -0.85132283, 0.250131786, -0.461176276, 0.524529576, 0.424005568, -0.738300681), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223677456, 1.5, -0.331615418, 0.829037547, 0.271102101, -0.489081144, 0, 0.874619722, 0.484809607, 0.559192896, -0.401925355, 0.72509259), CFrame.new(0.990584493, 0.0999999642, -0.972866416, -0.210851848, 0.71165657, 0.670139015, 0.977479398, 0.147404209, 0.151016682, 0.00869072229, 0.686889231, -0.726710141), CFrame.new(-0.757156491, 0.800000608, -1.16149533, 0.133158714, -0.890347123, -0.43537426, -0.929765463, 0.0399093181, -0.36598298, 0.343227386, 0.453529775, -0.822499633), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
		AFMotor3Weld.C0 = clerp(AFMotor3Weld.C0, CFrame.new(0, 0, 5) * angles(math.rad(hohe), math.rad(hehe), math.rad(0)), 0.3)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233856079", RootPart, 1, 1)
	Effects.Sphere.Create(BrickColor.new("Really red"), Barrel3.CFrame, 15, 15, 15, 0.5, 0.5, 0.5, 0.03)
	shoottraildd(mouse, Barrel3, 0, 2, "Explosive")
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223677456, 1.5, -0.331615418, 0.829037547, 0.271102101, -0.489081144, 0, 0.874619722, 0.484809607, 0.559192896, -0.401925355, 0.72509259), CFrame.new(0.990585089, -2.5331974e-07, -0.972866297, -0.210851848, 0.71165657, 0.670139015, 0.977479398, 0.147404209, 0.151016682, 0.00869072229, 0.686889231, -0.726710141), CFrame.new(-0.757156849, 0.500001431, -1.16149521, 0.133158684, -0.890347123, -0.43537426, -0.929765403, 0.0399093926, -0.36598298, 0.343227416, 0.453529775, -0.822499633), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.829037547, 0, 0.559192896, 0, 1, 0, -0.559192896, 0, 0.829037547), CFrame.new(0.223677456, 1.5, -0.331615418, 0.829037547, 0.271102101, -0.489081144, 0, 0.874619722, 0.484809607, 0.559192896, -0.401925355, 0.72509259), CFrame.new(0.990584493, 0.0999999642, -0.972866416, -0.210851848, 0.71165657, 0.670139015, 0.977479398, 0.147404209, 0.151016682, 0.00869072229, 0.686889231, -0.726710141), CFrame.new(-0.674255729, 0.800001264, -1.10557985, 0.20160985, -0.776596785, -0.596867561, -0.929765403, 0.0399093926, -0.36598298, 0.308041841, 0.628732622, -0.714006722), CFrame.new(0.680448771, -2, -0.128245741, 0.96126163, 0, -0.275637388, 0, 1, 0, 0.275637388, 0, 0.96126163), CFrame.new(-0.456773728, -2, -0.203368619, 0.829037488, 0, -0.559192836, 0, 1, 0, 0.559192836, 0, 0.829037488)}, 0.3, false)
		AFMotor3Weld.C0 = clerp(AFMotor3Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	attack = false
end

	mouse.Button1Down:connect(function()
	
	if attack == false and attacktype == 1 then
		if minigun == true and cooldown2 >= 0 then
			cooldown2 = cooldown2 - 3
			attacktype = 2
			mattackone()
		else
			if minigun == true then
				unminigun()
			else
				attacktype = 2
				attackone()
			end
		end
	else
		if attack == false and attacktype == 2 then
			if railcannon == true and cooldown3 >= 0 then
				cooldown3 = cooldown3 - 5
				attacktype = 3
				mattacktwo()
			else
				if railcannon == true then
					unrailcannon()
					attacktype = 1
				else
					attacktype = 3
					attacktwo()
				end
			end
		else
			if attack == false and attacktype == 3 then
				if minigun == true and cooldown2 >= 0 then
					cooldown2 = cooldown2 - 3
					attacktype = 1
					mattackthree()
				else
					if minigun == true then
						unminigun()
					else
						if omega == true then
							attacktype = 4
							attackthree()
						else
							attacktype = 1
							attackthree()
						end
					end
				end
			else
				if attack == false and attacktype == 4 then
					if omega == true and cooldown4 >= 0 then
						cooldown4 = cooldown4 - 5
						attacktype = 1
						attackfour()
					else
						goback()
						attacktype = 1
					end
				end
			end
		end
	end
end
)
	updateskills = function()
	
	if minigun == true then
		text2.Text = "X\n Ammo"
	else
		text2.Text = "X\n Equip DDJ Multishot"
	end
	if railcannon == true then
		text3.Text = "C\n Ammo"
	else
		text3.Text = "[C]\n Equip QRR-3 Railcannon"
	end
	if omega == true then
		text4.Text = "[V]\n Ammo"
	else
		text4.Text = "[V]\n Equip RRE3 Blackout"
	end
	if cooldown1 <= co1 then
		cooldown1 = cooldown1 + 0.033333333333333
	end
	if cooldown2 <= co2 and minigun == false then
		cooldown2 = cooldown2 + 0.033333333333333
	end
	if cooldown3 <= co3 and railcannon == false then
		cooldown3 = cooldown3 + 0.033333333333333
	end
	if cooldown4 <= co4 and omega == false then
		cooldown4 = cooldown4 + 0.033333333333333
	end
end

	goback = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.906307757, 0, 0.42261821, 0, 1, 0, -0.42261821, 0, 0.906307757), CFrame.new(0, 1.5, 0, 0.906307697, 0, -0.422618181, 0, 1, 0, 0.422618181, 0, 0.906307697), CFrame.new(1.6601975, 1.4999994, -0.0649252385, 0.781850934, -0.325982988, 0.531454682, -0.0811080709, -0.898357868, -0.431711257, 0.618166983, 0.294428617, -0.728821814), CFrame.new(-1.44888604, -3.78349796e-08, -0.388228029, 0.964929819, 0.0809203684, -0.249724105, -0.134298533, 0.96955663, -0.204753056, 0.225552931, 0.231109917, 0.946421623), CFrame.new(0.497257799, -2, -0.0522656441, 0.874619603, 0, -0.484809637, 0, 1, 0, 0.484809637, 0, 0.874619603), CFrame.new(-0.49726212, -2, 0.0522664487, 0.997563958, 0, -0.0697563291, 0, 1, 0, 0.0697563291, 0, 0.997563958)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.906307757, 0, 0.42261821, 0, 1, 0, -0.42261821, 0, 0.906307757), CFrame.new(0, 1.5, 0, 0.906307697, 0, -0.422618181, 0, 1, 0, 0.422618181, 0, 0.906307697), CFrame.new(1.66019619, 1.50000036, -0.0649269223, 0.802965522, -0.164043784, 0.573005915, -0.164460212, -0.985036254, -0.0515408218, 0.572886586, -0.0528511666, -0.817928791), CFrame.new(-1.57567263, 1.45286322e-07, -0.116335958, 0.964929819, 0.0809203684, -0.249724105, -0.134298533, 0.96955663, -0.204753056, 0.225552931, 0.231109917, 0.946421623), CFrame.new(0.497257799, -2, -0.0522656441, 0.874619603, 0, -0.484809637, 0, 1, 0, 0.484809637, 0, 0.874619603), CFrame.new(-0.49726212, -2, 0.0522664487, 0.997563958, 0, -0.0697563291, 0, 1, 0, 0.0697563291, 0, 0.997563958)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.970295727, 0, -0.241921693, 0, 1, 0, 0.241921693, 0, 0.970295727), CFrame.new(0, 1.5, 0, 0.970295668, 0, 0.241921678, 0, 1, 0, -0.241921678, 0, 0.970295668), CFrame.new(1.85520256, 0.699999154, -0.318754077, -0.295568019, -0.888461173, 0.351107359, 0.932772815, -0.189012975, 0.306934923, -0.206335902, 0.4182235, 0.884598494), CFrame.new(-1.44289422, -5.96046448e-08, 0.319016129, 0.882078886, 0.32923764, 0.336955696, -0.00186546892, 0.717686236, -0.696364105, -0.471097738, 0.613619506, 0.633670092), CFrame.new(0.482769817, -2, -0.175085574, 0.978147507, 0, -0.207911983, 0, 1, 0, 0.207911983, 0, 0.978147507), CFrame.new(-0.437726796, -2, 0.215645447, 0.974370062, 0, 0.224950939, 0, 1, 0, -0.224950939, 0, 0.974370062)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233096543", RootPart, 1, 1)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233091205", RootPart, 1, 1)
	Effects.Sphere.Create(BrickColor.new("Persimmon"), AFMotor3.CFrame, 105, 105, 105, -0.5, -0.5, -0.5, 0.03)
	can.Parent = nil
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.857167125, 0, 0.515038252, 0, 1, 0, -0.515038252, 0, 0.857167125), CFrame.new(0.103007838, 1.49999988, -0.171433717, 0.857167125, 0.107082479, -0.503783464, 0, 0.978147626, 0.2079117, 0.515038252, -0.178215072, 0.838436007), CFrame.new(0.766878366, 0.0999998003, -1.12638593, 0.0371247493, 0.644972682, 0.76330328, 0.988847971, 0.0865307152, -0.12121091, -0.144226894, 0.759290814, -0.634567499), CFrame.new(-0.713899016, 0.399999678, -1.29171181, 0.364090472, -0.680900156, -0.635462821, -0.931355, -0.269105226, -0.245275825, -0.00399804115, 0.681144059, -0.732138395), CFrame.new(0.53013283, -2, 0.092574805, 0.819151759, 0, -0.573576689, 0, 1, 0, 0.573576689, 0, 0.819151759), CFrame.new(-0.469853103, -2, 0.0925830379, 0.98480767, 0, -0.173648357, 0, 1, 0, 0.173648357, 0, 0.98480767)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.857167125, 0, 0.515038252, 0, 1, 0, -0.515038252, 0, 0.857167125), CFrame.new(0.103007838, 1.49999988, -0.171433717, 0.857167125, 0.107082479, -0.503783464, 0, 0.978147626, 0.2079117, 0.515038252, -0.178215072, 0.838436007), CFrame.new(0.766876101, -3.42726707e-07, -1.12638724, 0.0371247493, 0.644972682, 0.76330328, 0.988847971, 0.0865307152, -0.12121091, -0.144226894, 0.759290814, -0.634567499), CFrame.new(-0.713901818, 0.399998933, -1.29171515, 0.279300272, -0.697655261, -0.659748673, -0.950363278, -0.102735132, -0.293692142, 0.137116492, 0.709029198, -0.691719949), CFrame.new(0.53013283, -2, 0.092574805, 0.819151759, 0, -0.573576689, 0, 1, 0, 0.573576689, 0, 0.819151759), CFrame.new(-0.469853103, -2, 0.0925830379, 0.98480767, 0, -0.173648357, 0, 1, 0, 0.173648357, 0, 0.98480767)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.857167125, 0, 0.515038252, 0, 1, 0, -0.515038252, 0, 0.857167125), CFrame.new(0.103007838, 1.49999988, -0.171433717, 0.857167125, 0.107082479, -0.503783464, 0, 0.978147626, 0.2079117, 0.515038252, -0.178215072, 0.838436007), CFrame.new(0.766878366, 0.0999998003, -1.12638593, 0.0371247493, 0.644972682, 0.76330328, 0.988847971, 0.0865307152, -0.12121091, -0.144226894, 0.759290814, -0.634567499), CFrame.new(-0.713900208, 0.499999553, -1.29171515, 0.376298666, -0.84488976, -0.380211085, -0.925719321, -0.35969004, -0.116904765, -0.0379865021, 0.395959884, -0.917481661), CFrame.new(0.53013283, -2, 0.092574805, 0.819151759, 0, -0.573576689, 0, 1, 0, 0.573576689, 0, 0.819151759), CFrame.new(-0.469853103, -2, 0.0925830379, 0.98480767, 0, -0.173648357, 0, 1, 0, 0.173648357, 0, 0.98480767)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.857167125, 0, 0.515038252, 0, 1, 0, -0.515038252, 0, 0.857167125), CFrame.new(0.103007838, 1.49999988, -0.171433717, 0.857167125, 0.107082479, -0.503783464, 0, 0.978147626, 0.2079117, 0.515038252, -0.178215072, 0.838436007), CFrame.new(0.766876101, -3.42726707e-07, -1.12638724, 0.0371247493, 0.644972682, 0.76330328, 0.988847971, 0.0865307152, -0.12121091, -0.144226894, 0.759290814, -0.634567499), CFrame.new(-0.713899612, 0.300000072, -1.29171467, 0.376298547, -0.84488976, -0.380211085, -0.92571938, -0.359689951, -0.116904832, -0.0379864275, 0.395959944, -0.917481661), CFrame.new(0.53013283, -2, 0.092574805, 0.819151759, 0, -0.573576689, 0, 1, 0, 0.573576689, 0, 0.819151759), CFrame.new(-0.469853103, -2, 0.0925830379, 0.98480767, 0, -0.173648357, 0, 1, 0, 0.173648357, 0, 0.98480767)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.857167125, 0, 0.515038252, 0, 1, 0, -0.515038252, 0, 0.857167125), CFrame.new(0.103007838, 1.49999988, -0.171433717, 0.857167125, 0.107082479, -0.503783464, 0, 0.978147626, 0.2079117, 0.515038252, -0.178215072, 0.838436007), CFrame.new(0.766878366, 0.0999998003, -1.12638593, 0.0371247493, 0.644972682, 0.76330328, 0.988847971, 0.0865307152, -0.12121091, -0.144226894, 0.759290814, -0.634567499), CFrame.new(-0.713899255, 0.50000006, -1.29171133, 0.340612859, -0.658510447, -0.671078801, -0.92571938, -0.359689951, -0.116904832, -0.16439724, 0.661049962, -0.732110918), CFrame.new(0.53013283, -2, 0.092574805, 0.819151759, 0, -0.573576689, 0, 1, 0, 0.573576689, 0, 0.819151759), CFrame.new(-0.469853103, -2, 0.0925830379, 0.98480767, 0, -0.173648357, 0, 1, 0, 0.173648357, 0, 0.98480767)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.857167125, 0, 0.515038252, 0, 1, 0, -0.515038252, 0, 0.857167125), CFrame.new(0.103007838, 1.49999988, -0.171433717, 0.857167125, 0.107082479, -0.503783464, 0, 0.978147626, 0.2079117, 0.515038252, -0.178215072, 0.838436007), CFrame.new(0.766876101, -3.42726707e-07, -1.12638724, 0.0371247493, 0.644972682, 0.76330328, 0.988847971, 0.0865307152, -0.12121091, -0.144226894, 0.759290814, -0.634567499), CFrame.new(-0.713902056, 0.299999446, -1.29171276, 0.340612829, -0.658510506, -0.671078801, -0.92571944, -0.359689891, -0.116904855, -0.164397165, 0.661049962, -0.732110858), CFrame.new(0.53013283, -2, 0.092574805, 0.819151759, 0, -0.573576689, 0, 1, 0, 0.573576689, 0, 0.819151759), CFrame.new(-0.469853103, -2, 0.0925830379, 0.98480767, 0, -0.173648357, 0, 1, 0, 0.173648357, 0, 0.98480767)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=240429289", RootPart, 1, 1)
	Effects.Sphere.Create(BrickColor.new("Persimmon"), RootPart.CFrame, 55, 55, 55, 0.5, 0.5, 0.5, 0.03)
	ge.Parent = Character
	g.Parent = Character
	AMotorWeld.Part0 = RootPart
	AMotorWeld.C1 = CFrame.new(-4.78009033, 1.56501913, -2.5500164, -1, 0, 0, 0, -1, 0, 0, 0, 1)
	AMotor2Weld.Part0 = RootPart
	AMotor2Weld.C1 = CFrame.new(4.47993469, 1.56501913, -1.70001793, -1, 0, 0, 0, -1, 0, 0, 0, 1)
	AFMotor.Transparency = 0
	AFMotor2.Transparency = 0
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.974370122, 0, -0.224950582, 0, 1, 0, 0.224950582, 0, 0.974370122), CFrame.new(-0.0224949345, 1.5, -0.0974364728, 0.974370122, -0.0117730014, 0.224642292, 0, 0.99862951, 0.052335944, -0.224950582, -0.0509945787, 0.973034739), CFrame.new(1.88297892, 4.17232513e-07, -0.188890129, 0.770794868, -0.624479651, -0.126096755, 0.265426129, 0.49471283, -0.827531397, 0.579158187, 0.604387522, 0.547075272), CFrame.new(-1.49323785, -0.0999996662, 0.0989130512, 0.754503727, 0.561999917, 0.338939488, 0.0725721419, 0.441831708, -0.894157708, -0.652270794, 0.699242949, 0.292578191), CFrame.new(0.545134008, -2, -0.268956423, 0.951056302, 0, -0.309017599, 0, 1, 0, 0.309017599, 0, 0.951056302), CFrame.new(-0.411152959, -2, 0.0234167781, 0.992546201, 0, 0.121868908, 0, 1, 0, -0.121868908, 0, 0.992546201)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.974370122, 0, -0.224950582, 0, 1, 0, 0.224950582, 0, 0.974370122), CFrame.new(-0.0224949345, 1.5, -0.0974364728, 0.974370122, -0.0117730014, 0.224642292, 0, 0.99862951, 0.052335944, -0.224950582, -0.0509945787, 0.973034739), CFrame.new(1.90547287, 1.14738941e-06, -0.0914520919, 0.770794868, -0.624479651, -0.126096755, 0.265426129, 0.49471283, -0.827531397, 0.579158187, 0.604387522, 0.547075272), CFrame.new(-1.42575228, -0.0999999642, 0.391223609, 0.754503727, 0.561999917, 0.338939488, 0.0725721419, 0.441831708, -0.894157708, -0.652270794, 0.699242949, 0.292578191), CFrame.new(0.545134008, -2, -0.268956423, 0.951056302, 0, -0.309017599, 0, 1, 0, 0.309017599, 0, 0.951056302), CFrame.new(-0.411152959, -2, 0.0234167781, 0.992546201, 0, 0.121868908, 0, 1, 0, -0.121868908, 0, 0.992546201)}, 0.3, false)
	end
	attacktype = 1
	omega = false
	attack = false
end

	mouse.KeyDown:connect(function(k)
	
	k = k:lower()
	if attack == false and k == "z" and co1 <= cooldown1 then
		cooldown1 = 0
		boost()
	else
		if attack == false and k == "x" and omega == false and minigun == false then
			minigunmode()
		else
			if attack == false and k == "x" and omega == false and minigun == true then
				unminigun()
			else
				if attack == false and k == "c" and omega == false and railcannon == false then
					railcannonmode()
				else
					if attack == false and k == "c" and omega == false and railcannon == true then
						unrailcannon()
					else
						if attack == false and k == "v" and omega == false then
							ult()
						else
							if attack == false and k == "v" and omega == true then
								goback()
							end
						end
					end
				end
			end
		end
	end
end
)
	while 1 do
		swait()
		updateskills()
		bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
		bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
		bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
		bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("Part") then
				v.Material = "SmoothPlastic"
			else
				if v:IsA("Hat") then
					v:WaitForChild("Handle").Material = "SmoothPlastic"
				end
			end
		end
		Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
		velocity = RootPart.Velocity.y
		sine = sine + change
		local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
		if equipped == true or equipped == false then
			if 1 < RootPart.Velocity.y and hit == nil then
				Anim = "Jump"
				if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				end
			else
				if RootPart.Velocity.y < -1 and hit == nil then
					Anim = "Fall"
					if attack == false then
						RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0 + 0.15 * math.cos((sine) / 15), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2 - 0.15 * math.cos((sine) / 15), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2 - 0.15 * math.cos((sine) / 15), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					end
				else
					if Torsovelocity < 1 and hit ~= nil then
						Anim = "Idle"
						if attack == false then
							change = 1
							RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0 + 0.1 * math.cos((sine) / 15), 0) * angles(math.rad(0), math.rad(10), math.rad(0)), 0.3)
							Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(0)), 0.3)
							RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2 - 0.1 * math.cos((sine) / 15), 0) * angles(math.rad(0), math.rad(-10), math.rad(0)), 0.3)
							LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2 - 0.1 * math.cos((sine) / 15), 0) * angles(math.rad(0), math.rad(-10), math.rad(0)), 0.3)
							if minigun == false then
								AFMotor2Weld.C0 = clerp(AFMotor2Weld.C0, CFrame.new(0, 0 + 0.1 * math.cos((sine) / 18), 0) * angles(math.rad(20), math.rad(20), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0 + 0.1 * math.cos((sine) / 10), 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
							else
								AFMotor2Weld.C0 = clerp(AFMotor2Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0 + 0.1 * math.cos((sine) / 10), 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
							end
							if railcannon == false then
								AFMotorWeld.C0 = clerp(AFMotorWeld.C0, CFrame.new(0, 0 + 0.1 * math.cos((sine) / 15), 0) * angles(math.rad(20), math.rad(-20), math.rad(0)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0 + 0.1 * math.cos((sine) / 10), 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
							else
								AFMotorWeld.C0 = clerp(AFMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0 + 0.12 * math.cos((sine) / 10), 0) * angles(math.rad(40), math.rad(0), math.rad(-40)), 0.3)
							end
							if omega == false then
								AFMotor3Weld.C0 = clerp(AFMotor3Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							else
								AFMotor3Weld.C0 = clerp(AFMotor3Weld.C0, CFrame.new(0, 0 + 0.05 * math.cos((sine) / 10), 0) * angles(math.rad(0 + 0.5 * math.cos((sine) / 10)), math.rad(0), math.rad(0)), 0.3)
							end
						end
					else
						if 2 < Torsovelocity and hit ~= nil then
							Anim = "Walk"
							if attack == false then
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0 + 0.75 * math.cos((sine) / 3)) * angles(math.rad(0 - 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0 - 0.75 * math.cos((sine) / 3)) * angles(math.rad(0 + 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								if omega == false then
									AFMotor3Weld.C0 = clerp(AFMotor3Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								else
									AFMotor3Weld.C0 = clerp(AFMotor3Weld.C0, CFrame.new(0, 0 + 0.05 * math.cos((sine) / 10), 0) * angles(math.rad(0 + 0.5 * math.cos((sine) / 10)), math.rad(0), math.rad(0)), 0.3)
								end
								if railcannon == false then
									AFMotorWeld.C0 = clerp(AFMotorWeld.C0, CFrame.new(0, 0 + 0.1 * math.cos((sine) / 15), 0) * angles(math.rad(20), math.rad(-20), math.rad(0)), 0.3)
									LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0 + 0.1 * math.cos((sine) / 10), 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
								else
									AFMotorWeld.C0 = clerp(AFMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
									LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0 + 0.12 * math.cos((sine) / 10), 0) * angles(math.rad(40), math.rad(0), math.rad(-70)), 0.3)
								end
								if minigun == false then
									AFMotor2Weld.C0 = clerp(AFMotor2Weld.C0, CFrame.new(0, 0 + 0.1 * math.cos((sine) / 18), 0) * angles(math.rad(20), math.rad(20), math.rad(0)), 0.3)
									RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0 + 0.1 * math.cos((sine) / 10), 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
								else
									AFMotor2Weld.C0 = clerp(AFMotor2Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
									RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0 + 0.1 * math.cos((sine) / 10), 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
								end
							end
						end
					end
				end
			end
		end
		if 0 < #Effects then
			for e = 1, #Effects do
				if Effects[e] ~= nil then
					local Thing = Effects[e]
					if Thing ~= nil then
						local Part = Thing[1]
						local Mode = Thing[2]
						local Delay = Thing[3]
						local IncX = Thing[4]
						local IncY = Thing[5]
						local IncZ = Thing[6]
						if Thing[2] == "Shoot" then
							local Look = Thing[1]
							local hit, pos = rayCast(Thing[4], Look, 15, Character)
							local mag = (Thing[4] - pos).magnitude
							Thing[9] = Thing[9] + 0.5
							Thing[5] = Thing[5] + 0.2
							Thing[6] = Thing[6] + 0.2
							Effects.Cylinder.Create(BrickColor.new("Really red"), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), Thing[9], mag * 5, Thing[9], -0.06, 0, -0.06, 0.1)
							Thing[4] = Thing[4] + Look * 15
							Thing[3] = Thing[3] - 3
							if hit ~= nil then
								Thing[3] = 0
								ref = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
								ref.Anchored = true
								ref.CFrame = CFrame.new(pos)
								MagniDamage(ref, 10, 3, 8, 0, "Normal")
								Effects.Sphere.Create(BrickColor.new("Really red"), CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
								CFuncs.Sound.Create("rbxassetid://300916057", ref, 1, 2)
								game:GetService("Debris"):AddItem(ref, 1)
							end
							if Thing[3] <= 0 then
								table.remove(Effects, e)
							end
						end
						do
							if Thing[2] == "Shoot2" then
								local Look = Thing[1]
								local hit, pos = rayCast(Thing[4], Look, 3, Character)
								local mag = (Thing[4] - pos).magnitude
								Thing[9] = Thing[9] + 0.5
								Thing[5] = Thing[5] + 0.2
								Thing[6] = Thing[6] + 0.2
								Effects.Block.Create(BrickColor.new("Really red"), CFrame.new((Thing[4] + pos) / 2, pos), 15, 15, 15, -0.5, -0.5, -0.5, 0.05)
								Thing[4] = Thing[4] + Look * 3
								Thing[3] = Thing[3] - 1
								if hit ~= nil then
									Thing[3] = 0
									ref = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
									ref.Anchored = true
									ref.CFrame = CFrame.new(pos)
									MagniDamage(ref, 10, 10, 18, 0, "Normal")
									Effects.Sphere.Create(BrickColor.new("Really red"), CFrame.new(pos), 25, 25, 25, 5, 5, 5, 0.1)
									Effects.Sphere.Create(BrickColor.new("Really red"), CFrame.new(pos), 10, 10, 10, 15, 15, 15, 0.08)
									CFuncs.Sound.Create("rbxassetid://300916057", ref, 1, 1.5)
									game:GetService("Debris"):AddItem(ref, 1)
								end
								if Thing[3] <= 0 then
									table.remove(Effects, e)
								end
							end
							do
								do
									if Thing[2] == "showDamage" then
										if Thing[6] < Thing[5] then
											Thing[6] = Thing[6] + 1
										else
											if Thing[6] < Thing[7] then
												Thing[4].position = Thing[4].position + Vector3.new(0, -0.2, 0)
												Thing[6] = Thing[6] + 1
											else
												if Thing[6] < Thing[8] then
													Thing[6] = Thing[6] + 1
												else
													if Thing[6] < Thing[9] then
														Thing[6] = Thing[6] + 1
														Thing[4].position = Thing[4].position + Vector3.new(0, 0.2, 0)
														Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
														Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
													else
														Thing[1].Parent = nil
														table.remove(Effects, e)
													end
												end
											end
										end
									end
									if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Shoot2" then
										if Thing[1].Transparency <= 1 then
											if Thing[2] == "Block1" then
												Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
												Mesh = Thing[7]
												Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											else
												if Thing[2] == "Block2" then
													Thing[1].CFrame = Thing[1].CFrame
													Mesh = Thing[7]
													Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
													Thing[1].Transparency = Thing[1].Transparency + Thing[3]
												else
													if Thing[2] == "Block3" then
														Thing[8].C0 = CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * Thing[9]
														Mesh = Thing[7]
														Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
													else
														if Thing[2] == "Cylinder" then
															Mesh = Thing[7]
															Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														else
															if Thing[2] == "Cylinder2" then
																Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, Thing[8], 0)
																Mesh = Thing[7]
																Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
																Thing[1].Transparency = Thing[1].Transparency + Thing[3]
															else
																if Thing[2] == "Blood" then
																	Mesh = Thing[7]
																	Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
																	Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
																	Thing[1].Transparency = Thing[1].Transparency + Thing[3]
																else
																	if Thing[2] == "Elec" then
																		Mesh = Thing[10]
																		Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
																		Thing[1].Transparency = Thing[1].Transparency + Thing[3]
																	else
																		if Thing[2] == "Disappear" then
																			Thing[1].Transparency = Thing[1].Transparency + Thing[3]
																		end
																	end
																end
															end
														end
													end
												end
											end
										else
											Part.Parent = nil
											table.remove(Effects, e)
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
