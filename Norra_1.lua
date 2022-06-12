
local Player = game.Players.localPlayer
local Character = Player.Character
local Player = game.Players.LocalPlayer
local Character = Player.Character
	local Effects = {}
	local ShootEffects = {}
	local Humanoid = Character.Humanoid
	local mouse = Player:GetMouse()
	local m = Instance.new("Model", Character)
	m.Name = "WeaponModel"
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
	local hobb = 0
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
	local Face = Head.face
	Humanoid.Animator.Parent = nil
	Character.Animate.Parent = nil
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

	local co1 = 5
	local co2 = 15
	local co3 = 10
	local co4 = 25
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local skillcolorscheme = BrickColor.new("Bright violet").Color
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
	text1.Text = "[Z]\n Corrupted Bazooka"
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
	text2.Text = "[X]\n Dark Charger"
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
	text3.Text = "[C]\n Shadow Cannon"
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
	text4.Text = "[V]\n Invincible Nightmare"
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

	CreateSound = function(id, par, vol, pit)
	
	coroutine.resume(coroutine.create(function()
		
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait()
		sou:play()
		game:GetService("Debris"):AddItem(sou, 6)
	end
))
end

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

	Handle = CreatePart(m, Enum.Material.Plastic, 0, 1, "Really black", "Handle", Vector3.new(0.200000003, 0.200000003, 1.10801423))
	HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0606536865, -1.06880665, -0.053850174, 0.999730885, -0.0130999982, 0.0191449989, -0.0131285042, -0.999912977, 0.00136399036, 0.0191254634, -0.00161496829, -0.999815762))
	CreateMesh("BlockMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	FakeHandle = CreatePart(m, Enum.Material.Plastic, 0, 1, "Really black", "FakeHandle", Vector3.new(0.200000003, 0.200000003, 1.10801423))
	FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 9.31322575e-10, 1.86264515e-09, 9.31322575e-10, 1.00000012, 2.91038305e-11, 1.86264515e-09, 2.91038305e-11, 1))
	CreateMesh("BlockMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Hitbox = CreatePart(m, Enum.Material.Plastic, 0, 1, "Black", "Hitbox", Vector3.new(6.04899979, 0.200000003, 6.03399992))
	HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0141906738, 7.62939453e-06, 0.0669403076, -0.275638729, -2.72830948e-06, -0.961261392, -6.43450767e-06, 1.00000012, -9.93430149e-07, 0.961261332, 5.91110438e-06, -0.275638729))
	CreateMesh("BlockMesh", Hitbox, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.85997009, -1.90734863e-05, 0.0141906738, 0.961260498, 3.64240259e-06, -0.275641471, 3.78582627e-06, -1.00000012, -7.15954229e-09, -0.275641441, -1.03772618e-06, -0.961260557))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.84391785, 1.52587891e-05, -0.00863647461, 0.587776005, 2.68220901e-06, -0.809023798, -4.56254929e-06, 1.00000012, -3.49245965e-10, 0.809023738, 3.69176269e-06, 0.587775886))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.86808014, 2.38418579e-06, 0.00830078125, -0.559193492, -6.94300979e-07, -0.82903707, 4.35858965e-07, 1.00000012, -1.13036367e-06, 0.82903707, -9.90927219e-07, -0.559193552))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.86782074, 1.76429749e-05, 0.00863647461, -0.587776005, -2.68220901e-06, 0.809023798, -4.56254929e-06, 1.00000012, -3.49245965e-10, -0.809023738, -3.69176269e-06, -0.587775886))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.86455536, 2.43186951e-05, -0.0119171143, 0.809012353, 2.03959644e-07, -0.587791741, -1.99023634e-06, 1.00000012, -2.39547808e-06, 0.587791622, 3.10782343e-06, 0.809012353))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.86489868, 2.33650208e-05, 0.0116729736, -0.788011253, -6.78095967e-06, -0.615660846, -6.26314431e-06, 1.00000012, -2.99766543e-06, 0.615660846, 1.49477273e-06, -0.788011253))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.85084534, 1.14440918e-05, -0.0139045715, 0.939691484, 5.68572432e-06, 0.342023343, -5.19026071e-06, 1.00000012, -2.36293999e-06, -0.342023402, 4.44706529e-07, 0.939691544))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.84367371, 3.0040741e-05, 0.00827026367, -0.559193492, -6.94300979e-07, -0.82903707, 4.35858965e-07, 1.00000012, -1.13036367e-06, 0.82903707, -9.90927219e-07, -0.559193552))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 1.18188214))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 9.31322575e-10, 1.86264515e-09, 9.31322575e-10, 1.00000012, 2.91038305e-11, 1.86264515e-09, 2.91038305e-11, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.86975098, 5.7220459e-06, -0.0050201416, 0.342017025, 2.15275213e-06, -0.939693868, -5.31971455e-06, 1.00000012, 3.5422272e-07, 0.939693809, 4.87826765e-06, 0.342016995))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.84202576, 2.38418579e-05, -0.00498962402, 0.342017025, 2.15275213e-06, -0.939693868, -5.31971455e-06, 1.00000012, 3.5422272e-07, 0.939693809, 4.87826765e-06, 0.342016995))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.87003326, 6.19888306e-06, 0.00411987305, -0.275638729, -2.72830948e-06, -0.961261392, -6.43450767e-06, 1.00000012, -9.93430149e-07, 0.961261332, 5.91110438e-06, -0.275638729))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.84115601, 1.90734863e-05, -0.000457763672, 0.0348991975, -1.94690074e-07, -0.999390781, -6.48386776e-06, 1.00000012, -4.21277946e-07, 0.9993909, 6.49411231e-06, 0.034899205))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.84715271, -1.28746033e-05, -0.0119247437, 0.809012353, 2.03959644e-07, -0.587791741, -1.99023634e-06, 1.00000012, -2.39547808e-06, 0.587791622, 3.10782343e-06, 0.809012353))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.84683228, 5.7220459e-06, 0.0116577148, -0.788011253, -6.78095967e-06, -0.615660846, -6.26314431e-06, 1.00000012, -2.99766543e-06, 0.615660846, 1.49477273e-06, -0.788011253))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.85539246, -9.53674316e-07, 0.0147705078, -0.99939096, -8.62684101e-06, -0.0348977856, -8.62590969e-06, 1.00000012, -1.76834874e-07, 0.0348977894, 1.24389771e-07, -0.9993909))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.85174561, 9.05990601e-06, 0.0141448975, -0.961260498, -3.64240259e-06, 0.275641471, -3.78582627e-06, 1.00000012, 7.15954229e-09, -0.275641441, -1.03772618e-06, -0.961260557))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.84172058, 7.62939453e-06, 0.00410461426, -0.275638729, -2.72830948e-06, -0.961261392, -6.43450767e-06, 1.00000012, -9.93430149e-07, 0.961261332, 5.91110438e-06, -0.275638729))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.87061691, -3.33786011e-06, -0.00048828125, 0.0348991975, -1.94690074e-07, -0.999390781, -6.48386776e-06, 1.00000012, -4.21277946e-07, 0.9993909, 6.49411231e-06, 0.034899205))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0119552612, 1.28746033e-05, -3.94950104, 0.587784708, 9.48831439e-06, 0.809017479, -8.12485814e-06, 1.00000012, -5.82361827e-06, -0.809017539, -3.14880162e-06, 0.587784648))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00859069824, 1.62124634e-05, 3.92887115, 0.809015155, 4.64636832e-06, 0.587787926, -5.60190529e-06, 1.00000012, -1.93627784e-07, -0.587787926, -3.13622877e-06, 0.809015155))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00868225098, -2.86102295e-06, -3.95278168, 0.809015155, 4.64636832e-06, 0.587787926, -5.60190529e-06, 1.00000012, -1.93627784e-07, -0.587787926, -3.13622877e-06, 0.809015155))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000473022461, 1.14440918e-05, -3.95556831, 0.99939096, 8.62684101e-06, 0.0348977856, -8.62590969e-06, 1.00000012, -1.76834874e-07, -0.0348977894, -1.24389771e-07, 0.9993909))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0117034912, 0, -3.94985962, 0.615653992, 3.55765224e-06, -0.788016558, -4.55323607e-06, 1.00000012, 9.56177246e-07, 0.788016617, 2.99792737e-06, 0.615653992))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.013874054, 1.14440918e-05, 3.93579102, 0.342017025, 2.15275213e-06, -0.939693868, -5.31971455e-06, 1.00000012, 3.5422272e-07, 0.939693809, 4.87826765e-06, 0.342016995))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00407409668, 1.09672546e-05, 3.92666626, 0.961259723, 6.65895641e-06, -0.275644481, -7.27362931e-06, 1.00000012, -1.21051562e-06, 0.275644451, 3.16882506e-06, 0.961259663))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0147628784, 4.29153442e-06, 3.94032288, 0.0348991975, -1.94690074e-07, -0.999390781, -6.48386776e-06, 1.00000012, -4.21277946e-07, 0.9993909, 6.49411231e-06, 0.034899205))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0704994202, 1.23977661e-05, 0.763931274, -0.207910523, -4.69619408e-06, -0.978147805, -6.49597496e-06, 1.00000012, -3.42010753e-06, 0.978147864, 5.6438148e-06, -0.207910508))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0730209351, 9.53674316e-06, 0.769554138, -0.587784708, -9.48831439e-06, -0.809017479, -8.12485814e-06, 1.00000012, -5.82361827e-06, 0.809017539, 3.14880162e-06, -0.587784648))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0780181885, 4.00543213e-05, 0.773895264, -0.882944465, -5.23682684e-06, -0.469477326, -4.31761146e-06, 1.00000012, -3.0323281e-06, 0.469477355, -6.50528818e-07, -0.882944584))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0849456787, 1.1920929e-05, -0.775592804, 1, 9.31322575e-10, 1.86264515e-09, 9.31322575e-10, 1.00000012, 2.91038305e-11, 1.86264515e-09, 2.91038305e-11, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0138931274, 1.14440918e-05, -3.94581604, 0.342017025, 2.15275213e-06, -0.939693868, -5.31971455e-06, 1.00000012, 3.5422272e-07, 0.939693809, 4.87826765e-06, 0.342016995))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0141906738, -2.86102295e-06, 3.94491577, -0.275638729, -2.72830948e-06, -0.961261392, -6.43450767e-06, 1.00000012, -9.93430149e-07, 0.961261332, 5.91110438e-06, -0.275638729))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0914611816, 1.38282776e-05, -0.77407074, 0.898792446, 4.78886068e-06, -0.438374549, -5.40539622e-06, 1.00000012, -1.58092007e-07, 0.438374519, 2.51177698e-06, 0.898792386))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000457763672, 1.23977661e-05, 3.92610168, 0.99939096, 8.62684101e-06, 0.0348977856, -8.62590969e-06, 1.00000012, -1.76834874e-07, -0.0348977894, -1.24389771e-07, 0.9993909))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.070602417, 1.57356262e-05, 0.757293701, 0.241917431, 2.88034789e-06, -0.97029686, -7.35372305e-06, 1.00000012, 1.13470014e-06, 0.97029686, 6.86012208e-06, 0.241917446))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0992660522, -3.81469727e-06, -0.764343262, 0.241917431, 2.88034789e-06, -0.97029686, -7.35372305e-06, 1.00000012, 1.13470014e-06, 0.97029686, 6.86012208e-06, 0.241917446))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0993690491, 1.43051147e-05, -0.757736206, -0.207910523, -4.69619408e-06, -0.978147805, -6.49597496e-06, 1.00000012, -3.42010753e-06, 0.978147864, 5.6438148e-06, -0.207910508))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00826263428, 6.67572021e-06, 3.92862701, 0.829033315, 8.75815749e-06, -0.559199274, -9.8599121e-06, 1, 1.04334322e-06, 0.559199214, 4.64823097e-06, 0.829033256))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0147399902, 5.7220459e-06, -3.94126892, 0.0348991975, -1.94690074e-07, -0.999390781, -6.48386776e-06, 1.00000012, -4.21277946e-07, 0.9993909, 6.49411231e-06, 0.034899205))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0968551636, 2.05039978e-05, -0.752113342, -0.587784708, -9.48831439e-06, -0.809017479, -8.12485814e-06, 1.00000012, -5.82361827e-06, 0.809017539, 3.14880162e-06, -0.587784648))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.590941012))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0918121338, 9.05990601e-06, -0.821632385, -0.882944465, -5.23682684e-06, -0.469477326, -4.31761146e-06, 1.00000012, -3.0323281e-06, 0.469477355, -6.50528818e-07, -0.882944584))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00497436523, 1.90734863e-06, 3.92697525, 0.939691484, 5.68572432e-06, 0.342023343, -5.19026071e-06, 1.00000012, -2.36293999e-06, -0.342023402, 4.44706529e-07, 0.939691544))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.8608551, 2.28881836e-05, 0.0138702393, -0.939691484, -5.68572432e-06, -0.342023343, -5.19026071e-06, 1.00000012, -2.36293999e-06, 0.342023402, -4.44706529e-07, -0.939691544))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00832366943, 1.1920929e-05, -3.95301819, 0.829033315, 8.75815749e-06, -0.559199274, -9.8599121e-06, 1, 1.04334322e-06, 0.559199214, 4.64823097e-06, 0.829033256))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00410461426, 1.33514404e-05, -3.95498657, 0.961259723, 6.65895641e-06, -0.275644481, -7.27362931e-06, 1.00000012, -1.21051562e-06, 0.275644451, 3.16882506e-06, 0.961259663))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0141601563, 1.85966492e-05, -3.93669128, -0.275638729, -2.72830948e-06, -0.961261392, -6.43450767e-06, 1.00000012, -9.93430149e-07, 0.961261332, 5.91110438e-06, -0.275638729))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.85630798, 1.62124634e-05, 0.0147399902, -0.99939096, -8.62684101e-06, -0.0348977856, -8.62590969e-06, 1.00000012, -1.76834874e-07, 0.0348977894, 1.24389771e-07, -0.9993909))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.99999994, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00503540039, 1.23977661e-05, -3.9547081, 0.939691484, 5.68572432e-06, 0.342023343, -5.19026071e-06, 1.00000012, -2.36293999e-06, -0.342023402, 4.44706529e-07, 0.939691544))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0116043091, 1.23977661e-05, 3.93174744, 0.615653992, 3.55765224e-06, -0.788016558, -4.55323607e-06, 1.00000012, 9.56177246e-07, 0.788016617, 2.99792737e-06, 0.615653992))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Eggplant", "Part", Vector3.new(0.317630798, 0.443205714, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0118484497, 7.15255737e-06, 3.93209076, 0.587784708, 9.48831439e-06, 0.809017479, -8.12485814e-06, 1.00000012, -5.82361827e-06, -0.809017539, -3.14880162e-06, 0.587784648))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.369338065, 0.369338065, 0.738676131))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630887, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.05175781e-05, 1.76429749e-05, 0.598358154, 1, 9.31322575e-10, 1.86264515e-09, 9.31322575e-10, 1.00000012, 2.91038305e-11, 1.86264515e-09, 2.91038305e-11, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630827, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143203735, 1.38282776e-05, -0.616622925, 0.241917431, 2.88034789e-06, -0.97029686, -7.35372305e-06, 1.00000012, 1.13470014e-06, 0.97029686, 6.86012208e-06, 0.241917446))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630887, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00648498535, 1.66893005e-05, 0.599876404, 0.898792446, 4.78886068e-06, -0.438374549, -5.40539622e-06, 1.00000012, -1.58092007e-07, 0.438374519, 2.51177698e-06, 0.898792386))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630887, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0144615173, 9.53674316e-06, 0.61618042, -0.207910523, -4.69619408e-06, -0.978147805, -6.49597496e-06, 1.00000012, -3.42010753e-06, 0.978147864, 5.6438148e-06, -0.207910508))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.22341561))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0254669189, 1.09672546e-05, 2.24623871, -0.529915392, -5.53671271e-06, -0.848050594, -7.79144466e-06, 1.00000012, -1.66005339e-06, 0.848050535, 5.72763383e-06, -0.529915333))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630887, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.011932373, 1.00135803e-05, 0.621818542, -0.587784708, -9.48831439e-06, -0.809017479, -8.12485814e-06, 1.00000012, -5.82361827e-06, 0.809017539, 3.14880162e-06, -0.587784648))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.22341561))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00685119629, -7.62939453e-06, -2.17710876, -0.882944465, -5.23682684e-06, -0.469477326, -4.31761146e-06, 1.00000012, -3.0323281e-06, 0.469477355, -6.50528818e-07, -0.882944584))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.37115026))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00694274902, 1.52587891e-05, 2.18106461, -0.882944465, -5.23682684e-06, -0.469477326, -4.31761146e-06, 1.00000012, -3.0323281e-06, 0.469477355, -6.50528818e-07, -0.882944584))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.07567978))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0302124023, 1.71661377e-05, 2.26445007, 0.848047256, 4.38932329e-06, -0.529920757, -4.58210707e-06, 1.00000012, 9.47475201e-07, 0.529920757, 1.62469223e-06, 0.848047137))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0144233704, 1.14440918e-05, -1.1307373, -0.207910523, -4.69619408e-06, -0.978147805, -6.49597496e-06, 1.00000012, -3.42010753e-06, 0.978147864, 5.6438148e-06, -0.207910508))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014465332, 6.67572021e-06, 1.13693237, -0.207910523, -4.69619408e-06, -0.978147805, -6.49597496e-06, 1.00000012, -3.42010753e-06, 0.978147864, 5.6438148e-06, -0.207910508))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630887, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0116500854, 1.52587891e-05, 0.604064941, 0.615653992, 3.55765224e-06, -0.788016558, -4.55323607e-06, 1.00000012, 9.56177246e-07, 0.788016617, 2.99792737e-06, 0.615653992))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.22341561))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0134735107, 9.53674316e-06, -2.25316238, 0.999390662, 5.35696745e-06, -0.0349050984, -5.36255538e-06, 1.00000012, -1.1944212e-07, 0.0349050872, 3.06405127e-07, 0.999390602))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.590941012))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0965957642, 1.04904175e-05, -0.843780518, 0.615653992, 3.55765224e-06, -0.788016558, -4.55323607e-06, 1.00000012, 9.56177246e-07, 0.788016617, 2.99792737e-06, 0.615653992))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0784606934, 1.8119812e-05, 0.747596741, 0.898792446, 4.78886068e-06, -0.438374549, -5.40539622e-06, 1.00000012, -1.58092007e-07, 0.438374519, 2.51177698e-06, 0.898792386))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630827, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0116500854, 1.57356262e-05, -0.622177124, 0.615653992, 3.55765224e-06, -0.788016558, -4.55323607e-06, 1.00000012, 9.56177246e-07, 0.788016617, 2.99792737e-06, 0.615653992))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0849151611, 7.62939453e-06, 0.746095657, 1, 9.31322575e-10, 1.86264515e-09, 9.31322575e-10, 1.00000012, 2.91038305e-11, 1.86264515e-09, 2.91038305e-11, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630887, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0143356323, 1.04904175e-05, 0.609573364, 0.241917431, 2.88034789e-06, -0.97029686, -7.35372305e-06, 1.00000012, 1.13470014e-06, 0.97029686, 6.86012208e-06, 0.241917446))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.443205714))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0733108521, 2.14576721e-05, 0.75177002, 0.615653992, 3.55765224e-06, -0.788016558, -4.55323607e-06, 1.00000012, 9.56177246e-07, 0.788016617, 2.99792737e-06, 0.615653992))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630827, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00650024414, 5.7220459e-06, -0.626358032, 0.898792446, 4.78886068e-06, -0.438374549, -5.40539622e-06, 1.00000012, -1.58092007e-07, 0.438374519, 2.51177698e-06, 0.898792386))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630827, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0144271851, 0, -0.609985352, -0.207910523, -4.69619408e-06, -0.978147805, -6.49597496e-06, 1.00000012, -3.42010753e-06, 0.978147864, 5.6438148e-06, -0.207910508))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630827, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0119171143, 2.05039978e-05, -0.604377747, -0.587784708, -9.48831439e-06, -0.809017479, -8.12485814e-06, 1.00000012, -5.82361827e-06, 0.809017539, 3.14880162e-06, -0.587784648))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630827, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00686645508, 1.47819519e-05, -0.600028992, -0.882944465, -5.23682684e-06, -0.469477326, -4.31761146e-06, 1.00000012, -3.0323281e-06, 0.469477355, -6.50528818e-07, -0.882944584))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630827, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891e-05, 6.19888306e-06, -0.62786293, 1, 9.31322575e-10, 1.86264515e-09, 9.31322575e-10, 1.00000012, 2.91038305e-11, 1.86264515e-09, 2.91038305e-11, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.22341561))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0134735107, 1.00135803e-05, 2.17890549, 0.999390662, 5.35696745e-06, -0.0349050984, -5.36255538e-06, 1.00000012, -1.1944212e-07, 0.0349050872, 3.06405127e-07, 0.999390602))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.22341561))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0391311646, 1.1920929e-05, -2.22155762, 0.438364893, 1.95018947e-06, -0.898797095, -5.71552664e-06, 1.00000012, -6.18805643e-07, 0.898797154, 5.40819019e-06, 0.438364923))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.07567978))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.039100647, 1.43051147e-05, 2.28431702, 0.438364893, 1.95018947e-06, -0.898797095, -5.71552664e-06, 1.00000012, -6.18805643e-07, 0.898797154, 5.40819019e-06, 0.438364923))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.22341561))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0302429199, 1.28746033e-05, -2.24144745, 0.848047256, 4.38932329e-06, -0.529920757, -4.58210707e-06, 1.00000012, 9.47475201e-07, 0.529920757, 1.62469223e-06, 0.848047137))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.07567978))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.036655426, 1.38282776e-05, 2.30462646, -0.0697548911, -1.76252797e-07, -0.997564137, -6.46524131e-06, 1.00000012, 2.75234925e-07, 0.997564137, 6.4689666e-06, -0.0697548836))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.317630887, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00694274902, 1.90734863e-05, 0.626148224, -0.882944465, -5.23682684e-06, -0.469477326, -4.31761146e-06, 1.00000012, -3.0323281e-06, 0.469477355, -6.50528818e-07, -0.882944584))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.73867619, 0.73867619))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.22341561))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0366249084, 1.28746033e-05, -2.20121765, -0.0697548911, -1.76252797e-07, -0.997564137, -6.46524131e-06, 1.00000012, 2.75234925e-07, 0.997564137, 6.4689666e-06, -0.0697548836))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 2.22341561))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0254058838, 1.38282776e-05, -2.1857605, -0.529915392, -5.53671271e-06, -0.848050594, -7.79144466e-06, 1.00000012, -1.66005339e-06, 0.848050535, 5.72763383e-06, -0.529915333))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.73867619, 0.73867619, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0115890503, 5.24520874e-06, -1.12471008, -0.615659773, -2.24635005e-06, -0.788012147, -4.62308526e-06, 1.00000012, 7.62433046e-07, 0.788012028, 4.11272049e-06, -0.615659714))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000457763672, 4.76837158e-07, 1.14862823, -0.99939096, -8.62684101e-06, -0.0348977856, -8.62590969e-06, 1.00000012, -1.76834874e-07, 0.0348977894, 1.24389771e-07, -0.9993909))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0113449097, 2.19345093e-05, -1.12442017, -0.642782152, -3.70200723e-06, 0.766049147, -4.58210707e-06, 1.00000012, 9.86823579e-07, -0.766049147, -2.87499279e-06, -0.642782032))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00605773926, 1.8119812e-05, -1.12039185, -0.913543046, -3.46451998e-06, 0.406742126, -3.03518027e-06, 1.00000012, 1.70143903e-06, -0.406742096, 3.19443643e-07, -0.913542926))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143604279, 1.14440918e-05, -1.13034058, -0.241917431, -2.88034789e-06, 0.97029686, -7.35372305e-06, 1.00000012, 1.13470014e-06, -0.97029686, -6.86012208e-06, -0.241917446))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.014749527, 1.33514404e-05, -3.49807739, 0.0348991975, -1.94690074e-07, -0.999390781, -6.48386776e-06, 1.00000012, -4.21277946e-07, 0.9993909, 6.49411231e-06, 0.034899205))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0117111206, 1.09672546e-05, 3.50668335, -0.615653992, -3.55765224e-06, 0.788016558, -4.55323607e-06, 1.00000012, 9.56177246e-07, -0.788016617, -2.99792737e-06, -0.615653992))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0116271973, 2.14576721e-05, -3.48854065, -0.615653992, -3.55765224e-06, 0.788016558, -4.55323607e-06, 1.00000012, 9.56177246e-07, -0.788016617, -2.99792737e-06, -0.615653992))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00408935547, 1.43051147e-06, -3.48344421, -0.961259723, -6.65895641e-06, 0.275644481, -7.27362931e-06, 1.00000012, -1.21051562e-06, -0.275644451, -3.16882506e-06, -0.961259663))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00495910645, 1.43051147e-05, -3.48374557, -0.939691484, -5.68572432e-06, -0.342023343, -5.19026071e-06, 1.00000012, -2.36293999e-06, 0.342023402, -4.44706529e-07, -0.939691544))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00413513184, 1.09672546e-05, 3.51181793, -0.961259723, -6.65895641e-06, 0.275644481, -7.27362931e-06, 1.00000012, -1.21051562e-06, -0.275644451, -3.16882506e-06, -0.961259663))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0143604279, 7.62939453e-06, 1.13735962, -0.241917431, -2.88034789e-06, 0.97029686, -7.35372305e-06, 1.00000012, 1.13470014e-06, -0.97029686, -6.86012208e-06, -0.241917446))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000473022461, 1.09672546e-05, 3.5124054, -0.99939096, -8.62684101e-06, -0.0348977856, -8.62590969e-06, 1.00000012, -1.76834874e-07, 0.0348977894, 1.24389771e-07, -0.9993909))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00835418701, 9.05990601e-06, 3.50985718, -0.829033315, -8.75815749e-06, 0.559199274, -9.8599121e-06, 1, 1.04334322e-06, -0.559199214, -4.64823097e-06, -0.829033256))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00505065918, 2.95639038e-05, 3.51152611, -0.939691484, -5.68572432e-06, -0.342023343, -5.19026071e-06, 1.00000012, -2.36293999e-06, 0.342023402, -4.44706529e-07, -0.939691544))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000457763672, -9.53674316e-07, -3.48287582, -0.99939096, -8.62684101e-06, -0.0348977856, -8.62590969e-06, 1.00000012, -1.76834874e-07, 0.0348977894, 1.24389771e-07, -0.9993909))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0113754272, 1.28746033e-05, 1.14329529, -0.642782152, -3.70200723e-06, 0.766049147, -4.58210707e-06, 1.00000012, 9.86823579e-07, -0.766049147, -2.87499279e-06, -0.642782032))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0138931274, 1.52587891e-05, -3.49258423, -0.342017025, -2.15275213e-06, 0.939693868, -5.31971455e-06, 1.00000012, 3.5422272e-07, -0.939693809, -4.87826765e-06, -0.342016995))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0122375488, 2.33650208e-05, 3.50591278, -0.559193492, -6.94300979e-07, -0.82903707, 4.35858965e-07, 1.00000012, -1.13036367e-06, 0.82903707, -9.90927219e-07, -0.559193552))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0139312744, 1.09672546e-05, 3.50260925, -0.342017025, -2.15275213e-06, 0.939693868, -5.31971455e-06, 1.00000012, 3.5422272e-07, -0.939693809, -4.87826765e-06, -0.342016995))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00909423828, 3.52859497e-05, 3.50928497, -0.788011253, -6.78095967e-06, -0.615660846, -6.26314431e-06, 1.00000012, -2.99766543e-06, 0.615660846, 1.49477273e-06, -0.788011253))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00903320313, 0, -3.48596191, -0.788011253, -6.78095967e-06, -0.615660846, -6.26314431e-06, 1.00000012, -2.99766543e-06, 0.615660846, 1.49477273e-06, -0.788011253))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0141525269, 1.66893005e-05, -3.4934845, -0.275638729, -2.72830948e-06, -0.961261392, -6.43450767e-06, 1.00000012, -9.93430149e-07, 0.961261332, 5.91110438e-06, -0.275638729))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00692749023, 1.62124634e-05, 1.14691925, -0.882944465, -5.23682684e-06, -0.469477326, -4.31761146e-06, 1.00000012, -3.0323281e-06, 0.469477355, -6.50528818e-07, -0.882944584))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000457763672, 1.52587891e-05, -1.11910057, -0.99939096, -8.62684101e-06, -0.0348977856, -8.62590969e-06, 1.00000012, -1.76834874e-07, 0.0348977894, 1.24389771e-07, -0.9993909))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00826263428, 1.00135803e-05, -3.48539734, -0.829033315, -8.75815749e-06, 0.559199274, -9.8599121e-06, 1, 1.04334322e-06, -0.559199214, -4.64823097e-06, -0.829033256))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00688171387, 1.43051147e-05, -1.12078857, -0.882944465, -5.23682684e-06, -0.469477326, -4.31761146e-06, 1.00000012, -3.0323281e-06, 0.469477355, -6.50528818e-07, -0.882944584))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0121765137, -5.7220459e-06, -3.48931122, -0.559193492, -6.94300979e-07, -0.82903707, 4.35858965e-07, 1.00000012, -1.13036367e-06, 0.82903707, -9.90927219e-07, -0.559193552))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0141983032, 0, 3.50172424, -0.275638729, -2.72830948e-06, -0.961261392, -6.43450767e-06, 1.00000012, -9.93430149e-07, 0.961261332, 5.91110438e-06, -0.275638729))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00605773926, 2.38418579e-06, 1.14733124, -0.913543046, -3.46451998e-06, 0.406742126, -3.03518027e-06, 1.00000012, 1.70143903e-06, -0.406742096, 3.19443643e-07, -0.913542926))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.20404208, 0.457979202, 0.598327696))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0147800446, 6.19888306e-06, 3.49713135, 0.0348991975, -1.94690074e-07, -0.999390781, -6.48386776e-06, 1.00000012, -4.21277946e-07, 0.9993909, 6.49411231e-06, 0.034899205))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.613101304, 0.457979202, 0.30285719))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0116348267, 9.05990601e-06, 1.14299011, -0.615659773, -2.24635005e-06, -0.788012147, -4.62308526e-06, 1.00000012, 7.62433046e-07, 0.788012028, 4.11272049e-06, -0.615659714))
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
			CreateSound(HitSound, hit, 1, HitPitch)
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
Cylinder = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Ring = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
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
	attackone = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 7, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.529917479, 0, -0.848049283, 0, 1, 0, 0.848049283, 0, 0.529917479), CFrame.new(0, 1.49999499, 0, 0.406736165, 0, 0.913545728, 0, 1, 0, -0.913545728, 0, 0.406736165), CFrame.new(1.35679102, 0.782658279, 0.0675592273, 0.707045317, -0.527684033, 0.470782787, 0.133834034, -0.553849995, -0.82178998, 0.694388449, 0.644049466, -0.320975006), CFrame.new(-1.69279337, 0.499999672, -0.79492861, 0.717408359, 0.691137791, 0.0874861553, -0.0527720191, 0.179133937, -0.982408345, -0.694651246, 0.700171173, 0.164984912), CFrame.new(0.641659617, -1.99999392, 0.125842437, 0.882947862, 0, -0.469471127, 0, 1, 0, 0.469471127, 0, 0.882947862), CFrame.new(-0.348587006, -1.99999392, -0.0133331716, 0.898793101, 0, 0.438373119, 0, 1, 0, -0.438373119, 0, 0.898793101)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=231917950", Torso, 1, 1.5)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.180807382, 0, 0.0999719128, 0.342022538, 0, 0.939691782, 0, 1, 0, -0.939691782, 0, 0.342022538), CFrame.new(0.0106580649, 1.49999499, -0.0643079877, 0.469472408, 0, -0.882947266, 0, 1, 0, 0.882947266, 0, 0.469472408), CFrame.new(1.83224225, 0.376015127, 0.0757035911, 0.135973215, -0.988979697, 0.0585707389, 0.0630049929, -0.0503679588, -0.996741474, 0.988707185, 0.139220387, 0.0554619655), CFrame.new(-0.541033506, 0.699999869, -0.891753554, 0.658596575, -0.726630569, 0.195598423, 0.0759940296, -0.194378868, -0.977978408, 0.74864924, 0.658957481, -0.072797671), CFrame.new(0.641663194, -1.99999392, 0.125834763, 0.406737477, 0, -0.913545191, 0, 1, 0, 0.913545191, 0, 0.406737477), CFrame.new(-0.590457141, -1.99999392, 0.164175183, 0.984808207, 0, -0.173646241, 0, 1, 0, 0.173646241, 0, 0.984808207)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.3)
	end
	con:disconnect()
	attack = false
