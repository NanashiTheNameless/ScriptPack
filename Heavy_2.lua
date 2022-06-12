wait(0.016666666666667)
script.Name = "Chaos"
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
	local newFakeMotor = function(part0, part1, c0, c1)
	
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
	local RW = newFakeMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0))
	local LW = newFakeMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
	local RH = newFakeMotor(Torso, RightLeg, CFrame.new(0.5, -2, 0), CFrame.new(0, 0, 0))
	local LH = newFakeMotor(Torso, LeftLeg, CFrame.new(-0.5, -2, 0), CFrame.new(0, 0, 0))
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

	local co1 = 200
	local co2 = 20
	local co3 = 30
	local co4 = 30
	local cooldown1 = 200
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local skillcolorscheme = BrickColor.new("Fossil").Color
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
	text1.Text = "[Z]\n N/A"
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
	text2.Text = "[X]\n Reload"
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
	text3.Text = "[C]\n Armageddon"
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
	text4.Text = "[V]\n Bullet Storm"
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
	Handle = CreatePart(m, Enum.Material.Metal, 0, 1, "Really black", "Handle", Vector3.new(0.200000003, 0.920000136, 0.200000003))
	HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.262939453, -0.121995926, -0.965805054, 0.969704211, 0.236531034, 0.0610490143, -0.0425508283, -0.0825409442, 0.995678902, 0.240548, -0.968111455, -0.069975704))
	CreateMesh("CylinderMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	FakeHandle = CreatePart(m, Enum.Material.Metal, 0, 1, "Really black", "FakeHandle", Vector3.new(0.200000003, 0.920000136, 0.200000003))
	FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000024, 0, 0, 0, 1, 1.86264515e-09, 0, 1.86264515e-09, 0.99999994))
	CreateMesh("CylinderMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Barrel = CreatePart(m, Enum.Material.Metal, 0, 1, "Really black", "Barrel", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	BarrelWeld = CreateWeld(m, FakeHandle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.955901146, 7.17863464, -0.312942505, 0.241776183, 0.307871968, -0.920195222, -0.0349029154, 0.950475931, 0.308832437, 0.969704211, -0.0425508283, 0.240548))
	CreateMesh("CylinderMesh", Barrel, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.53586674, 0.307937622, -6.66361237, -0.241776183, -0.307871968, 0.920195222, -0.969704211, 0.0425508283, -0.240548, 0.0349029154, -0.950475931, -0.308832437))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(2, 2, 5))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.820000112, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.93361282, 0.0704040527, -0.0807228088, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(3.48000002, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.0436306, 1.1287384, -1.56370544, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.600000024, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.68361092, 0.385857582, -0.317962646, 0.0349029228, -0.950475931, -0.308832467, 0.241776168, 0.307871938, -0.920195222, 0.969704211, -0.0425508283, 0.240548))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(4.18000031, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.49362373, 0.585878372, -0.317962646, 0.0349029228, -0.950475931, -0.308832467, 0.241776168, 0.307871938, -0.920195222, 0.969704211, -0.0425508283, 0.240548))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.300000012, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.55361938, 0.104698181, -1.16293335, 0.0349029228, -0.950475931, -0.308832467, 0.765577912, 0.224063158, -0.603064001, 0.642395854, -0.215386584, 0.735483646))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(3.08000016, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.743627548, -1.73353577, -1.36719513, 0.0349029228, -0.950475931, -0.308832467, 0.847531557, -0.135605425, 0.513129354, -0.529596448, -0.27965492, 0.800825119))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(7.28000021, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.94361877, 2.01470947, -1.16293335, 0.0349029228, -0.950475931, -0.308832467, 0.765577912, 0.224063158, -0.603064001, 0.642395854, -0.215386584, 0.735483646))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(4.18000078, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.49362373, -0.78125, -1.56369781, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(7.38000011, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.89362717, 0.176452637, -1.36717987, 0.0349029228, -0.950475931, -0.308832467, 0.847531557, -0.135605425, 0.513129354, -0.529596448, -0.27965492, 0.800825119))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(7.27999973, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.94362259, -2.38845825, -0.648468018, 0.0349029228, -0.950475931, -0.308832467, 0.374378681, -0.274084091, 0.885843515, -0.926618993, -0.146538794, 0.346271485))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.60362244, -0.478485107, -0.648483276, 0.0349029228, -0.950475931, -0.308832467, 0.374378681, -0.274084091, 0.885843515, -0.926618993, -0.146538794, 0.346271485))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.5, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28361702, -1.58352661, -1.36719131, 0.0349029228, -0.950475931, -0.308832467, 0.847531557, -0.135605425, 0.513129354, -0.529596448, -0.27965492, 0.800825119))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 1.10000002, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.50361824, -0.928466797, -0.648468018, 0.0349029228, -0.950475931, -0.308832467, 0.374378681, -0.274084091, 0.885843515, -0.926618993, -0.146538794, 0.346271485))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.400000036, 0.400000006))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.68361282, 0.485881805, -0.317962646, 0.0349029228, -0.950475931, -0.308832467, 0.241776168, 0.307871938, -0.920195222, 0.969704211, -0.0425508283, 0.240548))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(7.27999973, 0.200000003, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.94361496, 2.49586678, -0.317962646, 0.0349029228, -0.950475931, -0.308832467, 0.241776168, 0.307871938, -0.920195222, 0.969704211, -0.0425508283, 0.240548))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 1.30000007, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.50362206, 1.13585138, -0.317962646, 0.0349029228, -0.950475931, -0.308832467, 0.241776168, 0.307871938, -0.920195222, 0.969704211, -0.0425508283, 0.240548))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Smoky grey", "Part", Vector3.new(1.71000004, 0.200000003, 1.81000006))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.09585381, 2.38361931, 0.507064819, 0.241776183, 0.307871968, -0.920195222, -0.0349029154, 0.950475931, 0.308832437, 0.969704211, -0.0425508283, 0.240548))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(1.64999998, 1.59000015, 1.67000008))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.09585953, 1.62366486, 0.507064819, 0.241776183, 0.307871968, -0.920195222, -0.0349029154, 0.950475931, 0.308832437, 0.969704211, -0.0425508283, 0.240548))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.699999988, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.696378708, 1.76469421, -1.16293335, 0.0349029228, -0.950475931, -0.308832467, 0.765577912, 0.224063158, -0.603064001, 0.642395854, -0.215386584, 0.735483646))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.930000007))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, -0.459983826, -0.365005493, 1.00000024, 0, 0, 0, 1, 1.86264515e-09, 0, 1.86264515e-09, 0.99999994))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 1.20000005, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.50361252, 0.604698181, -1.16293335, 0.0349029228, -0.950475931, -0.308832467, 0.765577912, 0.224063158, -0.603064001, 0.642395854, -0.215386584, 0.735483646))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Smoky grey", "Part", Vector3.new(1.71000004, 0.200000003, 1.81000006))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.09585667, 0.873628616, 0.507064819, 0.241776183, 0.307871968, -0.920195222, -0.0349029154, 0.950475931, 0.308832437, 0.969704211, -0.0425508283, 0.240548))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.920000136, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000024, 0, 0, 0, 1, 1.86264515e-09, 0, 1.86264515e-09, 0.99999994))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.899999976, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.696378708, -2.03845215, -0.648483276, 0.0349029228, -0.950475931, -0.308832467, 0.374378681, -0.274084091, 0.885843515, -0.926618993, -0.146538794, 0.346271485))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.550000012))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-05, 0.460012436, -0.175018311, 1.00000024, 0, 0, 0, 1, 1.86264515e-09, 0, 1.86264515e-09, 0.99999994))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 1.10000002, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.50362206, -0.273544312, -1.36717987, 0.0349029228, -0.950475931, -0.308832467, 0.847531557, -0.135605425, 0.513129354, -0.529596448, -0.27965492, 0.800825119))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.5, 1.14999998))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.28361511, -0.53125, -1.31373596, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.930000007))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.93360138, -0.389587402, -0.345714569, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 2.0999999, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.696380615, 0.168762207, -1.56370544, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.5, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.696382523, 2.34584999, -0.317962646, 0.0349029228, -0.950475931, -0.308832467, 0.241776168, 0.307871938, -0.920195222, 0.969704211, -0.0425508283, 0.240548))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.730000496, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.78364944, -0.914924622, -1.49900818, 0.0349029228, -0.950475931, -0.308832467, 0.224812746, -0.29363355, 0.929106355, -0.973776877, -0.101857953, 0.203430369))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(3.18000031, 1.68000007, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.793626785, -0.0424346924, -0.642055511, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(2.98000097, 0.200000003, 1.14999998))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.893630981, -0.78125, -1.31369781, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Smoky grey", "Part", Vector3.new(0.730000496, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.78365326, -1.31258392, -1.40377808, 0.0349029228, -0.950475931, -0.308832467, -0.0348796546, -0.309991032, 0.950099528, -0.998781979, -0.0223892741, -0.0439718515))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.899999976, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.696380615, -1.3835144, -1.36720276, 0.0349029228, -0.950475931, -0.308832467, 0.847531557, -0.135605425, 0.513129354, -0.529596448, -0.27965492, 0.800825119))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.850000024))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.93361282, 0.530380249, -0.305717468, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 0.899999976, 0.649999976))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.696374893, -0.173538208, -1.36718369, 0.0349029228, -0.950475931, -0.308832467, 0.847531557, -0.135605425, 0.513129354, -0.529596448, -0.27965492, 0.800825119))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 1.69999993, 1.14999998))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.696380615, -0.0312194824, -1.31369019, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Smoky grey", "Part", Vector3.new(0.780000925, 0.230000004, 0.309999943))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.39359856, -0.79624939, -1.01370239, 0.0349029228, -0.950475931, -0.308832467, 0.996956468, 0.0546696596, -0.0555818826, 0.0697130263, -0.305952549, 0.949491084))
	Motor = CreatePart(m, Enum.Material.Metal, 0.20000000298023, 0, "Medium stone grey", "Motor", Vector3.new(1.60000002, 5.46000004, 1.48000002))
	MotorWeld = CreateWeld(m, FakeHandle, Motor, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.48586464, 4.39365387, -0.312942505, 0.241776183, 0.307871968, -0.920195222, -0.0349029154, 0.950475931, 0.308832437, 0.969704211, -0.0425508283, 0.240548))
	CreateMesh("CylinderMesh", Motor, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	FakeMotor = CreatePart(m, Enum.Material.Metal, 0.20000000298023, 0, "Medium stone grey", "Part", Vector3.new(1.60000002, 5.46000004, 1.48000002))
	FakeMotorWeld = CreateWeld(m, Motor, FakeMotor, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1.00000012, 2.98023224e-08, 0, 2.98023224e-08, 1.00000012, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", FakeMotor, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0283050537, 0.678848267, 0.899982452, 0.70710659, -1.13248825e-06, -0.707107067, -0.707107186, 1.49011612e-06, -0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Smoky grey", "Part", Vector3.new(0.700000048, 0.200000003, 0.750000119))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 2.73001862, 0, 1.00000012, 2.98023224e-08, 0, 2.98023224e-08, 1.00000012, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(1.60000002, 0.210000008, 1.35000002))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86102295e-06, 2.63498688, 0, 1.00000012, 2.98023224e-08, 0, 2.98023224e-08, 1.00000012, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529963493, 2.78498077, 0, 1.00000012, 2.98023224e-08, 0, 2.98023224e-08, 1.00000012, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529956818, 2.77998734, 0, 1.00000012, 2.98023224e-08, 0, 2.98023224e-08, 1.00000012, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0283050537, 0.678848267, -0.700012207, 0.70710659, -1.13248825e-06, -0.707107067, -0.707107186, 1.49011612e-06, -0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0283050537, 0.678840637, -1.50000381, 0.70710659, -1.13248825e-06, -0.707107067, -0.707107186, 1.49011612e-06, -0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.530006409, 2.77998352, 1.52587891e-05, 0.866025567, -1.49011612e-07, -0.499999821, 1.49011612e-07, 1.00000012, -8.94069601e-08, 0.499999851, 2.98023224e-08, 0.866025507))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.530014038, 2.78498077, 0, 0.500000656, 2.83122063e-07, -0.86602509, -8.34465027e-07, 1, -1.67762096e-07, 0.86602509, 8.04662704e-07, 0.500000656))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.77997589, 7.62939453e-06, 0.500000656, 2.83122063e-07, -0.86602509, -8.34465027e-07, 1, -1.67762096e-07, 0.86602509, 8.04662704e-07, 0.500000656))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.529983521, 2.77997589, 3.81469727e-06, 0, 0, -1, 0, 1.00000012, 0, 1.00000012, 0, 0))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.530014038, 2.77998161, 0, 0.500000656, 2.83122063e-07, -0.86602509, -8.34465027e-07, 1, -1.67762096e-07, 0.86602509, 8.04662704e-07, 0.500000656))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86102295e-06, 2.79998398, 0, 1.00000012, 2.98023224e-08, 0, 2.98023224e-08, 1.00000012, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.529997826, 2.77997971, 0, 1.00000012, 2.98023224e-08, 0, 2.98023224e-08, 1.00000012, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.530006409, 2.78498077, 1.52587891e-05, 0.866025567, -1.49011612e-07, -0.499999821, 1.49011612e-07, 1.00000012, -8.94069601e-08, 0.499999851, 2.98023224e-08, 0.866025507))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.78498268, 1.52587891e-05, 0.866025567, -1.49011612e-07, -0.499999821, 1.49011612e-07, 1.00000012, -8.94069601e-08, 0.499999851, 2.98023224e-08, 0.866025507))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.529998779, 2.78499222, 0, 1.00000012, 2.98023224e-08, 0, 2.98023224e-08, 1.00000012, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.77997398, 1.52587891e-05, 0.866025567, -1.49011612e-07, -0.499999821, 1.49011612e-07, 1.00000012, -8.94069601e-08, 0.499999851, 2.98023224e-08, 0.866025507))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.529983521, 2.7849865, 4.76837158e-06, 0, 0, -1, 0, 1.00000012, 0, 1.00000012, 0, 0))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.7849865, 4.76837158e-06, 0, 0, -1, 0, 1.00000012, 0, 1.00000012, 0, 0))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.78498459, 1.52587891e-05, 0.500000656, 2.83122063e-07, -0.86602509, -8.34465027e-07, 1, -1.67762096e-07, 0.86602509, 8.04662704e-07, 0.500000656))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0282745361, 0.678833008, -1.69995308, 0.70710659, -1.13248825e-06, 0.707107067, -0.707107186, 1.49011612e-06, 0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338973999, 0.673271179, -0.0999927521, -0.70710659, 1.13248825e-06, -0.707107067, 0.707107186, -1.49011612e-06, -0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0282745361, 0.678833008, -0.09998703, 0.70710659, -1.13248825e-06, 0.707107067, -0.707107186, 1.49011612e-06, 0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.529983521, 2.77997589, 0, -0.500000656, -2.83122063e-07, -0.86602509, -8.34465027e-07, 1, 1.67762096e-07, 0.86602509, 8.04662704e-07, -0.500000656))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.529983521, 2.78498459, 0, -0.500000656, -2.83122063e-07, -0.86602509, -8.34465027e-07, 1, 1.67762096e-07, 0.86602509, 8.04662704e-07, -0.500000656))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338973999, 0.673271179, -0.899978638, -0.70710659, 1.13248825e-06, -0.707107067, 0.707107186, -1.49011612e-06, -0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338516235, 0.673248291, -1.50000191, -0.70710659, 1.13248825e-06, 0.707107067, 0.707107186, -1.49011612e-06, 0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0282745361, 0.678833008, -0.899982452, 0.70710659, -1.13248825e-06, 0.707107067, -0.707107186, 1.49011612e-06, 0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338516235, 0.673248291, 1.69995499, -0.70710659, 1.13248825e-06, 0.707107067, 0.707107186, -1.49011612e-06, 0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.78498077, 7.62939453e-06, -0.500000656, -2.83122063e-07, -0.86602509, -8.34465027e-07, 1, 1.67762096e-07, 0.86602509, 8.04662704e-07, -0.500000656))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.529975891, 2.78497887, -1.52587891e-05, -0.866025567, 1.49011612e-07, -0.499999821, 1.49011612e-07, 1.00000012, 8.94069601e-08, 0.499999851, 2.98023224e-08, -0.866025507))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.77997589, 3.81469727e-06, 0, 0, -1, 0, 1.00000012, 0, 1.00000012, 0, 0))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338516235, 0.673240662, 0.0999755859, -0.70710659, 1.13248825e-06, 0.707107067, 0.707107186, -1.49011612e-06, 0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.529975891, 2.77997971, -1.52587891e-05, -0.866025567, 1.49011612e-07, -0.499999821, 1.49011612e-07, 1.00000012, 8.94069601e-08, 0.499999851, 2.98023224e-08, -0.866025507))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.310000002, 0.350000113))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.78498077, 1.52587891e-05, -0.866025567, 1.49011612e-07, -0.499999821, 1.49011612e-07, 1.00000012, 8.94069601e-08, 0.499999851, 2.98023224e-08, -0.866025507))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.77998161, 7.62939453e-06, -0.500000656, -2.83122063e-07, -0.86602509, -8.34465027e-07, 1, 1.67762096e-07, 0.86602509, 8.04662704e-07, -0.500000656))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0283050537, 0.678848267, 0.0999679565, 0.70710659, -1.13248825e-06, -0.707107067, -0.707107186, 1.49011612e-06, -0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0283050537, 0.678848267, 1.69995308, 0.70710659, -1.13248825e-06, -0.707107067, -0.707107186, 1.49011612e-06, -0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0282745361, 0.678833008, 1.50002289, 0.70710659, -1.13248825e-06, 0.707107067, -0.707107186, 1.49011612e-06, 0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Fossil", "Part", Vector3.new(0.400000036, 0.300000012, 0.240000129))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.529998779, 2.77998352, 1.52587891e-05, -0.866025567, 1.49011612e-07, -0.499999821, 1.49011612e-07, 1.00000012, 8.94069601e-08, 0.499999851, 2.98023224e-08, -0.866025507))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338973999, 0.673271179, 1.50001907, -0.70710659, 1.13248825e-06, -0.707107067, 0.707107186, -1.49011612e-06, -0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338516235, 0.673240662, 0.899978638, -0.70710659, 1.13248825e-06, 0.707107067, 0.707107186, -1.49011612e-06, 0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0282745361, 0.678833008, 0.700012207, 0.70710659, -1.13248825e-06, 0.707107067, -0.707107186, 1.49011612e-06, 0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338973999, 0.673278809, -1.69995499, -0.70710659, 1.13248825e-06, -0.707107067, 0.707107186, -1.49011612e-06, -0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338973999, 0.673278809, 0.7000103, -0.70710659, 1.13248825e-06, -0.707107067, 0.707107186, -1.49011612e-06, -0.707106531, -1.90734863e-06, -1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Metal, 0, 0, "Really black", "Part", Vector3.new(0.5, 0.200000003, 0.379999995))
	PartWeld = CreateWeld(m, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0338516235, 0.673248291, -0.7000103, -0.70710659, 1.13248825e-06, 0.707107067, 0.707107186, -1.49011612e-06, 0.707106531, 1.90734863e-06, 1, 2.52880795e-07))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
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
						elseif Type == "DarkUp" then
									coroutine.resume(coroutine.create(function()
		
		for i = 0, 1, 0.1 do
			swait()
			BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
		end
	end
))
									local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
									game:GetService("Debris"):AddItem(bodyVelocity, 1)
								elseif Type == "Snare" then
											local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
											game:GetService("Debris"):AddItem(bp, 1)
										elseif Type == "Curse" then
													CreateSound("http://roblox.com/asset/?id=283389706", Torso, 1, 1)
													for i = 0, 1, 0.025 do
														swait(30)
														SphereEffect(BrickColor.new("Bright violet"), hit.Parent.Torso.CFrame, 1, 1, 1, 3, 3, 3, 0.07)
														hit.Parent.Humanoid:TakeDamage(1)
													end
												elseif Type == "Freeze" then
															local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
															local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
															hit.Parent.Torso.Anchored = true
															coroutine.resume(coroutine.create(function(Part)
		
		swait(1.5)
		Part.Anchored = false
	end
), hit.Parent.Torso)
															game:GetService("Debris"):AddItem(BodPos, 6)
															game:GetService("Debris"):AddItem(BodGy, 6)
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
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=160432334", 1)
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
	
	local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Cloud = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1095708", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local rev = Instance.new("Sound", Barrel)
	rev.Volume = 1
	rev.Pitch = 1.2
	rev.Looped = false
	rev.SoundId = "rbxassetid://357820124"
	rev.MaxDistance = 1000
	local spim = Instance.new("Sound", Barrel)
	spim.Volume = 1
	spim.Pitch = 1
	spim.Looped = true
	spim.SoundId = "rbxassetid://167882734"
	spim.MaxDistance = 1000
	local aiming = false
	local nu = 0
	Aim = function()
	
	aiming = true
	attack = true
	Humanoid.WalkSpeed = 2
	Humanoid.JumpPower = 0
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.170424014, -0.0599999093, 0.143827543, 0.0551210083, -0.0140470108, -0.99838084, 0.246923029, 0.969035149, -1.39987253e-06, 0.967466116, -0.246523187, 0.0568827242), CFrame.new(0.0930410028, 1.51390386, -0.186864346, 0.0551210232, 0.246923029, 0.967466354, -0.0140470145, 0.969035149, -0.246523246, -0.998381078, -1.39987253e-06, 0.0568827391), CFrame.new(1.30572438, 0.549293935, -0.623716354, 0.975685954, 0.166035622, 0.143070266, 0.0081961602, 0.624675274, -0.780841708, -0.219019979, 0.76302886, 0.608125925), CFrame.new(-1.06310928, 0.322490007, -1.00624692, 0.881435692, -0.411378503, -0.232031837, -0.0481262654, 0.410489917, -0.910594344, 0.469845623, 0.813797176, 0.3420223), CFrame.new(0.673036039, -2.17349005, 0.0392552316, 0.988193929, -0.10620904, -0.110418722, 0.0839042664, 0.978192925, -0.189996794, 0.12819016, 0.178489059, 0.975555658), CFrame.new(-1.06996655, -1.72934985, -0.00624912977, 0.727204561, 0.246923029, 0.640470624, -0.185302377, 0.969035149, -0.163199365, -0.660936117, -1.39987253e-06, 0.750442147)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-80)), 0.3)
	end
	rev:Play()
	while aiming do
		swait()
		if rev.Playing == false and spim.Playing == false then
			spim:Play()
		end
		if nu < 360 then
			nu = nu + 20
		else
			nu = 0
		end
		FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(nu), math.rad(0)), 0.3)
	end
