wait(0.016666666666667)
local Player = game.Players.LocalPlayer
repeat
	wait()
until Player
local Character = Player.Character
repeat
	wait()
until Character
	local Effects = {}
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
	local attack = false
	local Anim = "Idle"
	local idle = 0
	local attacktype = 1
	local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
	local velocity = RootPart.Velocity.y
	local sine = 0
	local change = 1
	local grabbed = false
	local cn = CFrame.new
	local mr = math.rad
	local angles = CFrame.Angles
	local ud = UDim2.new
	local c3 = Color3.new
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
	local co1 = 9
	local co2 = 20
	local co3 = 12
	local co4 = 45
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local skillcolorscheme = BrickColor.new("Pastel Blue").Color
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
	text1.Text = "[Z]\n Azure\'s Fist"
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
	text2.Text = "[X]\n Ice Fortress"
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
	text3.Text = "[C]\n Spirice"
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
	text4.Text = "[V]\n Frozen Kingdom"
	RemoveOutlines = function(part)
	
	part.TopSurface = 10
end

	CreatePart = function(Parent, Material, Reflectance, Transparency, PartType, BColor, Name, Size, MeshId)
	
	if PartType == "Part" then
		local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
		Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
		RemoveOutlines(Part)
		return Part
	else
		do
			if PartType == "WedgePart" then
				local Part = Create("WedgePart")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
				Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
				RemoveOutlines(Part)
				return Part
			end
		end
	end
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

	Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Part", "Bright blue", "Handle", Vector3.new(3.55606198, 0.227308542, 0.271095097))
	HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.194036484, -1.06744099, 0.0406494141, 0, 0, -1, 0, -0.999999881, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Handle, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Part", "Bright blue", "FakeHandle", Vector3.new(3.55606198, 0.227308542, 0.271095097))
	FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", FakeHandle, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Hitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Storm blue", "Hitbox", Vector3.new(9.09395504, 1.78107154, 1.88537669))
	HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.11891365, -0.0224838257, -0.0009765625, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Hitbox, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0124348598, 0.191385105, 0.068055287))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.39756775, -0.403594971, 0.0450401306, -0.930392146, 0, 0.366566032, -0.366566032, 0, -0.930392146, 0, -1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Navy blue", "Part", Vector3.new(0.163764864, 0.148877189, 0.284163624))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0336227417, -0.0348205566, 2.89076233, 0, 0.707106829, -0.707106829, 0.194113031, 0.693657041, 0.693657041, 0.980979145, -0.137258619, -0.137258619))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560172, 0.220658869, 0.323948592))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0336227417, 0.0898132324, 2.58876038, 0, 0.707106829, -0.707106829, 0.242578879, 0.685986698, 0.685986698, 0.970131695, -0.171529159, -0.171529159))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.34156397))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0336227417, 0.714149475, 2.16702271, 0, 0.707106829, -0.707106829, 0.48434183, 0.618632734, 0.618632734, 0.874878883, -0.342481434, -0.342481434))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.34156397))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000717163086, 0.729354858, 2.15858841, 0, -0.906307876, -0.422617942, 0.484340996, 0.369739741, -0.792910099, 0.874879301, -0.204691187, 0.438962042))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0124348607, 0.19138512, 0.0680552945))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.40331078, -0.389001369, 0.0157318115, -0.930392146, 0.366566032, 0, -0.366566032, -0.930392146, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560172, 0.220658869, 0.323948592))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00072479248, 0.106704712, 2.58452988, 0, -0.906307876, -0.422617942, 0.242579028, 0.409995139, -0.879238069, 0.970131636, -0.102518253, 0.21985127))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.284163624))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0336227417, -0.0467758179, 2.89076996, 0, 0.707106829, -0.707106829, 0.194113031, 0.693657041, 0.693657041, 0.980979145, -0.137258619, -0.137258619))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Navy blue", "Part", Vector3.new(0.163764864, 0.148877189, 0.284163624))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000701904297, -0.0177459717, 2.88739014, 0, -0.906307876, -0.422617942, 0.194112033, 0.41457954, -0.889069378, 0.980979443, -0.0820352361, 0.175925285))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.284163624))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.045042038, -0.0331573486, 2.88807297, 0, 1, 0, 0.194113046, 0, 0.980979264, 0.980979264, 0, -0.194113031))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560172, 0.220658869, 0.323948592))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0157318115, 0.0880947113, 2.58918381, 0, 0, -1, 0.242578909, 0.970131636, 0, 0.970131636, -0.242578909, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.341564029))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0293731689, 0.751953125, 2.14609528, 0, 0, 1, 0.484341174, -0.874879301, 0, 0.874879301, 0.484341174, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0151062012, 4.13348389, -0.00489807129, 0, -0.707105815, 0.707107842, 1, 0, 0, 0, 0.707107842, 0.707105815))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00489807129, 10.1371002, -0.0150909424, 0, 0.707106829, 0.707106829, 1, 0, 0, 0, 0.707106829, -0.707106829))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0124348607, 0.19138512, 0.0680552945))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.3962822, -0.406845093, -0.00072479248, -0.930392265, 0.15491803, -0.332221091, -0.366565704, -0.393200845, 0.843221664, 6.24316328e-07, 0.906307638, 0.422618598))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Navy blue", "Part", Vector3.new(0.075609535, 0.3325423, 0.396600127))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.61819458, 0.0229701996, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970280886, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00490570068, 8.13589478, -0.015083313, 0, 0.707106829, 0.707106829, 1, 0, 0, 0, 0.707106829, -0.707106829))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.50938499))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000701904297, 1.11251831, 1.58405304, 0, -0.906307876, -0.422617942, 0.64913106, 0.321475595, -0.689407229, 0.760676563, -0.27433446, 0.588312626))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0124348607, 0.19138512, 0.0680552945))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.40266418, -0.390640259, 0.0336380005, -0.930392265, 0.25920105, 0.25920105, -0.366565615, -0.657886624, -0.657886624, 0, -0.707106829, 0.707106829))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0123729706, 7.13529968, -0.00744628906, 0, 1, 0, 1, 0, 0, 0, 0, -1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.34156397))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0450439453, 0.726333618, 2.16029358, 0, 1, 0, 0.484341174, 0, 0.874879301, 0.874879301, 0, -0.484341174))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658809, 0.284163564))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000709533691, -0.0297241211, 2.88739777, 0, -0.906307876, -0.422617942, 0.194112033, 0.41457954, -0.889069378, 0.980979443, -0.0820352361, 0.175925285))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.50938499))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0336227417, 1.09928131, 1.59535217, 0, 0.707106829, -0.707106829, 0.649130166, 0.537880123, 0.537880123, 0.760677338, -0.459004343, -0.459004343))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.50938499))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0157318115, 1.09793949, 1.59649658, 0, 0, -1, 0.649130285, 0.760677338, 0, 0.760677338, -0.649130285, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.50938499))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0450286865, 1.10984802, 1.58633423, 0, 1, 0, 0.649130821, 0, 0.760676801, 0.760676801, 0, -0.649130821))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658809, 0.284163564))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0157318115, -0.0485196114, 2.89111519, 0, 0, -1, 0.194112077, 0.980979383, 0, 0.980979383, -0.194112092, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.50938499))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0441589355, 1.12203979, 1.5759201, 0, 0.76604414, 0.642788053, 0.64913094, -0.488953888, 0.582711995, 0.760676742, 0.417253613, -0.497262925))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Navy blue", "Part", Vector3.new(0.163764834, 0.148877174, 0.284163564))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0157318115, -0.0365557671, 2.89112854, 0, 0, -1, 0.194112077, 0.980979383, 0, 0.980979383, -0.194112092, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Bright blue", "Part", Vector3.new(3.55606198, 0.227308542, 0.271095097))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0150909424, 6.13469124, 0.00489807129, 0, 0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, -0.707106829))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Navy blue", "Part", Vector3.new(0.163764834, 0.148877174, 0.284163564))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0441589355, -0.00542449951, 2.88497162, 0, 0.76604414, 0.642788053, 0.194112048, -0.630561829, 0.751473486, 0.980979383, 0.124772891, -0.14869839))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658809, 0.284163564))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0441665649, -0.0174026489, 2.88495636, 0, 0.76604414, 0.642788053, 0.194112048, -0.630561829, 0.751473486, 0.980979383, 0.124772891, -0.14869839))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0141429901, 5.13409233, 0.00720214844, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970280886, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0141429901, 3.13287163, 0.00721740723, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00744628906, 7.13529968, 0.0123729706, 0, 0, -1, 1, 0, 0, 0, -1, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.34156397))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0157318115, 0.712605476, 2.1678772, 0, 0, -1, 0.48434189, 0.874878824, 0, 0.874878824, -0.48434186, 0))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.349999994, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0292510986, 0.90250349, -5.09399033, 0, 0, 1, 0, 1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568326489", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0862425864, 0.279625356, 0.406691492))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0276031494, -1.2758739, 2.98108482, 0, 0, -1, -0.145146027, 0.989410222, 0, 0.989410222, 0.145146027, 0))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.284163624))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0293731689, -0.00439929962, 2.88238525, 0, 0, 1, 0.194113046, -0.980979264, 0, 0.980979264, 0.194113031, 0))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00749207, 0.0593109131, -7.10399151, 0, -1, 0, 0, 0, 1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0124348598, 0.191385105, 0.068055287))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.38682175, -0.430853844, 0.0293731689, -0.930392444, -0.366565168, 0, -0.366565198, 0.930392444, 0, 0, 0, -1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.323948562))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0450363159, 0.10333252, 2.58538818, 0, 1, 0, 0.242580116, 0, 0.970131457, 0.970131457, 0, -0.242580116))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.284163624))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00804901123, -0.00831604004, 2.88316154, 0, -0.819152296, 0.573576152, 0.194113091, -0.562666297, -0.803571343, 0.980979264, 0.111338645, 0.15900819))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970280886, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00721740723, 11.1376972, -0.0141429901, 0, 0, 1, 1, 0, 0, 0, 1, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151062012, 10.1371002, 0.00489807129, 0, 0.707105815, -0.707107842, 1, 0, 0, 0, -0.707107842, -0.707105815))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00749207, 0.0593109131, -3.09398842, 0, -1, 0, 0, 0, 1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.06249118, 0.0206451416, -11.1339998, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970280886, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00721740723, 3.13287163, -0.0141429901, 0, 0, 1, 1, 0, 0, 0, 1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Navy blue", "Part", Vector3.new(0.163764864, 0.148877189, 0.284163624))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00804138184, 0.00366210938, 2.88315773, 0, -0.819152296, 0.573576152, 0.194113091, -0.562666297, -0.803571343, 0.980979264, 0.111338645, 0.15900819))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970280886, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0141429901, 11.1376972, -0.00721740723, 0, 1, 0, 1, 0, 0, 0, 0, -1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Navy blue", "Part", Vector3.new(0.163764864, 0.148877189, 0.284163624))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0293731689, 0.007563591, 2.88237953, 0, 0, 1, 0.194113046, -0.980979264, 0, 0.980979264, 0.194113031, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00720214844, 5.13409233, 0.0141429901, 0, 0, -1, 1, 0, 0, 0, -1, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0124348598, 0.191385105, 0.068055287))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.39168549, -0.418525696, 0.0441513062, -0.930392385, -0.23562409, 0.280805081, -0.366565406, 0.598044813, -0.712721825, 3.94508675e-07, -0.766044259, -0.642787874))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00489807129, 4.13348389, -0.0150909424, 0, 0.707106829, 0.707106829, 1, 0, 0, 0, 0.707106829, -0.707106829))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Navy blue", "Part", Vector3.new(0.207527667, 0.188661531, 0.406691492))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0276031494, -1.26071024, 2.98107529, 0, 0, -1, -0.145146027, 0.989410222, 0, 0.989410222, 0.145146027, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970280886, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0141429901, 9.13652039, -0.00721740723, 0, 1, 0, 1, 0, 0, 0, 0, -1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.341564029))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0441589355, 0.740348816, 2.15251923, 0, 0.76604414, 0.642788053, 0.484341055, -0.562361956, 0.670196176, 0.874879301, 0.31132862, -0.371026605))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970280886, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00721740723, 9.13652039, -0.0141429901, 0, 0, 1, 1, 0, 0, 0, 1, 0))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.323948562))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0293731689, 0.13173914, 2.57828331, 0, 0, 1, 0.242578909, -0.970131636, 0, 0.970131636, 0.242578909, 0))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02749205, 0.0593109131, -11.1339998, 0, -1, 0, 0, 0, 1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970280886, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0150909424, 8.13589478, 0.00490570068, 0, 0.707105815, -0.707107842, 1, 0, 0, 0, -0.707107842, -0.707105815))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0124348598, 0.191385105, 0.068055287))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.38828659, -0.427124023, 0.00804901123, -0.930392265, -0.210253045, -0.300273061, -0.366565526, 0.533650935, 0.762132943, 2.26868551e-07, 0.819152296, -0.573576152))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Navy blue", "Part", Vector3.new(0.163764864, 0.148877189, 0.284163624))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.045042038, -0.0211791992, 2.88806534, 0, 1, 0, 0.194113046, 0, 0.980979264, 0.980979264, 0, -0.194113031))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Steel blue", "Part", Vector3.new(2.18404269, 0.970281005, 0.890232503))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00489807129, 6.13469124, -0.0151062012, 0, 0.707105815, 0.707107842, 1, 0, 0, 0, 0.707107842, -0.707105815))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.323948562))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0441589355, 0.118881226, 2.58149719, 0, 0.76604414, 0.642788053, 0.242580086, -0.62358892, 0.743163466, 0.970131397, 0.155927584, -0.185827032))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02749205, 0.0593109131, -9.14398956, 0, -1, 0, 0, 0, 1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.04432678, 0.057477951, -7.10399151, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02566528, 0.0224779844, -11.1339998, 0, 0, 1, 0, 1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00566101, 0.0224779844, -3.09398842, 0, 0, 1, 0, 1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00566101, 0.0224779844, -7.10399151, 0, 0, 1, 0, 1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.349999994, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00758194923, 0.900665283, -5.09399033, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568326489", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.04432678, 0.057477951, -3.09398842, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.349999994, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.01612854, 0.918701172, -4.09398651, 0, 0.707106829, -0.707106829, 0, -0.707106829, -0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568326489", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02370453, 0.0139389038, -10.1039886, 0, 0.707106829, 0.707106829, 0, 0.707106829, -0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.0578537, 0.0280838013, -6.14399147, 0, 0.707106829, 0.707106829, 0, 0.707106829, -0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.04248714, 0.0206451416, -7.10399151, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.04248714, 0.0206451416, -3.09398842, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02566528, 0.0224779844, -9.14398956, 0, 0, 1, 0, 1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.06433105, 0.057477951, -11.1339998, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.06433105, 0.057477951, -9.14398956, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.05784607, 0.0280761719, -8.13400269, 0, 0.707106829, 0.707106829, 0, 0.707106829, -0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.04629517, 0.0660247803, -8.14399052, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.02629089, 0.0660247803, -4.10398293, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.349999994, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00862121582, 0.946060181, -8.09399319, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568326489", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.04016113, 0.0200653076, -8.14399052, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.07102966, 0.0386962891, -4.13399696, 0, 0.707106829, -0.707106829, 0, -0.707106829, -0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.05103302, 0.0386886597, -6.09399986, 0, 0.707106829, -0.707106829, 0, -0.707106829, -0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.998947144, 0.0412750244, -4.10398293, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.349999994, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0112075806, 0.893959045, -10.0939913, 0, 0.707106829, 0.707106829, 0, 0.707106829, -0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568326489", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.998947144, 0.0412750244, -6.09399986, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.05103302, 0.0386886597, -10.1039886, 0, 0.707106829, -0.707106829, 0, -0.707106829, -0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364281", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.06249118, 0.0206451416, -9.14398956, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.349999994, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.035949707, 0.921310425, -10.0939913, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568326489", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.479999989, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.04629517, 0.0660247803, -6.13400459, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568364990", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.0199999996, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.349999994, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00941467285, 0.937506199, -5.09399033, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568326489", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.200000003, 0.349999994, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0274180174, 0.939346313, -5.09399033, 0, -1, 0, 0, 0, 1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://568326489", Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 0.00999999978, 0.00999999978))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.323948562))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00804138184, 0.127853394, 2.57925224, 0, -0.819152296, 0.573576152, 0.24257803, -0.556444526, -0.794685781, 0.970131934, 0.13913697, 0.198708341))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.200000003, 0.267308563, 0.301095068))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.79806709, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.50938499))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00804901123, 1.12909698, 1.56990051, 0, -0.819152296, 0.573576152, 0.649131, -0.43630597, -0.623109996, 0.760676622, 0.372326046, 0.531737149))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.200000003, 0.267308563, 0.301095068))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.20188713, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.200000003, 0.267308563, 0.301095068))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.5280323, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560023, 0.220658824, 0.50938499))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0293731689, 1.13213825, 1.56731319, 0, 0, 1, 0.649131298, -0.760676384, 0, 0.760676384, 0.649131298, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.200000003, 0.267308563, 0.301095068))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.47192383, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Part", "Institutional white", "Part", Vector3.new(0.0680560097, 0.220658854, 0.341564029))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00804138184, 0.748443604, 2.14803314, 0, -0.819152296, 0.573576152, 0.484341115, -0.501809895, -0.716659367, 0.874879241, 0.277806461, 0.396749079))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.13589478, -1.43027496, 0.0159072876, -1, 0, 0, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.13589478, -1.43998718, -0.00752830505, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-10.135849, -1.43253136, -0.0149841309, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.13587952, -1.40909576, 0.00527191162, -1, 0, 0, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.13594055, -1.43998718, -0.00752830505, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.13594055, -1.43253136, -0.0149841309, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.13589478, -1.40909576, 0.00527191162, -1, 0, 0, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-11.1358509, -1.43027496, 0.0159072876, -1, 0, 0, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.13587952, -1.43253136, -0.0149841309, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.13594055, -1.40909576, 0.00527191162, -1, 0, 0, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.135849, -1.44091034, 0.00527191162, 1, 0, 0, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.13587952, -1.43998718, -0.00752830505, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.13589287, -1.41973114, 0.0159072876, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.13589478, -1.41000366, -0.00752830505, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.135849, -1.41973114, 0.0159072876, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-11.1358509, -1.40909576, 0.00527191162, -1, 0, 0, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.13588142, -1.41973114, 0.0159072876, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.13591194, -1.41747475, -0.0149841309, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.13594055, -1.41747475, -0.0149841309, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(11.1358509, -1.41973114, 0.0159072876, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.13587952, -1.41747475, -0.0149841309, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.13587952, -1.41000366, -0.00752830505, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.13594055, -1.43027496, 0.0159072876, -1, 0, 0, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.13594055, -1.41000366, -0.00752830505, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(10.135849, -1.43998718, -0.00752830505, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.13594055, -1.43027496, 0.0159072876, -1, 0, 0, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.13589478, -1.43253136, -0.0149841309, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-10.135849, -1.41000366, -0.00752830505, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.13588142, -1.44091034, 0.00527191162, 1, 0, 0, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.13587952, -1.43027496, 0.0159072876, -1, 0, 0, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.13589287, -1.44091034, 0.00527191162, 1, 0, 0, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.13594055, -1.41973114, 0.0159072876, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(11.1358509, -1.44091034, 0.00527191162, 1, 0, 0, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(10.135849, -1.41747475, -0.0149841309, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.13594055, -1.44091034, 0.00527191162, 1, 0, 0, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Baby blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.13594055, -1.40909576, 0.00527191162, -1, 0, 0, 0, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904171))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.13652039, -0.775772095, 0.754426956, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904707, 0.64690429))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.13290405, -0.761352539, 0.754426956, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904588))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-11.1376972, -0.775772095, 0.782730103, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904171))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.13589478, -0.763664246, 0.753471375, 1, 0, 0, 0, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.646904588))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-10.1371002, -0.763671875, 0.783660889, -1, 0, 0, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904707, 0.64690429))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.13589478, -0.783653259, 0.773475647, -1, 0, 0, 0, 0.707105815, -0.707107842, 0, -0.707107842, -0.707105815))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.64690423))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.13348389, -0.783668518, 0.763664246, 1, 0, 0, 0, 0.707105815, -0.707107842, 0, 0.707107842, 0.707105815))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(10.1371002, -0.753471375, 0.773468018, 1, 0, 0, 0, -0.707105815, 0.707107842, 0, -0.707107842, -0.707105815))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904171))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(11.1376972, -0.775772095, 0.754426956, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.64690423))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.13409233, -0.761352539, 0.782730103, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.64690423))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.13469124, -0.763664246, 0.753456116, 1, 0, 0, 0, -0.707105815, -0.707107842, 0, 0.707107842, -0.707105815))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904707, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.13348389, -0.773468018, 0.753479004, -1, 0, 0, 0, 0.707106829, 0.707106829, 0, 0.707106829, -0.707106829))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904588))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.13652039, -0.775772095, 0.782730103, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.64690423))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(10.1371002, -0.763664246, 0.753471375, 1, 0, 0, 0, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.64690429))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(9.13652039, -0.754426956, 0.761352539, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904588))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.13589478, -0.763671875, 0.783660889, -1, 0, 0, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0.707106829))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.64690423))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.13529968, -0.75617981, 0.761123657, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904707, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-10.1371002, -0.783668518, 0.773468018, -1, 0, 0, 0, 0.707105815, -0.707107842, 0, -0.707107842, -0.707105815))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904707, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.13469124, -0.783660889, 0.773468018, -1, 0, 0, 0, 0.707106829, -0.707106829, 0, -0.707106829, -0.707106829))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.13348389, -0.763664246, 0.753471375, 1, 0, 0, 0, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904588))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.13290405, -0.782730103, 0.761352539, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904171))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.13290405, -0.782730103, 0.775772095, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904707, 0.64690429))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-11.1376972, -0.782730103, 0.761352539, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.13529968, -0.761123657, 0.780942917, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.646904588))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.13529968, -0.75617981, 0.776000977, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.64690429))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.13287163, -0.775772095, 0.754426956, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.13469124, -0.753479004, 0.773468018, 1, 0, 0, 0, -0.707106829, 0.707106829, 0, -0.707106829, -0.707106829))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.646904588))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.13469124, -0.763664246, 0.783668518, -1, 0, 0, 0, -0.707105815, -0.707107842, 0, -0.707107842, 0.707105815))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904707, 0.64690429))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.13652039, -0.782730103, 0.761352539, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.13409233, -0.782730103, 0.775787354, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.64690429))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.13589478, -0.753471375, 0.773468018, 1, 0, 0, 0, -0.707105815, 0.707107842, 0, -0.707107842, -0.707105815))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904349, 0.64690429))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(11.1376972, -0.754426956, 0.761352539, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.646904588))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.13409233, -0.761352539, 0.754426956, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904707, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.13409233, -0.754426956, 0.775787354, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904588, 0.646904588))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.13348389, -0.783668518, 0.773468018, -1, 0, 0, 0, 0.707105815, -0.707107842, 0, -0.707107842, -0.707105815))
	Wedge = CreatePart(m, Enum.Material.Metal, 0, 0, "WedgePart", "Steel blue", "Wedge", Vector3.new(0.970281422, 0.646904707, 0.646904349))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.13529968, -0.776000977, 0.780942917, -1, 0, 0, 0, 0, -1, 0, -1, 0))
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
			local dist = (t.Position - obj.Position).magnitude
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
								elseif Type == "Slashnare" then
											Effects.Block.Create(BrickColor.new("Pastel Blue"), hit.Parent.Torso.CFrame * cn(0, 0, 0), 15, 15, 15, 3, 3, 3, 0.07)
											for i = 1, math.random(4, 5) do
												Effects.Sphere.Create(BrickColor.new("Teal"), hit.Parent.Torso.CFrame * cn(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
											end
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
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, "Part", BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
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
	CreateIceSword = function(BaseCFrame)
	
	local basepart = CreatePart(workspace, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Black"), "BasePart", Vector3.new(1, 1, 1))
	basepart.Anchored = true
	game:GetService("Debris"):AddItem(basepart, 0.2)
	local icepart = CreatePart(workspace, "SmoothPlastic", 0.5, 0.5, "Part", BrickColor.new("Bright blue"), "IceSword", Vector3.new(2, 6, 2))
	icepart.CanCollide = true
	icepart.Anchored = true
	local icemesh = CreateMesh("SpecialMesh", icepart, "FileMesh", "http://www.roblox.com/asset/?id=1778999", Vector3.new(0, 0, 0), Vector3.new(4, 10, 4))
	basepart.CFrame = BaseCFrame
	icepart.CFrame = basepart.CFrame * cn(0, -10, 0)
	local con = icepart.Touched:connect(function(hit)
		
		Damagefunc(icepart, hit, 13, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	coroutine.resume(coroutine.create(function(Part)
		
		for i = 0, 1, 0.1 do
			swait()
			Part.CFrame = Part.CFrame * cn(0, 0.8, 0)
		end
		wait(1)
		Effects.Block.Create(BrickColor.new("Bright blue"), Part.CFrame, 1, 1, 1, 5, 5, 5, 0.07)
		Part.Parent = nil
	end
), icepart)
end

	CreateIceSwordStay = function(BaseCFrame)
	
	local basepart = CreatePart(workspace, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Black"), "BasePart", Vector3.new(1, 1, 1))
	basepart.Anchored = true
	game:GetService("Debris"):AddItem(basepart, 0.2)
	local icepart = CreatePart(workspace, "SmoothPlastic", 0.5, 0.5, "Part", BrickColor.new("Bright blue"), "IceSword", Vector3.new(2, 6, 2))
	icepart.CanCollide = true
	icepart.Anchored = true
	local con = icepart.Touched:connect(function(hit)
		
		Damagefunc(icepart, hit, 13, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	local icemesh = CreateMesh("SpecialMesh", icepart, "FileMesh", "http://www.roblox.com/asset/?id=1778999", Vector3.new(0, 0, 0), Vector3.new(4, 10, 4))
	basepart.CFrame = BaseCFrame
	icepart.CFrame = basepart.CFrame * cn(0, -10, 0)
	coroutine.resume(coroutine.create(function(Part)
		
		for i = 0, 1, 0.1 do
			swait()
			Part.CFrame = Part.CFrame * cn(0, 0.8, 0)
		end
		wait(10)
		Effects.Block.Create(BrickColor.new("Bright blue"), Part.CFrame, 10, 10, 10, 5, 5, 5, 0.07)
		Part.Parent = nil
	end
), icepart)
end

	CreateBigIceSword = function(BaseCFrame)
	
	local basepart = CreatePart(workspace, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Black"), "BasePart", Vector3.new(1, 1, 1))
	basepart.Anchored = true
	game:GetService("Debris"):AddItem(basepart, 0.2)
	local icepart = CreatePart(workspace, "SmoothPlastic", 0.5, 0.5, "Part", BrickColor.new("Bright blue"), "IceSword", Vector3.new(7.5, 15, 7.5))
	icepart.CanCollide = true
	icepart.Anchored = true
	local icemesh = CreateMesh("SpecialMesh", icepart, "FileMesh", "http://www.roblox.com/asset/?id=1778999", Vector3.new(0, 0, 0), Vector3.new(5, 20, 5))
	local con = icepart.Touched:connect(function(hit)
		
		Damagefunc(icepart, hit, 13, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	basepart.CFrame = BaseCFrame
	icepart.CFrame = basepart.CFrame * cn(0, -10, 0)
	coroutine.resume(coroutine.create(function(Part)
		
		for i = 0, 1, 0.1 do
			swait()
			Part.CFrame = Part.CFrame * cn(0, 0.8, 0)
		end
		wait(1)
		Effects.Block.Create(BrickColor.new("Bright blue"), Part.CFrame, 5, 5, 5, 5, 5, 5, 0.07)
		Part.Parent = nil
	end
), icepart)
end

	CreateBiggerIceSword = function(BaseCFrame)
	
	local basepart = CreatePart(workspace, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Black"), "BasePart", Vector3.new(1, 1, 1))
	basepart.Anchored = true
	game:GetService("Debris"):AddItem(basepart, 0.2)
	local icepart = CreatePart(workspace, "SmoothPlastic", 0.5, 0.5, "Part", BrickColor.new("Bright blue"), "IceSword", Vector3.new(15, 30, 15))
	icepart.CanCollide = true
	icepart.Anchored = true
	local con = icepart.Touched:connect(function(hit)
		
		Damagefunc(icepart, hit, 13, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	local icemesh = CreateMesh("SpecialMesh", icepart, "FileMesh", "http://www.roblox.com/asset/?id=1778999", Vector3.new(0, 0, 0), Vector3.new(15, 30, 15))
	basepart.CFrame = BaseCFrame
	icepart.CFrame = basepart.CFrame * cn(0, -10, 0)
	coroutine.resume(coroutine.create(function(Part)
		
		for i = 0, 1, 0.1 do
			swait()
			Part.CFrame = Part.CFrame * cn(0, 0.8, 0)
		end
		wait(1)
		Effects.Block.Create(BrickColor.new("Bright blue"), Part.CFrame, 10, 10, 10, 10, 10, 10, 0.2)
		Part.Parent = nil
	end
), icepart)
end

	attackthree = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 13, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.744164884, 0.00484056491, -0.667978346, -0.0513666049, 0.997427344, -0.0499972925, 0.666018009, 0.0715179965, 0.742499113), CFrame.new(-0.136377186, 1.46884394, -0.102827616, 0.727224171, -0.189462662, 0.659733891, 0.0753438622, 0.977376521, 0.197631836, -0.682252347, -0.0940157995, 0.725046635), CFrame.new(1.43122065, 1.14356184, -0.360388964, 0.874279022, 0.237195522, -0.423526138, 0.380177259, -0.877081811, 0.293585598, -0.301829875, -0.417690754, -0.856990635), CFrame.new(0.103255808, 1.46460176, -1.10467172, -0.602555156, -0.697632074, 0.387603939, 0.626143754, -0.714383841, -0.312409103, 0.494844645, 0.0544521809, 0.867273629), CFrame.new(0.816458821, -1.87670493, 0.247732997, 0.961199045, -0.213392735, 0.174813569, 0.157826558, 0.94515872, 0.28594628, -0.226245552, -0.247261047, 0.942164838), CFrame.new(-0.497440517, -2.12949085, -0.204849437, 0.967955709, -0.13102968, 0.214226305, 0.126008511, 0.991339207, 0.0369897485, -0.217217743, -0.00881011132, 0.976083279)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(-180)), 0.3)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.74675703, -0.0194397084, -0.664812684, -0.158213541, 0.965687156, -0.205952331, 0.646004856, 0.258978724, 0.718058109), CFrame.new(-0.347507447, 1.38500106, -0.411518812, 0.722463369, -0.292832702, 0.626335144, 0.0456909463, 0.924122393, 0.379354715, -0.689897835, -0.245452076, 0.681024313), CFrame.new(1.52121377, 1.32487297, -0.225224197, 0.831450164, 0.335208744, -0.443086445, 0.42059207, -0.900830567, 0.107733145, -0.363032758, -0.275933415, -0.889981925), CFrame.new(0.104507864, 1.44983423, -1.10321939, -0.672177315, -0.61697346, 0.409293771, 0.627004683, -0.768345594, -0.128490925, 0.393754601, 0.170260459, 0.903309762), CFrame.new(0.902566314, -1.76668978, 0.375498205, 0.941017985, -0.311418235, 0.132301986, 0.223615512, 0.865843475, 0.447561204, -0.253931552, -0.391578346, 0.884412169), CFrame.new(-0.2622298, -2.17646384, 0.135584891, 0.951069176, -0.237211525, 0.197985172, 0.194531739, 0.957540452, 0.212775707, -0.240051746, -0.163850039, 0.95683229)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=320557353", RootPart, 1, 0.7)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.72047168, 0.205238342, 0.662417948, -0.444458425, 0.869889259, 0.213890553, -0.532331824, -0.448519379, 0.717950583), CFrame.new(-0.163220838, 1.55043221, -0.20589304, 0.710111678, -0.329343259, -0.622313797, 0.260693073, 0.944025159, -0.202127889, 0.654049218, -0.0186995268, 0.756220698), CFrame.new(0.357071131, 0.0630132556, -1.31790686, 0.248076573, 0.727934539, -0.63919431, -0.775017083, -0.246736437, -0.581781387, -0.581211209, 0.63971287, 0.502952158), CFrame.new(-0.947237492, 0.540587604, 0.148479149, -0.883422494, 0.260786355, 0.389300972, 0.450618863, 0.70062995, 0.553227186, -0.128481805, 0.664159536, -0.736467481), CFrame.new(1.40474582, -1.38777387, -0.442478567, 0.660970211, -0.389633596, -0.641330004, 0.306505084, 0.920273304, -0.24321112, 0.684961975, -0.0358155891, 0.727697909), CFrame.new(-0.144929677, -2.10276508, -0.109686345, 0.964622855, -0.111190885, -0.239038423, 0.147677898, 0.978997231, 0.140554816, 0.218389452, -0.170883089, 0.960783482)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(180)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.558144569, 0.0821596608, 0.825665891, -0.444458425, 0.869889259, 0.213890553, -0.700664878, -0.48635602, 0.522040606), CFrame.new(-0.0463305712, 1.57114458, -0.0472353846, 0.552318513, -0.276243776, -0.7865327, 0.138774306, 0.960802615, -0.240000129, 0.8220011, 0.023405984, 0.569004536), CFrame.new(0.650953412, 0.181271166, -1.18816984, 0.136645719, 0.909770429, -0.391976804, -0.849606156, -0.095846355, -0.518635511, -0.509408712, 0.40389514, 0.759849548), CFrame.new(-0.976999342, 0.444625139, 0.476922512, -0.711955428, 0.402925968, 0.575126171, 0.691494703, 0.259640276, 0.674108326, 0.122289851, 0.877631605, -0.463473469), CFrame.new(1.40884733, -1.42444575, -0.284811616, 0.499393284, -0.331978559, -0.800247848, 0.184214294, 0.943239927, -0.276339293, 0.846564353, -0.00941510499, 0.532202959), CFrame.new(-0.204621166, -2.06347847, -0.393501818, 0.894600451, -0.0278249085, -0.44599992, 0.0566073954, 0.997075677, 0.0513398349, 0.443267047, -0.0711755604, 0.893559277)}, 0.25, false)
	end
	con:disconnect()
	attack = false
end

	attacktwo = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 13, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.79830575, 0.124847509, 0.589169681, -0.0406729691, 0.987219751, -0.154085502, -0.600877404, 0.0990440473, 0.7931813), CFrame.new(-0.182943702, 1.46541011, -0.149842873, 0.796916068, -0.0960541293, -0.596404552, 0.209061742, 0.970122695, 0.123104997, 0.566760898, -0.222789764, 0.793187618), CFrame.new(0.533755481, 0.588006318, -0.819927156, -0.616029024, 0.770776689, 0.162515879, 0.122834876, -0.109792195, 0.986335158, 0.778087258, 0.627573669, -0.0270431302), CFrame.new(-1.15479577, 0.151444659, -0.0927118361, 0.274243683, 0.307065845, 0.911318302, 0.902503252, -0.409424961, -0.133636504, 0.332081288, 0.859116673, -0.389410257), CFrame.new(0.765843868, -1.8709296, 0.311738789, 0.391947329, 0.0642861724, -0.917738795, 0.242605254, 0.955022931, 0.170509592, 0.887423158, -0.289479107, 0.358722627), CFrame.new(-1.06266773, -2.10811806, 0.326208919, 0.822233379, 0.418339193, 0.385907441, -0.425436467, 0.902157664, -0.0715194494, -0.378068864, -0.105373472, 0.919760942)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-80), math.rad(-5)), 0.3)
	end
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.500062764, 0.153622314, 0.852254152, -0.0406729691, 0.987219751, -0.154085502, -0.865033448, 0.0423887223, 0.499920249), CFrame.new(-0.203603297, 1.45621443, -0.203305185, 0.502077162, -0.0641073659, -0.862443388, 0.238214403, 0.968922377, 0.0666559339, 0.831367731, -0.23891291, 0.501745164), CFrame.new(0.600557625, 0.542568386, -1.12867999, -0.454550505, 0.871780396, 0.182709217, 0.145207763, -0.129854605, 0.98084259, 0.878805101, 0.472373307, -0.0675638616), CFrame.new(-1.30130386, 0.169634178, 0.0625034571, 0.357674479, 0.451629251, 0.817373872, 0.89546603, -0.414222181, -0.162973747, 0.26497066, 0.790222049, -0.552575409), CFrame.new(0.703581989, -1.83221292, 0.576230764, 0.470056087, 0.0518072248, -0.881114781, 0.239890397, 0.95319891, 0.184022054, 0.849411368, -0.297871709, 0.435628921), CFrame.new(-0.970348597, -2.17357802, -0.117557883, 0.929596782, 0.368537277, 0.00548645854, -0.367118597, 0.927136362, -0.075112164, -0.0327683687, 0.0678097978, 0.997159839)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=320557353", RootPart, 1, 0.5)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.972782791, 0.0827755332, -0.216429755, 0.0249315314, 0.891207278, 0.452909946, 0.230373666, -0.445978999, 0.864887536), CFrame.new(0.00916326139, 1.52865589, -0.188484579, 0.974783719, 0.155682087, -0.159874544, -0.1282693, 0.977155685, 0.169450581, 0.182602674, -0.144670695, 0.972484708), CFrame.new(2.08320737, -0.284169436, -0.250738204, 0.123035192, -0.816417098, 0.564203322, 0.135989934, 0.577029586, 0.805321753, -0.983040571, -0.0223569274, 0.182019398), CFrame.new(-0.0150998235, 0.139294595, -0.911878705, 0.348762453, -0.901021421, 0.257925034, 0.683329344, 0.0561174527, -0.727950215, 0.641424656, 0.430129588, 0.635266006), CFrame.new(0.406417936, -1.49257445, -1.33832717, 0.977380633, -0.090072684, 0.191348225, 0.147234976, 0.939298332, -0.309903502, -0.151819348, 0.331066787, 0.931313813), CFrame.new(-0.787768185, -2.24418211, -0.151346669, 0.167712748, 0.339652747, 0.925477445, 0.052177161, 0.934400082, -0.352382809, -0.984454095, 0.107387781, 0.138988644)}, 0.3, false)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.862922013, 0.209550306, -0.45984152, 0.0249315314, 0.891207278, 0.452909946, 0.504721642, -0.402290612, 0.763818085), CFrame.new(-0.149323359, 1.52979898, -0.182008699, 0.996747196, -0.0173280388, 0.0787073374, 0.00479876995, 0.987640083, 0.15666467, -0.0804493129, -0.155777425, 0.984510541), CFrame.new(1.65971112, -0.254750907, -0.285310149, 0.299546212, -0.747527421, 0.592853129, 0.1129269, 0.644796968, 0.75596559, -0.947375059, -0.159497529, 0.27756235), CFrame.new(0.00537964515, 0.173431396, -0.980186045, 0.275653958, -0.960680783, 0.0332752466, 0.652728975, 0.161655128, -0.740143359, 0.70566237, 0.225743219, 0.671625197), CFrame.new(0.235484064, -1.43879259, -1.43474615, 0.869963765, -0.189970315, 0.455054194, 0.263842195, 0.958933473, -0.104084998, -0.41659379, 0.210612625, 0.884359539), CFrame.new(-0.497886449, -2.33065152, 0.00284594577, -0.103468418, 0.230030805, 0.967667341, 0.0638922453, 0.972416699, -0.224328101, -0.992578387, 0.0386154801, -0.115311712)}, 0.25, false)
	end
	con:disconnect()
	attack = false
end

	attackone = function()
	
	attack = true
	Humanoid.WalkSpeed = 10
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 13, 18, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.568032384, 0.21945031, -0.793209076, 0.181462303, 0.906679809, 0.380791992, 0.802751839, -0.360239744, 0.475201607), CFrame.new(-0.194268525, 1.36748862, 0.1906268, 0.577797532, 0.138121828, 0.804408014, 0.303349108, 0.878632843, -0.368759036, -0.757713139, 0.457084537, 0.465772748), CFrame.new(1.22607052, 0.221263826, -0.887574852, 0.840634346, -0.441327035, 0.313949138, 0.504180133, 0.849394858, -0.155981302, -0.197828189, 0.289410144, 0.936539054), CFrame.new(-0.0914598703, 0.153914452, -1.60767806, 0.610526502, -0.666443169, 0.427914649, 0.79066807, 0.544150949, -0.280612439, -0.0458379835, 0.509659886, 0.859153986), CFrame.new(0.879062891, -2.13503718, -0.393716276, 0.902963877, 0.0393090993, 0.427914649, 0.0913877636, 0.955460489, -0.280612439, -0.419886231, 0.292489111, 0.859153986), CFrame.new(-0.744057178, -1.81630719, -0.804611146, 0.902963877, 0.113018475, 0.414587647, 0.0913877934, 0.892216802, -0.442263156, -0.419886202, 0.437235951, 0.795311213)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(20)), 0.3)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.356956124, 0.300081611, -0.884609044, 0.181462303, 0.906679809, 0.380791992, 0.916326165, -0.296449244, 0.269191474), CFrame.new(-0.124265671, 1.41285539, 0.0492467731, 0.366980612, 0.158704549, 0.916590393, 0.383290082, 0.872009814, -0.304445565, -0.847593009, 0.463045657, 0.259180784), CFrame.new(1.45364702, 0.228575975, -1.01344228, 0.728705406, -0.438671172, 0.52588594, 0.589720309, 0.792356014, -0.156210005, -0.348164082, 0.423956752, 0.836087465), CFrame.new(-0.238449633, 0.157760441, -1.54678953, 0.513866246, -0.581929862, 0.630316734, 0.847257972, 0.459476769, -0.266523123, -0.134518221, 0.670998216, 0.729154348), CFrame.new(0.952892244, -2.02522922, -0.690355062, 0.77609098, 0.0195871443, 0.630316734, 0.192627206, 0.944383323, -0.266523123, -0.600481153, 0.328262389, 0.729154348), CFrame.new(-0.742377639, -1.85181737, -0.720860481, 0.77609086, 0.128742874, 0.617339492, 0.192627221, 0.883754551, -0.426464409, -0.600481093, 0.449891567, 0.661074638)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=320557353", RootPart, 1, 0.7)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.064224124, 1.2665987e-07, -0.495856434, 0.809290707, 0.173048124, 0.561340213, 0.00846363511, 0.952087402, -0.305708498, -0.587347329, 0.252158046, 0.769051015), CFrame.new(-0.108238466, 1.52709949, -0.406252146, 0.809907615, -0.0722456425, -0.582091212, 0.257911414, 0.935167015, 0.242784396, 0.526812434, -0.346760869, 0.776031911), CFrame.new(0.881831765, 0.443218499, -1.07085359, 0.462572575, 0.786939502, 0.408353746, 0.886572123, -0.408470809, -0.217120826, -0.00406035781, 0.46246922, -0.886626065), CFrame.new(-1.19231415, 0.599793434, -0.750520945, -0.109681845, -0.183287963, 0.976921499, 0.863928795, -0.50360775, 0.00251001865, 0.491525173, 0.844265819, 0.213584334), CFrame.new(0.587911785, -1.95842171, 0.217818737, 0.790087819, 0.0324127376, -0.612136245, 0.26209864, 0.884854317, 0.385145485, 0.554134965, -0.464738786, 0.690617383), CFrame.new(-0.622374654, -1.91124558, 0.206988513, 0.873483062, 0.0864833966, 0.479111791, -0.257792979, 0.916974008, 0.304469168, -0.413001567, -0.389460266, 0.823255956)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0642240345, 1.11758709e-07, -0.495860159, 0.808860421, 0.162500799, 0.565100193, 0.0682581142, 0.928606749, -0.364732921, -0.584025323, 0.333590716, 0.740021408), CFrame.new(-0.0773600489, 1.58409095, -0.305685937, 0.814923525, -0.0126271527, -0.579430878, 0.244813979, 0.913690686, 0.324399889, 0.525324404, -0.40621388, 0.747679412), CFrame.new(0.0177206397, 0.552203, -1.21410894, 0.288562596, 0.88358295, 0.368799329, 0.941931486, -0.33107084, 0.0561887324, 0.171746045, 0.331169635, -0.927809238), CFrame.new(-1.41682434, 0.741082907, -0.545439601, 0.383635342, 0.189288288, 0.903877258, 0.842924833, -0.471586138, -0.259006411, 0.377229095, 0.861264408, -0.340472966), CFrame.new(0.470392823, -1.97061908, 0.351983249, 0.794944584, 0.0908245519, -0.599845052, 0.251852483, 0.850104809, 0.462484717, 0.55193603, -0.518722177, 0.652911961), CFrame.new(-0.734828472, -1.85584831, 0.314496636, 0.863637984, 0.1454494, 0.482673794, -0.332644343, 0.883857965, 0.328850836, -0.378784001, -0.444566786, 0.811716199)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(20)), 0.3)
	end
	Humanoid.WalkSpeed = 16
	con:disconnect()
	attack = false
end

	fangwhyyoustealthis = function()
	
	attack = true
	Humanoid.WalkSpeed = 5
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0899152458, -0.30000031, 0.694201112, 0.980486453, -0.180440068, 0.0780229121, 0.195236072, 0.847336948, -0.493865192, 0.0230013803, 0.499461085, 0.866030931), CFrame.new(0.19991225, 1.53640079, -0.276051998, 0.987398922, 0.128901273, 0.091802761, -0.154993802, 0.670634985, 0.725414097, 0.0319406688, -0.730502009, 0.682163239), CFrame.new(1.19400334, 1.31440926, -0.0774777234, 0.950348377, 0.257674307, -0.174475983, 0.30775696, -0.695216894, 0.649583876, 0.0460824147, -0.671027184, -0.739999354), CFrame.new(-0.554722607, 1.80418575, 0.424592316, 0.663968563, -0.725148559, -0.182497606, -0.405504256, -0.554232359, 0.726906419, -0.628261149, -0.408639461, -0.662043691), CFrame.new(0.290440798, -1.53407574, 0.775574207, 0.877403498, 0.188275859, -0.441265732, 0.163240135, 0.747733653, 0.643620372, 0.45112738, -0.636747003, 0.625329852), CFrame.new(-0.432923317, -2.16319799, -0.261732399, 0.877403498, 0.108790562, -0.467255682, 0.163240135, 0.848137319, 0.503999829, 0.45112738, -0.518486023, 0.726399541)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-145)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0899185091, -0.299999893, 0.6941998, 0.97870487, -0.1878701, 0.082713604, 0.201954573, 0.809104145, -0.551873803, 0.0367566571, 0.556826115, 0.829815507), CFrame.new(0.217350155, 1.51125622, -0.381524086, 0.985554755, 0.131350055, 0.106906466, -0.165710598, 0.617630839, 0.768812239, 0.0349547863, -0.775421977, 0.630475163), CFrame.new(1.20121515, 1.34758127, -0.0945835412, 0.95459044, 0.243012309, -0.172342718, 0.297386795, -0.742624104, 0.600059032, 0.0178358853, -0.624063075, -0.781170487), CFrame.new(-0.568211675, 1.6743443, 0.415323496, 0.653352797, -0.735658646, -0.178707957, -0.456157029, -0.570941448, 0.682603002, -0.604194582, -0.364461631, -0.708601952), CFrame.new(0.277198195, -1.48156369, 0.876007915, 0.883216977, 0.192503735, -0.427633107, 0.181732744, 0.70012033, 0.690510631, 0.432320505, -0.687585592, 0.583373964), CFrame.new(-0.462956727, -2.16997695, -0.110558391, 0.883216977, 0.11532145, -0.454564333, 0.181732744, 0.80938977, 0.558445573, 0.432320505, -0.575837851, 0.693909168)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0385347158, -0.299999177, -0.297514796, 0.832577705, 0.26436156, -0.486751795, 0.00830338802, 0.872703373, 0.488179922, 0.553846002, -0.41048941, 0.724398375), CFrame.new(-0.0862076879, 1.43951738, -0.365326524, 0.98829782, -0.0737165511, 0.133541316, 0.0163705498, 0.921673, 0.387622237, -0.15165557, -0.380900085, 0.912094116), CFrame.new(0.534797847, 0.301900476, -1.2325089, 0.439902544, 0.855151653, 0.274228692, 0.000309035182, 0.305217534, -0.952282548, -0.89804554, 0.418996245, 0.134001702), CFrame.new(-0.980659306, -0.0988215804, -0.212475508, 0.98133409, 0.0366216302, 0.188791499, 0.18551521, 0.0783889294, -0.979509652, -0.0506704748, 0.996249914, 0.0701318085), CFrame.new(0.544244826, -1.30687928, -1.00414658, 0.994470298, -0.0879971087, 0.0573177636, 0.102588966, 0.930725932, -0.351033896, -0.0224571228, 0.354973018, 0.934606791), CFrame.new(-0.531651139, -1.95392156, -0.161026508, 0.99230808, 0.00255489349, 0.123766959, 0.0183224082, 0.985744417, -0.167249352, -0.122429878, 0.168230653, 0.978115261)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(-100)), 0.3)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=338594737", RootPart, 1, 1)
	local icprt = CreatePart(workspace, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Bright blue"), "Icicle Part", Vector3.new(1, 1, 1))
	icprt.Anchored = true
	icprt.CFrame = RootPart.CFrame * cn(0, 0, -10)
	Effects.Wave.Create(BrickColor.new("Baby blue"), icprt.CFrame, 10, 10, 10, 1, 1, 1, 0.07)
	Effects.Block.Create(BrickColor.new("Baby blue"), icprt.CFrame, 50, 50, 50, 2, 2, 2, 0.03)
	game:GetService("Debris"):AddItem(icprt, 5)
	for i = 1, math.random(8, 15) do
		local freezepart = CreatePart(workspace, "SmoothPlastic", 0.5, 0.5, "Part", BrickColor.new("Bright blue"), "Ice Part", Vector3.new(math.random(2, 3) + math.random(), math.random(2, 3) + math.random(), math.random(2, 3) + math.random()))
		freezepart.Anchored = true
		freezepart.CFrame = icprt.CFrame * CFrame.new(math.random(-8, 7) + math.random(), -2.5, math.random(-8, 7) + math.random()) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
		game:GetService("Debris"):AddItem(freezepart, 7)
		coroutine.resume(coroutine.create(function(Part)
		
		wait(2.5)
		Part.Anchored = false
		Part.Velocity = Vector3.new(math.random(-20, 20), math.random(20, 30), math.random(-20, 20))
		wait(5)
		Part.Parent = nil
	end
), freezepart)
	end
	local freezepart = CreatePart(workspace, "SmoothPlastic", 0.5, 0.5, "Part", BrickColor.new("Bright blue"), "Ice Part", Vector3.new(20, 20, 20))
	freezepart.Anchored = true
	freezepart.CanCollide = false
	freezepart.CFrame = icprt.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	game:GetService("Debris"):AddItem(freezepart, 7)
	coroutine.resume(coroutine.create(function(Part)
		
		wait(1.5)
		for i = 1, 6 do
			p = Part:Clone()
			p.Parent = workspace
			p.Size = Vector3.new(math.random(1, 5), math.random(1, 5), math.random(1, 5))
			p.CFrame = Part.CFrame * CFrame.new(math.random(-5, 5), math.random(-2, 5), math.random(-5, 5))
			p.Anchored = false
			p.Velocity = Vector3.new(math.random(-40, 40), math.random(-10, 40), math.random(-40, 40))
			game:GetService("Debris"):AddItem(p, 5)
		end
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=334325056", Part, 1, 1)
		Part.Transparency = 1
		Part.CanCollide = false
		wait(2)
		Part.Parent = nil
	end
), freezepart)
	local c = game.Workspace:GetChildren()
	for i = 1, #c do
		local hum = (c[i]:findFirstChild("Humanoid"))
		if hum ~= nil and hum.Health ~= 0 then
			local head = (c[i]:findFirstChild("Head"))
			if head ~= nil then
				local targ = head.Position - icprt.Position
				local mag = targ.magnitude
				if mag <= 8 and c[i].Name ~= Player.Name then
					MagniDamage(head, 15, 15, 20, 0, "Freeze")
				end
			end
		end
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0385330245, -0.099998787, -0.297514558, 0.832577705, 0.26436156, -0.486751795, 0.00830337312, 0.872703373, 0.488179922, 0.553846002, -0.41048941, 0.724398375), CFrame.new(-0.0862113386, 1.43951714, -0.365325809, 0.98829782, -0.0737164617, 0.133541301, 0.0163704604, 0.921672881, 0.387622237, -0.15165554, -0.380900025, 0.912094116), CFrame.new(0.444673777, 0.215567708, -1.48633027, 0.439902544, 0.855151653, 0.274228752, 0.000309050083, 0.305217594, -0.952282548, -0.89804554, 0.418996245, 0.134001702), CFrame.new(-1.1150192, -0.141049206, -0.544388115, 0.98133409, 0.0366216898, 0.188791513, 0.185515225, 0.0783889294, -0.979509652, -0.0506705046, 0.996249914, 0.0701318085), CFrame.new(0.542584419, -1.48142004, -1.1017828, 0.994470298, -0.0879971236, 0.0573177934, 0.102588966, 0.930725932, -0.351033896, -0.0224571228, 0.354973018, 0.934606791), CFrame.new(-0.533312678, -2.12846231, -0.258662522, 0.99230808, 0.00255487859, 0.123766989, 0.0183224231, 0.985744417, -0.167249352, -0.122429878, 0.168230653, 0.978115261)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(-120)), 0.3)
	end
	Humanoid.WalkSpeed = 16
	attack = false