end

	attacktwo = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 7, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.338935494, 0, 0.0863927901, -0.0348953009, 0, 0.999391079, 0, 1, 0, -0.999391079, 0, -0.0348953009), CFrame.new(-0.0100401761, 1.49999499, -0.00284555811, 0.500002861, 0, -0.866023898, 0, 1, 0, 0.866023898, 0, 0.500002861), CFrame.new(1.21845579, 0.576015115, -0.684895277, 0.950073838, 0.308843106, 0.0444484204, 0.0630049855, -0.0503680073, -0.996741474, -0.305597931, 0.949778438, -0.0673119873), CFrame.new(-0.681373537, 0.699999809, -0.527025938, 0.839439929, -0.516847908, 0.167955339, 0.0759939924, -0.194378883, -0.977978468, 0.538113117, 0.833717644, -0.123892054), CFrame.new(0.641661644, -1.99999392, 0.125842005, 0.76604569, 0, -0.642786264, 0, 1, 0, 0.642786264, 0, 0.76604569), CFrame.new(-0.451956809, -1.99999392, -0.00807090476, 0.994521499, 0, 0.104533166, 0, 1, 0, -0.104533151, 0, 0.994521499)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=231917950", Torso, 1, 2)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.2283867, 0, 0.115197472, 0.438369602, 0, -0.89879483, 0, 1, 0, 0.89879483, 0, 0.438369602), CFrame.new(0.0305867679, 1.49999499, -0.105302036, 0.438370466, 0, 0.898794472, 0, 1, 0, -0.898794472, 0, 0.438370436), CFrame.new(1.67825615, 0.576015353, -0.394908488, 0.46593222, -0.881719947, 0.0740077272, 0.063004978, -0.0503680483, -0.996741474, 0.88257432, 0.469076842, 0.0320846587), CFrame.new(-1.00808418, 0.399999917, -0.988827169, 0.839437604, -0.542131007, 0.0379279964, 0.0759930089, 0.0479900427, -0.995952845, 0.538116753, 0.838922501, 0.0814828053), CFrame.new(0.641682267, -1.99999392, 0.125833988, 0.9993909, 0, -0.0348993391, 0, 1, 0, 0.0348993391, 0, 0.9993909), CFrame.new(-0.451955765, -1.99999392, -0.00807018578, 0.898794293, 0, 0.438370645, 0, 1, 0, -0.438370645, 0, 0.898794293)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.3)
	end
	con:disconnect()
	attack = false