end

	Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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

	BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	
	local prt = CreatePart(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
	else
		if Type == 2 then
			table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
		end
	end
end

	shoottraildd = function(mouse, partt, SpreadAmount)
	
	local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
	local MainPos = partt.Position
	local MainPos2 = mouse.Hit.p + SpreadVectors
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	local speed = 100
	local num = 10
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
			Laser(BrickColor.new("Bright yellow"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.25, 0, -0.25, 0.15)
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 1)
			end
			do
				if num <= 0 then
					local refpart2 = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart2.Anchored = true
					refpart2.CFrame = CFrame.new(pos)
					game:GetService("Debris"):AddItem(refpart2, 1)
					if hit ~= nil then
						Effects.Sphere.Create(hit.BrickColor, refpart2.CFrame, 1, 1, 1, 0.5, 0.5, 0.5, 0.05)
						MagniDamage(refpart2, 5, 5, 5, 0, "Normal")
					end
				end
			end
		until num <= 0
	end
))
end

	IceMortar = function()
	
	local dacf = Head.CFrame * angles(-1.57 + math.random(40, 80) / 100, 0, math.random(-80, 80) / 100)
	local icepart1 = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Cyan"), "Ice", Vector3.new())
	icepart1.Anchored = true
	i1msh = CreateMesh("SpecialMesh", icepart1, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
	icepart1.CFrame = dacf
	local cfinc = 99999
	icepart1.Transparency = 1
	CFuncs.Sound.Create("rbxassetid://192410089", icepart1, 1, 1)
	game:GetService("Debris"):AddItem(icepart1, 1)
	local spread = Vector3.new((math.random(-3, 30) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-3, 3) + math.random()) * 16) * (icepart1.Position - (icepart1.Position + Vector3.new(0, -1, 0))).magnitude / 100
	local TheHit = mouse.Hit.p
	local MouseLook = cn((icepart1.Position + TheHit) / 2, TheHit + spread)
	local hit, pos = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
	local target1, distance1 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
	local test1, dist1 = mouse.Hit.p, nil
	if target1 ~= nil then
		cfda = target1.Position + Vector3.new(math.random(-3000, 3000) / 100, 10, math.random(-3000, 3000) / 100)
		local hit2, pos2 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
		local d1 = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Magenta"), "Effect", Vector3.new())
		d1.Anchored = true
		d1.CFrame = cn(pos2)
		MagniDamage(d1, 8, 3, 5, -10, "Normal")
		Effects.Sphere.Create(BrickColor.new("White"), Barrel.CFrame, 1, 1, 1, 3, 3, 3, 0.07)
		Effects.Cloud.Create(target1.BrickColor, Barrel.CFrame, 2, 1, 2, 0.1, 2, 0.1, 0.03)
		Effects.Cloud.Create(target1.BrickColor, cn(pos2), 1, 1, 1, math.random(0.7, 1), math.random(1, 3), math.random(0.7, 1), 0.03)
		Effects.Sphere.Create(BrickColor.new("Bright yellow"), cn(pos2), 1, 1, 1, 3, 3, 3, 0.07)
		Effects.Block.Create(BrickColor.new("Bright red"), cn(pos2), 1, 1, 1, 3, 3, 3, 0.07)
		Effects.Sphere.Create(BrickColor.new("White"), cn(pos2), 1, 1, 1, 10, 10, 10, 0.07)
		Effects.Ring.Create(BrickColor.new("Bright yellow"), cn(pos2), 0.1, 9999, 0.1, 0.5, 10, 0.5, 0.07)
		game.Debris:AddItem(d1, 0.5)
	end
