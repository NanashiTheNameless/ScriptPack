-- params : ...

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
	local sp = Instance.new("Model", Character)
	sp.Name = "WeaponModel"
	local LeftArm = Character["Left Arm"]
	local RightArm = Character["Right Arm"]
	local LeftLeg = Character["Left Leg"]
	local RightLeg = Character["Right Leg"]
	local Head = Character.Head
	local Torso = Character.Torso
	local cam = game.Workspace.CurrentCamera
	local RootPart = Character.HumanoidRootPart
	local spartan = false
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
	local trigger = false
	Humanoid.Animator.Parent = nil
	Character.Animate.Parent = nil
	local coo1 = false
	local coo2 = false
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

	CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size, MeshId)
	
	local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
	Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
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

	local co1 = 5
	local co2 = 15
	local co3 = 20
	local co4 = 25
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
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
	text1.Text = "[Z]\n Charging Bull"
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
	text2.Text = "[X]\n Blazing Spartan"
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
	text3.Text = "[C]\n Fiery Guardian"
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
	text4.Text = "[V]\n Elias\'s Wrath"
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
	Handle2 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "Handle2", Vector3.new(2.00753045, 0.268907994, 0.977717459))
	Handle2Weld = CreateWeld(m, Character["Left Arm"], Handle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.309810638, -0.443099976, -0.0655632019, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	FakeHandle2 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "FakeHandle2", Vector3.new(2.00753045, 0.268907994, 0.977717459))
	FakeHandle2Weld = CreateWeld(m, Handle2, FakeHandle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Hitbox2 = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Really red", "Hitbox2", Vector3.new(2.00753045, 0.268907994, 4.05771732))
	Hitbox2Weld = CreateWeld(m, FakeHandle2, Hitbox2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, -0.219999313, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.440775186, 0.560985088, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.10956097, -0.544559479, 0.00132751465, -0.866025388, 0, -0.500000238, -0.500000238, 0, 0.866025388, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.745057762))
	Metal = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Metal", Vector3.new(0.440775186, 1.63954592, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00339508057, -0.0108280182, 0.000335693359, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.797211826))
	Metal = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Metal", Vector3.new(2.00753045, 0.268907994, 1.33100474))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.00132751465, 0.0176925659, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.794727564, 1))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.440775186, 0.560985088, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.29561615, 0.255399704, 0.00267028809, -0.707106829, 0, 0.707106829, 0.707106829, 0, 0.707106829, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.745057762))
	Metal = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Metal", Vector3.new(0.31121397, 0.311880946, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.586155891, -0.590343475, 0.000335693359, 0.707106829, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.797211826))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(2.00753045, 0.268907994, 1.97079527))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000671386719, 0.00132751465, 0.0233039856, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.759958267, 1))
	Metal = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Metal", Vector3.new(0.31121397, 0.311880946, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.575917244, 0.570791245, 0.000335693359, 0.707106829, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.797211826))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.301196367, 0.302530676, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.88179874, 1.30965042, 0.00267028809, 0.707106829, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.447034687))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.400036812, 0.394025266, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.944215775, 0.550720215, 0.00267028809, 0, 0, 1, 1, 0, 0, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.745057762))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.440775186, 0.560985088, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.2749548, -0.275114059, 0.00267028809, 0.707106829, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.745057762))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.400036812, 0.394025266, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.583694458, 0.940448761, 0.00267028809, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.745057762))
	Metal = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Metal", Vector3.new(2.00753045, 0.268907994, 1.52734971))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00601959229, 0.000671386719, 0.0197086334, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.779826403, 1))
	Metal = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really red", "Metal", Vector3.new(2.00753045, 0.268907994, 0.977717459))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.834463894, 1))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.426750481, 4.5746994, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.401041031, -0.0303039551, 0.00267028809, 0, 0, 1, 1, 0, 0, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.447034687))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.400036812, 0.394025266, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.230413914, 1.00434494, 0.00132751465, 0.965925872, 0, 0.258818984, 0.258818984, 0, -0.965925872, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.745057762))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.440775186, 0.560985088, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.09098625, 0.550378799, 0.00132751465, 0.866025388, 0, -0.500000238, -0.500000238, 0, -0.866025388, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.745057762))
	Metal = CreatePart(m, Enum.Material.Neon, 0, 0, "Maroon", "Metal", Vector3.new(2.00753045, 0.268907994, 1.12531006))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.000671386719, 0.0170326233, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.809628725, 1))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.400036812, 0.394025266, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.01778984, 0.243234634, 0.00132751465, -0.258818984, 0, -0.965925872, -0.965925872, 0, 0.258818984, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.745057762))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 0.560985208, 0.734623849))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00601196289, -1.68924904, -0.336601257, 0, -1, 0, 0, 0, -1, 1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.268908054, 1.69631207, 1.40246356))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00601196289, -1.18476105, 0.684921265, 0, -1, 0, 0, 0, -1, 1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.596047223, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 1.96344793, 1.93673551))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00601196289, -1.15804672, 0.982018232, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 0.560985208, 0.734623849))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00601196289, -1.66893959, -0.308921814, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 0.560985208, 1.23483586))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00601196289, 1.57564831, -0.281362534, 0, 1, 0, 0.707106829, 0, 0.707106829, 0.707106829, 0, -0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 3.16555905, 1.93673551))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00601196289, -0.960346222, 0.952056646, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 0.560985208, 1.00443101))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00601196289, 1.60208893, 1.00598621, 0, 1, 0, 0.707106829, 0, -0.707106829, -0.707106829, 0, -0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.268908054, 2.54179668, 1.40246356))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00601196289, -0.931627274, 0.68157959, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.596047223, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.268908054, 2.54179668, 1.40246356))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00601196289, -0.930290222, 0.711532831, 0, -1, 0, 0, 0, 1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.596047223, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 0.560985208, 0.734623849))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00601196289, -0.709869623, -1.32010078, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 0.560985208, 0.995749235))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00601196289, 1.61249352, 0.992275238, 0, -1, 0, -0.707106829, 0, -0.707106829, 0.707106829, 0, -0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 3.16555905, 1.93673551))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00601196289, -0.95835495, 0.982018232, 0, -1, 0, 0, 0, 1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 0.560985208, 0.734623849))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00601196289, -0.695892334, -1.31937599, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.268908054, 1.69631207, 1.40246356))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00601196289, -1.18476105, 0.712204218, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.596047223, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 0.560985208, 1.16805196))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00601196289, 1.60957718, -0.309536934, 0, -1, 0, -0.707106829, 0, 0.707106829, -0.707106829, 0, -0.707106829))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.268908054, 1.96344793, 1.93673551))
	PartWeld = CreateWeld(m, FakeHandle2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00601196289, -1.15603065, 0.952056646, 0, -1, 0, 0, 0, -1, 1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.496705979, 1, 1))
	Metal = CreatePart(m, Enum.Material.Metal, 0, 0, "Bright orange", "Metal", Vector3.new(0.301196367, 0.302530676, 0.268907964))
	MetalWeld = CreateWeld(m, FakeHandle2, Metal, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.35380268, -1.91964149, 0.00267028809, 0.707106829, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0, 1, 0))
	CreateMesh("BlockMesh", Metal, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.447034687))
	Handle = CreatePart(sp, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "Handle", Vector3.new(0.200000003, 1.17023563, 0.200000003))
	HandleWeld = CreateWeld(sp, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.984693289, 0.0122509003, 0.016998291, 0, 1, 3.40000006e-05, 0, 3.40000006e-05, -1, -1, 0, 0))
	FakeHandle = CreatePart(sp, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "FakeHandle", Vector3.new(0.200000003, 1.17023563, 0.200000003))
	FakeHandleWeld = CreateWeld(sp, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.265654594, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.53824997, -3.84861946, -0.00509643555, 0.953529596, -0.301299691, 0, 0.301299691, 0.953529596, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.981686771, 0.627843201))
	Hitbox = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 1, "Really black", "Hitbox", Vector3.new(1.2558558, 5.41180372, 0.200000003))
	HitboxWeld = CreateWeld(sp, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.37038362, -6.11240005, 0.00509643555, -0.999330342, 0.0365930237, 0, 0.03659302, 0.999330342, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Hitbox, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.87723541, 1.3071419, -0.00617980957, -0.0778941065, -0.996961713, 0, 0.996961713, -0.0778941065, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.698613465, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.85689926, 0.0357978344, 0.000366210938, -0.0162200052, -0.999868512, 0, -0.999868512, 0.0162200052, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.110689417, 0.0580665059, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.391223073, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.09789276, -1.31699181, -0.00617980957, 0.367478788, -0.930031896, 0, 0.930031896, 0.367478818, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.823819637, 1, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.99447632, 2.06506062, 0.000366210938, -0.718487144, -0.695540249, 0, -0.695540249, 0.718487144, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0399207957, 0.0598810986, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000104665756, 2.63604736, 1.52587891e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.792728066, 0.40156588, 0.790645242))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.3675046, -3.14769554, -0.00617980957, 0.922712505, -0.385488808, 0, 0.385488808, 0.922712505, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.23241997, 2.97418213, -0.00509643555, -0.89177388, -0.452481419, 0, 0.452481419, -0.89177388, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.943581879, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0264651775, 2.85495186, 0.000366210938, -0.999868274, 0.0162310004, 0, 0.0162310004, 0.999868274, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0399207957, 0.127020478, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.18885994, -2.57540131, -0.00617980957, 0.791501701, -0.611167073, 0, 0.611167073, 0.791501701, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0852853209, 0.949024618, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14623642, 3.44169998, -0.00617980957, -0.823538005, -0.567261219, 0, 0.567261219, -0.823538005, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.952654719, 0.885514081, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000396728516, 2.59818459, -0.000288724899, 0, 0, -1, -1.10000001e-05, 1, 0, 1, 1.10000001e-05, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.790647388, 0.638759255, 0.790645242))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.93175697, 1.91189003, 0.000366210938, -0.709942579, 0.704259515, 0, 0.704259515, 0.709942579, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.11794775, 0.232266024, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.201781362, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.062497139, -1.47618103, 0.00399780273, -0.865684807, -0.500589371, 0, -0.500589371, 0.865684807, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000396728516, 2.66858101, -0.000290393829, 0, 0, -1, -1.10000001e-05, 1, 0, 1, 1.10000001e-05, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.790647388, 0.638759255, 0.790645242))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.223555729))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00617980957, -0.0212595463, 3.02003479, 0, 0, 1, -0.999822795, 0.0188270081, 0, -0.0188270081, -0.999822795, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.667765677, 0.645990014, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.37670326, 2.44799232, 0.000366210938, -0.874025643, -0.485879838, 0, -0.485879868, 0.874025643, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.181458071, 0.0889143348, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.96089935, 1.98529625, 0.000366210938, -0.718487144, -0.695540249, 0, -0.695540249, 0.718487144, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.161497667, 0.197789058, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00596618652, 2.2820549, 2.07886124, 0, 0, 1, -0.762670815, -0.646786749, 0, 0.646786749, -0.762670815, 0))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.756680071, 0.471790403, 0.263113528))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.13864517, 2.227705, 0.00617980957, 0.646786749, -0.762670815, 0, -0.762670815, -0.646786749, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.865554869, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.55634892))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00509643555, -1.25833368, -1.58732414, 0, 0, -1, -0.935574591, 0.353129089, 0, 0.353129119, 0.935574591, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.678653121, 0.607883811, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.06986618, -1.9463768, -0.00108337402, 0.660487771, 0.750836849, 0, 0.750836849, -0.660487771, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.123391442, 0.241338864, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.698346138, 2.74471283, 0.000366210938, -0.969999254, -0.243107855, 0, -0.243107855, 0.969999254, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.159683093, 0.161497504, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.60768318, 0.577094078, -0.00617980957, -0.127521738, 0.991835773, 0, -0.991835773, -0.127521738, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.154239208, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00617980957, -4.16029549, 1.4980669, 0, 0, -1, 0.207697734, 0.978193045, 0, 0.978193045, -0.207697734, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.616957366, 0.987130761, 0.281259179))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0968637466, -1.20724487, 0.00399780273, -0.825775981, -0.563998163, 0, -0.563998163, 0.825775981, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.782084227, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.406466037, 0.466709524, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86023808, -2.79104042, -0.00509643555, 0.719956934, -0.694018841, 0, 0.694018841, 0.719956934, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.74497223, 0.78229022, 0.000366210938, -0.274453342, -0.961600482, 0, -0.961600482, 0.274453342, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.157868505, 0.0671393946, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.280897051, 0.47396785, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.34566212, -2.65875816, 0.00509643555, -0.875543773, -0.483138889, 0, -0.483138889, 0.875543773, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.39191818, 2.43912315, 0.000366210938, -0.874025643, -0.485879838, 0, -0.485879868, 0.874025643, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0399207957, 0.127020478, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.12562561, -0.496722221, 0.00399780273, -0.228761166, 0.973482609, 0, 0.973482609, 0.228761151, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.29644966, 2.51484489, -0.00617980957, -0.795197666, -0.606350303, 0, 0.606350303, -0.795197666, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.26129958, 0.860110283, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.96850586, 0.848686218, -0.00108337402, -0.240041912, 0.970762491, 0, 0.970762491, 0.240041912, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0580665655, 0.459088355, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.60143471, 1.86360264, 0.00617980957, 0.569282055, 0.822142363, 0, 0.822142363, -0.569282055, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.44673157, 2.2265625, 1.45490265, 0.457348436, -0.539289534, 0.707106173, -0.762669981, -0.646787882, -4.21468123e-08, 0.457347751, -0.53928864, -0.707107425))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.529857457, 0.078026928, 0.522597909))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.135494232, -2.61195183, -0.00218200684, 0.99847436, 0.0552179627, 0, -0.0552179627, 0.99847436, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.762486577, 0.368359983, 0.81038934))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.42008972, -2.90167046, -0.00617980957, 0.795197189, 0.606350958, 0, -0.606350958, 0.795197189, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.154239208, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.18887138, -2.67984581, -0.00617980957, 0.791501701, -0.611167073, 0, 0.611167073, 0.791501701, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0852853209, 0.0961727053, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.47705841, -1.32070446, -0.00617980957, 0.385481775, 0.922715485, 0, -0.922715485, 0.385481775, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.154239208, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.65810585, 2.72777939, 0.00617980957, 0.822140276, -0.569284976, 0, -0.569284976, -0.822140276, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.865554869, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.16350365, -2.68160248, -0.00617980957, 0.791501701, -0.611167073, 0, 0.611167073, 0.791501701, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.946846962, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.52285385, 2.53654957, -0.00617980957, -0.556969702, -0.830532849, 0, 0.830532849, -0.556969702, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0362916067, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05279732, -2.1809988, -0.00617980957, 0.611164212, 0.791503966, 0, -0.791503966, 0.611164212, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.154239208, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.61757088, 2.62086678, 0.00617980957, 0.840313256, -0.542101324, 0, -0.542101324, -0.840313256, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00617980957, -3.85450363, 2.58270741, 0, 0, -1, 0.475097954, 0.87993294, 0, 0.87993294, -0.475097984, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.616957366, 0.987130761, 0.281259179))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.65065765, -0.00689697266, -2.01301575, -0.586682498, -0.809817076, 0, 0, 0, 1, -0.809817076, 0.586682498, 0))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.562882841, 0.771196306, 0.650706708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.19530296, 2.94304085, -0.00617980957, -0.912123263, -0.409916103, 0, 0.409916073, -0.912123263, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0852853209, 0.94539535, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.43974686, 2.68236923, -0.00617980957, -0.717509687, 0.696548641, 0, -0.696548641, -0.717509687, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.165126845, 0.0816560686, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.60863304, -3.43327141, -0.00617980957, 0.925037682, 0.379875302, 0, -0.379875302, 0.925037682, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0653249398, 0.154239208, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.877167225, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.49754906, 2.45754147, -0.00617980957, -0.545705736, -0.837976933, 0, 0.837976933, -0.545705736, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.557076275, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.29661179, 1.4930954, -0.00617980957, -0.379881501, 0.925035179, 0, -0.925035179, -0.379881531, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.99692297, 3.08596039, 0.00617980957, 0.941467464, -0.337103993, 0, -0.337103993, -0.941467464, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.16588354, 2.48538399, 0.000366210938, -0.903214991, 0.42918852, 0, 0.42918852, 0.903214991, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.243153811, 0.268557578, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.223919243, 0.761759937, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.632575274, -5.06258583, 0.00146484375, -0.996192873, 0.0871771201, 0, 0.0871771201, 0.996192873, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.518968642))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.69968224, 0.785323143, 0.00617980957, 0.210875273, -0.977513075, 0, -0.977513075, -0.210875273, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.865554869, 0.078026928, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.433321834, 0.288880885, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.29630661, -1.67464828, 0.00399780273, -0.674479008, 0.738294005, 0, 0.738294005, 0.674479008, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.16016197, -2.69299126, -0.00617980957, 0.795197666, 0.606350303, 0, -0.606350303, 0.795197666, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200936437, 3.24408913, 0.00617980957, 0.996636689, -0.081948109, 0, -0.0819481164, -0.996636689, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.65045357, -0.00708007813, -2.01228523, -0.586682498, -0.809817076, 0, 0, 0, 1, -0.809817076, 0.586682498, 0))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.562882841, 0.776640177, 0.451103449))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.610499382, 3.19054985, 0.00617980957, 0.983886778, 0.178792432, 0, 0.178792432, -0.983886778, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.29168797, 2.93964195, -0.00617980957, -0.912123263, -0.409916103, 0, 0.409916073, -0.912123263, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.890959024, 0.905474722, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.255855531, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.99385643, -1.81903648, 0.00399780273, -0.918559432, 0.395282775, 0, 0.395282775, 0.918559432, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.611513615, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.800829887, -2.44076538, 0, 0.950160503, 0.311761349, 0, -0.311761349, 0.950160503, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.760490656, 0.145166829, 0.758492649))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.05867958, 2.47588158, 0.00617980957, 0.762671828, 0.646785736, 0, 0.646785736, -0.762671828, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.384690583, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.19094658, 0.209361076, -0.00617980957, 0.243750066, -0.969838083, 0, 0.969838083, 0.243750066, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.952654719, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.218838394, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0398361683, 2.99050522, -0.00617980957, -0.994879842, 0.101066209, 0, -0.101066209, -0.994879842, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.471790552, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000109672546, 2.54156494, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.691355109, 0.145166829, 0.696434081))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.684578419, 2.7059021, 0.000366210938, -0.969999254, -0.243107855, 0, -0.243107855, 0.969999254, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0399207957, 0.0471790284, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.79587555, -2.36396599, -0.00144958496, 0.793755591, -0.608236909, 0, -0.608236909, -0.793755591, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0816561282, 0.998018026, 0.145166054))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.80734062, -1.28983593, 0.00399780273, -0.55176729, 0.833998084, 0, 0.833998084, 0.55176729, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.243153498, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.01405907, -0.869227409, -0.00509643555, 0.387352347, -0.921931803, 0, 0.921931803, 0.387352347, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.898217261, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.53531647, 0.593788147, -0.00617980957, -0.127522722, 0.991835654, 0, -0.991835654, -0.127522722, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.292873263, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.34933257, -4.15054131, -0.00509643555, 0.976920485, -0.213603824, 0, 0.213603824, 0.976920485, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.53315544, -0.335505724, -0.00617980957, 0.133528367, 0.991044998, 0, -0.991044998, 0.133528367, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000110387802, 2.56478882, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.760490656, 0.145166829, 0.758492649))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.616275787, 3.03691864, 0.00617980957, 0.977515221, 0.210865304, 0, 0.210865304, -0.977515221, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.547638953))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00399780273, -1.2946701, -1.54117775, 0, 0, -1, -0.935574591, 0.353129089, 0, 0.353129119, 0.935574591, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.616957366, 0.887328923, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.98072624, -7.39151955, 0.00509643555, -0.863538563, 0.504282832, 0, 0.504282832, 0.863538563, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.266743451, 0.669579566, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.35337257, 2.77885056, 0.00617980957, 0.889630497, 0.456681252, 0, 0.456681252, -0.889630497, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.200000003, 5.17023563, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.691355109, 1, 0.689538717))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.48493004, 0.151885986, -0.00617980957, 0.120272748, -0.99274087, 0, 0.99274087, 0.120272748, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.557076275, 0.645990193, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.265654594, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.74875736, -3.23905563, -0.00509643555, 0.796235442, -0.604986906, 0, 0.604986906, 0.796235442, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.33195591, -8.16197395, 0.00163269043, -0.970249414, -0.242107898, 0, -0.242107898, 0.970249414, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.486307502, 0.299405426, 0.520783186))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.37957764, 2.92847824, 0.00617980957, 0.904086053, 0.427350521, 0, 0.427350521, -0.904086053, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.48915291, 2.09377193, -0.00617980957, -0.611164808, -0.791503429, 0, 0.791503429, -0.611164808, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0852853209, 0.94539535, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.57333374, 1.47975636, 0.00617980957, 0.456686407, -0.889627814, 0, -0.889627814, -0.456686407, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.865554869, 0.078026928, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.813242912, -2.51210594, -0.0036315918, 0.950160503, 0.311761349, 0, -0.311761349, 0.950160503, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.830351949, 0.145166829, 0.826357663))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.318640351, 0.280170947, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.86480141, -2.90533447, -0.00617980957, 0.890249252, -0.455473602, 0, 0.455473602, 0.890249252, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.300857455, 4.67870903, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.109327078, -5.10087395, 0.00509643555, -0.999330342, 0.0365930237, 0, 0.03659302, 0.999330342, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.62796402, 2.44365883, -0.00108337402, -0.827070117, 0.562098861, 0, 0.562098861, 0.827070117, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.312107801, 0.925434947, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.07151604, -1.59460831, 0.00399780273, -0.755362391, 0.655307353, 0, 0.655307353, 0.755362391, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.313559175, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.14496231, 2.21590424, -0.00617980957, -0.755952477, -0.654626429, 0, 0.654626429, -0.755952477, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.823819637, 1, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.474377632, -3.39024925, -0.00617980957, 0.991043508, -0.133539304, 0, 0.133539304, 0.991043508, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.35286999, -3.15506935, -0.00617980957, 0.925037682, 0.379875302, 0, -0.379875302, 0.925037682, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.455130577, -3.39270973, -0.00617980957, 0.991837025, 0.12751177, 0, -0.12751177, 0.991837025, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.220652997, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.533442497, -1.64234543, 0.00399780273, -0.976108372, -0.217284143, 0, -0.217284143, 0.976108372, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.04461479, 2.8343029, -0.00108337402, -0.928650737, 0.370955467, 0, 0.370955437, 0.928650737, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.312107801, 0.254040986, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.92165089, 1.93690681, 0.000366210938, -0.709942579, 0.704259515, 0, 0.704259515, 0.709942579, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.217749685, 0.0471790284, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.590826631, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.47386742, -1.48818207, 0.00399780273, -0.745231628, 0.666805685, 0, 0.666805685, 0.745231628, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.936323643, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.21697617, 2.17618942, -0.00617980957, -0.77348125, -0.633819103, 0, 0.633819103, -0.77348125, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.21774964, 0.845593631, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.05485821, -1.62624359, 0.00399780273, -0.882357299, 0.470580161, 0, 0.470580161, 0.882357299, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.698613465, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.43822336, -1.95466995, 0.00399780273, -0.935574591, 0.353129089, 0, 0.353129119, 0.935574591, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.330979109, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.50815773, 2.62093735, -0.00979614258, -0.899166107, -0.437607586, 0, 0.437607586, -0.899166107, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.823819637, 1, 0.645989001))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0528845787, 2.84711266, 0.000366210938, -0.999868274, 0.0162310004, 0, 0.0162310004, 0.999868274, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.038106218, 0.235895172, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.966098785, 3.30504227, -0.00617980957, -0.945117414, 0.326730996, 0, -0.326730996, -0.945117414, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.61877197, 0.914547503, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.5414114, -1.55881691, 0.00399780273, -0.99083966, -0.135043725, 0, -0.13504371, 0.99083966, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.82069778, -2.03713703, -0.00617980957, 0.611164212, 0.791503966, 0, -0.791503966, 0.611164212, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.590826631, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.01407814, 0.188929558, -0.00617980957, 0.161286578, -0.986907661, 0, 0.986907661, 0.161286563, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.936323643, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.92652321, -1.05928993, -0.00617980957, 0.406294972, -0.913741946, 0, 0.913741946, 0.406295002, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.13823128, 0.263594627, -0.00509643555, -0.0161700007, -0.999869287, 0, 0.999869287, -0.0161700007, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.943581879, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.2835741, 2.60525322, -0.00617980957, -0.928855419, -0.370442599, 0, 0.370442599, -0.928855419, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.493565857, 0.860110283, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.547638953))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00617980957, 3.10539246, 0.540255547, 0, 0, 1, 0.135541737, -0.99077177, 0, 0.99077177, 0.135541737, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.616957366, 0.887328923, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.017231226, 2.74465179, 0.000366210938, -0.999868274, 0.0162310004, 0, 0.0162310004, 0.999868274, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.250412077, 0.444571674, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220611334, -2.84675026, -0.00144958496, 0.998488009, 0.0549699403, 0, 0.0549699403, -0.998488009, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.315736979, 0.927249491, 0.145166054))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.71183014, -1.80350876, 0.00399780273, -0.958816767, 0.284025431, 0, 0.284025431, 0.958816767, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.235729218, -1.43245506, 0.00399780273, -0.943612516, -0.331052005, 0, -0.331052005, 0.943612516, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00596618652, 0.839644909, 2.6398983, 0, 0, 1, -0.977514744, -0.210867196, 0, 0.210867196, -0.977514744, 0))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.684096813, 0.471790403, 0.263113528))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.830712736))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00399780273, -1.00778484, -1.66498947, 0, 0, -1, -0.988280416, 0.152649432, 0, 0.152649418, 0.988280416, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.544374108, 0.887328923, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.47394943, 2.05632591, -0.00617980957, -0.287756383, -0.95770365, 0, 0.95770365, -0.287756383, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.952654719, 0.885514081, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.44760132, 2.28086853, 1.4557724, 0.457348436, -0.539289534, 0.707106173, -0.762669981, -0.646787882, -4.21468123e-08, 0.457347751, -0.53928864, -0.707107425))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.529857457, 0.477234185, 0.522597909))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.243153498, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.7747879, -1.74092674, 0.00509643555, -0.812300563, 0.583239198, 0, 0.583239198, 0.812300563, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.898217261, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.280896723, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.2285521, -1.9428196, 0.00399780273, -0.999657035, 0.0261880159, 0, 0.0261880178, 0.999657035, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.738534153, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.96131706, -0.666079521, 0.00509643555, -0.336617917, 0.941641331, 0, 0.941641331, 0.336617917, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.943581879, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.82688427, 3.00030708, -0.00617980957, -0.987137675, -0.159872577, 0, 0.159872577, -0.987137675, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.26129958, 0.860110283, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.88572502, 2.00799751, -0.00108337402, -0.707110405, 0.707103312, 0, 0.707103312, 0.707110405, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0580665655, 0.145166278, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.360375285, 0.855028033))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00399780273, -2.09287834, -1.67636871, 0, 0, -1, -0.762337089, 0.64718014, 0, 0.64718014, 0.762337089, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.616957366, 1, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.347673237, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.92069435, 1.2256484, -0.00617980957, -0.419105321, -0.907937646, 0, 0.907937646, -0.419105321, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.811117411, 1, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.255855531, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.67616653, 1.5158186, -0.00617980957, -0.160844505, -0.986979842, 0, 0.986979842, -0.160844505, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.611513615, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.233675, 2.10709572, -0.00617980957, -0.755952477, -0.654626429, 0, 0.654626429, -0.755952477, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.20867686, 0.353842884, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.736684799, -2.71795845, -0.00108337402, 0.965925634, 0.258819968, 0, 0.258819968, -0.965925634, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.747607052, 0.780268669, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.93608284, -0.698377609, -0.00617980957, 0.310402304, -0.950605333, 0, 0.950605333, 0.310402304, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.693169832, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.28986931, -1.23334312, -0.00617980957, 0.385481775, 0.922715485, 0, -0.922715485, 0.385481775, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.078026928, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00617980957, -3.87358093, -0.731619835, 0, 0, -1, -0.366371691, 0.930468678, 0, 0.930468678, 0.366371691, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.616957366, 0.987130761, 0.281259179))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.219201297, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0824842453, -2.77237892, 0.00509643555, -0.999841511, -0.017804997, 0, -0.0178049952, 0.999841511, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.221378535, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.241339236, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.36510158, -2.03685951, 0.00399780273, -0.96686846, 0.255275071, 0, 0.255275071, 0.96686846, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.547638953))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00399780273, -2.33703136, -1.2791481, 0, 0, -1, -0.762337089, 0.64718014, 0, 0.64718014, 0.762337089, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.616957366, 0.887328923, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.919178963, 2.95521355, 0.00617980957, 0.951985657, -0.306142688, 0, -0.306142688, -0.951985657, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.217386499, 0.34114024))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00617980957, 2.46054268, 2.47250938, 0, 0, 1, -0.51394093, -0.857825577, 0, 0.857825577, -0.51394093, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.616957366, 1, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.23094559, 1.39390969, -0.00617980957, -0.214043736, -0.976824045, 0, 0.976824045, -0.214043751, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.557076275, 0.645990193, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.84448242, 0.838493824, 1.85232544, 0.149112567, -0.691205263, 0.707107365, -0.977512717, -0.210876703, 4.84689167e-07, 0.149112135, -0.691206515, -0.707106292))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.477234632, 0.477234185, 0.480862737))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.750378609, 2.77275085, -0.00617980957, -0.934822679, 0.355115056, 0, -0.355115026, -0.934822679, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.54981792, 0.885514319, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.265654594, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.609694481, -3.93048286, -0.00509643555, 0.997860551, -0.0653780922, 0, 0.0653780922, 0.997860551, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.234080642, 0.332430273))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00617980957, 2.50852585, 2.29498291, 0, 0, 1, -0.281896442, -0.95944494, 0, 0.95944494, -0.281896412, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.544374108, 1, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.262750924, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.39787149, -2.10101891, 0.00399780273, -0.994890571, 0.100959189, 0, 0.100959189, 0.994890571, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.548003435, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0171282291, 2.70125008, -0.00108337402, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.457274228, 0.326624125, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.451467067, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.21298981, -1.26969528, 0.00399780273, -0.802200496, 0.597054839, 0, 0.597054839, 0.802200496, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.738534153, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.356769562, -1.16553593, 0.00399780273, -0.646994114, -0.7624951, 0, -0.7624951, 0.646994114, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.765302181, 2.71280479, -0.00617980957, -0.980935395, -0.194334343, 0, 0.194334343, -0.980935395, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.21774964, 0.845593631, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.61263847, 1.81222057, -0.00617980957, -0.644530058, -0.764579058, 0, 0.764579058, -0.644530058, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.493565857, 0.860110283, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.218838394, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.5053091, 2.90195084, -0.00617980957, -0.925037682, -0.379875302, 0, 0.379875302, -0.925037682, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.471790552, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.66809082, -0.380858183, -0.00617980957, 0.133528367, 0.991044998, 0, -0.991044998, 0.133528367, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.154239208, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.53231144, 3.18483734, -0.00617980957, -0.925037682, -0.379875302, 0, 0.379875302, -0.925037682, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.395578563, 0.860110283, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.330979109, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.77544022, 1.73250675, -0.00617980957, -0.586683154, -0.809816599, 0, 0.809816599, -0.586683154, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.823819637, 1, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.352391154, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.05459976, -6.68583679, 0.00509643555, -0.780858099, 0.624708414, 0, 0.624708414, 0.780858099, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.170570612, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.290695786, 0.608609557, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.03260922, -1.79297638, 0.00399780273, -0.994543791, 0.104320213, 0, 0.104320213, 0.994543791, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.3314476, -2.39729118, -0.00144958496, 0.863361776, -0.504585445, 0, -0.504585445, -0.863361776, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.250412077, 0.339326113, 0.145166054))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.765026093, 3.08714294, -0.00617980957, -0.991837025, -0.12751177, 0, 0.12751177, -0.991837025, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.54981792, 0.885514319, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.320454895, 0.514614403, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.07661819, -1.65882301, 0.00399780273, -0.783059955, 0.621946216, 0, 0.621946216, 0.783059955, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.387956887, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.75068474, 2.15000439, -0.00617980957, -0.544387698, -0.838833809, 0, 0.838833809, -0.544387698, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.704057336, 1, 0.718571961))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.718935966, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0369513035, -7.76455879, 0.00509643555, -0.999420762, 0.0340300053, 0, 0.0340300053, 0.999420762, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.870998561, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.22907639, 0.921982765, -0.00617980957, -0.358075142, -0.933692813, 0, 0.933692813, -0.358075142, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.20867686, 0.353842884, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.264788151, 3.04513931, -0.00108337402, -0.993017852, 0.117964216, 0, 0.117964208, 0.993017852, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.348399431, 0.217749402, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.802950382, 3.54039955, -0.00617980957, -0.98355931, -0.180585533, 0, 0.180585548, -0.98355931, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.244968459, 0.979872406, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.381424397, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.74973297, 2.14986134, -0.00617980957, -0.544387698, -0.838833809, 0, 0.838833809, -0.544387698, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.809302986, 1, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.908464432, -2.85993767, -0.00144958496, 0.940802634, -0.338955045, 0, -0.338955015, -0.940802634, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0816561282, 0.998018026, 0.145166054))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 2.06898212, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.400656462, -6.40345573, 0.00218200684, -0.999330342, 0.0365930237, 0, 0.03659302, 0.999330342, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.698613465, 1, 0.518968642))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.65107155, -0.67069149, -0.00509643555, 0.207573161, -0.978219509, 0, 0.978219509, 0.207573161, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.943581879, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.692037582, 2.73394394, 0.000366210938, -0.969999254, -0.243107855, 0, -0.243107855, 0.969999254, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.157868505, 0.0889143348, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.313559175, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.14036751, 1.03079128, -0.00617980957, -0.358075142, -0.933692813, 0, 0.933692813, -0.358075142, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.823819637, 1, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.312107503, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.218442678, 3.59352493, -0.00617980957, -0.999859989, -0.016738005, 0, 0.0167380031, -0.999859989, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.168756083, 1, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.232628927, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.33631229, -1.66927528, 0.00509643555, -0.762336612, 0.647180796, 0, 0.647180796, 0.762336612, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.88007158, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.921545982, 2.77852249, -0.00108337402, -0.944369316, 0.328886926, 0, 0.328886956, 0.944369435, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.312107801, 0.560704768, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.262751281, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.66851425, 2.03535652, -0.00509643555, -0.578382373, -0.815765858, 0, 0.815765858, -0.578382373, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.31428495, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.08257866, -6.62673187, 0.00163269043, -0.780858099, 0.624708414, 0, 0.624708414, 0.780858099, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.466347098, 1, 0.520783186))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00617980957, 1.16735649, 3.62220383, 0, 0, 1, -0.820054412, -0.572285771, 0, 0.572285771, -0.820054412, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.544374108, 0.950839162, 0.999831319))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.31614685, -2.40288162, 0.00689697266, -0.873654723, 0.486546397, 0, 0.486546397, 0.873654723, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.651434362, 0.379246801, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.255855858, 0.233354717, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.59789848, -4.37771225, 0.00146484375, -0.955808342, 0.293990642, 0, 0.293990672, 0.955808342, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.518968642))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.40602303, 2.44054604, -0.00108337402, -0.866024017, -0.500002444, 0, -0.500002444, 0.866024017, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.747607052, 0.326624095, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.282348722, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.552742, 0.227590322, -0.00509643555, -0.0403800309, -0.999184489, 0, 0.999184489, -0.0403800309, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.451467067, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.64382839, -1.83925056, 0.00399780273, -0.966787696, 0.255581141, 0, 0.255581141, 0.966787696, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.738534153, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.74543285, -2.85110474, 0.00509643555, -0.680761933, 0.732504845, 0, 0.732504845, 0.680761933, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.488122106, 0.459087789, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.292873263, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00532388687, -4.19390678, -0.00509643555, 0.991763532, 0.128082708, 0, -0.128082708, 0.991763532, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0826165676, -2.82496071, 0.00779724121, -0.999192715, 0.0401740447, 0, 0.0401740447, 0.999192715, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.651434362, 0.847407997, 0.673207641))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.419530511, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.53978348, 2.98015785, -0.00617980957, -0.742826223, -0.669484258, 0, 0.669484258, -0.742826223, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.611513615, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.225733534, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.3704977, -1.89388084, 0.00617980957, -0.9122262, 0.409687072, 0, 0.409687042, 0.9122262, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.611513615, 1, 0.689538777))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.372351468, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.533741, -0.969551086, 0.00509643555, -0.381673515, 0.924297214, 0, 0.924297214, 0.381673515, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.914548635, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.362553149, 0.427514702, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.06524038, -7.55393028, 0.00509643555, -0.988596618, 0.150588453, 0, 0.150588453, 0.988596618, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.92553043, -3.3758812, 0.00509643555, -0.847150266, 0.531353354, 0, 0.531353354, 0.847150266, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.488122106, 0.459087789, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.243153498, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.7138176, -1.21804237, 0.00509643555, -0.568860292, 0.822434187, 0, 0.822434187, 0.568860292, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.898217261, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.61662865, 1.21542072, -0.00108337402, -0.435218453, 0.900324941, 0, 0.900324941, 0.435218453, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0580665655, 0.165126652, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.21375756, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.04316807, 3.7374115, 0.00509643555, 0.902277112, 0.431156576, 0, 0.431156605, -0.902277112, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.803857684, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.378158152, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.873037338, -8.17247772, 0.00509643555, -0.990351081, 0.138581365, 0, 0.138581365, 0.990351081, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.410095185, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.236984208, 0.427514702, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.09464169, -7.38939667, 0.00509643555, -0.915936351, 0.401323706, 0, 0.401323676, 0.915936351, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.357471824, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.707932472, 4.72424889, 0.00509643555, 0.992830396, 0.119531818, 0, 0.119531818, -0.992830396, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.981687903, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.253315419, 0.277630508, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.460040331, -3.57405281, -0.00617980957, 0.998930931, -0.0462280512, 0, 0.0462280475, 0.998930931, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.232628927, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.10611534, 0.150121689, -0.00509643555, 0.135541737, -0.99077177, 0, 0.99077177, 0.135541737, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.88007158, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.243153498, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.07676888, 0.880034447, 0.00509643555, 0.0705480874, 0.997508407, 0, 0.997508407, -0.0705480874, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.898217261, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.335697383, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.99830246, -1.58494568, -0.00617980957, 0.574124992, -0.818767786, 0, 0.818767786, 0.574124992, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.733089864, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.217023805, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.329160213, -2.72081757, 0.00509643555, -0.991300464, 0.131618291, 0, 0.131618291, 0.991300464, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.277630448, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.66166496, -1.8116169, -0.00509643555, 0.61276561, -0.790264785, 0, 0.790264785, 0.61276561, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.943581879, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.69028163, 2.63173676, -0.00108337402, -0.96592617, 0.258818239, 0, 0.258818239, 0.96592617, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.529857457, 0.145166278, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.9135952, -1.56173515, 0.00653076172, -0.742870808, 0.669434786, 0, 0.669434786, 0.742870808, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.633288562, 0.885514081, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.62210655, 1.18748665, -0.00108337402, -0.435218453, 0.900324941, 0, 0.900324941, 0.435218453, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0580665655, 0.596996307, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.224281892, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.15112877, -2.76355362, -0.00108337402, 0.909429431, -0.415858209, 0, -0.415858209, -0.909429431, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0889144465, 1, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.755256653, -2.7025547, 0.00509643555, -0.970756352, -0.240066886, 0, -0.240066886, 0.970756352, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.542559564, 0.221378535, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.18961525, -1.41417885, 0.00509643555, -0.633671284, 0.773602486, 0, 0.773602486, 0.633671284, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.943581879, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.01541996, -7.24855614, 0.00509643555, -0.863538563, 0.504282832, 0, 0.504282832, 0.863538563, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.266743451, 0.669579566, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.714076996, 2.64566994, -0.00108337402, -0.965925634, -0.258819968, 0, -0.258819968, 0.965925634, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.529857457, 0.326624095, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.84531593, 1.58749247, -0.00617980957, -0.120172247, -0.992753088, 0, 0.992753088, -0.120172247, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.952654719, 0.885514081, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.207225099, 0.249685958, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.46561432, 2.19414997, -0.00509643555, -0.51394093, -0.857825577, 0, 0.857825577, -0.51394093, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.36371803, -3.50840759, -0.00617980957, 0.898890972, 0.438172519, 0, -0.438172519, 0.898890972, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.988946319, 0.807487726, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.31065613, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.57785797, 3.2252388, 0.00509643555, 0.818950713, 0.573863924, 0, 0.573863924, -0.818950713, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.963540614, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.87388992, 2.9427824, -0.00617980957, -0.684347212, -0.729156256, 0, 0.729156256, -0.684347212, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.698613465, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "New Yeller", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.65096855, -0.00762939453, -2.01138878, -0.586682498, -0.809817076, 0, 0, 0, 1, -0.809817076, 0.586682498, 0))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.33333838, 0.785713017, 0.343317658))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.215208992, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.448246, -1.11020756, 0.00689697266, -0.436331511, 0.899785936, 0, 0.899785936, 0.43633154, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.651434362, 1, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.4315815, -1.57896233, -0.00144958496, 0.558885276, -0.82924509, 0, -0.82924509, -0.558885276, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0816561282, 0.860110044, 0.145166054))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.682349205, 2.99709511, -0.00108337402, -0.982291281, -0.187360331, 0, -0.187360331, 0.982291281, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.348399431, 0.10524556, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.233355045, 0.208313674, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.84409332, -2.66108322, -0.00617980957, 0.610302091, 0.792168856, 0, -0.792168856, 0.610302091, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.243153498, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.93728256, 1.25863075, -0.00509643555, -0.274404347, -0.96161449, 0, 0.96161449, -0.274404347, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.898217261, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.543786049, 4.48239899, 0.00509643555, 0.996499121, 0.0836038813, 0, 0.0836038813, -0.996499121, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.981687903, 0.890957475, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0333168507, 2.66819954, -0.00108337402, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0580665655, 0.326624095, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.290695429, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.12691879, 0.815297842, 0.00399780273, 0.091118142, 0.995840073, 0, 0.995840073, -0.091118142, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.62784493, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.520784616, 0.228636861, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.47187042, -2.48381996, -0.00509643555, 0.593336284, -0.804954708, 0, 0.804954708, 0.593336284, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.8040905, -2.46278954, -0.00218200684, 0.950160503, 0.311761349, 0, -0.311761349, 0.950160503, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.830351949, 0.145166829, 0.81038934))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.20398331, 2.11733055, 0.00617980957, 0.67137599, -0.741116941, 0, -0.741116941, -0.67137599, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.201418489, 0.078026928, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.425337195, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.54583168, 2.74838066, -0.00617980957, -0.545705736, -0.837976933, 0, 0.837976933, -0.545705736, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.139722779, 1, 0.540743589))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.425700128, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.23491859, -7.36514854, 0.00163269043, -0.915936351, 0.401323706, 0, 0.401323676, 0.915936351, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.451830506, 1, 0.520783186))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00399780273, -1.24108279, -1.69565392, 0, 0, -1, -0.999478281, 0.0322990268, 0, 0.0322990231, 0.999478281, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.544374108, 0.747606397, 0.999831319))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.648453712, 3.63608742, -0.00617980957, -0.991837025, -0.12751177, 0, 0.12751177, -0.991837025, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.26129958, 0.860110283, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 1.08112586, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0199514627, -7.96922302, 0.00399780273, -0.999330342, 0.0365930237, 0, 0.03659302, 0.999330342, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.221378833, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.8624382, 2.98136139, 0.00509643555, 0.783803761, 0.621008575, 0, 0.621008575, -0.783803761, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.488122106, 0.215934306, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.830712736))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00617980957, 3.0785656, 0.11104393, 0, 0, 1, 0.209176272, -0.977878034, 0, 0.977878034, 0.209176272, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.544374108, 0.887328923, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00617980957, -4.19547844, 0.143192291, 0, 0, -1, -0.134071723, 0.990971684, 0, 0.990971684, 0.134071723, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.616957366, 0.987130761, 0.281259179))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.44782829, 4.11662674, 0.00509643555, 0.957341015, 0.288960516, 0, 0.288960546, -0.957341015, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.981687903, 0.890957475, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.347673237, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.33941841, -0.264298916, -0.00617980957, 0.0584069341, -0.998292923, 0, 0.998292923, 0.0584069341, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.811117411, 1, 0.75486356))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.427514702, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.10204411, -7.634058, 0.00509643555, -0.915936351, 0.401323706, 0, 0.401323676, 0.915936351, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.410095185, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.292873263, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.4320879, -3.83821487, -0.00509643555, 0.877048314, -0.480402172, 0, 0.480402172, 0.877048314, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.357471824, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.434890747, 4.91648483, 0.00509643555, 0.998090804, 0.0617649257, 0, 0.0617649257, -0.998090804, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.981687903, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.425700128, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.27160192, -7.54687309, 0.00163269043, -0.988596618, 0.150588453, 0, 0.150588453, 0.988596618, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.451830506, 1, 0.520783186))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.58555412, 2.09163857, -0.00617980957, -0.611164808, -0.791503429, 0, 0.791503429, -0.611164808, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.890959024, 0.892772675, 0.758492708))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.38188934, 2.41189957, -0.00108337402, -0.866026878, 0.499997497, 0, 0.499997497, 0.866026878, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.82019043, 0.254040986, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.225733534, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.07917595, -1.54104042, 0.00636291504, -0.666063249, 0.745895267, 0, 0.745895267, 0.666063249, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.618771911, 1, 0.687724292))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.45400047, 1.4720335, 0.000366210938, -0.513983607, -0.857800066, 0, -0.857800066, 0.513983607, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0979873836, 0.0362915695, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.255855858, 3.21180367, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.27078557, -5.83438301, 0.00509643555, -0.999330342, 0.0365930237, 0, 0.03659302, 0.999330342, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.39489841, -2.47587395, -0.00108337402, 0.856956363, 0.515389085, 0, 0.515389085, -0.856956363, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.163312212, 0.288517922, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.51548386, 2.20681572, 0.000366210938, -0.834057033, -0.55167824, 0, -0.55167824, 0.834057033, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.185087234, 0.127020478, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.76888466, 1.45444345, 0.00509643555, 0.326318741, 0.94525975, 0, 0.94525975, -0.326318741, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.943581879, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.232628927, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.29395199, -1.93130684, 0.00509643555, -0.935574591, 0.353129089, 0, 0.353129119, 0.935574591, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.88007158, 1, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Bright red", "Part", Vector3.new(0.200000003, 0.391223073, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.16579437, 0.229180336, -0.00617980957, -0.114349194, -0.993440628, 0, 0.993440628, -0.114349186, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.823819637, 1, 0.682280481))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Crimson", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.93153, 2.07085991, -0.00108337402, -0.707102776, -0.707110822, 0, -0.707110822, 0.707102776, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0580665655, 0.290332556, 0.181457579))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00399780273, 0.0868396759, -0.96333313, 0, 0, -1, -0.829208791, -0.558939099, 0, -0.558939099, 0.829208791, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.544374108, 0.811116636, 0.999831319))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.755803347, 2.67315483, 0.000366210938, -0.961597979, 0.274462223, 0, 0.274462223, 0.961597979, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.0399207957, 0.0471790284, 0.290332109))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.158890486, 3.0970726, 0.00617980957, 0.998783052, -0.049320057, 0, -0.0493200608, -0.998783052, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.194160149, 0.078026928, 0.685909688))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Deep orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.830712736))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00399780273, -2.48457146, -1.29671478, 0, 0, -1, -0.71186173, 0.702319622, 0, 0.702319622, 0.71186173, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.544374108, 0.887328923, 1))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Gold", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.84397888, 0.784184933, 1.85253906, 0.149112567, -0.691205263, 0.707107365, -0.977512717, -0.210876703, 4.84689167e-07, 0.149112135, -0.691206515, -0.707106292))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.48086375, 0.078026928, 0.480862737))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.292873263, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.882060051, -3.87728691, -0.00509643555, 0.932663858, 0.360746741, 0, -0.360746711, 0.932663858, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.981686771, 0.627843201))
	Part = CreatePart(sp, Enum.Material.SmoothPlastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.251500458, 0.200000003))
	PartWeld = CreateWeld(sp, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.44519234, -2.12465858, 0.00509643555, -0.449296415, 0.893382847, 0, 0.893382847, 0.449296415, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.488122106, 1, 0.627843201))
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
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=", 1)
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
		
		Damagefunc(Hitbox, hit, 10, 15, 0, "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	Humanoid.WalkSpeed = 10
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(9.90461558e-07, -0.0269755963, -1.33062713e-07, 0.484809726, 0, 0.874619603, 0.181843653, 0.978147626, -0.100797616, -0.855507076, 0.2079117, 0.474215478), CFrame.new(0.272765219, 1.46722174, -0.151196867, 0.504384637, 0.265642196, -0.821602225, 0.0835590437, 0.932020843, 0.352640152, 0.859426379, -0.246518582, 0.447900146), CFrame.new(0.436315, 0.856815398, -1.10046577, 0.484426707, 0.832367659, -0.269248426, -0.149194002, -0.224658892, -0.962948322, -0.862016141, 0.506648123, 0.0153534822), CFrame.new(-1.45458651, 0.133483529, -0.538100183, 0.894684613, -0.377831578, -0.238291383, 0.0541951358, 0.621321738, -0.781679153, 0.443398595, 0.686442018, 0.576363564), CFrame.new(0.321673423, -2.04425955, 0.316776961, 0.725447536, 0.181843653, -0.66382128, -0.0642482042, 0.978147626, 0.197735801, 0.685272217, -0.100797616, 0.721277893), CFrame.new(-0.990755975, -1.81555724, 0.168436453, 0.819359839, 0.355739921, -0.449553698, -0.203368306, 0.91354543, 0.352244377, 0.535995126, -0.197189927, 0.820868611)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(70), math.rad(0), math.rad(0)), 0.3)
	end
	CFuncs.Sound.Create("rbxassetid://588693156", RootPart, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-5.37605956e-07, -0.0269759707, -2.65892595e-07, 0.95835638, -0.143731385, -0.246767536, 0.202832907, 0.950870454, 0.233889297, 0.201026708, -0.27420193, 0.94042623), CFrame.new(-0.00822107494, 1.4970665, -0.0934140384, 0.995780408, 0.0777800605, 0.0486957729, -0.0854448378, 0.979415894, 0.182876214, -0.0334693044, -0.186265409, 0.981929123), CFrame.new(1.85052145, 0.540486038, 0.594636321, -0.313432425, -0.949446201, -0.0176644847, 0.16458869, -0.0359951556, -0.985705376, 0.935238361, -0.311859369, 0.167550176), CFrame.new(-1.39627409, 0.322296083, -0.440173209, 0.965051591, 0.246156633, 0.0899008214, 0.037774466, 0.208806977, -0.977227151, -0.259322822, 0.946470559, 0.192211121), CFrame.new(0.145454243, -2.11655879, 0.0429539829, 0.968100905, 0.135195538, -0.210956439, -0.120898388, 0.989490807, 0.0793190897, 0.219463035, -0.0512846112, 0.974271894), CFrame.new(-0.809797227, -1.70483541, -0.802485704, 0.922639728, 0.251619399, 0.292273164, -0.229988888, 0.967320919, -0.106748909, -0.309581995, 0.0312711596, 0.950358331)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(70), math.rad(0), math.rad(30)), 0.3)
	end
	con:disconnect()
	Humanoid.WalkSpeed = 16
	attack = false