end

	attackthree = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.071936667, 4.72262116e-07, 0.0242703855, 0.69465822, -2.26574866e-08, -0.719340205, -3.33132277e-08, 1.00000024, 3.05271186e-09, 0.719340444, -2.44307561e-08, 0.694658041), CFrame.new(-0.06742917, 1.49999535, 0.0348889455, 0.587786257, -0.112594232, 0.801143169, -1.90369231e-08, 0.990268111, 0.139174208, -0.809016466, -0.0818046704, 0.582065761), CFrame.new(1.48275638, 1.08772719, 0.0703284144, 0.948658466, -0.162748516, 0.271220356, -0.174170092, -0.984543502, 0.0184163675, 0.264030874, -0.0647092909, -0.962341189), CFrame.new(-1.70999861, 0.400001884, -0.675200582, 0.170180559, 0.752030849, -0.636779845, -0.961551249, -0.0146153672, -0.274236888, -0.215541288, 0.658966064, 0.720628738), CFrame.new(0.499992967, -1.99999571, 5.02169132e-06, 0.939692616, -3.33132277e-08, -0.342021257, -6.1336543e-08, 1.00000024, 3.31135546e-08, 0.342021137, 3.05271186e-09, 0.939692378), CFrame.new(-0.499985337, -1.99999547, -1.91345407e-06, 1.00000036, -3.33132277e-08, 0, -3.33132277e-08, 1.00000024, 3.05271186e-09, 0, 3.05271186e-09, 1)}, 0.3, false)
	end
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.00892008841, -0.0430538058, -0.194138944, 0.481576502, -0.0958696082, 0.871144831, -0.244872004, 0.939692378, 0.238780618, -0.841499925, -0.328310072, 0.429058075), CFrame.new(-0.019540526, 1.47107708, -0.184671223, 0.594002783, 0.0319824666, -0.803827167, -0.0492451973, 0.998781085, 0.00334861875, 0.802954376, 0.0375955552, 0.59485364), CFrame.new(1.44977772, 1.05570471, -0.579476237, -0.248055339, -0.684091806, 0.685920715, 0.938187659, -0.346077472, -0.00586999068, 0.241397351, 0.642066121, 0.727652669), CFrame.new(-1.00610232, 0.414793789, -0.808649838, 0.390035987, -0.254886776, -0.88481909, -0.920793831, -0.111371592, -0.373811543, -0.00326408446, 0.960535944, -0.278137147), CFrame.new(0.500006855, -1.99999928, -6.67572021e-06, 0.939693093, -1.34110451e-06, -0.342019081, 9.983778e-07, 1, -1.13248825e-06, 0.342018992, 7.74860382e-07, 0.939692974), CFrame.new(-0.848742545, -1.53879189, 0.340080202, 1.00000012, -1.43051147e-06, 5.96046448e-08, 3.42726707e-07, 0.275636345, 0.961261988, -1.37090683e-06, -0.961262047, 0.275636375)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.3)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=231917950", Torso, 1, 2.5)
	Effects.Ring.Create(BrickColor.new("Black"), RootPart.CFrame * angles(0, 0, 0), 5, 5, 5, 1, 1, 1, 0.07)
	Effects.Wave.Create(BrickColor.new("Black"), RootPart.CFrame * angles(1.47, 0, 0), 5, 1, 5, 0.2, 0.5, 0.2, 0.07)
	CFuncs.Sound.Create("http://roblox.com/asset/?id=191395561", Torso, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		Effects.Sphere.Create(BrickColor.new("Black"), FakeHandle.CFrame, 46, 0.5, 46, 5, 0.1, 5, 0.3)
		PlayAnimationFromTable({CFrame.new(-0.00892008841, -0.0430538058, -0.194138944, 0.481576502, -0.0958696082, 0.871144831, -0.244872004, 0.939692378, 0.238780618, -0.841499925, -0.328310072, 0.429058075), CFrame.new(-0.019540526, 1.47107708, -0.184671223, 0.594002783, 0.0319824666, -0.803827167, -0.0492451973, 0.998781085, 0.00334861875, 0.802954376, 0.0375955552, 0.59485364), CFrame.new(1.44977772, 1.05570471, -0.579476237, -0.248055339, -0.684091806, 0.685920715, 0.938187659, -0.346077472, -0.00586999068, 0.241397351, 0.642066121, 0.727652669), CFrame.new(-1.00610232, 0.414793789, -0.808649838, 0.390035987, -0.254886776, -0.88481909, -0.920793831, -0.111371592, -0.373811543, -0.00326408446, 0.960535944, -0.278137147), CFrame.new(0.500006855, -1.99999928, -6.67572021e-06, 0.939693093, -1.34110451e-06, -0.342019081, 9.983778e-07, 1, -1.13248825e-06, 0.342018992, 7.74860382e-07, 0.939692974), CFrame.new(-0.848742545, -1.53879189, 0.340080202, 1.00000012, -1.43051147e-06, 5.96046448e-08, 3.42726707e-07, 0.275636345, 0.961261988, -1.37090683e-06, -0.961262047, 0.275636375)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 50, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.1)
	end
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.00892008841, -0.0430538058, -0.194138944, 0.481576502, -0.0958696082, 0.871144831, -0.244872004, 0.939692378, 0.238780618, -0.841499925, -0.328310072, 0.429058075), CFrame.new(-0.019540526, 1.47107708, -0.184671223, 0.594002783, 0.0319824666, -0.803827167, -0.0492451973, 0.998781085, 0.00334861875, 0.802954376, 0.0375955552, 0.59485364), CFrame.new(1.44977772, 1.05570471, -0.579476237, -0.248055339, -0.684091806, 0.685920715, 0.938187659, -0.346077472, -0.00586999068, 0.241397351, 0.642066121, 0.727652669), CFrame.new(-1.00610232, 0.414793789, -0.808649838, 0.390035987, -0.254886776, -0.88481909, -0.920793831, -0.111371592, -0.373811543, -0.00326408446, 0.960535944, -0.278137147), CFrame.new(0.500006855, -1.99999928, -6.67572021e-06, 0.939693093, -1.34110451e-06, -0.342019081, 9.983778e-07, 1, -1.13248825e-06, 0.342018992, 7.74860382e-07, 0.939692974), CFrame.new(-0.848742545, -1.53879189, 0.340080202, 1.00000012, -1.43051147e-06, 5.96046448e-08, 3.42726707e-07, 0.275636345, 0.961261988, -1.37090683e-06, -0.961262047, 0.275636375)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0089208819, -0.043053925, -0.194139317, 0.928869843, 0.0322815925, 0.368997931, -0.0340980515, 0.999418318, -0.00159931357, -0.368834198, -0.0110964188, 0.929429889), CFrame.new(-0.0971990675, 1.54060555, -0.0178585202, 0.971161544, -0.0423126183, -0.234638825, 0.0335117467, 0.998582244, -0.0413711555, 0.236056596, 0.0323149972, 0.971202195), CFrame.new(1.67760515, 0.555797219, -0.244446576, -0.0376413874, -0.769959748, 0.636981726, 0.999291897, -0.0296303928, 0.0232352596, 0.000983896432, 0.637404978, 0.770529509), CFrame.new(-1.24025631, 0.299959004, -0.613904595, 0.296687156, 0.422165006, -0.856594443, -0.951867223, 0.203043461, -0.229617327, 0.076989457, 0.883488357, 0.462085277), CFrame.new(0.429867148, -1.98851228, -0.115783989, 0.939692855, -5.88595867e-07, 0.342020184, -0.116976775, 0.939694285, 0.321392417, -0.321394563, -0.342018455, 0.88302362), CFrame.new(-0.55632025, -1.87755632, -0.336188763, 0.993323207, -0.0845598057, 0.0784797519, 0.0960802212, 0.982908547, -0.157036394, -0.0638594702, 0.163528249, 0.984470069)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.3)
	end
	con:disconnect()
	attack = false