end

	wtfyusteal = function()
	
	attack = true
	Humanoid.WalkSpeed = 8
	for i = 0, 1, 0.1 do
		swait()
		Effects.Block.Create(BrickColor.new("Bright blue"), LeftArm.CFrame * cn(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.07)
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.866025388, -2.23517418e-08, -0.499999911, 0.0868240744, 0.984807491, 0.150383681, 0.492403746, -0.173648149, 0.852868438), CFrame.new(2.43633986e-06, 1.4999994, -8.49366188e-07, 0.855999231, -0.100260302, 0.507161915, 0.0521884821, 0.992761135, 0.108172998, -0.514336228, -0.0661280155, 0.855035186), CFrame.new(1.49999702, 5.0291419e-07, -0.299999475, 0.98480767, 0.173648208, -5.96046448e-08, -0.171010062, 0.96984601, 0.173648119, 0.0301536024, -0.171010107, 0.984807611), CFrame.new(-0.395810544, 0.881771207, -0.819541097, -0.230986327, -0.97283709, 0.0152696967, 0.89306891, -0.218222171, -0.393454939, 0.386099845, -0.0772457719, 0.91921699), CFrame.new(0.49999997, -1.99999869, 1.49011505e-08, 0.99999994, -7.4505806e-09, -2.98023224e-08, -7.4505806e-09, 0.999999702, -1.49011612e-08, -2.98023224e-08, -1.49011612e-08, 0.999999881), CFrame.new(-0.49999997, -1.99999821, -0.499999404, 0.99999994, -5.12227416e-09, -8.94069672e-08, -7.4505806e-09, 0.984807432, -0.173648119, -2.98023224e-08, 0.173648119, 0.984807611)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=315746833", RootPart, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		Effects.Block.Create(BrickColor.new("Bright blue"), LeftArm.CFrame * cn(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.07)
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.865518212, -0.0511849821, -0.498255163, -0.0674167052, 0.973807752, -0.217147231, 0.496319532, 0.221535593, 0.839397728), CFrame.new(-0.07645531, 1.47132599, -0.180833906, 0.849949598, -0.192857862, 0.490297318, 0.0152468011, 0.939209342, 0.343005955, -0.526643276, -0.284062356, 0.801221073), CFrame.new(1.48802316, 0.115667969, -0.335258901, 0.998586774, 0.0269567519, -0.0457991362, 0.000501580536, 0.85698241, 0.515344799, 0.0531409085, -0.514639616, 0.855757952), CFrame.new(-1.36537027, 0.689417958, 0.242453694, 0.314618528, 0.50354296, 0.804648757, 0.945661068, -0.0929569304, -0.311582744, -0.0820976645, 0.858954728, -0.505427063), CFrame.new(0.805949032, -1.86381459, 0.722415328, 0.988097072, -0.15257749, -0.0196020901, 0.14930746, 0.920544326, 0.360978067, -0.0370325744, -0.359608173, 0.932368159), CFrame.new(-0.547935784, -2.08730865, 0.426073313, 0.999965668, 0.00703582633, 0.00436535478, -0.0079279542, 0.965678036, 0.259620577, -0.00238889456, -0.259646326, 0.965700686)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		Effects.Block.Create(BrickColor.new("Bright blue"), LeftArm.CFrame * cn(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.07)
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.99797231, 0.0316013135, -0.0552489571, -0.0510809198, 0.915514469, -0.399028271, 0.0379713401, 0.401041329, 0.915272474), CFrame.new(-0.139667019, 1.48414433, -0.278980613, 0.990934789, -0.128632933, 0.0387528762, 0.0905927122, 0.85282439, 0.514279485, -0.0992027596, -0.506106794, 0.856746495), CFrame.new(1.46008372, 0.317322314, 0.327820152, 0.812330961, -0.172207683, -0.55719173, 0.468926072, 0.760902524, 0.448480904, 0.34673667, -0.625596821, 0.698857546), CFrame.new(-1.44701743, 0.755096614, 0.136469722, 0.228673309, 0.0645502955, 0.971360743, 0.967364967, 0.0968048275, -0.234165683, -0.109147951, 0.993207872, -0.0403070748), CFrame.new(0.621547699, -1.87887788, 0.687452674, 0.878531635, -0.0568985678, -0.474283278, 0.304330558, 0.831965804, 0.463913381, 0.368191421, -0.551901579, 0.748224258), CFrame.new(-0.486163765, -2.08119416, 0.520485342, 0.88784045, 0.0349457301, -0.458822519, 0.156618327, 0.914629281, 0.372724682, 0.432677627, -0.402780175, 0.806571841)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		Effects.Block.Create(BrickColor.new("Bright blue"), LeftArm.CFrame * cn(0, -1, 0), 1, 1, 1, 1, 1, 1, 0.07)
		PlayAnimationFromTable({CFrame.new(0.128452197, -0.600000381, -0.991716385, 0.981901348, 0.189196348, -0.00862586871, -0.0980263948, 0.546657026, 0.831598878, 0.162050873, -0.815702617, 0.555309594), CFrame.new(-0.150090113, 1.58256924, -0.243656516, 0.987014174, -0.15197663, 0.0520217195, 0.131928265, 0.951704144, 0.277225554, -0.0916411132, -0.266762465, 0.959395468), CFrame.new(1.4852128, 0.28886649, -0.0327067375, 0.839034319, -0.246617123, -0.484975636, -0.00114187598, 0.8905707, -0.454843581, 0.544077396, 0.382183164, 0.746937871), CFrame.new(-1.30967736, 0.272878438, -1.40307045, 0.252149284, 0.0452954173, 0.966627717, 0.890248775, 0.380690277, -0.250064313, -0.379312545, 0.923592687, 0.0556665957), CFrame.new(0.671536803, -1.43181276, -0.69464308, 0.890434861, -0.103530809, -0.443178475, 0.104865894, 0.994252503, -0.0215704143, 0.442864507, -0.027267307, 0.896173835), CFrame.new(-0.449786514, -1.44917893, -0.889978766, 0.920694232, -0.0177127421, -0.389882714, -0.174457431, 0.874934256, -0.451724172, 0.349123001, 0.483917803, 0.802456737)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=338594467", RootPart, 1, 1)
	Effects.Wave.Create(BrickColor.new("Bright blue"), RootPart.CFrame * cn(0, -1, 0), 1, 1, 1, 2, 1, 2, 0.07)
	MagniDamage(RootPart, 20, 10, 20, 0, "Snare")
	for i = 0, 360, 20 do
		CreateIceSwordStay(RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(math.random(-5, 5), math.random(-5, 5), -18) * angles(math.rad(90), 0, -90))
		CreateIceSwordStay(RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(math.random(-5, 5), math.random(-5, 5), -18) * angles(math.rad(90), 0, -140))
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.128451571, -0.200000137, -0.991716743, 0.981901348, 0.189196348, -0.00862586871, -0.0980263948, 0.546657026, 0.831598878, 0.162050888, -0.815702617, 0.555309594), CFrame.new(-0.130488679, 1.47323585, -0.409976602, 0.987014174, -0.15197663, 0.0520217195, 0.131928265, 0.951704144, 0.277225554, -0.0916411132, -0.266762465, 0.959395468), CFrame.new(1.5244211, 0.0702028871, -0.365346104, 0.839034319, -0.279846519, -0.46659115, -0.00114187598, 0.856673121, -0.51585865, 0.544077396, 0.433355808, 0.718458652), CFrame.new(-1.27046895, 0.0542169511, -1.73571038, 0.252149284, 0.045295421, 0.966627717, 0.890248775, 0.380690277, -0.250064313, -0.379312545, 0.923592687, 0.0556665957), CFrame.new(0.710747242, -1.65047514, -1.02728152, 0.895473421, -0.00512259826, -0.445085585, 0.044355616, 0.99598372, 0.0777766705, 0.442899525, -0.0893889368, 0.892104149), CFrame.new(-0.410580814, -1.66784108, -1.22262084, 0.915815532, -0.0151414312, -0.401313752, -0.137313589, 0.927255988, -0.34834075, 0.377394915, 0.374121726, 0.847116292)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.128451049, -0.5, -0.991716146, 0.981901348, 0.189196348, -0.00862586871, -0.0980263948, 0.546657026, 0.831598878, 0.162050888, -0.815702617, 0.555309594), CFrame.new(-0.140289322, 1.52790284, -0.326815188, 0.987014174, -0.15197663, 0.0520217195, 0.131928265, 0.951704144, 0.277225554, -0.0916411132, -0.266762465, 0.959395468), CFrame.new(1.49501538, 0.23420015, -0.115863711, 0.839034319, -0.404036641, -0.364384115, -0.00114187598, 0.66841805, -0.743785083, 0.544077396, 0.624477267, 0.560364366), CFrame.new(-1.29007065, 0.163547277, -1.56939077, 0.252149284, -0.106476143, 0.961812735, 0.890248775, 0.415122092, -0.187432513, -0.379312545, 0.903513551, 0.19946298), CFrame.new(0.681339443, -1.48647773, -0.777802408, 0.895473421, -0.00512259826, -0.445085585, 0.044355616, 0.99598372, 0.0777766705, 0.442899525, -0.0893889368, 0.892104149), CFrame.new(-0.439985722, -1.50384426, -0.973139763, 0.915815532, -0.0777342841, -0.394004196, -0.137313589, 0.861347377, -0.489106864, 0.377394915, 0.50203383, 0.778161407)}, 0.3, false)
	end
	Humanoid.WalkSpeed = 16
	attack = false