end

	attackthree = function()
	
	attack = true
	local con = Hitbox2.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 25, 20, "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	Humanoid.WalkSpeed = 10
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-4.0512532e-07, -0.0269752406, 1.1343509e-06, 0.652291775, 0.32209897, -0.68612504, 0.138890788, 0.839096427, 0.525952816, 0.745133996, -0.438371241, 0.50259918), CFrame.new(-0.14963904, 1.50293684, -0.456933886, 0.970636368, -0.169547856, 0.170640975, 0.101307511, 0.931519508, 0.349296749, -0.218177915, -0.321752995, 0.921343207), CFrame.new(1.70868564, 0.286226571, 0.667103469, 0.222669303, -0.74144417, 0.63299197, 0.209666699, 0.670520425, 0.711647511, -0.952080965, -0.0257447064, 0.304760486), CFrame.new(-0.932438672, 0.519827843, -1.11489081, 0.692989886, -0.623567283, -0.361840844, -0.316825658, 0.187430471, -0.929780185, 0.647600591, 0.758968711, -0.0676746294), CFrame.new(0.699801207, -2.04638171, -0.671367168, 0.903168499, -0.201811075, -0.378891528, 0.0801211596, 0.946344137, -0.313070595, 0.421742916, 0.252398252, 0.870877683), CFrame.new(-0.721940219, -1.57349551, -1.05035639, 0.974659562, 0.138890788, -0.175350934, -0.209864318, 0.839096427, -0.501870573, 0.0774311721, 0.525952816, 0.846981645)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://541909867", RootPart, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.14738941e-06, 0.173024461, -0.300001383, 0.820753217, -0.0431987122, 0.569647312, 0.137312263, 0.982822537, -0.123309284, -0.554535449, 0.179426044, 0.812586486), CFrame.new(-0.151165038, 1.52307844, -0.193341762, 0.734764338, 0.0308420174, -0.677621007, 0.127414405, 0.974908888, 0.182532325, 0.666248441, -0.220456913, 0.712398648), CFrame.new(1.50681877, 0.480150759, 0.4091205, 0.329704911, -0.691977739, 0.642231762, -0.449269891, 0.483302891, 0.751381993, -0.830331922, -0.536269665, -0.151537374), CFrame.new(-1.74142003, 0.18942523, -0.594004512, 0.683315635, 0.651401043, 0.329782426, -0.0130584389, 0.462511867, -0.886516869, -0.730006456, 0.601464391, 0.324547827), CFrame.new(0.0857783556, -2.11368537, 0.871180832, 0.0870718658, 0.265102953, -0.960280657, 0.516448081, 0.812281251, 0.271073043, 0.851880193, -0.519537985, -0.0661850572), CFrame.new(-0.795480609, -2.12096214, -0.168157578, 0.865960836, 0.137312263, -0.480892032, -0.0586723089, 0.982822537, 0.174978271, 0.496658206, -0.123309284, 0.859142303)}, 0.3, false)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.78068876e-06, 0.173024401, -0.300000221, 0.918112218, -0.079559505, 0.388252854, 0.137312263, 0.982822537, -0.123309284, -0.371773303, 0.16652362, 0.913265884), CFrame.new(-0.106645092, 1.51475418, -0.210114449, 0.87216574, 0.0742753521, -0.483539253, 0.109913878, 0.933385789, 0.341628313, 0.476703167, -0.3511042, 0.805903316), CFrame.new(1.55795503, 0.334560454, 0.116621703, 0.140429765, -0.772708595, 0.619032323, -0.430511951, 0.51537317, 0.740979075, -0.891593456, -0.370556325, -0.26028657), CFrame.new(-1.59676385, 0.1474123, -0.767787039, 0.84694314, 0.463646054, 0.260230124, -0.0110223517, 0.504651487, -0.863252759, -0.531569302, 0.728257656, 0.432521611), CFrame.new(0.201209396, -2.14123702, 0.780127108, 0.478961468, 0.0708330944, -0.874973416, 0.449423999, 0.836417079, 0.313726932, 0.754064918, -0.543497205, 0.368777454), CFrame.new(-0.689732075, -2.11200166, 0.0210208297, 0.94702065, 0.137312263, -0.290339977, -0.0937702209, 0.982822537, 0.158955887, 0.307179213, -0.123309284, 0.943629026)}, 0.3, false)
	end
	con:disconnect()
	Humanoid.WalkSpeed = 16
	attack = false