end

	Driver = function()
	
	attack = true
	Humanoid.AutoRotate = false
	Humanoid.WalkSpeed = 4
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0513335876, 0, -0.0230912454, 0.961260974, 0, -0.275640309, 0, 1, 0, 0.275640309, 0, 0.961260974), CFrame.new(0.0557098538, 1.49999499, 0.00804524124, 0.848047912, -0.092019558, -0.521869063, 0, 0.98480773, -0.173648119, 0.529919744, 0.147261918, 0.835164189), CFrame.new(1.38364911, 1.19912636, -0.282603741, 0.910838783, 0.197223544, -0.362595797, 0.177413985, -0.98023802, -0.0875091404, -0.372688979, 0.0153771564, -0.927828968), CFrame.new(0.0218285155, 0.799999952, -0.961247504, 0.674040914, -0.709632337, 0.20516099, -0.273780912, -0.49794504, -0.822857797, 0.686085284, 0.498470634, -0.529919088), CFrame.new(0.499983162, -1.99999392, 3.23355198e-06, 0.939692557, 0, -0.342020541, 0, 1, 0, 0.342020541, 0, 0.939692557), CFrame.new(-0.500005722, -1.99999392, 5.7220459e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.3)
	end
	for i = 0, 1, 0.05 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0565546378, -0.0999990329, -0.367125988, 0.961260855, -0.0573087893, -0.269617409, 0, 0.978147745, -0.207911134, 0.275640815, 0.199856818, 0.940255046), CFrame.new(-0.113377631, 1.58891118, -0.22031498, 0.979420662, -0.132742718, 0.152035505, 0.0793425888, 0.945866108, 0.314709842, -0.185580641, -0.296170384, 0.936932743), CFrame.new(1.06543005, 0.449709594, -0.841737628, 0.954402268, 0.290145159, 0.0702303126, 0.00985579193, 0.204505116, -0.978815973, -0.298361093, 0.934876263, 0.192320511), CFrame.new(0.0129491575, 0.461974859, -0.712421119, 0.674041271, -0.727749646, -0.126684859, -0.125153482, 0.0565113388, -0.990526795, 0.728014529, 0.68351084, -0.0529894382), CFrame.new(0.491102874, -1.78353405, 0.747602224, 0.939692736, 0.128122747, -0.317115575, 0.0711097792, 0.833735287, 0.547566354, 0.334546119, -0.537094116, 0.774344087), CFrame.new(-0.566793799, -1.99725187, -0.257866234, 1.00000012, 0, 4.76837158e-07, -9.68575478e-08, 0.978147745, 0.207911164, -4.76837158e-07, -0.207911134, 0.978147745)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(hobb), math.rad(0), math.rad(-90)), 0.3)
	end
	Effects.Ring.Create(BrickColor.new("Black"), RootPart.CFrame * angles(0, 0, 0), 5, 5, 5, 1, 1, 1, 0.07)
	Effects.Wave.Create(BrickColor.new("Black"), RootPart.CFrame * angles(1.47, 0, 0), 5, 1, 5, 0.2, 0.5, 0.2, 0.07)
	Torso.Velocity = RootPart.CFrame.lookVector * -10
	CFuncs.Sound.Create("http://roblox.com/asset/?id=231917833", Torso, 1, 1.5)
	for i = 0, 1, 0.05 do
		swait()
		MagniDamage(Hitbox, 10, 5, 10, 0, "Normal")
		Effects.Block.Create(BrickColor.new("Black"), FakeHandle.CFrame * angles(0, 0, 0), 5, 5, 5, 5, 5, 5, 0.07)
		Effects.Wave.Create(BrickColor.new("Black"), FakeHandle.CFrame * angles(0, 0, 0), 5, 0, 5, 0.2, 0, 0.2, 0.2)
		PlayAnimationFromTable({CFrame.new(0.0565546378, -0.0999990329, -0.367125988, 0.961260855, -0.0573087893, -0.269617409, 0, 0.978147745, -0.207911134, 0.275640815, 0.199856818, 0.940255046), CFrame.new(-0.113377631, 1.58891118, -0.22031498, 0.979420662, -0.132742718, 0.152035505, 0.0793425888, 0.945866108, 0.314709842, -0.185580641, -0.296170384, 0.936932743), CFrame.new(1.06543005, 0.449709594, -0.841737628, 0.954402268, 0.290145159, 0.0702303126, 0.00985579193, 0.204505116, -0.978815973, -0.298361093, 0.934876263, 0.192320511), CFrame.new(0.0129491575, 0.461974859, -0.712421119, 0.674041271, -0.727749646, -0.126684859, -0.125153482, 0.0565113388, -0.990526795, 0.728014529, 0.68351084, -0.0529894382), CFrame.new(0.491102874, -1.78353405, 0.747602224, 0.939692736, 0.128122747, -0.317115575, 0.0711097792, 0.833735287, 0.547566354, 0.334546119, -0.537094116, 0.774344087), CFrame.new(-0.566793799, -1.99725187, -0.257866234, 1.00000012, 0, 4.76837158e-07, -9.68575478e-08, 0.978147745, 0.207911164, -4.76837158e-07, -0.207911134, 0.978147745)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 50, 0) * angles(math.rad(hobb), math.rad(0), math.rad(-90)), 0.1)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.123963438, 0, 0.0531988516, 0.994521797, 0, -0.104530722, 0, 1, 0, 0.104530722, 0, 0.994521797), CFrame.new(-0.128844514, 1.49999499, -0.0399492234, 0.970295668, 0, 0.241922557, 0, 1, 0, -0.241922557, 0, 0.970295668), CFrame.new(1.40182006, 0.402808934, -0.878386736, 0.993312716, 0.112460375, -0.0261276402, -0.0312019922, 0.0436000377, -0.99856174, -0.111159414, 0.992699325, 0.0468174666), CFrame.new(-0.350568444, 0.600000024, -0.86212796, 0.5971663, -0.781921804, -0.17885989, -0.284655899, 0.00188406813, -0.958627939, 0.749909163, 0.623373806, -0.221453562), CFrame.new(0.500002027, -1.99999392, -3.7997961e-06, 0.939692378, 0, -0.342021078, 0, 1, 0, 0.342021078, 0, 0.939692378), CFrame.new(-0.499982893, -1.99999392, -3.81469772e-06, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(hobb), math.rad(0), math.rad(-90)), 0.2)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.151990771, 0, 0.149191469, 0.615658402, 0, -0.788013339, 0, 1, 0, 0.788013339, 0, 0.615658402), CFrame.new(-0.0442236252, 1.49999607, -0.120861277, 0.927185535, 0.0650490299, -0.368911743, 0, 0.984807849, 0.173648044, 0.374602765, -0.161003947, 0.913099527), CFrame.new(1.12287998, 0.502808988, -0.87687695, 0.610050261, 0.792210698, 0.0155279655, -0.0312019922, 0.0436000377, -0.99856174, -0.791748226, 0.608688354, 0.0513167679), CFrame.new(-0.994351387, 0.600000024, -0.82932061, 0.69363749, -0.662169278, -0.28354758, -0.223153025, 0.176736221, -0.958627701, 0.684886932, 0.728214562, -0.0251742005), CFrame.new(0.463276595, -1.99999392, 0.118201159, 0.866026223, 0, -0.499998897, 0, 1, 0, 0.499998927, 0, 0.866026223), CFrame.new(-0.893108189, -1.99999428, -0.203491271, 0.955555499, 0.238245398, -0.17364642, -0.241920933, 0.970296025, -1.92270409e-06, 0.168487966, 0.042010542, 0.984808207)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(hobb), math.rad(0), math.rad(-90)), 0.3)
	end
	Humanoid.WalkSpeed = 16
	Humanoid.AutoRotate = true
	attack = false