end

	local hurb = false
	ready = function()
	
	attack = true
	hurb = true
	Humanoid.WalkSpeed = 10
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.98496604, -0.0622299463, -0.161149368, 0.0868240744, 0.984807491, 0.150383681, 0.14934276, -0.162114486, 0.975405216), CFrame.new(0.0893594399, 1.4969945, -0.0319167376, 0.987464011, -0.00246708072, 0.157824054, 0.0247313343, 0.989946246, -0.13926284, -0.155893847, 0.14142026, 0.977597535), CFrame.new(1.50673568, -0.0846057981, 0.250157624, 0.912696004, 0.115577251, -0.391953707, -0.0617825687, 0.987171113, 0.147225976, 0.403941363, -0.11015676, 0.908127964), CFrame.new(-1.29745328, 1.10867465, -0.454965413, 0.0376640409, 0.0312315468, 0.998802245, -0.072091639, -0.996822059, 0.0338881426, 0.996686518, -0.0732816532, -0.0352928415), CFrame.new(0.347896755, -2.02009988, 0.219451949, 0.934081018, 0.0595718995, -0.352056324, -0.0482134894, 0.997996926, 0.0409516394, 0.3537907, -0.0212783068, 0.935082376), CFrame.new(-0.41446957, -1.96180725, -0.799485564, 0.998627961, -0.00748418551, -0.0518282428, 0.00954626594, 0.9991678, 0.0396543592, 0.0514883026, -0.0400947183, 0.997868299)}, 0.3, false)
	end