end

	Hee = function()
	
	local dacf = Head.CFrame * angles(-1.57 + math.random(40, 80) / 100, 0, math.random(-80, 80) / 100)
	local icepart1 = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Cyan"), "Ice", Vector3.new())
	icepart1.Anchored = true
	i1msh = CreateMesh("SpecialMesh", icepart1, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
	icepart1.CFrame = dacf
	local cfinc = 99999
	icepart1.Transparency = 1
	CFuncs.Sound.Create("rbxassetid://151130059", icepart1, 1, math.random(1, 3))
	game:GetService("Debris"):AddItem(icepart1, 1)
	local spread = Vector3.new((math.random(-30, 30) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-30, 30) + math.random()) * 16) * (icepart1.Position - (icepart1.Position + Vector3.new(0, -1, 0))).magnitude / 100
	local TheHit = mouse.Hit.p
	local MouseLook = cn((icepart1.Position + TheHit) / 2, TheHit + spread)
	local hit, pos = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
	local target1, distance1 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
	local test1, dist1 = mouse.Hit.p, nil
	if target1 ~= nil then
		cfda = target1.Position + Vector3.new(math.random(-3000, 3000) / 100, 10, math.random(-3000, 3000) / 100)
		local hit2, pos2 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
		local d1 = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Magenta"), "Effect", Vector3.new())
		d1.Anchored = true
		d1.CFrame = cn(pos2)
		MagniDamage(d1, 8, 3, 5, 0, "Normal")
		Effects.Sphere.Create(target1.BrickColor, cn(pos2), 1, 1, 1, 4, 4, 4, 0.07)
		Effects.Ring.Create(BrickColor.new("Bright yellow"), cn(pos2), 0.1, 9999, 0.1, 0.5, 10, 0.5, 0.07)
		game.Debris:AddItem(d1, 0.5)
	end