end

	fatguywindmill = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 15, 20, math.random(10, 30), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.153586835, -2.02165875e-08, -0.0448489189, 0.434104621, 0.0610093623, -0.898794293, -0.139172941, 0.990268171, 4.17754276e-09, 0.890047312, 0.125087842, 0.438370794), CFrame.new(-0.0436847657, 1.50859702, -0.143918693, 0.306010813, -0.139172941, 0.941800594, 0.0430069715, 0.990268171, 0.132361293, -0.951056182, 4.17754276e-09, 0.309018165), CFrame.new(1.31507051, 0.982583761, -0.81716466, 0.975905657, 0.0707551092, 0.206402451, 0.206911325, 0.000140555203, -0.978359818, -0.0692529678, 0.997493744, -0.0145028643), CFrame.new(-1.64190447, -0.0893784761, 0.473618746, 0.674146295, 0.189674288, 0.713828146, -0.491761655, 0.836370111, 0.24218908, -0.551087499, -0.514304101, 0.657110333), CFrame.new(0.843345761, -1.9011215, 0.156547144, 0.862016082, -0.230768725, -0.451302767, 0.261689007, 0.965131581, 0.00633261725, 0.434105158, -0.123559788, 0.892348409), CFrame.new(-0.317169666, -2.06422138, 0.021623686, 0.857598782, -0.139172941, 0.495131671, 0.120527521, 0.990268171, 0.0695861429, -0.499997675, 4.17754276e-09, 0.866026878)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=238319531", Torso, 1, 1)
	for i = 0, 3 do
		CFuncs.Sound.Create("http://roblox.com/asset/?id=231917845", Torso, 1, 1)
		Effects.Ring.Create(BrickColor.new("Black"), RootPart.CFrame * angles(0, 0, 0), 5, 5, 5, 1, 1, 1, 0.07)
		for i = 0, 1, 0.05 do
			swait()
			Effects.Wave.Create(BrickColor.new("Black"), FakeHandle.CFrame * angles(3.14, 0, 0), 5, 1, 5, 0.2, 0.1, 0.2, 0.07)
			Torso.Velocity = RootPart.CFrame.lookVector * 50
			PlayAnimationFromTable({CFrame.new(0.41534692, -1.34110451e-07, -0.386532724, 0.662618637, -0.0894249901, 0.743599176, -0.139172986, 0.960852683, 0.239568397, -0.735912681, -0.26223141, 0.624233425), CFrame.new(-0.0485539213, 1.53545654, -0.217515782, 0.758588254, 0.153950363, -0.633121729, -0.0520595983, 0.982900262, 0.176626489, 0.649487257, -0.101026714, 0.753631234), CFrame.new(1.45274282, 0.873826981, -0.949364126, 0.0823617354, -0.743233144, 0.663943648, 0.914199769, -0.208912551, -0.347267181, 0.396806657, 0.635578632, 0.662257135), CFrame.new(-0.909216046, 0.453060716, -0.592161536, 0.364558309, -0.79455018, -0.485579401, -0.703706682, 0.106431037, -0.702473879, 0.609831393, 0.597798049, -0.520329893), CFrame.new(0.843343794, -1.88252175, -0.308028162, 0.862017155, -0.230767742, -0.451301038, 0.14889662, 0.966355145, -0.209731787, 0.484516472, 0.113595188, 0.867375433), CFrame.new(-0.775360465, -2.25170565, 0.232322067, 0.955271602, 0.199518695, 0.218285561, -0.21956712, 0.972969413, 0.0715604872, -0.198107541, -0.116287977, 0.97325772)}, 0.3, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(hobb), math.rad(0)), 0.3)
		end
	end
	con:disconnect()
	attack = false