end

	healothers = function()
	
	local TheHit = mouse.Hit.p
	local MouseLook = cn((LeftArm.Position + TheHit) / 2, TheHit)
	local hit, pos = rayCast(LeftArm.Position, MouseLook.lookVector, 500, m)
	if hit ~= nil and hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Torso") ~= nil and hit.Parent.Name ~= Player.Name then
		hum = hit.Parent.Humanoid
		Tors = hit.Parent.Torso
		cooldown3 = 0
		for i = 0, 1, 0.1 do
			swait()
			PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.990056932, -0.102067828, 0.0967950523, 0.0868240744, 0.984807491, 0.150383681, -0.110673942, -0.140484303, 0.983877659), CFrame.new(0.157081708, 1.49136078, -0.0341246016, 0.995591283, 0.0348810591, -0.0870702118, -0.0333242491, 0.999258518, 0.0192704275, 0.0876777917, -0.0162839144, 0.996015549), CFrame.new(1.34120595, -0.157133043, 0.820679069, 0.763402164, 0.01748069, -0.645686865, 0.072559163, 0.990985632, 0.112616338, 0.641834974, -0.132822096, 0.755252302), CFrame.new(-0.980035424, 0.356377304, -1.69639564, 0.178692728, -0.244291976, 0.953095138, 0.960680723, 0.25254482, -0.115384072, -0.212511882, 0.936238527, 0.279814482), CFrame.new(0.195781752, -2.02451277, 0.336173594, 0.810456634, 0.104723319, -0.576361775, -0.0720633268, 0.99424088, 0.0793182775, 0.581349015, -0.0227495432, 0.813336015), CFrame.new(-0.373883843, -2.01735139, -0.459184408, 0.990341425, -0.00234703813, -0.138630241, -0.0200972427, 0.986867189, -0.160277799, 0.137185708, 0.161515832, 0.977288365)}, 0.3, false)
		end
		j = game.ReplicatedStorage.FreezeEffect:Clone()
		j.Parent = hum
		j.Disabled = false
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=333475957", Tors, 1, 1)
		MagniDamage(Tors, 10, 5, 15, 0, "Normal")
		Effects.Block.Create(BrickColor.new("Pastel Blue"), cn(Tors.Position) * cn(0, 0, 0), 15, 15, 15, 3, 3, 3, 0.07)
		Effects.Wave.Create(BrickColor.new("Baby blue"), cn(Tors.Position) * cn(0, -2.5, 0), 7, 5, 7, 0.5, -0.5, 0.5, 0.1)
	end
	Humanoid.WalkSpeed = 16
	attack = false
	hurb = false