end

	local soe = Instance.new("Sound", Barrel)
	soe.Volume = 1
	soe.Pitch = 1
	soe.Looped = true
	soe.SoundId = "rbxassetid://341294387"
	soe.MaxDistance = 1000
	local shoot = false
	local hot = false
	fire = function()
	
	hot = true
	shoot = true
	while shoot do
		while shoot do
			if shoot == true then
				swait()
				for i = 0, 1, 0.5 do
					swait()
					PlayAnimationFromTable({CFrame.new(-0.167053476, -0.0588135049, 0.140983686, 0.0654093325, -0.00924067106, -0.997815728, 0.156799912, 0.987629831, 0.0011322886, 0.98546207, -0.156531483, 0.0660491288), CFrame.new(-0.0409736931, 1.51582134, -0.183162034, 0.0654088631, 0.156799927, 0.985462129, -0.00924065989, 0.987629771, -0.156531498, -0.997815788, 0.00113223272, 0.066048637), CFrame.new(1.5242641, 0.608132184, -0.624453306, 0.972154856, 0.108696721, 0.207605079, 0.0937597305, 0.631499469, -0.769686759, -0.214764893, 0.767719507, 0.603723884), CFrame.new(-0.819477558, 0.188001126, -1.01326716, 0.882124126, -0.447403371, -0.147265807, 0.0331753343, 0.370894492, -0.928082407, 0.469847202, 0.813798189, 0.34201774), CFrame.new(0.856069803, -2.10349417, 0.0384711921, 0.977712274, -0.18880485, -0.0918231755, 0.168287143, 0.96627003, -0.194940567, 0.125531688, 0.175143108, 0.976507366), CFrame.new(-0.637022972, -1.86262906, -0.0132773817, 0.75052321, 0.156917602, 0.641943574, -0.118095078, 0.987610161, -0.103342898, -0.650206387, 0.00175085466, 0.759755611)}, 0.3, false)
				end
				if cooldown1 >= 4 then
					soe:Play()
					cooldown1 = cooldown1 - 2
					shoottraildd(mouse, Barrel, 1)
				else
					soe:Stop()
					CFuncs.Sound.Create("rbxassetid://135886551", Torso, 1, 1)
				end
				for i = 0, 1, 0.5 do
					swait()
					PlayAnimationFromTable({CFrame.new(-0.170424014, -0.0599999093, 0.143827543, 0.0551210083, -0.0140470108, -0.99838084, 0.246923029, 0.969035149, -1.39987253e-06, 0.967466116, -0.246523187, 0.0568827242), CFrame.new(0.0930410028, 1.51390386, -0.186864346, 0.0551210232, 0.246923029, 0.967466354, -0.0140470145, 0.969035149, -0.246523246, -0.998381078, -1.39987253e-06, 0.0568827391), CFrame.new(1.30572438, 0.549293935, -0.623716354, 0.975685954, 0.166035622, 0.143070266, 0.0081961602, 0.624675274, -0.780841708, -0.219019979, 0.76302886, 0.608125925), CFrame.new(-1.06310928, 0.322490007, -1.00624692, 0.881435692, -0.411378503, -0.232031837, -0.0481262654, 0.410489917, -0.910594344, 0.469845623, 0.813797176, 0.3420223), CFrame.new(0.673036039, -2.17349005, 0.0392552316, 0.988193929, -0.10620904, -0.110418722, 0.0839042664, 0.978192925, -0.189996794, 0.12819016, 0.178489059, 0.975555658), CFrame.new(-1.06996655, -1.72934985, -0.00624912977, 0.727204561, 0.246923029, 0.640470624, -0.185302377, 0.969035149, -0.163199365, -0.660936117, -1.39987253e-06, 0.750442147)}, 0.3, false)
				end
				if cooldown1 >= 4 then
					cooldown1 = cooldown1 - 2
					shoottraildd(mouse, Barrel, 1)
					-- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_THEN_STMT

					-- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_STMT

					-- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_THEN_STMT

					-- DECOMPILER ERROR at PC252: LeaveBlock: unexpected jumping out IF_STMT

				end
			end
		end
		soe:Stop()
		CFuncs.Sound.Create("rbxassetid://135886551", Torso, 1, 1)
	end
	hot = false