end

	qaeoshotcarnival = function()
	
	attack = true
	Humanoid.WalkSpeed = 5
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.990268588, 0, 0.139170513, 0, 1, 0, -0.139170498, 0, 0.990268588), CFrame.new(2.98023224e-08, 1.49999511, -5.96046448e-08, 0.970296144, -0.0666821823, -0.232549146, 0, 0.961261988, -0.275636584, 0.241920665, 0.267449111, 0.932708681), CFrame.new(1.50103521, 1.42999959, -0.298871636, 0.866025031, -0.0174468681, -0.499696344, 0, -0.999391139, 0.0348936729, -0.500000834, -0.0302187987, -0.865497649), CFrame.new(-1.36237788, 5.06639481e-07, 0.314577639, 0.852867961, 0.380237699, 0.357820779, -0.173650056, 0.852868438, -0.492403448, -0.492404312, 0.357819498, 0.793412566), CFrame.new(0.504996002, -1.99999166, 0.244792342, 0.999834955, -0.0181521177, -0.000935673714, 0.0181519948, 0.994521856, 0.102941051, -0.000938042998, -0.102941036, 0.99468708), CFrame.new(-0.512197375, -1.99999166, -0.294275373, 0.970295668, 0, 0.241922915, 0, 1, 0, -0.241922885, 0, 0.970295668)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=192410062", Torso, 1, 1)
	for i = 0, 4 do
		for i = 0, 1, 0.1 do
			swait()
			Effects.Wave.Create(BrickColor.new("Black"), FakeHandle.CFrame * angles(3.14, 0, 0), 8, 0, 8, -0.5, 0, -0.5, 0.07)
			PlayAnimationFromTable({CFrame.new(0.0476509482, -0.310000062, 0.16318503, 0.934116066, -0.00962977111, 0.356839776, 0.0531230122, 0.992255092, -0.112285353, -0.35299474, 0.123843968, 0.92739284), CFrame.new(0.0750635117, 1.49534893, -0.109013185, 0.944750905, 0.0997348875, -0.312247932, -0.0282864608, 0.973839819, 0.225468785, 0.326566517, -0.204179406, 0.922857106), CFrame.new(1.23751664, 0.463839352, -1.3716116, 0.974988639, -0.21810995, -0.0427245349, -0.00947946869, 0.151248127, -0.988450527, 0.222052902, 0.964132905, 0.145397604), CFrame.new(-0.0479993224, 0.448333919, -1.40435374, 0.105266429, -0.922096133, 0.37236774, 0.981781542, 0.0367998295, -0.186416894, 0.158191234, 0.385207117, 0.909170568), CFrame.new(0.361511588, -1.68047976, 0.371658564, 0.975161433, 0.177157789, -0.132949159, -0.00886943564, 0.630984306, 0.775744975, 0.221318096, -0.755297303, 0.616882741), CFrame.new(-0.513344169, -1.71515119, -0.34862572, 0.998331547, 0.0523007512, 0.0244735926, -0.0553211533, 0.987769186, 0.145780608, -0.0165498182, -0.146891281, 0.989014208)}, 0.3, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(hobb), math.rad(0)), 0.3)
		end
	end
	local icepart1 = CreatePart(EffectModel, "SmoothPlastic", 0.5, 0, BrickColor.new("Black"), "Ice", Vector3.new(2, 4, 2))
	icepart1.Anchored = true
	icepart1.Material = Enum.Material.Neon
	i1msh = CreateMesh("SpecialMesh", icepart1, "FileMesh", "http://www.roblox.com/asset/?id=1778999", Vector3.new(0, 0, 0), Vector3.new(3, 4, 3))
	icepart1.CFrame = cn(Handle.Position)
	game:GetService("Debris"):AddItem(icepart1, 20)
	MouseLook = cn(icepart1.Position, mouse.Hit.p)
	CFuncs.Sound.Create("http://roblox.com/asset/?id=233091205", Torso, 1, 1)
	table.insert(ShootEffects, {MouseLook, "Blast", 50, icepart1.Position, 8, 27, 0, icepart1, 7, 2})
	Effects.Wave.Create(BrickColor.new("Black"), RootPart.CFrame * cn(0, 0, 5) * angles(1.47, 0, 0), 5, 10, 5, 0.5, 0.1, 0.5, 0.07)
	Effects.Ring.Create(BrickColor.new("Black"), RootPart.CFrame * angles(0, 0, 0), 5, 5, 5, 1, 1, 1, 0.07)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0476517379, -0.310000032, 0.163185105, 0.873793244, -0.00962939486, -0.486202449, -0.0518689938, 0.992255092, -0.112869821, 0.483523667, 0.123843722, 0.866526246), CFrame.new(0.0640103742, 1.51161397, -0.0302033424, 0.857438564, -0.0923023969, 0.506240606, -0.0282860827, 0.973839819, 0.225468546, -0.513808489, -0.207644954, 0.832396865), CFrame.new(0.815435946, 0.639271677, -0.779436171, 0.796812892, 0.598370373, 0.0839184597, -0.00947906636, 0.151247934, -0.988450527, -0.604152024, 0.78681457, 0.126188263), CFrame.new(-0.239385799, 0.38484332, -0.848062754, 0.0876317471, -0.910338521, 0.404480428, 0.945100844, -0.0523413606, -0.322559983, 0.314809799, 0.410541266, 0.855774879), CFrame.new(0.517082453, -1.68048, -0.0380372703, 0.796361029, -0.322351098, 0.511760712, -0.00886903331, 0.839820087, 0.542792559, -0.604756594, -0.436797619, 0.66594106), CFrame.new(-0.717575312, -1.73490179, 0.0509161651, 0.629037082, 0.110529765, 0.769477487, -0.0553207211, 0.993695617, -0.0975131243, -0.775404513, 0.0187713355, 0.631185889)}, 0.3, false)
	end
	Humanoid.WalkSpeed = 16
	attack = false
end

	Cloak = function()
	
	Face.Parent = nil
	cloaked = true
	for _,v in pairs(Torso.Parent:children()) do
		do
			if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
				coroutine.resume(coroutine.create(function()
		
		for i = 0, 1, 0.5 do
			swait()
			v.Transparency = v.Transparency + 0.1
		end
		v.Transparency = 1
	end
))
			end
			if v.className == "Accessory" then
				do
					hatp = v.Handle
					coroutine.resume(coroutine.create(function(derp)
		
		for i = 0, 1, 0.5 do
			swait()
			derp.Transparency = derp.Transparency + 0.1
		end
		derp.Transparency = 1
	end
), hatp)
					-- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_THEN_STMT

					-- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_STMT

				end
			end
		end
	end
end

	UnCloak = function()
	
	CFuncs.Sound.Create("http://roblox.com/asset/?id=233856106", Torso, 1, 1.5)
	Face.Parent = Head
	cloaked = false
	for _,v in pairs(Torso.Parent:children()) do
		do
			if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
				coroutine.resume(coroutine.create(function()
		
		for i = 0, 1, 0.2 do
			swait()
			v.Transparency = v.Transparency - 0.1
		end
		v.Transparency = 0
	end
))
			end
			if v.className == "Accessory" then
				do
					hatp = v.Handle
					coroutine.resume(coroutine.create(function(derp)
		
		for i = 0, 1, 0.2 do
			swait()
			derp.Transparency = derp.Transparency - 0.1
		end
		derp.Transparency = 0
	end
), hatp)
					-- DECOMPILER ERROR at PC47: LeaveBlock: unexpected jumping out IF_THEN_STMT

					-- DECOMPILER ERROR at PC47: LeaveBlock: unexpected jumping out IF_STMT

				end
			end
		end
	end
end

	Clone = function()
	
	CFuncs.Sound.Create("http://roblox.com/asset/?id=2767090", Torso, 1, 1)
	for _,v in pairs(Torso.Parent:children()) do
		if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
			n = v:clone()
			n:BreakJoints()
			n.archivable = true
			n.Anchored = true
			n.CanCollide = false
			n.Name = "TRAILER"
			n.BrickColor = BrickColor.new("Really black")
			n.Parent = EffectModel
			n.CFrame = v.CFrame
			coroutine.resume(coroutine.create(function(ne)
		
		for i = 1, 80 do
			ne:BreakJoints()
			ne.Transparency = i / 80
			swait()
		end
		ne.Parent = nil
	end
), n)
		else
			if v.className == "Accessory" then
				n = v.Handle:clone()
				n:BreakJoints()
				n.archivable = true
				n.Anchored = true
				n.CanCollide = false
				n.Name = "TRAILER"
				n.BrickColor = BrickColor.new("Really black")
				n.Parent = EffectModel
				n.CFrame = v.Handle.CFrame
				coroutine.resume(coroutine.create(function(ne)
		
		for i = 1, 80 do
			ne:BreakJoints()
			ne.Transparency = i / 80
			swait()
		end
		ne.Parent = nil
	end
), n)
			end
		end
	end