end

	healme = function()
	
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.988208592, -0.119830661, 0.0953108668, 0.118953228, 0.992788434, 0.0148555171, -0.096403785, -0.00334284361, 0.995336592), CFrame.new(0.156324103, 1.46984506, -0.042341888, 0.995619416, 0.0643579364, -0.0678231418, -0.0531495325, 0.986364782, 0.155753776, 0.0769223124, -0.151466757, 0.985464633), CFrame.new(1.35102916, -0.0883312449, 0.814834952, 0.777090907, 0.0445431396, -0.627810121, 0.133649647, 0.963065207, 0.233758375, 0.615034342, -0.265558183, 0.742436111), CFrame.new(-1.89992881, 0.744859695, -0.183323264, 0.181711406, 0.981598973, 0.0586879998, 0.976463139, -0.187168702, 0.10717915, 0.116191477, 0.0378309339, -0.992506027), CFrame.new(0.454109967, -2.00317287, 0.572612822, 0.81867224, 0.133886397, -0.55843538, -0.0192244779, 0.978286386, 0.206363544, 0.573939025, -0.158208519, 0.803469837), CFrame.new(-0.442403108, -2.04772639, -0.177317321, 0.991692722, 0.0301068984, -0.125056267, -0.033226613, 0.999184489, -0.0229355358, 0.124263674, 0.026900176, 0.99188441)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=315743350", RootPart, 1, 1)
	Humanoid.WalkSpeed = 19
	Humanoid.Health = Humanoid.Health + 25
	Effects.Block.Create(BrickColor.new("Pastel Blue"), RootPart.CFrame * cn(0, 0, 0), 15, 15, 15, 3, 3, 3, 0.07)
	Effects.Wave.Create(BrickColor.new("Baby blue"), RootPart.CFrame * cn(0, -2.5, 0), 7, 5, 7, 0.5, -0.5, 0.5, 0.1)
	attack = false
	hurb = false