end

	baka = function()
	
	Humanoid.WalkSpeed = 2
	Humanoid.JumpPower = 0
	attack = true
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, -0.126676023, 0.23911497, -0.962692738, 0.0259660054, 0.970977783, 0.237756103, 0.991604209, 0.00512071373, -0.129208475), CFrame.new(-0.0221787691, 1.45965314, -0.112358943, 0.595528305, -0.284922779, 0.751109242, 0.114603601, 0.955558896, 0.271612644, -0.795117676, -0.0756731778, 0.601715565), CFrame.new(1.10635591, 0.859423637, -0.981054425, 0.608006597, 0.255645812, 0.751646996, 0.66461128, 0.354005992, -0.658005834, -0.434303999, 0.899625063, 0.0453328565), CFrame.new(-1.15179741, 0.192107677, -0.658762455, 0.950540423, -0.300884187, 0.077081807, 0.186789155, 0.355474651, -0.915831685, 0.248158604, 0.884933174, 0.394094855), CFrame.new(0.568166018, -1.92436779, -0.615063548, 0.522848248, -0.20566088, 0.827244461, 0.0774576887, 0.977906942, 0.194160998, -0.848899424, -0.0374402776, 0.527226925), CFrame.new(-0.588464379, -2.00466871, -0.160800442, 0.795416594, 0.0259660054, 0.605506659, 0.123992123, 0.970977783, -0.204519317, -0.593244076, 0.237756103, 0.769112289)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-80)), 0.3)
	end
	for i = 1, 10 do
		for i = 0, 1, 0.5 do
			swait()
			PlayAnimationFromTable({CFrame.new(0, 0, 0, -0.126676023, 0.23911497, -0.962692738, 0.0259660054, 0.970977783, 0.237756103, 0.991604209, 0.00512071373, -0.129208475), CFrame.new(-0.0221787691, 1.45965314, -0.112358943, 0.595528305, -0.284922779, 0.751109242, 0.114603601, 0.955558896, 0.271612644, -0.795117676, -0.0756731778, 0.601715565), CFrame.new(1.10635591, 0.859423637, -0.981054425, 0.608006597, 0.255645812, 0.751646996, 0.66461128, 0.354005992, -0.658005834, -0.434303999, 0.899625063, 0.0453328565), CFrame.new(-1.15179741, 0.192107677, -0.658762455, 0.950540423, -0.300884187, 0.077081807, 0.186789155, 0.355474651, -0.915831685, 0.248158604, 0.884933174, 0.394094855), CFrame.new(0.568166018, -1.92436779, -0.615063548, 0.522848248, -0.20566088, 0.827244461, 0.0774576887, 0.977906942, 0.194160998, -0.848899424, -0.0374402776, 0.527226925), CFrame.new(-0.588464379, -2.00466871, -0.160800442, 0.795416594, 0.0259660054, 0.605506659, 0.123992123, 0.970977783, -0.204519317, -0.593244076, 0.237756103, 0.769112289)}, 0.4, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-80)), 0.3)
		end
		IceMortar()
		for i = 0, 1, 0.5 do
			swait()
			PlayAnimationFromTable({CFrame.new(0, 0, 0, -0.335253149, 0.328955054, -0.882832885, 0.107930049, 0.944303334, 0.310873568, 0.935925424, 0.00893715583, -0.352084786), CFrame.new(-0.00419440866, 1.463902, 0.0260094106, 0.372635633, -0.266420603, 0.888911009, 0.176304489, 0.960780025, 0.214053184, -0.91107595, 0.0769551396, 0.404991925), CFrame.new(1.16062069, 1.21589506, -1.1315105, 0.461470664, 0.408944249, 0.787279725, 0.759406447, 0.276684046, -0.588853061, -0.458635807, 0.869603693, -0.182873294), CFrame.new(-1.1017859, 0.105088279, -0.580041945, 0.871761322, -0.489363998, -0.0235606134, 0.251738638, 0.48867017, -0.83536166, 0.420309335, 0.722304821, 0.549195588), CFrame.new(0.356478155, -1.8632127, -0.897590756, 0.318082392, -0.179918393, 0.930834651, 0.152005479, 0.978804231, 0.137247398, -0.935798109, 0.0978359506, 0.33868891), CFrame.new(-0.668343425, -1.97596669, -0.199289501, 0.642908812, 0.107930049, 0.758300424, 0.172217295, 0.944303334, -0.280414909, -0.746330738, 0.310873568, 0.588513494)}, 0.3, false)
		end
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-80)), 0.3)
	end
	Humanoid.WalkSpeed = 14
	Humanoid.JumpPower = 50
	attack = false
end

	bulletrain = function()
	
	attack = true
	shoot = true
	Humanoid.WalkSpeed = 2
	Humanoid.JumpPower = 0
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({CFrame.new(-8.64267349e-07, -0.259999782, 0.509999871, 0.454838723, 0.207662866, -0.866024196, -0.415319771, 0.909675479, 2.65391373e-06, 0.787801504, 0.359675765, 0.500002146), CFrame.new(0.047690846, 1.37390435, -0.00346283242, 0.454838723, 0.0202630162, 0.890343308, 0.207662866, 0.969769061, -0.128156841, -0.866024196, 0.243181929, 0.436880678), CFrame.new(1.1759336, -0.214563698, -0.518012762, 0.694960654, 0.00311025977, -0.719041109, -0.715354204, -0.0982373655, -0.691822171, -0.0727884769, 0.995158195, -0.0660461485), CFrame.new(-0.00660583377, 0.722521007, -1.36138439, 0.0264981389, -0.398905575, 0.916609168, 0.381749183, -0.843399405, -0.378080904, 0.92388618, 0.359933168, 0.129933342), CFrame.new(0.993886769, -1.80155158, 0.41332227, 0.946233869, -0.168109909, -0.276370257, 0.32347101, 0.484278023, 0.812921524, -0.00282013416, -0.858611643, 0.512618959), CFrame.new(-0.795712531, -2.27605748, -0.675008774, 0.968845665, 0.247665286, -6.2584877e-07, -0.247665256, 0.968845665, -3.36766243e-06, -2.08616257e-07, 3.39746475e-06, 1)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-80)), 0.3)
	end
	soe:Play()
	for i = 1, 5 do
		for i = 0, 1, 0.5 do
			swait()
			PlayAnimationFromTable({CFrame.new(-8.64267349e-07, -0.259999782, 0.509999871, 0.454838723, 0.207662866, -0.866024196, -0.415319771, 0.909675479, 2.65391373e-06, 0.787801504, 0.359675765, 0.500002146), CFrame.new(0.047690846, 1.37390435, -0.00346283242, 0.454838723, 0.0202630162, 0.890343308, 0.207662866, 0.969769061, -0.128156841, -0.866024196, 0.243181929, 0.436880678), CFrame.new(1.1759336, -0.214563698, -0.518012762, 0.694960654, 0.00311025977, -0.719041109, -0.715354204, -0.0982373655, -0.691822171, -0.0727884769, 0.995158195, -0.0660461485), CFrame.new(-0.00660583377, 0.722521007, -1.36138439, 0.0264981389, -0.398905575, 0.916609168, 0.381749183, -0.843399405, -0.378080904, 0.92388618, 0.359933168, 0.129933342), CFrame.new(0.993886769, -1.80155158, 0.41332227, 0.946233869, -0.168109909, -0.276370257, 0.32347101, 0.484278023, 0.812921524, -0.00282013416, -0.858611643, 0.512618959), CFrame.new(-0.795712531, -2.27605748, -0.675008774, 0.968845665, 0.247665286, -6.2584877e-07, -0.247665256, 0.968845665, -3.36766243e-06, -2.08616257e-07, 3.39746475e-06, 1)}, 0.3, false)
		end
		Effects.Ring.Create(BrickColor.new("Bright yellow"), Barrel.CFrame, 0.05, 9999, 0.05, 0.5, 10, 0.5, 0.07)
		coroutine.resume(coroutine.create(function()
		
		swait(50)
		for i = 0, 3 do
			swait()
			Hee()
		end
	end
))
		for i = 0, 1, 0.5 do
			swait()
			PlayAnimationFromTable({CFrame.new(-4.02331352e-07, -0.429999679, 0.509999633, 0.454838723, 0.207662866, -0.866024196, -0.415319771, 0.909675479, 2.65391373e-06, 0.787801504, 0.359675765, 0.500002146), CFrame.new(-0.0229135007, 1.52854931, -0.00346241146, 0.454838723, 0.0202630162, 0.890343308, 0.207662866, 0.969769061, -0.128156841, -0.866024196, 0.243181929, 0.436880678), CFrame.new(1.34206092, -0.578433394, -0.518014491, 0.694960654, 0.00311025977, -0.719041109, -0.715354204, -0.0982373655, -0.691822171, -0.0727884769, 0.995158195, -0.0660461485), CFrame.new(0.159522176, 0.358650804, -1.36138511, 0.0264981389, -0.398905575, 0.916609168, 0.381749183, -0.843399405, -0.378080904, 0.92388618, 0.359933168, 0.129933342), CFrame.new(0.923282862, -1.64690685, 0.413322628, 0.946233869, -0.168109909, -0.276370257, 0.32347101, 0.484278023, 0.812921524, -0.00282013416, -0.858611643, 0.512618959), CFrame.new(-0.866316676, -2.12141252, -0.675008297, 0.968845665, 0.247665286, -6.2584877e-07, -0.247665256, 0.968845665, -3.36766243e-06, -2.08616257e-07, 3.39746475e-06, 1)}, 0.3, false)
		end
	end
	Humanoid.WalkSpeed = 16
	Humanoid.JumpPower = 50
	shoot = false
	attack = false