end

	attacktwo = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 15, 0, "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	Humanoid.WalkSpeed = 14
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-1.93715096e-07, -0.326975822, -4.47034836e-08, 0.939692557, 0, -0.342020333, 0.27314961, 0.601814926, 0.75047195, 0.205832943, -0.798635602, 0.565521002), CFrame.new(0.0194183588, 1.42013311, 0.0533519983, 0.951757967, 0.0747811422, 0.297598064, 0.0741088465, 0.885119617, -0.459424824, -0.297766209, 0.459315896, 0.836877644), CFrame.new(1.76784158, -0.167323589, 0.328021258, 0.643204093, -0.403323144, 0.65086019, -0.03487809, 0.833710551, 0.551099181, -0.764899969, -0.377170026, 0.522178888), CFrame.new(-1.68615234, 0.696604431, -0.317608297, 0.578635395, 0.784143448, 0.224277183, 0.644610047, -0.271232635, -0.714780211, -0.499658942, 0.558168411, -0.662411511), CFrame.new(0.22778745, -2.08500981, -0.640202999, 0.927835405, 0.363329887, 0.0843375921, -0.34986195, 0.926146209, -0.140889883, -0.129298449, 0.101216108, 0.986426473), CFrame.new(-0.894758701, -0.887055099, -1.19228673, 0.710881293, 0.27314961, 0.648102701, 0.399317682, 0.601814926, -0.691638827, -0.57895875, 0.75047195, 0.318745494)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(-60)), 0.3)
	end
	CFuncs.Sound.Create("rbxassetid://588693579", RootPart, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(2.08616257e-07, -0.326976061, 2.30967999e-07, 0.365881741, -0.78650254, 0.497538269, 0.27314961, 0.601814926, 0.75047195, -0.889673948, -0.138681591, 0.43502593), CFrame.new(0.199234888, 1.46225858, -0.0458770432, 0.414827615, 0.597579002, -0.68616128, -0.730311096, 0.668476582, 0.140658334, 0.542737246, 0.442762315, 0.713721156), CFrame.new(1.88804889, 0.772113562, -0.0693311393, -0.392489523, -0.919755161, -0.00152992457, 0.514838874, -0.22107631, 0.828291178, -0.762163401, 0.324307919, 0.56029582), CFrame.new(-1.21992767, 0.78649044, -0.825880349, 0.771753788, -0.532571733, -0.347510159, -0.588763654, -0.391885221, -0.706953526, 0.240319416, 0.750195384, -0.615997851), CFrame.new(1.06965721, -1.72461641, -1.23562133, 0.871505141, -0.188019678, -0.452909946, -0.0776372179, 0.85902828, -0.506006837, 0.484201729, 0.476150244, 0.734050155), CFrame.new(-1.28267229, -0.770296216, -1.14472818, 0.576616764, 0.772167146, -0.266966224, -0.816610515, 0.554973185, -0.158594102, 0.0256979764, 0.309455484, 0.950566649)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(180), math.rad(0), math.rad(70)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-4.54485416e-07, -0.326974481, 7.15255737e-07, 0.365881741, -0.78650254, 0.497538269, 0.49410665, 0.617201984, 0.61230731, -0.788662791, 0.021804899, 0.61443907), CFrame.new(0.357691556, 1.4119122, -0.241990447, 0.558049381, 0.708333611, -0.432254672, -0.721678674, 0.671401799, 0.168521389, 0.409586072, 0.21790576, 0.885864675), CFrame.new(1.59417558, 0.503518283, -0.27781257, -0.479532152, -0.850883245, 0.214584604, 0.500525951, -0.0643587708, 0.863325953, -0.72077924, 0.52139771, 0.456751227), CFrame.new(-1.42133021, 0.882488608, -0.526019335, 0.729344368, -0.406111121, -0.550572753, -0.668506563, -0.251951158, -0.699728191, 0.145450085, 0.878404379, -0.455247164), CFrame.new(0.573727071, -1.95096779, -1.22873545, 0.938116789, 0.0196046084, -0.345763713, -0.158003122, 0.912660599, -0.376942575, 0.308175087, 0.408247858, 0.859279752), CFrame.new(-1.57658029, -0.675674319, -0.77901566, 0.467840195, 0.880314589, -0.0785596371, -0.883812904, 0.46593374, -0.0421961024, -0.000542193651, 0.0891730785, 0.996015906)}, 0.3, false)
	end
	con:disconnect()
	Humanoid.WalkSpeed = 16
	attack = false