end

	blizzard = function()
	
	attack = true
	Humanoid.WalkSpeed = 0
	Humanoid.JumpPower = 0
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.961833477, -0.00788648799, -0.27352196, 0.0523625501, 0.986416817, 0.155690223, 0.268578887, -0.164070383, 0.949181795), CFrame.new(-0.00688448548, 1.51605177, -0.114893898, 0.954184473, -0.0946972966, 0.283838987, 0.0260075796, 0.971256316, 0.236610562, -0.298086852, -0.218388155, 0.929220438), CFrame.new(1.52784705, -0.00666735694, 0.0751213133, 0.954337537, 0.0342054293, -0.296765685, -0.00165810436, 0.994013786, 0.10923858, 0.298725665, -0.103758499, 0.948681593), CFrame.new(-1.65858412, 0.279855609, 0.138465181, -0.467972785, 0.634874582, 0.614764869, 0.487056375, -0.395170778, 0.778855443, 0.737412691, 0.663908362, -0.124290556), CFrame.new(0.43218857, -1.95232046, -0.147927433, 0.969767928, 0.00492880493, -0.243979692, -0.00197404251, 0.99992156, 0.0123538077, 0.244021446, -0.0114987046, 0.969701529), CFrame.new(-0.612137794, -2.06104279, -0.148482472, 0.970677614, 0.177090734, 0.16255492, -0.165461957, 0.982751429, -0.0825935081, -0.174377695, 0.0532749891, 0.983236551)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.995687187, -0.0635262504, 0.0676127002, 0.0523625501, 0.986416817, 0.155690223, -0.0765848011, -0.15147838, 0.98548907), CFrame.new(0.117683239, 1.51080942, -0.123570919, 0.964007199, -0.0818148404, 0.252975434, 0.0202799924, 0.971332371, 0.236858353, -0.26510185, -0.223202825, 0.938030601), CFrame.new(1.41027629, -0.0812128484, 0.586966157, 0.796212673, 0.123129472, -0.592355013, -0.0413837768, 0.987862349, 0.149715379, 0.603599668, -0.0946914554, 0.791644216), CFrame.new(-1.58970571, 0.366315603, -0.432485044, -0.697778463, 0.360251397, 0.619131863, 0.332571715, -0.602596223, 0.725447118, 0.634429932, 0.712107122, 0.300669193), CFrame.new(0.366373658, -1.96062434, -0.073182106, 0.829126179, 0.0648658425, -0.555285811, -0.0439591445, 0.997735023, 0.0509130061, 0.557330608, -0.0178034008, 0.830099642), CFrame.new(-0.641470313, -2.03103423, -0.328743041, 0.961717844, 0.203884661, -0.183112353, -0.218594894, 0.973721504, -0.0638933629, 0.165273502, 0.101474784, 0.981013477)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.923288822, -0.107226454, 0.368836403, 0.0523625501, 0.986416817, 0.155690223, -0.380520761, -0.124433815, 0.916362405), CFrame.new(0.226060003, 1.5005219, -0.0948387086, 0.983411252, -0.0489508808, 0.174660712, 0.00602170825, 0.971177638, 0.238280147, -0.181290776, -0.233275592, 0.955361724), CFrame.new(1.13407922, -0.0741270781, 0.634962618, 0.506199002, 0.317689419, -0.801770687, 0.0494689085, 0.917451918, 0.394758612, 0.860996664, -0.239489123, 0.448697567), CFrame.new(-1.33048785, 1.01989293, -0.806799233, -0.719390631, -0.0406162143, 0.69341737, 0.507646322, -0.712122917, 0.48494935, 0.474101603, 0.700878799, 0.532913148), CFrame.new(0.271485448, -1.97646987, 0.0591246039, 0.616768122, 0.117643766, -0.7783041, -0.0684877932, 0.993038833, 0.0958285779, 0.78415978, -0.00579968095, 0.620531797), CFrame.new(-0.612933815, -2.00690246, -0.491234213, 0.853394985, 0.212350398, -0.476051092, -0.258227557, 0.965546668, -0.0322146788, 0.452808678, 0.150421321, 0.878827393)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.919377267, -0.140499756, 0.367430627, 0.178943276, 0.981179774, -0.0725601241, -0.350320995, 0.132459387, 0.927215934), CFrame.new(0.066900745, 1.56466413, -0.41376847, 0.90304482, 0.298178673, -0.309192032, -0.104105704, 0.850278437, 0.515934408, 0.416739881, -0.433723211, 0.798881531), CFrame.new(1.14462709, -0.0764863193, 0.615451097, 0.521008492, 0.239857092, -0.819157362, 0.364595771, 0.805206835, 0.46766603, 0.771764159, -0.542319298, 0.332068712), CFrame.new(-1.23233485, 0.977591693, -0.993463635, -0.629823565, -0.0946138799, 0.77095443, 0.688629925, -0.527172625, 0.497873038, 0.359320432, 0.844474435, 0.397179633), CFrame.new(0.21791929, -1.99170315, 0.151301563, 0.639241338, 0.237057328, -0.731556296, 0.0287371799, 0.943272293, 0.330773771, 0.768469036, -0.232467115, 0.596166253), CFrame.new(-0.874190629, -1.96983898, -0.0134936795, 0.83558327, 0.334796995, -0.435559273, -0.258765221, 0.939240634, 0.225537837, 0.484604299, -0.0757480487, 0.871447444)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.141293496, -0.699998558, -1.09088683, 0.574110508, 0.50479877, -0.644651234, 0.417663634, 0.496640086, 0.760858417, 0.704240143, -0.706064343, 0.074290216), CFrame.new(-0.10902568, 1.10308146, -0.295829326, 0.955587089, -0.294529915, -0.0102483332, 0.256170034, 0.812932789, 0.522988796, -0.145704508, -0.502386689, 0.852277935), CFrame.new(1.86756086, 0.0865158588, -0.0497562438, 0.761208713, -0.646252632, 0.0540255904, 0.648219764, 0.760706067, -0.0337301791, -0.0192993674, 0.0606961697, 0.997969687), CFrame.new(-1.80306602, 0.174658269, -0.555825055, -0.566112757, 0.817951441, 0.102332383, 0.624477267, 0.344511926, 0.700956464, 0.538093567, 0.460724652, -0.705824435), CFrame.new(0.341821402, -1.03896201, -1.12107444, 0.896888852, -0.0690986216, 0.436824858, 0.280446649, 0.852593839, -0.440946311, -0.341965318, 0.51798588, 0.78406018), CFrame.new(-0.372888088, -1.94565642, -0.349850923, 0.673769593, -0.13794893, 0.725950956, 0.281348646, 0.956315041, -0.0794014931, -0.683284283, 0.257743597, 0.683147669)}, 0.3, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.141293645, -0.500000238, -1.09088933, 0.574110508, 0.50479877, -0.644651234, 0.417663634, 0.496640086, 0.760858417, 0.704240143, -0.706064343, 0.074290216), CFrame.new(-0.192558572, 1.0037539, -0.448001653, 0.955587089, -0.294529915, -0.0102483332, 0.256170034, 0.812932789, 0.522988796, -0.145704508, -0.502386689, 0.852277935), CFrame.new(1.78402829, -0.0128106009, -0.201929182, 0.761208713, -0.646252632, 0.0540255904, 0.648219764, 0.760706067, -0.0337301791, -0.0192993674, 0.0606961697, 0.997969687), CFrame.new(-1.88659692, 0.0753316879, -0.707997918, -0.566112757, 0.817951441, 0.102332383, 0.624477267, 0.344511926, 0.700956464, 0.538093567, 0.460724652, -0.705824435), CFrame.new(0.258287489, -1.13829041, -1.27324665, 0.896888852, -0.0690986216, 0.436824858, 0.280446649, 0.852593839, -0.440946311, -0.341965318, 0.51798588, 0.78406018), CFrame.new(-0.456420362, -2.04498458, -0.50202179, 0.673769593, -0.13794893, 0.725950956, 0.281348646, 0.956315041, -0.0794014931, -0.683284283, 0.257743597, 0.683147669)}, 0.3, false)
	end
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.141293496, -0.699998558, -1.09088683, 0.574110508, 0.50479877, -0.644651234, 0.417663634, 0.496640086, 0.760858417, 0.704240143, -0.706064343, 0.074290216), CFrame.new(-0.10902568, 1.10308146, -0.295829326, 0.955587089, -0.294529915, -0.0102483332, 0.256170034, 0.812932789, 0.522988796, -0.145704508, -0.502386689, 0.852277935), CFrame.new(1.86756086, 0.0865158588, -0.0497562438, 0.761208713, -0.646252632, 0.0540255904, 0.648219764, 0.760706067, -0.0337301791, -0.0192993674, 0.0606961697, 0.997969687), CFrame.new(-1.80306602, 0.174658269, -0.555825055, -0.566112757, 0.817951441, 0.102332383, 0.624477267, 0.344511926, 0.700956464, 0.538093567, 0.460724652, -0.705824435), CFrame.new(0.341821402, -1.03896201, -1.12107444, 0.896888852, -0.0690986216, 0.436824858, 0.280446649, 0.852593839, -0.440946311, -0.341965318, 0.51798588, 0.78406018), CFrame.new(-0.372888088, -1.94565642, -0.349850923, 0.673769593, -0.13794893, 0.725950956, 0.281348646, 0.956315041, -0.0794014931, -0.683284283, 0.257743597, 0.683147669)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=301031757", RootPart, 1, 1)
	Effects.Wave.Create(BrickColor.new("Bright blue"), RootPart.CFrame * cn(0, -1, 0), 1, 1, 1, 2, 1, 2, 0.07)
	MagniDamage(RootPart, 10, 5, 15, 0, "Normal")
	for i = 0, 360, 20 do
		CreateIceSword(RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(math.random(-5, 5), math.random(-5, 5), -13) * angles(math.rad(90), 0, -90))
		CreateIceSword(RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(math.random(-5, 5), math.random(-5, 5), -13) * angles(math.rad(90), 0, -140))
	end
	for i = 0, 1, 0.05 do
		swait()
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=301031757", RootPart, 1, 1)
	Effects.Wave.Create(BrickColor.new("Bright blue"), RootPart.CFrame * cn(0, -1, 0), 1, 1, 1, 3, 1, 3, 0.07)
	MagniDamage(RootPart, 15, 5, 15, 0, "Normal")
	for i = 0, 360, 20 do
		CreateIceSword(RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(math.random(-5, 5), math.random(-5, 5), -18) * angles(math.rad(90), 0, -90))
	end
	for i = 0, 1, 0.05 do
		swait()
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=320557382", RootPart, 1, 1)
	Effects.Wave.Create(BrickColor.new("Bright blue"), RootPart.CFrame * cn(0, -1, 0), 1, 1, 1, 5, 1, 5, 0.07)
	MagniDamage(RootPart, 20, 5, 15, 5, "Normal")
	for i = 0, 360, 20 do
		CreateBigIceSword(RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(math.random(-5, 5), math.random(-5, 5), -23) * angles(math.rad(90), 0, -90))
	end
	for i = 0, 1, 0.05 do
		swait()
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=301031757", RootPart, 1, 1)
	Effects.Wave.Create(BrickColor.new("Bright blue"), RootPart.CFrame * cn(0, -1, 0), 1, 1, 1, 5, 1, 5, 0.07)
	MagniDamage(RootPart, 25, 5, 15, 10, "Normal")
	for i = 0, 360, 20 do
		CreateBigIceSword(RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(math.random(-5, 5), math.random(-5, 5), -28) * angles(math.rad(90), 0, -90))
	end
	for i = 0, 1, 0.05 do
		swait()
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=301031757", RootPart, 1, 0.7)
	Effects.Wave.Create(BrickColor.new("Bright blue"), RootPart.CFrame * cn(0, -1, 0), 1, 1, 1, 6, 1, 6, 0.07)
	MagniDamage(RootPart, 25, 5, 15, 15, "Normal")
	for i = 0, 360, 20 do
		CreateBiggerIceSword(RootPart.CFrame * CFrame.Angles(0, 0, math.rad(90)) * CFrame.Angles(math.rad(i), 0, 0) * CFrame.new(math.random(-5, 5), math.random(-5, 5), -33) * angles(math.rad(90), 0, -90))
	end
	Humanoid.WalkSpeed = 16
	Humanoid.JumpPower = 50
	attack = false