end

	reload = function()
	
	attack = true
	CFuncs.Sound.Create("rbxassetid://476967191", Torso, 1, 1)
	Humanoid.WalkSpeed = 0
	Humanoid.JumpPower = 0
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.8440187e-07, -0.139999658, 4.09781933e-08, 0.961201906, -0.10690318, -0.254288644, 0.21934697, 0.855199099, 0.469597191, 0.167265981, -0.50715512, 0.845467865), CFrame.new(0.118516162, 1.58659482, -0.219019189, 0.961201906, 0.0477932617, 0.271674097, -0.10690318, 0.972449541, 0.20715633, -0.254288644, -0.228161901, 0.939829588), CFrame.new(1.68424237, 0.748442292, -0.706012189, 0.99522835, -0.0820493251, -0.052807644, -0.0259959921, 0.298680395, -0.953999102, 0.094047606, 0.950819731, 0.295122236), CFrame.new(-1.00540316, -0.0433585942, -1.04679382, 0.889593422, -0.412790358, -0.195519671, -0.0179834068, 0.396077901, -0.918040872, 0.456399381, 0.820199132, 0.344924867), CFrame.new(0.077872172, -1.66495073, -0.965118527, 0.971758127, 0.128417134, 0.197978109, -0.14856942, 0.984753489, 0.0904862583, -0.18333964, -0.11734429, 0.976021051), CFrame.new(-0.952379167, -2.22908545, -0.0740788579, 0.971758127, -0.0780466571, 0.222699374, -0.14856942, 0.530862331, 0.834333539, -0.18333964, -0.843856633, 0.504274428)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.24797225e-07, -0.139999777, -1.2293458e-07, 0.912073672, -0.106903367, -0.395845294, 0.287424922, 0.855198979, 0.431302249, 0.292418867, -0.50715518, 0.810731053), CFrame.new(0.0842576772, 1.58659482, -0.234341949, 0.912073672, 0.0129638165, 0.409821719, -0.106903367, 0.972449541, 0.207156241, -0.395845294, -0.232753009, 0.888331294), CFrame.new(1.559021, 0.748442054, -0.951093793, 0.998059869, 0.0617666095, -0.00785881281, -0.0259962082, 0.298680305, -0.953999102, -0.0565779954, 0.952352405, 0.299706489), CFrame.new(-1.58909011, 0.00795590132, -0.693813384, 0.872956932, 0.466834873, -0.141462982, -0.292127311, 0.268072933, -0.918040633, -0.390650928, 0.842735052, 0.370391279), CFrame.new(-0.0680454671, -1.66495061, -0.965861261, 0.933171809, 0.109325245, 0.342401206, -0.148569614, 0.98475343, 0.0904861391, -0.3272883, -0.135309517, 0.935186505), CFrame.new(-0.952697039, -2.22908521, 0.069880724, 0.933171809, -0.203970551, 0.295950353, -0.148569614, 0.530862331, 0.83433342, -0.3272883, -0.822545528, 0.46508193)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://420157750", Torso, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.24797225e-07, -0.139999777, -1.2293458e-07, 0.912073672, -0.106903367, -0.395845294, 0.287424922, 0.855198979, 0.431302249, 0.292418867, -0.50715518, 0.810731053), CFrame.new(0.0842583403, 1.5865947, -0.234342203, 0.996350586, 0.0129648447, 0.0843672305, -0.0322037786, 0.972449422, 0.2308788, -0.0790495872, -0.232753068, 0.969317853), CFrame.new(1.559021, 0.748442054, -0.951093793, 0.998059869, 0.0617666095, -0.00785881281, -0.0259962082, 0.298680305, -0.953999102, -0.0565779954, 0.952352405, 0.299706489), CFrame.new(-0.412511081, -0.129949987, -1.20445538, 0.850484729, -0.506620288, -0.141463727, 0.0787711143, 0.388581336, -0.918041229, 0.520068347, 0.769636631, 0.370389462), CFrame.new(-0.0680454671, -1.66495061, -0.965861261, 0.933171809, 0.109325245, 0.342401206, -0.148569614, 0.98475343, 0.0904861391, -0.3272883, -0.135309517, 0.935186505), CFrame.new(-0.952697039, -2.22908521, 0.069880724, 0.933171809, -0.203970551, 0.295950353, -0.148569614, 0.530862331, 0.83433342, -0.3272883, -0.822545528, 0.46508193)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://420157750", Torso, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.24797225e-07, -0.139999777, -1.2293458e-07, 0.912073672, -0.106903367, -0.395845294, 0.287424922, 0.855198979, 0.431302249, 0.292418867, -0.50715518, 0.810731053), CFrame.new(0.0842583403, 1.5865947, -0.234342203, 0.996350586, 0.0129648447, 0.0843672305, -0.0322037786, 0.972449422, 0.2308788, -0.0790495872, -0.232753068, 0.969317853), CFrame.new(1.559021, 0.748442054, -0.951093793, 0.998059869, 0.0617666095, -0.00785881281, -0.0259962082, 0.298680305, -0.953999102, -0.0565779954, 0.952352405, 0.299706489), CFrame.new(-1.23337948, -0.0337366089, -0.848193765, 0.985941291, 0.0889243782, -0.141466275, -0.164270043, 0.360854447, -0.91804111, -0.0305874944, 0.928373039, 0.370388746), CFrame.new(-0.0680454671, -1.66495061, -0.965861261, 0.933171809, 0.109325245, 0.342401206, -0.148569614, 0.98475343, 0.0904861391, -0.3272883, -0.135309517, 0.935186505), CFrame.new(-0.952697039, -2.22908521, 0.069880724, 0.933171809, -0.203970551, 0.295950353, -0.148569614, 0.530862331, 0.83433342, -0.3272883, -0.822545528, 0.46508193)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(2.75671482e-07, -0.139999509, 4.84287739e-08, 0.93023777, -0.149679706, -0.335043013, 0.266118944, 0.903822243, 0.335091412, 0.252662927, -0.400875956, 0.880602121), CFrame.new(0.146082789, 1.46556664, -0.249146447, 0.999015331, 0.0302448869, 0.0324646235, -0.0357455313, 0.982079625, 0.185046405, -0.0262861252, -0.186024636, 0.98219353), CFrame.new(1.60341132, 0.634059429, -0.960381627, 0.999630213, 0.0153988302, -0.0224183053, -0.0267876983, 0.414896607, -0.909474254, -0.00470355153, 0.909738421, 0.415155649), CFrame.new(-1.27817965, 0.483237952, -0.584308505, 0.9862625, -0.0390861779, -0.1604954, -0.16083923, -0.0057964623, -0.986963689, 0.0376463234, 0.999219179, -0.012003392), CFrame.new(-0.0210132897, -1.77229953, -0.753718495, 0.947978377, 0.115773275, 0.296536177, -0.182390139, 0.960999489, 0.207879633, -0.260904163, -0.251150727, 0.932122588), CFrame.new(-0.954967141, -2.2089045, 0.30019033, 0.947978377, -0.163744882, 0.272992253, -0.182390139, 0.423467815, 0.887360692, -0.260904163, -0.890989721, 0.371572882)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(-7.69272447e-07, -0.140000135, -3.46451998e-07, 0.782381177, -0.149679378, -0.60454601, 0.356171101, 0.903822064, 0.23716639, 0.51090312, -0.400876313, 0.760444701), CFrame.new(0.06250453, 1.46556664, -0.281969577, 0.942660391, -0.0283489227, 0.332547724, -0.0357453376, 0.982079625, 0.185045928, -0.331834137, -0.186322451, 0.924754024), CFrame.new(1.1519953, 0.518530607, -1.48000467, 0.949874043, 0.29405424, 0.106168121, -0.0267875418, 0.414896131, -0.909474373, -0.311483502, 0.861042023, 0.40197596), CFrame.new(-1.31573653, 0.564093769, -1.05578232, 0.985590637, -0.064363122, -0.156425014, -0.153479308, 0.0484448671, -0.986963749, 0.0711020529, 0.996749997, 0.0378683656), CFrame.new(-0.251480341, -1.77229917, -0.710838974, 0.822034001, 0.0330443978, 0.568479002, -0.18238984, 0.960999548, 0.207879215, -0.539438784, -0.274568528, 0.796001196), CFrame.new(-0.816619396, -2.20890474, 0.578971326, 0.822034001, -0.429472685, 0.373916447, -0.18238984, 0.423468202, 0.887360513, -0.539438784, -0.797638893, 0.269773781)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://140792940", Torso, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(8.6799264e-07, -0.139999613, 2.19792128e-07, 0.972940207, -0.00549634127, -0.230991706, 0.0912460238, 0.927601039, 0.362257659, 0.21227704, -0.373532087, 0.903001845), CFrame.new(-0.0466574468, 1.474949, -0.231621325, 0.990165234, -0.0956909955, -0.102060065, 0.112293385, 0.978708446, 0.171814561, 0.0834459513, -0.181585401, 0.979828417), CFrame.new(1.66388702, 0.579190969, -0.444770992, 0.987100601, -0.14505294, 0.0677664801, 0.120891877, 0.397787958, -0.90947789, 0.104965746, 0.905938506, 0.41019243), CFrame.new(-1.6625241, 0.839273512, -0.0717586502, 0.9169752, 0.398815453, -0.0101394355, 0.00248540938, -0.0311260223, -0.999512553, -0.398936599, 0.916502833, -0.0295330286), CFrame.new(0.323853761, -1.74355471, -0.751475215, 0.98718667, -0.00142863393, 0.159563616, -0.036436528, 0.971523821, 0.234123647, -0.155354321, -0.236937672, 0.959023356), CFrame.new(-0.643794179, -2.33010077, 0.193637908, 0.98718667, -0.127094775, 0.0964857638, -0.036436528, 0.409146309, 0.911741078, -0.155354321, -0.903574109, 0.399272919)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(-7.69272447e-07, -0.140000135, -3.46451998e-07, 0.782381177, -0.149679378, -0.60454601, 0.356171101, 0.903822064, 0.23716639, 0.51090312, -0.400876313, 0.760444701), CFrame.new(0.06250453, 1.46556664, -0.281969577, 0.942660391, -0.0283489227, 0.332547724, -0.0357453376, 0.982079625, 0.185045928, -0.331834137, -0.186322451, 0.924754024), CFrame.new(1.1519953, 0.518530607, -1.48000467, 0.949874043, 0.29405424, 0.106168121, -0.0267875418, 0.414896131, -0.909474373, -0.311483502, 0.861042023, 0.40197596), CFrame.new(-1.31573653, 0.564093769, -1.05578232, 0.985590637, -0.064363122, -0.156425014, -0.153479308, 0.0484448671, -0.986963749, 0.0711020529, 0.996749997, 0.0378683656), CFrame.new(-0.251480341, -1.77229917, -0.710838974, 0.822034001, 0.0330443978, 0.568479002, -0.18238984, 0.960999548, 0.207879215, -0.539438784, -0.274568528, 0.796001196), CFrame.new(-0.816619396, -2.20890474, 0.578971326, 0.822034001, -0.429472685, 0.373916447, -0.18238984, 0.423468202, 0.887360513, -0.539438784, -0.797638893, 0.269773781)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://140792940", Torso, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(8.6799264e-07, -0.139999613, 2.19792128e-07, 0.972940207, -0.00549634127, -0.230991706, 0.0912460238, 0.927601039, 0.362257659, 0.21227704, -0.373532087, 0.903001845), CFrame.new(-0.0466574468, 1.474949, -0.231621325, 0.990165234, -0.0956909955, -0.102060065, 0.112293385, 0.978708446, 0.171814561, 0.0834459513, -0.181585401, 0.979828417), CFrame.new(1.66388702, 0.579190969, -0.444770992, 0.987100601, -0.14505294, 0.0677664801, 0.120891877, 0.397787958, -0.90947789, 0.104965746, 0.905938506, 0.41019243), CFrame.new(-1.6625241, 0.839273512, -0.0717586502, 0.9169752, 0.398815453, -0.0101394355, 0.00248540938, -0.0311260223, -0.999512553, -0.398936599, 0.916502833, -0.0295330286), CFrame.new(0.323853761, -1.74355471, -0.751475215, 0.98718667, -0.00142863393, 0.159563616, -0.036436528, 0.971523821, 0.234123647, -0.155354321, -0.236937672, 0.959023356), CFrame.new(-0.643794179, -2.33010077, 0.193637908, 0.98718667, -0.127094775, 0.0964857638, -0.036436528, 0.409146309, 0.911741078, -0.155354321, -0.903574109, 0.399272919)}, 0.3, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(-7.69272447e-07, -0.140000135, -3.46451998e-07, 0.782381177, -0.149679378, -0.60454601, 0.356171101, 0.903822064, 0.23716639, 0.51090312, -0.400876313, 0.760444701), CFrame.new(0.06250453, 1.46556664, -0.281969577, 0.942660391, -0.0283489227, 0.332547724, -0.0357453376, 0.982079625, 0.185045928, -0.331834137, -0.186322451, 0.924754024), CFrame.new(1.1519953, 0.518530607, -1.48000467, 0.949874043, 0.29405424, 0.106168121, -0.0267875418, 0.414896131, -0.909474373, -0.311483502, 0.861042023, 0.40197596), CFrame.new(-1.31573653, 0.564093769, -1.05578232, 0.985590637, -0.064363122, -0.156425014, -0.153479308, 0.0484448671, -0.986963749, 0.0711020529, 0.996749997, 0.0378683656), CFrame.new(-0.251480341, -1.77229917, -0.710838974, 0.822034001, 0.0330443978, 0.568479002, -0.18238984, 0.960999548, 0.207879215, -0.539438784, -0.274568528, 0.796001196), CFrame.new(-0.816619396, -2.20890474, 0.578971326, 0.822034001, -0.429472685, 0.373916447, -0.18238984, 0.423468202, 0.887360513, -0.539438784, -0.797638893, 0.269773781)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://140792940", Torso, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(8.6799264e-07, -0.139999613, 2.19792128e-07, 0.972940207, -0.00549634127, -0.230991706, 0.0912460238, 0.927601039, 0.362257659, 0.21227704, -0.373532087, 0.903001845), CFrame.new(-0.0466574468, 1.474949, -0.231621325, 0.990165234, -0.0956909955, -0.102060065, 0.112293385, 0.978708446, 0.171814561, 0.0834459513, -0.181585401, 0.979828417), CFrame.new(1.66388702, 0.579190969, -0.444770992, 0.987100601, -0.14505294, 0.0677664801, 0.120891877, 0.397787958, -0.90947789, 0.104965746, 0.905938506, 0.41019243), CFrame.new(-1.6625241, 0.839273512, -0.0717586502, 0.9169752, 0.398815453, -0.0101394355, 0.00248540938, -0.0311260223, -0.999512553, -0.398936599, 0.916502833, -0.0295330286), CFrame.new(0.323853761, -1.74355471, -0.751475215, 0.98718667, -0.00142863393, 0.159563616, -0.036436528, 0.971523821, 0.234123647, -0.155354321, -0.236937672, 0.959023356), CFrame.new(-0.643794179, -2.33010077, 0.193637908, 0.98718667, -0.127094775, 0.0964857638, -0.036436528, 0.409146309, 0.911741078, -0.155354321, -0.903574109, 0.399272919)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://357820124", Torso, 1, 1)
	cooldown1 = 200
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(8.63336027e-07, -0.139999524, 2.11410224e-07, 0.972940207, -0.0703168139, -0.220097557, 0.0912460238, 0.992072761, 0.0864050239, 0.21227704, -0.104149938, 0.971643686), CFrame.new(0.0565204546, 1.57937229, -0.254729301, 0.939605474, -0.0956909955, 0.32861048, -0.0686053783, 0.887976408, 0.454743028, -0.335313201, -0.449823558, 0.827782691), CFrame.new(1.66388702, 0.430516392, -0.589863598, 0.987100601, -0.14505294, 0.0677664801, 0.145556614, 0.636787474, -0.757175744, 0.0666777343, 0.757272482, 0.649686694), CFrame.new(-1.59538066, 0.0678503811, 0.220779896, 0.9169752, 0.259564161, 0.302957177, -0.109948099, 0.8944121, -0.433518767, -0.383494496, 0.364216447, 0.848692358), CFrame.new(0.323853761, -1.88460708, -0.230116844, 0.98718667, -0.00142863393, 0.159563616, -0.0787070394, 0.865496337, 0.494693071, -0.138808474, -0.500913203, 0.854294121), CFrame.new(-0.643794179, -2.1812942, 0.841914892, 0.98718667, -0.127094775, 0.0964857638, -0.0787070394, 0.138161942, 0.987277389, -0.138808474, -0.982221127, 0.126388401)}, 0.3, false)
		FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-4.63598553e-07, -0.139999643, 7.72997737e-08, 0.99752301, -0.0703164712, -0.00185317313, 0.0701259971, 0.992072821, 0.104278311, -0.00549399992, -0.104149975, 0.994546473), CFrame.new(0.110893115, 1.57937193, -0.236186981, 0.78559494, 0.00506232027, 0.618720472, -0.288064182, 0.887976527, 0.358492374, -0.547594428, -0.459860921, 0.699048221), CFrame.new(1.75263917, 0.430516958, -0.211456299, 0.948584676, -0.307252407, -0.0760475099, 0.145556927, 0.636787355, -0.757175744, 0.281070143, 0.707176089, 0.648769379), CFrame.new(-1.60502636, 0.0678498447, -0.133690476, 0.978670716, 0.173570752, 0.109894, -0.109947756, 0.89441222, -0.433518827, -0.173536703, 0.412189603, 0.894418776), CFrame.new(0.366361797, -1.88460708, -0.153670132, 0.993635535, 0.108221181, -0.0312502384, -0.0787066966, 0.865496516, 0.494693041, 0.0805832371, -0.489084959, 0.868505836), CFrame.new(-0.812426805, -2.18129468, 0.68062675, 0.993635535, 0.0909263268, 0.0664891303, -0.0787066966, 0.138162017, 0.987277448, 0.0805832371, -0.986226976, 0.144439206)}, 0.3, false)
		FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-4.63598553e-07, -0.139999643, 7.72997737e-08, 0.99752301, -0.0703164712, -0.00185317313, 0.0701259971, 0.992072821, 0.104278311, -0.00549399992, -0.104149975, 0.994546473), CFrame.new(0.110893264, 1.57937276, -0.236186564, 0.891458511, 0.00506000547, -0.453074306, 0.204350829, 0.887976766, 0.411992967, 0.404404104, -0.459860682, 0.790560246), CFrame.new(1.75263917, 0.430516958, -0.211456299, 0.948584676, -0.307252407, -0.0760475099, 0.145556927, 0.636787355, -0.757175744, 0.281070143, 0.707176089, 0.648769379), CFrame.new(-1.60502636, 0.0678498447, -0.133690476, 0.978670716, 0.173570752, 0.109894, -0.109947756, 0.89441222, -0.433518827, -0.173536703, 0.412189603, 0.894418776), CFrame.new(0.366361797, -1.88460708, -0.153670132, 0.993635535, 0.108221181, -0.0312502384, -0.0787066966, 0.865496516, 0.494693041, 0.0805832371, -0.489084959, 0.868505836), CFrame.new(-0.812426805, -2.18129468, 0.68062675, 0.993635535, 0.0909263268, 0.0664891303, -0.0787066966, 0.138162017, 0.987277448, 0.0805832371, -0.986226976, 0.144439206)}, 0.3, false)
		FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)), 0.3)
	end
	Humanoid.WalkSpeed = 16
	Humanoid.JumpPower = 50
	attack = false