end

	zcharge = function()
	
	attack = true
	Humanoid.WalkSpeed = 0
	local con = Hitbox2.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 15, 0, "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-7.4505806e-08, -0.52697587, -3.87430191e-07, 0.49999997, 0, -0.866025448, 0.3383829, 0.920504987, 0.195365429, 0.797180772, -0.390730888, 0.460252464), CFrame.new(-0.00457178801, 1.52314627, -0.00264084339, 0.496346921, -0.128834456, 0.858511269, 0.0870493725, 0.991328657, 0.0984385014, -0.863748908, 0.0258732289, 0.503257811), CFrame.new(1.58965564, 0.0380209088, 0.283814371, 0.702988684, -0.202762187, 0.68168503, -0.0493850484, 0.942267776, 0.331198901, -0.709484279, -0.266494155, 0.652390122), CFrame.new(-0.957961798, 0.388875067, -0.580982625, 0.498959899, -0.605039239, -0.620456755, -0.177665517, 0.629324317, -0.756561935, 0.848218203, 0.487727761, 0.206512973), CFrame.new(0.475381613, -1.72711968, -0.225535661, 0.898424983, -0.209510744, 0.385924935, 0.142198294, 0.970295727, 0.195719063, -0.415466428, -0.120961055, 0.901529908), CFrame.new(-0.823683679, -1.18009675, -0.55290395, 0.904990435, 0.3383829, 0.257855475, -0.261449993, 0.920504987, -0.29036963, -0.33561334, 0.195365429, 0.921518385)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(-60), math.rad(0), math.rad(0)), 0.3)
	end
	CFuncs.Sound.Create("rbxassetid://588718542", RootPart, 1, 1)
	for i = 0, 1, 0.05 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * 50
		Effects.Block.Create(BrickColor.new("Bright red"), RootPart.CFrame * cn(0, -2.5, 0), 1, 1, 1, 1, 1, 1, 0.07)
		PlayAnimationFromTable({CFrame.new(2.23517418e-06, -0.0269758552, -0.400000453, 0.49999997, 0, -0.866025448, 0.419857353, 0.874619782, 0.242404699, 0.757442951, -0.484809458, 0.437309861), CFrame.new(0.0156050287, 1.47637296, 0.00900906324, 0.504236579, -0.0386269987, 0.862701178, 0.0867842212, 0.99620831, -0.00611934066, -0.859193802, 0.0779544711, 0.505676866), CFrame.new(1.58237851, 0.14626199, 0.279613227, 0.706799626, -0.392232031, 0.588717401, 0.0135454684, 0.839562178, 0.543094635, -0.707284033, -0.375884712, 0.598715186), CFrame.new(-0.867231786, 0.814694762, -0.528600514, 0.651124299, -0.585457623, -0.482987046, -0.64793539, -0.0973888189, -0.755443633, 0.395242691, 0.80483216, -0.442750931), CFrame.new(0.259177744, -2.28317618, -0.350361317, 0.908591628, -0.120527536, 0.399918109, 0.0818039924, 0.990267992, 0.112593502, -0.409596711, -0.0695866197, 0.909608901), CFrame.new(-1.13574374, -1.50748217, -0.733070374, 0.878400624, 0.419857353, 0.228324533, -0.324400842, 0.874619782, -0.360283643, -0.350964934, 0.242404699, 0.904468715)}, 0.3, false)
	end
	MagniDamage(RootPart, 15, 10, 15, 10, "Normal")
	CFuncs.Sound.Create("rbxassetid://588695708", RootPart, 1, 0.8)
	Effects.Wave.Create(BrickColor.new("Bright red"), RootPart.CFrame * cn(0, -2, 0), 5, 0.5, 5, 1, 0.1, 1, 0.07)
	Effects.Block.Create(BrickColor.new("Bright red"), RootPart.CFrame, 25, 25, 25, 1, 1, 1, 0.07)
	Effects.Block.Create(BrickColor.new("Br. yellowish orange"), RootPart.CFrame, 35, 35, 35, 1, 1, 1, 0.1)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.75088644e-06, -0.526975155, -0.900000274, 0.90754509, -0.401925236, -0.121728957, 0.318062395, 0.468566597, 0.824185371, -0.274222791, -0.786702812, 0.553082645), CFrame.new(0.188973203, 1.64538634, 0.0836241096, 0.670363545, 0.592903912, -0.446181089, -0.629381418, 0.772826552, 0.0813516378, 0.393054187, 0.226283014, 0.891237438), CFrame.new(1.48912203, 0.214848548, 0.953392267, 0.771034598, -0.0640162826, -0.633567274, 0.423061073, 0.795120418, 0.434514344, 0.475946277, -0.603063285, 0.640148103), CFrame.new(-1.76185381, 1.4779309, -0.140850782, 0.340459913, 0.655301571, -0.674289882, -0.611849248, -0.390125185, -0.688071728, -0.713951945, 0.646824718, 0.268123865), CFrame.new(0.936474085, -1.26703024, -1.42831111, 0.429388165, -0.309227228, 0.848530591, 0.872645915, 0.384071797, -0.301625371, -0.232625902, 0.86998117, 0.434761763), CFrame.new(-0.685204506, -0.912095606, -1.00427413, 0.740100384, 0.435239971, 0.512657344, -0.142344087, 0.84643352, -0.5131163, -0.657259107, 0.306783855, 0.688399613)}, 0.3, false)
	end
	con:disconnect()
	Humanoid.WalkSpeed = 16
	attack = false