end

	coolflips = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.00690992922, 5.92321157e-07, 0.229894727, 0.919620454, -0.0784856752, -0.384887546, 0, 0.979835451, -0.199806482, 0.392808437, 0.183746129, 0.901076555), CFrame.new(0.102201059, 1.52183461, -0.0442817062, 0.856003404, 0, 0.516970396, -0.103294045, 0.979835451, 0.171035022, -0.506545842, -0.199806482, 0.838742256), CFrame.new(0.85569036, 0.349804521, -0.98719424, 0.703206182, 0.679262638, -0.210008666, -0.207752883, -0.086173974, -0.974378228, -0.67995584, 0.728818536, 0.0805206746), CFrame.new(-1.76169264, 0.327327907, -0.196545735, 0.230531454, 0.955027282, -0.186489612, -0.944481075, 0.173500761, -0.27902177, -0.23411721, 0.240459174, 0.942002296), CFrame.new(0.368483841, -2.02651429, 0.225678414, 0.839735985, 0.0466858745, -0.540984511, 0.00506230071, 0.995580733, 0.0937745199, 0.542971492, -0.081484437, 0.835788429), CFrame.new(-0.846522689, -1.63205373, -0.700655103, 0.993059099, 0.0466870405, 0.107954189, -0.0550746024, 0.995580792, 0.0760657787, -0.103925794, -0.0814833492, 0.991241574)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=189505639", Torso, 1, 1)
	for i = 0, 1, 0.5 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		PlayAnimationFromTable({CFrame.new(0.00811391696, 0.370000064, -0.269878775, 0.919620454, 0.101234131, -0.379539251, 0, 0.966219902, 0.257718921, 0.392808437, -0.23700355, 0.888555646), CFrame.new(-0.0505141392, 1.49702644, -0.102675915, 0.856003404, -0.234867454, 0.460538477, 0.133233026, 0.960974038, 0.242441416, -0.49950707, -0.146171704, 0.853889048), CFrame.new(1.55955112, 0.782363236, -0.449855745, 0.974661827, -0.187334329, 0.122230984, 0.0556709319, -0.326094151, -0.943696618, 0.216645598, 0.926589727, -0.307402432), CFrame.new(-1.84929264, 0.0806987882, -0.341354072, 0.792731702, 0.51237613, 0.330223352, -0.0122703984, 0.555034101, -0.831737161, -0.60944736, 0.655292451, 0.446280092), CFrame.new(0.550986409, -1.88015306, -0.209920794, 0.982241988, -0.175711095, 0.0657758713, 0.186057717, 0.957378328, -0.220928043, -0.0241528749, 0.229242906, 0.973069608), CFrame.new(-0.664022982, -1.13358545, -0.868605971, 0.993059337, -0.0156976283, 0.116563737, -0.0029982999, 0.987352729, 0.158510461, -0.117577702, -0.157759756, 0.980452597)}, 0.3, false)
	end
	for i = 0, 1, 0.5 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		PlayAnimationFromTable({CFrame.new(0.152475744, 1.52000022, -0.745758653, 0.955881655, 0.0903932974, -0.279498786, 0.24949494, 0.252411067, 0.934901536, 0.15505743, -0.963388801, 0.218722403), CFrame.new(-0.0497429445, 1.63352084, 0.192626446, 0.925000131, -0.238143966, 0.296078682, 0.223588675, 0.971176207, 0.0826139227, -0.307218492, -0.010218095, 0.95158422), CFrame.new(1.58332551, 0.759651303, 0.0462321043, 0.686902881, -0.42318809, 0.590826988, -0.115874358, -0.866346538, -0.485815912, 0.717452288, 0.26524654, -0.644132376), CFrame.new(-1.11650932, 0.776724577, -0.221937507, 0.974676251, -0.223312303, -0.0117539689, -0.121502519, -0.484722316, -0.86618793, 0.187733009, 0.845680833, -0.499580115), CFrame.new(0.33232969, -1.16125679, -1.14508665, 0.983165324, 0.173277408, 0.0579746962, -0.180561602, 0.969967067, 0.162977323, -0.0279932618, -0.170701593, 0.984925032), CFrame.new(-0.897608697, -0.0681397319, -1.16375923, 0.951426148, 0.307877541, -0.000286310911, -0.197658598, 0.610105813, -0.767269254, -0.236050248, 0.730056524, 0.641325057)}, 0.3, false)
	end
	for i = 0, 1, 0.5 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		PlayAnimationFromTable({CFrame.new(0.1742208, 1.61459744, -1.46919191, 0.964953721, 0.0802065879, -0.249863073, 0.217557028, -0.776939809, 0.590790629, -0.146743253, -0.624445021, -0.767160416), CFrame.new(-0.210791871, 1.49392033, -0.405593097, 0.925000727, -0.310072839, 0.219610646, 0.223588035, 0.911501706, 0.345214725, -0.307217181, -0.270221561, 0.912468195), CFrame.new(1.58332491, 0.759655178, 0.0462404191, 0.686901927, -0.423187256, 0.590828776, -0.115873948, -0.866347432, -0.485814393, 0.717453361, 0.265245199, -0.644131958), CFrame.new(-1.47702515, 0.735197544, -0.143782973, 0.93662107, 0.350147337, -0.0117545724, 0.165412977, -0.471547037, -0.866188347, -0.308836341, 0.809345722, -0.499579728), CFrame.new(0.33233428, -1.16125846, -1.14508402, 0.983165562, 0.115874588, -0.141275555, -0.180560663, 0.497687191, -0.848354578, -0.027991727, 0.859581709, 0.510231316), CFrame.new(-0.832379699, -1.34182632, -1.22091162, 0.951426685, 0.307875574, -0.000288084149, -0.197658896, 0.610106587, -0.767268598, -0.236047491, 0.730056643, 0.64132601)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=233856140", Torso, 1, 1)
	for i = 0, 1, 0.5 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		PlayAnimationFromTable({CFrame.new(0.169285268, 0.769245982, -1.30498338, 0.965617657, 0.0361799002, -0.257436752, -0.197678998, -0.540945709, -0.817496717, -0.168836266, 0.840279102, -0.515194714), CFrame.new(-0.210795462, 1.49391747, -0.405593574, 0.924999416, -0.358151555, 0.126900002, 0.223589733, 0.78308773, 0.580328584, -0.307219416, -0.508430064, 0.804434657), CFrame.new(1.58332229, 0.759656489, 0.046240598, 0.686901867, -0.423185349, 0.590829849, -0.11586953, -0.866347134, -0.485815704, 0.717453957, 0.265248477, -0.644129813), CFrame.new(-1.47702622, 0.735193968, -0.143782526, 0.936620414, 0.350148797, -0.0117530152, 0.165414363, -0.471544653, -0.866189241, -0.308837175, 0.809346378, -0.499577999), CFrame.new(0.332339525, -1.16125762, -1.14507151, 0.983166277, 0.159242243, -0.0895888358, -0.180556744, 0.771637082, -0.60989809, -0.0279914886, 0.615807116, 0.78739965), CFrame.new(-0.832376719, -1.34182751, -1.22090745, 0.951426864, 0.307874799, -0.000286445022, -0.197657242, 0.610107362, -0.767268479, -0.236047834, 0.730056524, 0.641326129)}, 0.3, false)
	end
	for i = 0, 1, 0.5 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		PlayAnimationFromTable({CFrame.new(0.162270933, 0.147177517, -1.07158732, 0.952594399, 0.050948292, -0.299947292, -0.150473997, 0.935753167, -0.318941563, 0.264427096, 0.348956227, 0.899059594), CFrame.new(-0.210792303, 1.49391997, -0.405592918, 0.924999356, -0.358152807, 0.12689741, 0.223591715, 0.783086181, 0.580329955, -0.307218403, -0.508431554, 0.80443418), CFrame.new(1.78598595, 0.692891896, -0.245257452, 0.231987849, -0.891197741, 0.389805466, 0.930177987, 0.0860349685, -0.356885344, 0.28451848, 0.445381463, 0.848931611), CFrame.new(-1.4213506, 0.388961315, -0.025771223, 0.936619103, 0.313360095, 0.156685382, 0.165415034, -0.00128958165, -0.98622334, -0.30884096, 0.949633539, -0.0530423336), CFrame.new(0.332342386, -1.16125607, -1.1450634, 0.983166397, 0.159242153, -0.0895876288, -0.180555999, 0.771638989, -0.609895945, -0.0279918313, 0.615804732, 0.787401497), CFrame.new(-0.641453028, -1.6045239, -0.608085871, 0.951427519, 0.185394511, 0.245793909, -0.197657406, 0.979927123, 0.025971286, -0.236045152, -0.073292762, 0.968974292)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=233856140", Torso, 1, 1.5)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.160767108, 0.14717719, -1.02160859, 0.952594995, 0.238799363, -0.188514844, -0.150473922, 0.908329785, 0.39024961, 0.26442498, -0.343383312, 0.901203394), CFrame.new(-0.321655929, 1.37439704, 0.0312955827, 0.924999893, -0.358152241, 0.126895368, 0.371826887, 0.921971738, -0.10822738, -0.0782320499, 0.147293344, 0.98599422), CFrame.new(1.77420104, 0.696196735, 0.23689723, 0.231986672, -0.891198695, 0.389803946, 0.499840558, -0.234563589, -0.833750427, 0.834470987, 0.388258696, 0.391041577), CFrame.new(-1.43313479, 0.323520303, 0.196167648, 0.936619639, 0.313358128, 0.156686097, 0.329728752, -0.637262702, -0.696545362, -0.118417934, 0.704061866, -0.700195789), CFrame.new(0.719272077, -2.04195595, -0.0985198319, 0.983166635, 0.0746142864, 0.166782394, -0.115273967, 0.96152395, 0.249367192, -0.141758889, -0.264395148, 0.95393908), CFrame.new(-0.653234243, -0.76608789, -1.57183135, 0.951428115, 0.185394049, 0.245791838, 0.0114382654, 0.776522517, -0.629985809, -0.307658494, 0.602197468, 0.736684859)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0381573439, -1.49011612e-07, -1.26942635, 0.806220829, 0.148509398, -0.572672009, 0, 0.967980981, 0.25102374, 0.591614902, -0.202380553, 0.780406356), CFrame.new(-0.00973952748, 1.61486292, -0.251615822, 0.882300019, -0.18381007, 0.433313608, 0.118153773, 0.977610707, 0.174117848, -0.455616653, -0.102426559, 0.884263754), CFrame.new(0.652459204, 0.396082193, -0.929794967, -0.0270986408, 0.761931241, 0.647090733, 0.991348505, 0.103649907, -0.080529511, -0.128428847, 0.639310181, -0.758148134), CFrame.new(-1.71100199, 0.267971396, -0.395944655, 0.266783148, 0.905740976, 0.329332978, 0.409449279, 0.202826291, -0.889501512, -0.872455239, 0.37214914, -0.316744268), CFrame.new(0.53169024, -1.88774526, -0.687942326, 0.995720208, -0.0339301229, 0.0859656036, 0.0231994763, 0.992150247, 0.122881703, -0.0894602537, -0.120361425, 0.988691151), CFrame.new(-0.372360826, -1.9950316, -0.274230897, 0.904060841, 0, 0.427403927, 0.107288539, 0.967980981, -0.226940736, -0.41371882, 0.25102374, 0.875113726)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.701222241, 1.63912773e-07, -1.65863013, -0.53099817, 0.121821165, -0.838570654, 0, 0.989612103, 0.143763334, 0.847373068, 0.0763380677, -0.525482237), CFrame.new(-0.065475136, 1.54302526, -0.187816724, 0.712462306, -0.183808833, 0.67720896, -0.0160306785, 0.960567832, 0.277583569, -0.701527476, -0.208623946, 0.681421697), CFrame.new(0.596708059, 0.61370647, -0.677029669, 0.249248192, 0.720524788, 0.647085488, 0.968428016, -0.188728124, -0.1628775, 0.00476597063, 0.6672526, -0.744816422), CFrame.new(-1.7667433, 0.18842715, -0.184118688, 0.266778052, 0.905742705, 0.329332411, 0.311677277, 0.242272168, -0.918782592, -0.911968708, 0.347756535, -0.217666507), CFrame.new(0.536580145, -2.00117254, -0.136381954, 0.995720088, 0.00438777357, 0.0923160315, 0.0132866465, 0.981700182, -0.189969718, -0.091460228, 0.190383285, 0.977440178), CFrame.new(-0.670648634, -1.98818183, -0.225803435, 0.904057264, 0, 0.427411556, 0.0614461042, 0.989612103, -0.129970267, -0.422971606, 0.143763334, 0.894665956)}, 0.3, false)
	end
	for i = 0, 1, 0.4 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.06436342, -2.23517418e-08, -2.65731883, -0.20339483, -0.140757054, 0.96892637, 0, 0.989612341, 0.143762156, -0.97909683, 0.029240476, -0.201282039), CFrame.new(-0.0654783025, 1.54302526, -0.187817171, 0.814078748, -0.183808208, -0.550899565, 0.26771009, 0.960567772, 0.0751078427, 0.515370965, -0.208625048, 0.831185162), CFrame.new(1.02611399, 0.612237453, -0.666926324, 0.249249265, 0.720524788, 0.647084892, 0.968427658, -0.188727617, -0.162879735, 0.00476393104, 0.6672526, -0.744816422), CFrame.new(-1.38744652, 0.234756529, -0.0856808126, 0.730593145, 0.598141968, 0.329332411, 0.393992484, 0.0246377736, -0.918783486, -0.557676911, 0.801011443, -0.217663303), CFrame.new(0.536582649, -2.00117326, -0.136375591, 0.863181472, 0.00438804273, -0.504874825, -0.0998385102, 0.981700718, -0.162160933, 0.494924486, 0.190380275, 0.847823858), CFrame.new(-0.67065233, -1.98818183, -0.225805357, 0.95443815, 0.075471811, -0.288707316, -0.0428999104, 0.992141724, 0.11753574, 0.295309186, -0.0997950733, 0.950175643)}, 0.3, false)
	end
	HandleWeld.Part0 = RootPart
	HandleWeld.C1 = CFrame.new(-0.796961546, 2.48477173, 0.597694397, -0.004668999, -0.999959767, -0.00765799824, -0.999926627, 0.00458291033, 0.0112209953, -0.0111854468, 0.00770982681, -0.999907732)
	FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 5, 10) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.6)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.125863791, -0.915276229, -2.1584549, 0.982593358, -0.0348575413, -0.182470411, 0.154622063, 0.697892964, 0.69931215, 0.102968521, -0.715353429, 0.691134751), CFrame.new(-0.213870525, 1.34581661, 0.092140317, 0.936451197, -0.146561041, 0.318714857, 0.308226287, 0.77757287, -0.548066795, -0.167498767, 0.611473918, 0.773333013), CFrame.new(1.76334226, 0.526868582, 0.0277193785, -0.0887514204, -0.95147109, 0.294662774, 0.787864506, -0.248058081, -0.563681602, 0.609420121, 0.18212676, 0.771645665), CFrame.new(-1.65707111, -0.0971298218, -1.16121268, 0.927877128, 0.369196832, 0.0523248352, -0.208833575, 0.630765319, -0.747344494, -0.308921874, 0.682516575, 0.662373364), CFrame.new(0.30006063, -2.10434723, -0.640750527, 0.955899656, -0.120036975, 0.268043309, -0.0415630005, 0.848187268, 0.528063416, -0.290738046, -0.515916288, 0.805792689), CFrame.new(-0.893812895, -1.52909434, -0.510264993, 0.8758955, 0.0110150054, 0.482375145, 0.0557557605, 0.990731537, -0.123864494, -0.479268581, 0.135387495, 0.867163181)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 5, 10) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
	end
	Clone()
	Effects.Block.Create(BrickColor.new("Magenta"), Torso.CFrame, 5, 5, 5, 7, 7, 7, 0.09)
	Effects.Block.Create(BrickColor.new("Black"), Torso.CFrame, 5, 5, 5, 7, 7, 7, 0.07)
	Cloak()
	for i = 0, 3 do
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231917987", RootPart, 1, 0.5)
		for i = 0, 1, 0.05 do
			swait()
			MagniDamage(Hitbox, 10, 3, 3, 0, "Normal")
			Effects.Block.Create(BrickColor.new("Black"), Torso.CFrame, 35, 35, 35, 1, 1, 1, 0.1)
			Effects.Wave.Create(BrickColor.new("Black"), FakeHandle.CFrame * angles(3.14, 0, 0), 8, 0, 8, -0.5, 0, -0.5, 0.07)
			Torso.Velocity = RootPart.CFrame.lookVector * 50
			PlayAnimationFromTable({CFrame.new(0.125863791, -0.915276229, -2.1584549, 0.982593358, -0.0348575413, -0.182470411, 0.154622063, 0.697892964, 0.69931215, 0.102968521, -0.715353429, 0.691134751), CFrame.new(-0.213870525, 1.34581661, 0.092140317, 0.936451197, -0.146561041, 0.318714857, 0.308226287, 0.77757287, -0.548066795, -0.167498767, 0.611473918, 0.773333013), CFrame.new(1.76334226, 0.526868582, 0.0277193785, -0.0887514204, -0.95147109, 0.294662774, 0.787864506, -0.248058081, -0.563681602, 0.609420121, 0.18212676, 0.771645665), CFrame.new(-1.65707111, -0.0971298218, -1.16121268, 0.927877128, 0.369196832, 0.0523248352, -0.208833575, 0.630765319, -0.747344494, -0.308921874, 0.682516575, 0.662373364), CFrame.new(0.30006063, -2.10434723, -0.640750527, 0.955899656, -0.120036975, 0.268043309, -0.0415630005, 0.848187268, 0.528063416, -0.290738046, -0.515916288, 0.805792689), CFrame.new(-0.893812895, -1.52909434, -0.510264993, 0.8758955, 0.0110150054, 0.482375145, 0.0557557605, 0.990731537, -0.123864494, -0.479268581, 0.135387495, 0.867163181)}, 0.3, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 2.5, 0) * angles(math.rad(hobb), math.rad(0), math.rad(90)), 0.1)
		end
	end
	UnCloak()
	HandleWeld.Part0 = RightArm
	HandleWeld.C1 = CFrame.new(0.0606536865, -1.06880665, -0.053850174, 0.999730885, -0.0130999982, 0.0191449989, -0.0131285042, -0.999912977, 0.00136399036, 0.0191254634, -0.00161496829, -0.999815762)
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.09005797, -0.232350051, -3.90874863, -0.881864488, 0.254255384, -0.39707619, -0.185724065, 0.586751103, 0.788181305, 0.43338424, 0.768815756, -0.470213503), CFrame.new(0.258969158, 1.400352, -0.0162278637, 0.743144631, 0.39330554, -0.541338265, -0.37417081, 0.914966702, 0.151104152, 0.554736495, 0.0902607068, 0.827115834), CFrame.new(1.73846245, 0.775831819, -0.0439204425, 0.140527159, -0.395116389, 0.907819033, 0.581733346, -0.708998382, -0.398632497, 0.801148236, 0.584127128, 0.130218834), CFrame.new(-1.68719435, 0.382524014, 0.346671909, -0.136132181, 0.961739779, 0.237749517, -0.804788947, 0.0325954258, -0.592665672, -0.577739537, -0.272018939, 0.769560099), CFrame.new(0.861645699, -0.76870501, -1.18031788, 0.84804976, 3.50877258e-07, -0.529916942, -0.296326637, 0.829036951, -0.47422421, 0.439320445, 0.559193969, 0.703064442), CFrame.new(-0.718663335, -1.64913261, -0.752605975, 0.977551818, 0.20778501, 0.0349000692, -0.15327695, 0.814978004, -0.558853567, -0.144564182, 0.540958822, 0.828531682)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.16874814, 0.087649703, -3.01424098, -0.763847351, -0.15153259, 0.627365112, 0.173436955, 0.88809824, 0.425677389, -0.621665895, 0.433960825, -0.652090073), CFrame.new(0.0102850273, 1.51787925, -0.350119531, 0.994927764, 0.0477949232, 0.0885133147, -0.0699377656, 0.961112738, 0.267153919, -0.0723026991, -0.271989197, 0.959580243), CFrame.new(2.02295327, 0.592894256, -0.21066469, -0.0100331157, -0.678791642, 0.734262586, 0.73821789, -0.500329137, -0.452443808, 0.674487829, 0.537506223, 0.506115854), CFrame.new(-1.7938509, 0.520119309, 0.0475535393, -0.189724207, 0.583259702, -0.789818287, -0.981819034, -0.107761599, 0.156266108, 0.00603163242, 0.805105925, 0.593100309), CFrame.new(0.0529837236, -1.51703501, -1.229298, 0.968206942, 0.1957497, 0.155748278, -0.0553897098, 0.774924576, -0.629622221, -0.243941426, 0.600977659, 0.761129737), CFrame.new(-0.660935342, -1.72367346, -0.239443257, 0.943123341, 0.29291743, 0.157219172, -0.226874918, 0.912781537, -0.339643747, -0.242994219, 0.284656852, 0.927321076)}, 0.3, false)
	end
	attack = false