end

	mouse.Button1Down:connect(function()
	
	if attack == false and attacktype == 1 then
		attackone()
		attacktype = 2
	else
		if attack == false and attacktype == 2 then
			attacktwo()
			attacktype = 3
		else
			if attack == false and attacktype == 3 then
				attackthree()
				attacktype = 1
			else
				if hurb == true and attack == true then
					healothers()
				end
			end
		end
	end
end
)
	mouse.KeyDown:connect(function(k)
	
	k = k:lower()
	if attack == false and k == "z" and co1 <= cooldown1 then
		cooldown1 = 0
		fangwhyyoustealthis()
	else
		if attack == false and k == "x" and co2 <= cooldown2 then
			cooldown2 = 0
			wtfyusteal()
		else
			if attack == false and k == "c" and hurb == false and co3 <= cooldown3 then
				ready()
			else
				if attack == true and k == "c" and hurb == true then
					cooldown3 = 0
					healme()
				else
					if attack == false and k == "v" and co4 <= cooldown4 then
						cooldown4 = 0
						blizzard()
					end
				end
			end
		end
	end
end
)
	updateskills = function()
	
	if hurb == false then
		text3.Text = "[C]\n Spirice"
	else
		text3.Text = "[C]\n Speed Buff (Click on player for Debuff)"
	end
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
					RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -0.3) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-0.5, -0.3, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, -0.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
				end
			else
				if RootPart.Velocity.y < -1 and hit == nil then
					Anim = "Fall"
					if attack == false then
						RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(-10), math.rad(-30), math.rad(0)), 0.3)
						Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -0.3) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
						LW.C0 = clerp(LW.C0, CFrame.new(-0.5, -0.3, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(0.5, -1.5, -1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, -0.5) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
					end
				else
					if Torsovelocity < 1 and hit ~= nil then
						Anim = "Idle"
						if attack == false then
							change = 1
							RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(-10), math.rad(-30), math.rad(0)), 0.3)
							Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(10), math.rad(30), math.rad(0)), 0.3)
							RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -0.3) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
							LW.C0 = clerp(LW.C0, CFrame.new(-0.5, -0.3, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
							RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, -0.5) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
							FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(-5)), 0.3)
						end
					else
						if 2 < Torsovelocity and hit ~= nil then
							Anim = "Walk"
							if attack == false then
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(-10), math.rad(-10), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(5), math.rad(10), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -0.3) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-0.2, -0.3, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0 + 1 * math.cos((sine) / 3)) * angles(math.rad(0 - 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0 - 1 * math.cos((sine) / 3)) * angles(math.rad(0 + 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-5)), 0.3)
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
	end