end

	sattackone = function()
	
	if cooldown2 >= 5 then
		cooldown2 = cooldown2 - 5
	else
		coo1 = false
		spartan = false
		return 
	end
	attack = true
	Humanoid.WalkSpeed = 5
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.400002331, -1.16485393, 7.74860382e-07, 0.19871749, -0.945228219, 0.258949757, 0.752965748, 0.316374511, 0.577017963, -0.627338767, 0.0803167447, 0.774593592), CFrame.new(0.0857160464, 1.44183326, -0.209180146, 0.791154265, 0.533243477, -0.299543619, -0.433752894, 0.834468901, 0.339882404, 0.431199849, -0.138971508, 0.891489506), CFrame.new(1.18355656, 0.497324497, 0.401606619, 0.0676564798, -0.680344224, 0.729763269, 0.996030152, 0.0884684771, -0.00986470655, -0.0578496344, 0.727533579, 0.683628798), CFrame.new(-1.29352582, 0.754917502, -0.320430666, 0.929596961, 0.0948791504, -0.356156468, -0.32557869, -0.24156028, -0.914137423, -0.172765791, 0.96573627, -0.193663076), CFrame.new(-1.55317128, -0.720179915, 0.107768402, 0.350142002, 0.936506927, -0.0188527703, -0.922528863, 0.341288805, -0.180173516, -0.162299514, 0.0804785192, 0.983454108), CFrame.new(-0.453190565, -1.59683776, -0.846960545, -0.418863833, 0.63145864, 0.652543545, 0.42688182, 0.771193981, -0.472262323, -0.801451802, 0.080745399, -0.592583418)}, 0.3, false)
	end
	for i = 1, 7 do
		for i = 0, 1, 0.5 do
			swait()
			PlayAnimationFromTable({CFrame.new(-0.400002331, -1.16485393, 7.74860382e-07, 0.19871749, -0.945228219, 0.258949757, 0.752965748, 0.316374511, 0.577017963, -0.627338767, 0.0803167447, 0.774593592), CFrame.new(0.0857160464, 1.44183326, -0.209180146, 0.791154265, 0.533243477, -0.299543619, -0.433752894, 0.834468901, 0.339882404, 0.431199849, -0.138971508, 0.891489506), CFrame.new(1.18355656, 0.497324497, 0.401606619, 0.0676564798, -0.680344224, 0.729763269, 0.996030152, 0.0884684771, -0.00986470655, -0.0578496344, 0.727533579, 0.683628798), CFrame.new(-1.29352582, 0.754917502, -0.320430666, 0.929596961, 0.0948791504, -0.356156468, -0.32557869, -0.24156028, -0.914137423, -0.172765791, 0.96573627, -0.193663076), CFrame.new(-1.55317128, -0.720179915, 0.107768402, 0.350142002, 0.936506927, -0.0188527703, -0.922528863, 0.341288805, -0.180173516, -0.162299514, 0.0804785192, 0.983454108), CFrame.new(-0.453190565, -1.59683776, -0.846960545, -0.418863833, 0.63145864, 0.652543545, 0.42688182, 0.771193981, -0.472262323, -0.801451802, 0.080745399, -0.592583418)}, 0.4, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
		end
		CFuncs.Sound.Create("rbxassetid://588693579", RootPart, 1, 1.1)
		local dod = math.random(1, 3)
		if dod == 1 then
			for i = 0, 1, 0.5 do
				swait()
				PlayAnimationFromTable({CFrame.new(-0.400001943, -1.16485381, 8.34465027e-07, 0.362856686, -0.91730839, 0.163952336, 0.432706743, 0.321690232, 0.842187703, -0.825287759, -0.23465015, 0.51365298), CFrame.new(-0.0873291343, 1.48329997, -0.0467529967, 0.715092957, 0.30206582, -0.630395353, -0.348942012, 0.935671508, 0.0525201261, 0.605707407, 0.182414562, 0.774495482), CFrame.new(2.09871554, 0.885291278, -0.489994407, -0.251944214, -0.922203064, 0.293369353, 0.955634177, -0.28488788, -0.0748477131, 0.152602136, 0.261496305, 0.95306462), CFrame.new(-1.2953136, 0.524101794, -0.627111614, 0.995589495, -0.0396563411, -0.0850233808, -0.0937751234, -0.393623382, -0.914476335, 0.002797544, 0.918416023, -0.395605981), CFrame.new(-1.25787163, -1.03107584, -0.545211315, 0.619856894, 0.74076879, -0.258918971, -0.765942693, 0.499406189, -0.404876888, -0.170614392, 0.449282736, 0.876946807), CFrame.new(0.270343721, -1.41294813, -1.18452799, -0.262877673, 0.344278097, 0.901314497, 0.506049633, 0.844562888, -0.175005943, -0.821467638, 0.410104752, -0.396238595)}, 0.4, false)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
			end
			Effects.Sphere.Create(BrickColor.new("Really red"), Hitbox.CFrame, 5, 20, 5, 0.05, 10, 0.05, 0.1)
		else
			if dod == 2 then
				for i = 0, 1, 0.5 do
					swait()
					PlayAnimationFromTable({CFrame.new(-0.400001943, -1.16485381, 8.34465027e-07, 0.362856686, -0.91730839, 0.163952336, 0.432706743, 0.321690232, 0.842187703, -0.825287759, -0.23465015, 0.51365298), CFrame.new(-0.0873291343, 1.48329997, -0.0467529967, 0.715092957, 0.30206582, -0.630395353, -0.348942012, 0.935671508, 0.0525201261, 0.605707407, 0.182414562, 0.774495482), CFrame.new(1.88236165, 0.724448979, -0.911088228, -0.135023758, -0.755199194, 0.641437948, 0.988004029, -0.151582107, 0.0295107067, 0.0749440342, 0.637727916, 0.766606987), CFrame.new(-1.2953136, 0.524101794, -0.627111614, 0.995589495, -0.0396563411, -0.0850233808, -0.0937751234, -0.393623382, -0.914476335, 0.002797544, 0.918416023, -0.395605981), CFrame.new(-1.25787163, -1.03107584, -0.545211315, 0.619856894, 0.74076879, -0.258918971, -0.765942693, 0.499406189, -0.404876888, -0.170614392, 0.449282736, 0.876946807), CFrame.new(0.270343721, -1.41294813, -1.18452799, -0.262877673, 0.344278097, 0.901314497, 0.506049633, 0.844562888, -0.175005943, -0.821467638, 0.410104752, -0.396238595)}, 0.4, false)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
				end
				Effects.Sphere.Create(BrickColor.new("Really red"), Hitbox.CFrame, 5, 20, 5, 0.05, 10, 0.05, 0.1)
			else
				if dod == 3 then
					for i = 0, 1, 0.5 do
						swait()
						PlayAnimationFromTable({CFrame.new(-0.400001943, -1.16485381, 8.34465027e-07, 0.362856686, -0.91730839, 0.163952336, 0.432706743, 0.321690232, 0.842187703, -0.825287759, -0.23465015, 0.51365298), CFrame.new(-0.0873291343, 1.48329997, -0.0467529967, 0.715092957, 0.30206582, -0.630395353, -0.348942012, 0.935671508, 0.0525201261, 0.605707407, 0.182414562, 0.774495482), CFrame.new(2.2591877, 0.0549398847, -0.611490369, -0.0118236989, -0.96984756, 0.243425116, 0.99980706, -0.0152848065, -0.012334682, 0.0156834275, 0.24323231, 0.969841123), CFrame.new(-1.2953136, 0.524101794, -0.627111614, 0.995589495, -0.0396563411, -0.0850233808, -0.0937751234, -0.393623382, -0.914476335, 0.002797544, 0.918416023, -0.395605981), CFrame.new(-1.25787163, -1.03107584, -0.545211315, 0.619856894, 0.74076879, -0.258918971, -0.765942693, 0.499406189, -0.404876888, -0.170614392, 0.449282736, 0.876946807), CFrame.new(0.270343721, -1.41294813, -1.18452799, -0.262877673, 0.344278097, 0.901314497, 0.506049633, 0.844562888, -0.175005943, -0.821467638, 0.410104752, -0.396238595)}, 0.4, false)
						FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
					end
					Effects.Sphere.Create(BrickColor.new("Really red"), Hitbox.CFrame, 5, 20, 5, 0.05, 10, 0.05, 0.1)
				end
			end
		end
		MagniDamage(Hitbox, 6, 5, 10, 0, "Normal")
	end
	Humanoid.WalkSpeed = 16
	attack = false
end

	sattacktwo = function()
	
	if cooldown2 >= 5 then
		cooldown2 = cooldown2 - 5
	else
		coo1 = false
		spartan = false
		return 
	end
	attack = true
	Humanoid.WalkSpeed = 8
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 13, 20, 0, "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(2.4959445e-07, -0.464853436, -1.11758709e-08, -0.646091819, -0.173648179, -0.743243933, -0.113923423, 0.98480773, -0.131053954, 0.754709661, 0, -0.656058848), CFrame.new(-0.170885667, 1.47721159, -0.196581244, 0.610041082, -0.224385336, 0.759934664, -0.0711100101, 0.939692557, 0.334546149, -0.789172292, -0.258125901, 0.557295084), CFrame.new(2.05457616, 0.66353935, 0.0771416202, -0.113923736, -0.987232447, -0.1113258, 0.98480767, -0.126998529, 0.118427925, -0.131054103, -0.0961427391, 0.986702204), CFrame.new(-1.24488759, 0.16600877, -0.974805236, 0.993460953, -0.00752234459, 0.113923386, 0.113923408, 0.131054163, -0.98480773, -0.00752204657, 0.991346598, 0.131054163), CFrame.new(0.609205186, -2.00422788, -0.0613143444, 0.973315358, -0.198257715, 0.11554566, 0.0841862708, 0.776930511, 0.623932362, -0.21347034, -0.597555637, 0.772889018), CFrame.new(-0.522858739, -2.00422764, 0.922772944, 0.651369631, 0.397847474, 0.646091878, -0.633022189, 0.754406571, 0.173648164, -0.418330461, -0.522099674, 0.743243754)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.033678256, 0.235145599, 0.308240443, -0.973315597, -0.0841862187, 0.21347028, -0.113923341, 0.984807789, -0.131053925, -0.199194252, -0.151876062, -0.968119442), CFrame.new(-0.136462271, 1.48129964, -0.195787504, 0.634153605, 0.0407405272, -0.772133112, 0.137943268, 0.976629376, 0.164823368, 0.760802805, -0.211033866, 0.613713086), CFrame.new(2.05457282, 0.663538635, 0.0771382749, -0.113923684, -0.987232506, -0.111325786, 0.98480773, -0.126998454, 0.118427932, -0.131054103, -0.0961426795, 0.986702204), CFrame.new(-1.24488795, 0.166009307, -0.974805117, 0.993461132, -0.00752224028, 0.113923296, 0.113923311, 0.131054103, -0.984807789, -0.00752216578, 0.991346657, 0.131054103), CFrame.new(0.567987978, -1.73805308, -0.314448357, 0.973315597, -0.198257759, 0.115545705, 0.0841862932, 0.77693069, 0.623932242, -0.213470414, -0.597555578, 0.772889197), CFrame.new(-0.530017853, -1.8854332, 0.295581549, 0.763049066, -0.00792280212, 0.64629215, -0.13710475, 0.975185215, 0.173828274, -0.631631613, -0.221249223, 0.743027747)}, 0.4, false)
	end
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0336855538, -0.564853847, 0.308241606, 0.994613647, 0.051689893, 0.0898427963, -0.0912466198, 0.847822011, 0.522371352, -0.0491693802, -0.527755558, 0.847971916), CFrame.new(-0.112381108, 1.52698231, -0.00930890441, 0.971614003, -0.208583027, 0.111621037, 0.232936442, 0.925895393, -0.297419369, -0.0413127691, 0.314977407, 0.94819957), CFrame.new(1.81924629, 0.834065676, -0.252414674, -0.0912469625, -0.885945261, 0.454725146, 0.847822011, -0.308642924, -0.431204557, 0.522371292, 0.346179873, 0.779286623), CFrame.new(-1.3215034, 0.328110993, -0.700080574, 0.960345328, 0.278150439, 0.0192115754, -0.0744783208, 0.322324753, -0.943694711, -0.268681467, 0.904841959, 0.330259234), CFrame.new(0.574013531, -1.42853761, -0.902848005, 0.90852958, -0.282889456, 0.30748567, 0.28565222, 0.957618773, 0.036999315, -0.304920793, 0.0542190373, 0.950832963), CFrame.new(-0.374900252, -2.01547813, -0.30741924, 0.603622913, -0.00745700253, 0.797235072, 0.343967259, 0.904542089, -0.251972497, -0.719253719, 0.426319152, 0.548567235)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CFuncs.Sound.Create("rbxassetid://588693922", RootPart, 1, 1)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.566314936, -0.835617423, -0.27476871, 0.816107869, 0.532828331, -0.223745435, -0.103623793, 0.515819013, 0.850407481, 0.568533301, -0.670838833, 0.476177633), CFrame.new(-0.0724722892, 1.42486942, 0.150846198, 0.880865276, -0.361220062, 0.305935413, 0.441821873, 0.859365463, -0.257457823, -0.169911414, 0.36195454, 0.916580081), CFrame.new(1.97107089, 1.19725895, 0.313646257, -0.486288637, -0.781376481, 0.391119182, 0.192825139, -0.532534719, -0.824151218, 0.852256894, -0.325357735, 0.40963462), CFrame.new(-1.55033076, 0.268466353, -1.17038536, 0.749226928, 0.27124241, -0.604224026, -0.642773449, 0.0778198242, -0.762093484, -0.159691453, 0.959360123, 0.232652128), CFrame.new(0.773490548, -1.39807868, -0.779710352, 0.961340308, -0.217301667, 0.169129819, 0.271254808, 0.853022397, -0.445840478, -0.0473896712, 0.474481702, 0.878988862), CFrame.new(-0.959059596, -1.87286079, -0.820432007, 0.702612638, 0.189346999, 0.685917795, -0.0697793141, 0.977634549, -0.198397338, -0.708142757, 0.0915336013, 0.700110972)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.56631428, -0.835619211, -0.274769545, 0.813055813, 0.370008469, -0.449481994, 0.125340238, 0.642704487, 0.755791485, 0.568533301, -0.670838833, 0.476177633), CFrame.new(0.137399927, 1.49113739, -0.00637356937, 0.876034141, -0.180928677, 0.447022319, 0.279254675, 0.946046948, -0.164353281, -0.393167883, 0.26881209, 0.879294634), CFrame.new(2.00643468, 1.06336331, -0.33721602, -0.0517476685, -0.802754343, 0.594060242, 0.468802184, -0.544767261, -0.69530797, 0.881786048, 0.24251619, 0.404523432), CFrame.new(-1.30057442, 0.505212665, -1.13504565, 0.328835696, -0.117620692, -0.937033892, -0.931490064, 0.123023644, -0.342332661, 0.155542731, 0.985408783, -0.0691078901), CFrame.new(0.438014925, -1.59378219, -0.654875219, 0.958472311, -0.0195348859, 0.284515828, 0.118254155, 0.935064673, -0.334170848, -0.259512663, 0.353938699, 0.898543596), CFrame.new(-1.31237149, -1.81132758, -0.311906219, 0.5376966, 0.31614086, 0.781624854, -0.273102462, 0.942367673, -0.193282723, -0.797682464, -0.10953626, 0.593046725)}, 0.3, false)
	end
	con:disconnect()
	Humanoid.WalkSpeed = 16
	attack = false