end

	mouse.Button1Down:connect(function()
	
	if attack == false and aiming == false then
		Aim()
	end
end
)
	mouse.Button1Up:connect(function()
	
	if attack == true and aiming == true then
		attack = false
		aiming = false
		Humanoid.WalkSpeed = 14
		Humanoid.JumpPower = 50
		shoot = false
	end
end
)
	mouse.KeyDown:connect(function(k)
	
	k = k:lower()
	if attack == true and aiming == true and hot == false and k == "z" then
		fire()
	else
		if attack == false and aiming == false and hot == false and k == "c" and co3 <= cooldown3 then
			cooldown3 = 0
			baka()
		else
			if attack == false and aiming == false and hot == false and k == "v" and co4 <= cooldown4 then
				cooldown4 = 0
				bulletrain()
			else
				if attack == false and aiming == false and hot == false and k == "x" and co2 <= cooldown2 then
					cooldown2 = 0
					reload()
				end
			end
		end
	end
end
)
	mouse.KeyUp:connect(function(k)
	
	k = k:lower()
	if attack == true and aiming == true and hot == true and k == "z" then
		shoot = false
	end
end
)
	updateskills = function()
	
	if aiming == false then
		text1.Text = "[Z]\n N/A"
	else
		text1.Text = "[Z]\n Fire"
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

	Humanoid.WalkSpeed = 14
	while true do
		swait()
		updateskills()
		bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
		bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
		bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
		bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
		if shoot == false then
			soe:Stop()
		end
		if aiming == false then
			spim:Stop()
		end
		if aiming == true then
			local aim = CFrame.new(RootPart.Position, mouse.Hit.p)
			local direction = aim.lookVector
			local headingA = math.atan2(direction.x, direction.z)
			headingA = math.deg(headingA)
			Humanoid.AutoRotate = false
			RootPart.CFrame = CFrame.new(RootPart.Position) * angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
		else
			--do
				Humanoid.AutoRotate = true