end

	mouse.Button1Down:connect(function()
	
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
	else
		if attack == false and attacktype == 2 then
			attacktype = 3
			attacktwo()
		else
			if attack == false and attacktype == 3 then
				attacktype = 1
				attackthree()
			end
		end
	end
end
)
	mouse.KeyDown:connect(function(k)
	
	k = k:lower()
	if attack == false and k == "z" and co1 <= cooldown1 then
		cooldown1 = 0
		Driver()
	else
		if attack == false and k == "x" and co2 <= cooldown2 then
			cooldown2 = 0
			fatguywindmill()
		else
			if attack == false and k == "c" and co3 <= cooldown3 then
				cooldown3 = 0
				qaeoshotcarnival()
			else
				if attack == false and k == "v" and co4 <= cooldown4 then
					cooldown4 = 0
					coolflips()
				end
			end
		end
	end
end
)
	updateskills = function()
	
	if cooldown1 <= co1 then
		cooldown1 = cooldown1 + 0.033333333333333
	end
	if cooldown2 <= co2 then
		cooldown2 = cooldown2 + 0.033333333333333
	end
	if cooldown3 <= co3 then
		cooldown3 = cooldown3 + 0.033333333333333
	end
	if cooldown4 <= co4 then
		cooldown4 = cooldown4 + 0.033333333333333
	end
end

	while 1 do
		swait()
		updateskills()
		bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
		bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
		bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
		bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
		if hobb <= 360 then
			hobb = hobb + 5
		else
			hobb = 0
		end
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("Part") then
				v.Material = "SmoothPlastic"
			else
				if v:IsA("Accessory") then
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
					Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, -0.5) * angles(math.rad(230), math.rad(0), math.rad(0)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(30), math.rad(-60)), 0.3)
				end
			else
				if RootPart.Velocity.y < -1 and hit == nil then
					Anim = "Fall"
					if attack == false then
						RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, -0.5) * angles(math.rad(230), math.rad(0), math.rad(0)), 0.3)
						LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(30), math.rad(-60)), 0.3)
					end
				else
					if Torsovelocity < 1 and hit ~= nil then
						Anim = "Idle"
						if attack == false then
							change = 1
							RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(40), math.rad(0)), 0.3)
							Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10), math.rad(-40), math.rad(0)), 0.3)
							RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, -0.5) * angles(math.rad(220), math.rad(0), math.rad(0)), 0.3)
							LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
							RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
							LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(30), math.rad(-60)), 0.3)
						end
					else
						if 2 < Torsovelocity and hit ~= nil then
							Anim = "Walk"
							if attack == false then
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.8, -0.5) * angles(math.rad(230), math.rad(0), math.rad(0)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0 + 1 * math.cos((sine) / 3)) * angles(math.rad(0 - 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0 - 1 * math.cos((sine) / 3)) * angles(math.rad(0 + 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(30), math.rad(-60)), 0.3)
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
						if Thing[1].Transparency <= 1 then
							if Thing[2] == "Block1" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							else
								if Thing[2] == "Block2" then
									Thing[1].CFrame = Thing[1].CFrame
									Mesh = Thing[7]
									Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								else
									if Thing[2] == "Cylinder" then
										Mesh = Thing[1].Mesh
										Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
										Thing[1].Transparency = Thing[1].Transparency + Thing[3]
									else
										if Thing[2] == "Blood" then
											Mesh = Thing[7]
											Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
											Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
											Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										else
											if Thing[2] == "Elec" then
												Mesh = Thing[1].Mesh
												Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											else
												if Thing[2] == "Disappear" then
													Thing[1].Transparency = Thing[1].Transparency + Thing[3]
												else
													if Thing[2] == "Shatter" then
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
														Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
														Thing[6] = Thing[6] + Thing[5]
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
		do
			do
				if 0 < #ShootEffects then
					for e = 1, #ShootEffects do
						if ShootEffects[e] ~= nil then
							local Thing = ShootEffects[e]
							if Thing ~= nil then
								local Part = Thing[1]
								local Mode = Thing[2]
								local Delay = Thing[3]
								local IncX = Thing[4]
								local IncY = Thing[5]
								local IncZ = Thing[6]
								if Thing[2] == "Blast" then
									local Look = Thing[1]
									local hit, pos = rayCast(Thing[4], Look.lookVector, Thing[9], Character)
									local mag = (Thing[4] - pos).magnitude
									Thing[8].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * angles(-1.57, 0, 0)
									Thing[4] = Thing[4] + Look.lookVector * Thing[9]
									Thing[3] = Thing[3] - 1
									Effects.Ring.Create(BrickColor.new("Black"), Thing[8].CFrame * angles(1.47, 0, 0), 10, 10, 10, 0.5, 0.5, 0.5, 0.07)
									if hit ~= nil or Thing[3] <= 0 then
										Thing[3] = 0
										ref = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
										ref.Anchored = true
										ref.CFrame = cn(pos)
										game:GetService("Debris"):AddItem(ref, 1)
										ref2 = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new(5, 5, 5))
										ref2.Anchored = true
										ref2.CFrame = cn(pos)
										game:GetService("Debris"):AddItem(ref2, 5)
										size = 3
										if Thing[10] == 2 then
											freeze = true
											size = 4
											CreateSound("http://www.roblox.com/asset/?id=188959279", ref, 1, 1)
										else
											CreateSound("http://www.roblox.com/asset/?id=188959279", ref, 1, 2)
										end
										MagniDamage(ref, 20, Thing[5], Thing[6], Thing[7], "Knockdown")
										freeze = false
										for i = 1, 8 do
											Effects.Break.Create(BrickColor.new("Black"), ref.CFrame * cn(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100), math.random(20, 50) / 100, math.random(1, 5), math.random(20, 50) / 100)
										end
										if Thing[10] == 2 then
											Effects.Sphere.Create(BrickColor.new("Black"), cn(ref.Position), 30, 30, 30, 5, 5, 5, 0.02)
											Effects.Block.Create(BrickColor.new("Black"), cn(ref.Position), 30, 30, 30, 5, 5, 5, 0.03)
										end
									end
									if Thing[3] <= 0 then
										Thing[8].Transparency = 1
										game:GetService("Debris"):AddItem(Thing[8], 5)
										table.remove(ShootEffects, e)
									end
								else
											Part.Parent = nil
											table.remove(ShootEffects, e)
								end
							end
						end
					end
				end
				-- DECOMPILER ERROR at PC10455: LeaveBlock: unexpected jumping out DO_STMT

			end
		end
	end