end

	sattackthree = function()
	
	if cooldown2 >= 5 then
		cooldown2 = cooldown2 - 5
	else
		coo1 = false
		spartan = false
		return 
	end
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 15, 0, "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	Humanoid.WalkSpeed = 7
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-3.7997961e-07, -0.46485275, 1.95577741e-08, 0.0524010062, -0.208422005, -0.976634324, 0, 0.977977872, -0.208708763, 0.998626113, 0.0109365489, 0.0512470268), CFrame.new(-0.00681257248, 1.49406314, -0.186099261, 0.449959576, -0.105598755, 0.8867836, -0.301508039, 0.916717112, 0.262150288, -0.840612531, -0.385329515, 0.380646825), CFrame.new(1.94304061, 0.319142371, -0.465579301, 0, -0.905584812, 0.424165159, 0.977977872, 0.0885269865, 0.189003482, -0.208708763, 0.414824188, 0.885641992), CFrame.new(-1.27201116, 0.305094898, -0.645323515, 0.861424029, -0.507886469, 0, 0.106000349, 0.179786727, -0.977977872, 0.496701717, 0.842453659, 0.208708763), CFrame.new(0.499313116, -1.98485994, 0.450374544, 0.998626053, 0.0262004063, -0.0453804471, 0.0109365107, 0.742742777, 0.669487596, 0.051246848, -0.669064105, 0.741435766), CFrame.new(-0.998626232, -2.00126433, 0.37350595, 0.764991999, 0.641904414, -0.0524008237, -0.620254099, 0.756204486, 0.20842199, 0.173412755, -0.126939371, 0.976634264)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://588693922", RootPart, 1, 1.5)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, -0.464853376, -5.58793545e-07, 0.730971038, -0.0620537773, 0.679581344, -0.16762802, 0.949016809, 0.266960412, -0.661500037, -0.309057176, 0.683301866), CFrame.new(0.0026326403, 1.5227797, -0.0550755337, 0.813257456, 0.130747855, -0.567025065, -0.0969804153, 0.991256297, 0.0894749463, 0.573765874, -0.0177758634, 0.818826437), CFrame.new(1.96579301, 0.576898515, -0.332184494, 0.0344252586, -0.799230993, 0.600037456, 0.996308148, -0.0198004544, -0.0835337192, 0.078643769, 0.600697875, 0.795598805), CFrame.new(-0.693707347, 0.649028063, -1.12062609, 0.535793483, -0.827542365, 0.16762802, -0.139608935, -0.282624066, -0.949016809, 0.832727432, 0.485074639, -0.266960412), CFrame.new(1.2995609, -1.78936791, -0.296530426, 0.84817642, -0.472139895, 0.240168273, 0.493244499, 0.869261444, -0.0330824554, -0.193149447, 0.146521434, 0.970167398), CFrame.new(-0.278498471, -2.09745455, -0.342037708, 0.941839278, 0.0246425569, -0.335159481, 0.0170078799, 0.992534757, 0.120770097, 0.335633576, -0.119446367, 0.934389055)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(3.05473804e-07, -0.464853168, 1.1920929e-07, 0.836797535, -0.0620547049, 0.543984592, -0.119301923, 0.949016809, 0.291777581, -0.534356713, -0.309057146, 0.786731601), CFrame.new(-0.00686490163, 1.52278018, -0.0547095388, 0.8996979, 0.135902345, -0.414818704, -0.0969794244, 0.988781512, 0.113605171, 0.425604314, -0.0619814098, 0.902784228), CFrame.new(1.66048074, 0.450184107, -0.342210174, 0.0474176779, -0.684224963, 0.727728069, 0.996308148, -0.0198002756, -0.0835346207, 0.0715657175, 0.729002237, 0.680760026), CFrame.new(-0.966651201, 0.596489191, -0.851131201, 0.670812845, -0.731968164, 0.119301923, -0.139609829, -0.282623798, -0.949016809, 0.728367567, 0.619956911, -0.291777581), CFrame.new(1.22934771, -1.78936875, -0.515257418, 0.802418351, -0.439970732, 0.403175801, 0.493244052, 0.869261742, -0.0330832154, -0.335909545, 0.22541061, 0.914524436), CFrame.new(-0.333090901, -2.09745407, -0.28914243, 0.985479891, 0.003768906, -0.169751287, 0.0170070156, 0.992534876, 0.120769769, 0.168939263, -0.121903092, 0.978058934)}, 0.3, false)
	end
	MagniDamage(Hitbox, 10, 10, 15, 0, "Normal")
	CFuncs.Sound.Create("rbxassetid://588695708", RootPart, 1, 1)
	Effects.Sphere.Create(BrickColor.new("Bright red"), Hitbox.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
	Effects.Block.Create(BrickColor.new("Bright red"), Hitbox.CFrame, 20, 20, 20, 5, 5, 5, 0.1)
	con:disconnect()
	Humanoid.WalkSpeed = 16
	attack = false
end

	local deb = false
	local dab = false
	naenae = function()
	
	attack = true
	Humanoid.WalkSpeed = 10
	dab = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-9.08970833e-07, -0.0269755125, -0.399999857, 0.671375871, 0.112154834, -0.732581556, 0.039671436, 0.981627166, 0.186639532, 0.740054488, -0.154367819, 0.654591441), CFrame.new(-0.0282344185, 1.54118264, -0.0629338622, 0.667401969, -0.130515009, 0.733171463, 0.197973236, 0.980190754, -0.00572595, -0.717900455, 0.148969889, 0.680019677), CFrame.new(1.6765914, 0.0904558003, 0.391398251, 0.213757694, -0.131213099, 0.968034506, -0.329037607, 0.923365235, 0.19781521, -0.919805288, -0.36080426, 0.154202402), CFrame.new(-0.972902775, 0.673638701, -0.54847002, 0.848377526, -0.528548658, -0.029864762, -0.177330226, -0.230574042, -0.95675993, 0.498808146, 0.816989541, -0.289341509), CFrame.new(0.767481565, -2.00398517, -0.194516778, 0.848553836, -0.0765869319, 0.523536801, 0.108111382, 0.993690133, -0.0298635215, -0.517946184, 0.0819411054, 0.85147959), CFrame.new(-0.567735434, -1.89344144, -0.492111027, 0.393860459, 0.039671436, 0.918313742, 0.156301677, 0.981627166, -0.109443642, -0.905783415, 0.186639532, 0.380423427)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(-60), math.rad(0), math.rad(-20)), 0.3)
	end
	local con = Hitbox2.Touched:connect(function(hit)
		
		if hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil and deb == false then
			if cooldown3 >= 5 then
				cooldown3 = cooldown3 - 5
			else
				coo2 = false
				attack = false
				dab = false
			end
			deb = true
			hum = hit.Parent.Parent.Humanoid
			tors = hit.Parent.Parent.Torso
			Torso.Velocity = RootPart.CFrame.lookVector * -30
			for i = 0, 1, 0.1 do
				swait()
				PlayAnimationFromTable({CFrame.new(-5.51342964e-07, -0.0269757994, -0.400001228, 0.671375871, 0.112154834, -0.732581556, 0.192670509, 0.928081393, 0.318658233, 0.715634406, -0.355086267, 0.601482511), CFrame.new(0.046197392, 1.49928892, -0.00113653392, 0.673030317, -0.0662002116, 0.736646354, 0.197039723, 0.976040125, -0.0923097581, -0.71288532, 0.207275912, 0.669948637), CFrame.new(1.67531443, -0.21943903, 0.342787862, 0.213757694, -0.131213129, 0.968034565, -0.329037607, 0.923365235, 0.197815239, -0.919805408, -0.36080426, 0.154202402), CFrame.new(-0.68226403, 0.824069381, -0.668590426, 0.708357155, -0.657461643, -0.256854892, -0.399092704, -0.072905995, -0.914007545, 0.58219856, 0.749952614, -0.314031661), CFrame.new(0.447295725, -2.048877, -0.494824529, 0.848502874, 0.0783486143, 0.523358881, 0.0511581451, 0.972202897, -0.228482917, -0.526712239, 0.220642492, 0.820908725), CFrame.new(-0.858617187, -1.6974709, -0.728688002, 0.401810855, 0.192670509, 0.895224094, 0.221649155, 0.928081393, -0.299226671, -0.888492882, 0.318658233, 0.330207944)}, 0.3, false)
			end
			CFuncs.Sound.Create("rbxassetid://315748970", tors, 1, 1)
			Effects.Sphere.Create(BrickColor.new("Bright red"), tors.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
			Effects.Block.Create(BrickColor.new("Bright red"), tors.CFrame, 20, 20, 20, 5, 5, 5, 0.1)
			MagniDamage(tors, 10, 10, 15, 0, "Normal")
			Humanoid.Health = Humanoid.Health + 15
			for i = 0, 1, 0.1 do
				swait()
				PlayAnimationFromTable({CFrame.new(-9.08970833e-07, -0.0269755125, -0.399999857, 0.671375871, 0.112154834, -0.732581556, 0.039671436, 0.981627166, 0.186639532, 0.740054488, -0.154367819, 0.654591441), CFrame.new(-0.0282344185, 1.54118264, -0.0629338622, 0.667401969, -0.130515009, 0.733171463, 0.197973236, 0.980190754, -0.00572595, -0.717900455, 0.148969889, 0.680019677), CFrame.new(1.6765914, 0.0904558003, 0.391398251, 0.213757694, -0.131213099, 0.968034506, -0.329037607, 0.923365235, 0.19781521, -0.919805288, -0.36080426, 0.154202402), CFrame.new(-0.972902775, 0.673638701, -0.54847002, 0.848377526, -0.528548658, -0.029864762, -0.177330226, -0.230574042, -0.95675993, 0.498808146, 0.816989541, -0.289341509), CFrame.new(0.767481565, -2.00398517, -0.194516778, 0.848553836, -0.0765869319, 0.523536801, 0.108111382, 0.993690133, -0.0298635215, -0.517946184, 0.0819411054, 0.85147959), CFrame.new(-0.567735434, -1.89344144, -0.492111027, 0.393860459, 0.039671436, 0.918313742, 0.156301677, 0.981627166, -0.109443642, -0.905783415, 0.186639532, 0.380423427)}, 0.3, false)
			end
			deb = false
		end
		if hit.Parent:FindFirstChild("Humanoid") and deb == false then
			if cooldown3 >= 5 then
				cooldown3 = cooldown3 - 5
			else
				coo2 = false
				attack = false
				dab = false
			end
			deb = true
			hum = hit.Parent.Humanoid
			tors = hit.Parent.Torso
			Torso.Velocity = RootPart.CFrame.lookVector * -30
			for i = 0, 1, 0.1 do
				swait()
				PlayAnimationFromTable({CFrame.new(-5.51342964e-07, -0.0269757994, -0.400001228, 0.671375871, 0.112154834, -0.732581556, 0.192670509, 0.928081393, 0.318658233, 0.715634406, -0.355086267, 0.601482511), CFrame.new(0.046197392, 1.49928892, -0.00113653392, 0.673030317, -0.0662002116, 0.736646354, 0.197039723, 0.976040125, -0.0923097581, -0.71288532, 0.207275912, 0.669948637), CFrame.new(1.67531443, -0.21943903, 0.342787862, 0.213757694, -0.131213129, 0.968034565, -0.329037607, 0.923365235, 0.197815239, -0.919805408, -0.36080426, 0.154202402), CFrame.new(-0.68226403, 0.824069381, -0.668590426, 0.708357155, -0.657461643, -0.256854892, -0.399092704, -0.072905995, -0.914007545, 0.58219856, 0.749952614, -0.314031661), CFrame.new(0.447295725, -2.048877, -0.494824529, 0.848502874, 0.0783486143, 0.523358881, 0.0511581451, 0.972202897, -0.228482917, -0.526712239, 0.220642492, 0.820908725), CFrame.new(-0.858617187, -1.6974709, -0.728688002, 0.401810855, 0.192670509, 0.895224094, 0.221649155, 0.928081393, -0.299226671, -0.888492882, 0.318658233, 0.330207944)}, 0.3, false)
			end
			CFuncs.Sound.Create("rbxassetid://315748970", tors, 1, 1)
			Effects.Sphere.Create(BrickColor.new("Bright red"), tors.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
			Effects.Block.Create(BrickColor.new("Bright red"), tors.CFrame, 20, 20, 20, 5, 5, 5, 0.1)
			MagniDamage(tors, 10, 10, 15, 0, "Normal")
			Humanoid.Health = Humanoid.Health + 15
			for i = 0, 1, 0.1 do
				swait()
				PlayAnimationFromTable({CFrame.new(-9.08970833e-07, -0.0269755125, -0.399999857, 0.671375871, 0.112154834, -0.732581556, 0.039671436, 0.981627166, 0.186639532, 0.740054488, -0.154367819, 0.654591441), CFrame.new(-0.0282344185, 1.54118264, -0.0629338622, 0.667401969, -0.130515009, 0.733171463, 0.197973236, 0.980190754, -0.00572595, -0.717900455, 0.148969889, 0.680019677), CFrame.new(1.6765914, 0.0904558003, 0.391398251, 0.213757694, -0.131213099, 0.968034506, -0.329037607, 0.923365235, 0.19781521, -0.919805288, -0.36080426, 0.154202402), CFrame.new(-0.972902775, 0.673638701, -0.54847002, 0.848377526, -0.528548658, -0.029864762, -0.177330226, -0.230574042, -0.95675993, 0.498808146, 0.816989541, -0.289341509), CFrame.new(0.767481565, -2.00398517, -0.194516778, 0.848553836, -0.0765869319, 0.523536801, 0.108111382, 0.993690133, -0.0298635215, -0.517946184, 0.0819411054, 0.85147959), CFrame.new(-0.567735434, -1.89344144, -0.492111027, 0.393860459, 0.039671436, 0.918313742, 0.156301677, 0.981627166, -0.109443642, -0.905783415, 0.186639532, 0.380423427)}, 0.3, false)
			end
			deb = false
		end
	end
)
	local dd = Hitbox2.Touched:connect(function(hit)
		
		if dab == false then
			con:disconnect()
		end
	end
)
end

	local doing = false
	ult = function()
	
	attack = true
	Humanoid.WalkSpeed = 10
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-2.08075335e-09, -0.0269756522, 3.86498868e-08, 1, 0, -2.98023224e-07, -7.71340893e-08, 0.965925813, -0.258819044, 2.87868318e-07, 0.258819044, 0.965925813), CFrame.new(7.21774995e-07, 1.57829869, 0.0947343111, 0.996201932, -0.0868240148, -0.00657818513, 0.0829662085, 0.969432592, -0.230904773, 0.0264251884, 0.229482055, 0.972954154), CFrame.new(1.54903889, 1.29764509, -0.675872505, 0.99530232, -0.0814853311, -0.0522811785, -0.0898038447, -0.978798926, -0.184086636, -0.0361723602, 0.187916905, -0.981518567), CFrame.new(-1.67583156, 0.0309402347, 0.423407376, 0.361026108, 0.787957191, 0.498782098, -0.0720872134, 0.556834936, -0.827489078, -0.929765284, 0.262789309, 0.2578336), CFrame.new(0.482964694, -1.94994688, 0.34587723, 0.829037786, -7.71340893e-08, -0.559192657, 0.144729763, 0.965925813, 0.214570716, 0.540138602, -0.258819044, 0.800788999), CFrame.new(-0.482964247, -1.88752437, 0.578841269, 0.981627166, -7.71340893e-08, 0.190809175, -0.0493849739, 0.965925813, 0.254063815, -0.184307531, -0.258819044, 0.948179007)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
	end
	do
		for i = 0, 1, 0.1 do
			swait()
			PlayAnimationFromTable({CFrame.new(-7.00666192e-10, -0.0269756168, -4.02797014e-08, 1, 0, -2.98023224e-07, -2.59745079e-08, 0.996194661, -0.087155953, 2.96889141e-07, 0.087155953, 0.996194661), CFrame.new(2.8766226e-06, 1.50300813, -0.0311145484, 0.996201932, -0.0868241265, -0.00657818094, 0.0868240818, 0.98480767, 0.15038386, -0.00657870481, -0.15038386, 0.988605797), CFrame.new(1.54903591, 0.100242078, -0.326966822, 0.654300213, -0.72489351, -0.215454295, -0.0556103215, 0.238012165, -0.969668806, 0.754187346, 0.646435976, 0.11541985), CFrame.new(-1.67583156, -0.0430535674, 0.422347665, 0.361026108, 0.787957251, 0.498782068, 0.0904597938, 0.502742529, -0.859690011, -0.928157926, 0.355490208, 0.110224739), CFrame.new(0.482964575, -1.98038363, 0.00201824307, 0.829037786, -2.59745079e-08, -0.559192657, 0.0487369895, 0.996194661, 0.0722555593, 0.557064712, -0.087155953, 0.825883031), CFrame.new(-0.482964337, -1.95936334, 0.242282584, 0.981627166, -2.59745079e-08, 0.19080919, -0.0166301318, 0.996194661, 0.0855546594, -0.190083101, -0.087155953, 0.977891743)}, 0.2, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		end
	end
	Effects.Wave.Create(BrickColor.new("Bright red"), RootPart.CFrame * cn(0, -2, 0), 5, 0.5, 5, 1, 0.1, 1, 0.07)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-1.12433918e-06, -0.0269756541, -5.23519702e-07, 0.422618508, 0.0789901242, 0.902858913, -2.59745079e-08, 0.996194661, -0.087155953, -0.906307697, 0.0368336961, 0.421010315), CFrame.new(-0.0906295478, 1.49797595, -0.0886303484, 0.42009452, 0.0212918594, -0.907230556, 0.165463179, 0.981169045, 0.099645108, 0.89226824, -0.191973627, 0.40866074), CFrame.new(1.19037974, 0.0168904662, -1.27968037, 0.992548227, 0.00893497467, -0.121524811, -0.119515195, 0.265794486, -0.95659256, 0.023753494, 0.963988304, 0.26488173), CFrame.new(-0.343276203, 0.258422852, -0.721229911, 0.44429031, -0.886849284, 0.126903594, 0.435720623, 0.090135932, -0.895557344, 0.782785892, 0.453181982, 0.426465034), CFrame.new(0.509931803, -1.98787832, -0.083645843, -0.156434208, -2.59745079e-08, -0.987688422, 0.0860829204, 0.996194661, -0.0136341956, 0.983929992, -0.087155953, -0.155838877), CFrame.new(-0.449347138, -1.99369812, -0.150166422, 0.970295787, -2.59745079e-08, -0.241921723, 0.0210849419, 0.996194661, 0.0845670551, 0.241001159, -0.087155953, 0.966603518)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
	end
	CFuncs.Sound.Create("rbxassetid://231917970", RootPart, 1, 1)
	CFuncs.Sound.Create("rbxassetid://292363841", RootPart, 1, 1)
	Runes = {""}
	BillboardGui = function(image, position, size)
		
		local billpar = Instance.new("Part")
		billpar.Transparency = 1
		billpar.formFactor = "Custom"
		billpar.Size = Vector3.new(1, 1, 1)
		billpar.Anchored = true
		billpar.CanCollide = false
		billpar.CFrame = CFrame.new(position)
		billpar.Name = "BillboardGuiPart"
		local bill = Instance.new("BillboardGui", billpar)
		bill.Adornee = billpar
		bill.Size = UDim2.new(1, 0, 1, 0)
		bill.SizeOffset = Vector2.new(size, size)
		local d = Instance.new("ImageLabel", bill)
		d.BackgroundTransparency = 1
		d.Size = UDim2.new(1, 0, 1, 0)
		d.Image = image
		return billpar
	end

	eb = BillboardGui(Runes[math.random(1, #Runes)], RightArm.CFrame * CFrame.new(0, -2, 0).p, 0)
	eb.Parent = EffectModel
	eb.BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	eb.BillboardGui.ImageLabel.ImageColor3 = BrickColor.new("Toothpaste").Color
	doing = true
	for i = 1, 3 do
		swait()
		local blast = Instance.new("Part", EffectModel)
		blast.Anchored = true
		blast.Transparency = 1
		blast.CanCollide = false
		blast.Size = Vector3.new(1, 1, 1)
		blast.CFrame = RightArm.CFrame * CFrame.new(0, -2, 0) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
		m = Instance.new("SpecialMesh", blast)
		m.Scale = Vector3.new(3, 3, 3)
		m.MeshType = "Sphere"
		blast.BrickColor = BrickColor.new("White")
		blast.Material = "Neon"
		coroutine.resume(coroutine.create(function(p)
		
		for i = 1, 15 do
			blast.Transparency = i / 10
			blast.Mesh.Scale = blast.Mesh.Scale / 1.1
			swait()
		end
		blast:Remove()
	end
), p)
		p = Instance.new("Part")
		local p = Instance.new("Part")
		p.TopSurface = 0
		p.BottomSurface = 0
		p.CanCollide = false
		p.Anchored = true
		p.BrickColor = BrickColor.new("White")
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.CFrame = blast.CFrame * CFrame.fromEulerAnglesXYZ(math.pi / 2 + math.random(-15, 15) / 9, math.random(-15, 15) / 9, math.random(-10, 10) / 9)
		p.Parent = EffectModel
		m = Instance.new("SpecialMesh")
		m.MeshType = "FileMesh"
		m.MeshId = "http://www.roblox.com/asset/?id=51226819"
		m.Scale = Vector3.new(5, 5, 5)
		m.Parent = p
		m.Name = "Triangle"
		coroutine.resume(coroutine.create(function(p)
		
		for i = 1, 10 do
			p.Transparency = i / 10
			p.Triangle.Scale = p.Triangle.Scale + Vector3.new(0.8, 0.8, 0)
			swait()
		end
		p.Parent = nil
	end
), p)
		p = Instance.new("Part")
		p.TopSurface = 0
		p.BottomSurface = 0
		p.CanCollide = false
		p.Anchored = true
		p.BrickColor = BrickColor.new("Black")
		p.Material = "Neon"
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1, 1, 1)
		p.CFrame = blast.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / 4, math.random(-10, 10) / 4, math.random(-10, 10) / 4)
		p.Parent = EffectModel
		local m = Instance.new("BlockMesh")
		m.Parent = p
		m.Scale = Vector3.new(0.4, 0.4, 0.4)
		coroutine.resume(coroutine.create(function(p)
		
		for i = 1, 10 do
			p.Transparency = i / 10
			p.CFrame = p.CFrame * CFrame.new(0, -0.5, 0)
			swait()
		end
		p.Parent = nil
	end
), p)
	end
	eb:Destroy()
	local billpar = Instance.new("Part")
	billpar.Transparency = 1
	billpar.formFactor = "Custom"
	billpar.Size = Vector3.new(1, 1, 1)
	billpar.Anchored = true
	billpar.CanCollide = false
	billpar.CFrame = RootPart.CFrame
	billpar.BrickColor = BrickColor.new("White")
	billpar.Material = "Neon"
	billpar.Name = "oraora"
	billpar.Parent = EffectModel
	m = Instance.new("SpecialMesh", billpar)
	m.MeshType = "FileMesh"
	m.MeshId = "http://www.roblox.com/asset/?id=51226819"
	billpar.BrickColor = BrickColor.new("Bright red")
	billpar.Material = "Neon"
	local bill = Instance.new("BillboardGui", billpar)
	bill.Adornee = billpar
	bill.Size = UDim2.new(7, 0, 7, 0)
	bill.SizeOffset = Vector2.new(0, 0)
	local d = Instance.new("ImageLabel", bill)
	d.BackgroundTransparency = 1
	d.Size = UDim2.new(1, 0, 1, 0)
	d.Image = Runes[math.random(1, #Runes)]
	d.ImageColor3 = BrickColor.new("Toothpaste").Color
	num = 0
	coroutine.resume(coroutine.create(function(p)
		
		for er = 1, 100 do
			swait()
			d.Rotation = d.Rotation + 3
			DIR = billpar.CFrame.lookVector
			num = num + 1
			if num == 4 then
				CFuncs.Sound.Create("rbxassetid://231917970", billpar, 1, 1)
				MagniDamage(billpar, 11, 3, 6, math.random(1, 3), "Normal")
				num = 0
				local hitfloor2, posfloor2 = rayCast(billpar.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
				do
					if hitfloor2 ~= nil and equipped == true then
						local p = Instance.new("Part")
						p.TopSurface = 0
						p.BottomSurface = 0
						p.CanCollide = false
						p.Anchored = true
						p.BrickColor = BrickColor.new("Light stone grey")
						p.CFrame = cn(posfloor2) * CFrame.new(0, 1, 0) * CFrame.Angles(0, math.random(-10, 10), 0)
						p.formFactor = "Symmetric"
						p.Size = Vector3.new(1, 1, 1)
						p.Parent = EffectModel
						m = Instance.new("SpecialMesh")
						m.MeshType = "FileMesh"
						m.MeshId = "http://www.roblox.com/asset/?id=51226819"
						p.Material = "SmoothPlastic"
						m.Parent = p
						m.Scale = Vector3.new(12, 2, 12)
						m.Name = "Mesh"
						game:GetService("Debris"):AddItem(p, 5)
						coroutine.resume(coroutine.create(function(p)
			
			for ii = 1, 20 do
				p.Transparency = 0.5 + ii / 20
				p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(3 + ii), 0) - Vector3.new(0, 0.05, 0)
				p.Mesh.Scale = p.Mesh.Scale + Vector3.new(0.4, -0.1, 0.4)
				swait()
			end
			p:Remove()
		end
), p)
					end
					p = Instance.new("Part")
					do
						do
							local p = Instance.new("Part")
							p.TopSurface = 0
							p.BottomSurface = 0
							p.CanCollide = false
							p.Anchored = true
							p.BrickColor = BrickColor.new("Bright red")
							p.formFactor = "Symmetric"
							p.Size = Vector3.new(1, 1, 1)
							p.CFrame = billpar.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0)
							p.Parent = EffectModel
							m = Instance.new("SpecialMesh")
							m.MeshType = "FileMesh"
							m.MeshId = "http://www.roblox.com/asset/?id=51226819"
							m.Scale = Vector3.new(8, 8, 8)
							m.Parent = p
							m.Name = "Triangle"
							Effects.Ring.Create(BrickColor.new("White"), billpar.CFrame * cn(0, 1.5, -3) * angles(0, 0, 0), 15, 15, 2, 1, 1, 0, 0.06)
							Effects.Sphere.Create(BrickColor.new("Bright red"), billpar.CFrame * cn(0, 1.5, -3), 10, 10, 10, 20, 20, 20, 0.1)
							Effects.Block.Create(BrickColor.new("Bright orange"), billpar.CFrame * cn(math.random(-5, 5), math.random(-2, 5), math.random(-5, 5)), 10, 10, 10, 6, 6, 6, 0.05)
							coroutine.resume(coroutine.create(function(p)
			
			for iii = 1, 15 do
				p.Transparency = iii / 20
				p.CFrame = billpar.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(0), 0)
				swait()
			end
			p.Parent = nil
		end
), p)
							if trigger == true then
								attack = true
								CFuncs.Sound.Create("rbxassetid://231917806", RootPart, 1, 1)
								Torso.CFrame = billpar.CFrame
								MagniDamage(RootPart, 30, 10, 20, 0, "Knockdown")
								Effects.Ring.Create(BrickColor.new("White"), Torso.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 15, 15, 2, 1, 1, 0, 0.06)
								Effects.Sphere.Create(BrickColor.new("Bright red"), RootPart.CFrame, 50, 50, 50, 5, 5, 5, 0.04)
								Effects.Block.Create(BrickColor.new("Bright orange"), RootPart.CFrame, 10, 10, 10, 16, 16, 16, 0.05)
								Effects.Wave.Create(BrickColor.new("Bright orange"), RootPart.CFrame * cn(0, -1.5, 0), 5, 1, 5, 3, 0, 3, 0.05)
								doing = false
								Humanoid.WalkSpeed = 16
								billpar:Destroy()
								trigger = false
								for i = 0, 1, 0.3 do
									swait()
									PlayAnimationFromTable({CFrame.new(-0.566314936, -0.835617423, -0.27476871, 0.816107869, 0.532828331, -0.223745435, -0.103623793, 0.515819013, 0.850407481, 0.568533301, -0.670838833, 0.476177633), CFrame.new(-0.0724722892, 1.42486942, 0.150846198, 0.880865276, -0.361220062, 0.305935413, 0.441821873, 0.859365463, -0.257457823, -0.169911414, 0.36195454, 0.916580081), CFrame.new(1.97107089, 1.19725895, 0.313646257, -0.486288637, -0.781376481, 0.391119182, 0.192825139, -0.532534719, -0.824151218, 0.852256894, -0.325357735, 0.40963462), CFrame.new(-1.55033076, 0.268466353, -1.17038536, 0.749226928, 0.27124241, -0.604224026, -0.642773449, 0.0778198242, -0.762093484, -0.159691453, 0.959360123, 0.232652128), CFrame.new(0.773490548, -1.39807868, -0.779710352, 0.961340308, -0.217301667, 0.169129819, 0.271254808, 0.853022397, -0.445840478, -0.0473896712, 0.474481702, 0.878988862), CFrame.new(-0.959059596, -1.87286079, -0.820432007, 0.702612638, 0.189346999, 0.685917795, -0.0697793141, 0.977634549, -0.198397338, -0.708142757, 0.0915336013, 0.700110972)}, 0.3, false)
									FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								end
								for i = 0, 1, 0.13 do
									swait()
									PlayAnimationFromTable({CFrame.new(-0.56631428, -0.835619211, -0.274769545, 0.813055813, 0.370008469, -0.449481994, 0.125340238, 0.642704487, 0.755791485, 0.568533301, -0.670838833, 0.476177633), CFrame.new(0.137399927, 1.49113739, -0.00637356937, 0.876034141, -0.180928677, 0.447022319, 0.279254675, 0.946046948, -0.164353281, -0.393167883, 0.26881209, 0.879294634), CFrame.new(2.00643468, 1.06336331, -0.33721602, -0.0517476685, -0.802754343, 0.594060242, 0.468802184, -0.544767261, -0.69530797, 0.881786048, 0.24251619, 0.404523432), CFrame.new(-1.30057442, 0.505212665, -1.13504565, 0.328835696, -0.117620692, -0.937033892, -0.931490064, 0.123023644, -0.342332661, 0.155542731, 0.985408783, -0.0691078901), CFrame.new(0.438014925, -1.59378219, -0.654875219, 0.958472311, -0.0195348859, 0.284515828, 0.118254155, 0.935064673, -0.334170848, -0.259512663, 0.353938699, 0.898543596), CFrame.new(-1.31237149, -1.81132758, -0.311906219, 0.5376966, 0.31614086, 0.781624854, -0.273102462, 0.942367673, -0.193282723, -0.797682464, -0.10953626, 0.593046725)}, 0.3, false)
								end
								attack = false
								break
							else
								billpar.CFrame = billpar.CFrame * CFrame.new(0, 0, -2)
							end
							-- DECOMPILER ERROR at PC684: LeaveBlock: unexpected jumping out DO_STMT

							-- DECOMPILER ERROR at PC684: LeaveBlock: unexpected jumping out DO_STMT

							-- DECOMPILER ERROR at PC684: LeaveBlock: unexpected jumping out IF_THEN_STMT

							-- DECOMPILER ERROR at PC684: LeaveBlock: unexpected jumping out IF_STMT

						end
					end
				end
			end
		end
		doing = false
		billpar:Destroy()
	end
))
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-6.04661182e-07, -0.0269757602, 3.04076821e-07, 0.829037368, -0.0487369858, -0.557065248, 0.182055369, 0.965444684, 0.186473384, 0.528727531, -0.256010145, 0.809262633), CFrame.new(0.114466198, 1.52497041, 0.0369310677, 0.957162917, -0.0433604345, 0.286284596, 0.0310716927, 0.998395741, 0.0473311692, -0.287877649, -0.036408335, 0.956974804), CFrame.new(2.12150669, 0.883369029, 0.478789538, -0.289641976, -0.895451903, 0.338043571, -0.426095784, -0.195622057, -0.883274734, 0.857058883, -0.399872363, -0.324887931), CFrame.new(-1.47265232, 0.425108433, -0.118067831, 0.720503688, 0.587817609, 0.367892355, 0.306421727, 0.206041947, -0.929328978, -0.622077286, 0.782315254, -0.0316661), CFrame.new(0.351139486, -2.04318953, -0.345162094, 0.98296386, 0.182055369, -0.0252568126, -0.183563858, 0.965444684, -0.184988663, -0.00929415226, 0.186473384, 0.982416093), CFrame.new(-0.616526186, -1.9505806, 0.120104805, 0.879762888, 0.182055369, 0.439173102, -0.0752303451, 0.965444684, -0.249513268, -0.469422579, 0.186473384, 0.863058507)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
	end
	Humanoid.WalkSpeed = 16
	attack = false
end

	mouse.Button1Down:connect(function()
	
	if attack == false and attacktype == 1 then
		if spartan == false then
			attacktype = 2
			attackone()
		else
			attacktype = 2
			sattackone()
		end
	else
		if attack == false and attacktype == 2 then
			if spartan == false then
				attacktype = 3
				attacktwo()
			else
				attacktype = 3
				sattacktwo()
			end
		else
			if attack == false and attacktype == 3 then
				if spartan == false then
					attacktype = 1
					attackthree()
				else
					attacktype = 1
					sattackthree()
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
		zcharge()
	else
		if attack == false and spartan == false and k == "x" and co2 <= cooldown2 then
			coo1 = true
			spartan = true
		else
			if attack == false and spartan == true and k == "x" then
				coo1 = false
				spartan = false
			else
				if attack == false and k == "c" and co3 <= cooldown3 then
					coo2 = true
					naenae()
				else
					if attack == true and k == "c" and dab == true then
						coo2 = false
						attack = false
						dab = false
						Humanoid.WalkSpeed = 16
					else
						if attack == false and k == "v" and doing == false and co4 <= cooldown4 then
							cooldown4 = 0
							ult()
						else
							if attack == false and doing == true and trigger == false and k == "v" then
								trigger = true
							end
						end
					end
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
	if cooldown2 <= co2 and coo1 == false then
		cooldown2 = cooldown2 + 0.033333333333333
	end
	if cooldown3 <= co3 and coo2 == false then
		cooldown3 = cooldown3 + 0.033333333333333
	end
	if cooldown4 <= co4 then
		cooldown4 = cooldown4 + 0.033333333333333
	end
end

	while true do
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
					RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0 - 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0 + 0.1 * math.cos((sine) / 8), 0.5) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0 + 0.1 * math.cos((sine) / 7), -0.5) * angles(math.rad(60), math.rad(0), math.rad(20)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2 + 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2 + 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(-60), math.rad(0), math.rad(0)), 0.3)
				end
			else
				if RootPart.Velocity.y < -1 and hit == nil then
					Anim = "Fall"
					if attack == false then
						RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0 - 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0 + 0.1 * math.cos((sine) / 8), 0.5) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
						LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0 + 0.1 * math.cos((sine) / 7), -0.5) * angles(math.rad(60), math.rad(0), math.rad(20)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2 + 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2 + 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(-60), math.rad(0), math.rad(0)), 0.3)
					end
				else
					if Torsovelocity < 1 and hit ~= nil then
						Anim = "Idle"
						if attack == false then
							if spartan == false then
								change = 1
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0 - 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10), math.rad(-30), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0 + 0.1 * math.cos((sine) / 8), 0.5) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0 + 0.1 * math.cos((sine) / 7), -0.5) * angles(math.rad(60), math.rad(0), math.rad(20)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2 + 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2 + 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(-60), math.rad(0), math.rad(0)), 0.3)
							else
								change = 1
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, -0.5 - 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(90), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 8), -1) * angles(math.rad(0), math.rad(60), math.rad(90)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5 + 0.1 * math.cos((sine) / 7), -0.5) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2 + 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-1, -2 + 0.05 * math.cos((sine) / 6), 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
							end
						end
					else
						if 2 < Torsovelocity and hit ~= nil then
							Anim = "Walk"
							if attack == false then
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0.5) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, -0.5) * angles(math.rad(60), math.rad(0), math.rad(20)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0 + 1 * math.cos((sine) / 3)) * angles(math.rad(0 - 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0 - 1 * math.cos((sine) / 3)) * angles(math.rad(0 + 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(-60), math.rad(0), math.rad(0)), 0.3)
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