end
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
							RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -0.3) * angles(math.rad(80), math.rad(-50), math.rad(30)), 0.3)
							LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.4, -1) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
							RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
							LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -1.5, -1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-130)), 0.3)
							FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-120)), 0.3)
						end
					else
						if RootPart.Velocity.y < -1 and hit == nil then
							Anim = "Fall"
							if attack == false then
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(-30), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-20), math.rad(30), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -0.3) * angles(math.rad(80), math.rad(-50), math.rad(30)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.4, -1) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(-50), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -1.5, -1) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-130)), 0.3)
								FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-120)), 0.3)
							end
						else
							if Torsovelocity < 1 and hit ~= nil then
								Anim = "Idle"
								if attack == false then
									change = 1
									RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
									Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(60), math.rad(0)), 0.3)
									RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -0.3) * angles(math.rad(70), math.rad(0), math.rad(0)), 0.3)
									LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, -1) * angles(math.rad(70), math.rad(0), math.rad(30)), 0.3)
									RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
									LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
									FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-80)), 0.3)
									FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								end
							else
								if 2 < Torsovelocity and hit ~= nil then
									Anim = "Walk"
									if attack == false then
										RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(-30), math.rad(0)), 0.3)
										Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(20), math.rad(30), math.rad(0)), 0.3)
										RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, -0.3) * angles(math.rad(80), math.rad(-50), math.rad(30)), 0.3)
										LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.4, -1) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
										RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0 + 1 * math.cos((sine) / 3)) * angles(math.rad(0 - 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
										LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0 - 1 * math.cos((sine) / 3)) * angles(math.rad(0 + 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
										FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-130)), 0.3)
										FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
										FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(-120)), 0.3)
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

