wait(0.016666666666667)
script.Name = "Chaos"
local Player = game.Players.LocalPlayer
local Character = Player.Character
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
	text1.Text = "[Z]\n Azure\'s Hand"
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
	text2.Text = "[X]\n Cold Stab"
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
	text3.Text = "[C]\n Cold Storm"
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
	text4.Text = "[V]\n Azure\'s Might"
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
	GunHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 1, "Part", "Sand blue", "GunHandle", Vector3.new(0.200000003, 0.209999993, 0.469999969))
	GunHandleWeld = CreateWeld(m, Character["Right Arm"], GunHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.979945898, 0.0775470734, 0.0401916504, 0, 0.999999881, 0, 0, 0, 1, 1, 0, 0))
	GunFakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 1, "Part", "Sand blue", "GunFakeHandle", Vector3.new(0.200000003, 0.209999993, 0.469999969))
	GunFakeHandleWeld = CreateWeld(m, GunHandle, GunFakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.420000017, 0.900000095))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580005884, 0, -0.939956665, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580016971, -1.69000244, 0.410003662, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.979999959, 0.219999999))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580016971, -1.30000305, -0.200012207, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.480000019, 0.800000012, 4.14999962))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, -0.38999939, -0.0149993896, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580016971, -2.24998474, 0.710006714, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.420000017, 0.890000105))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580005884, 0.599990845, 0.934951782, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.829999983, 0.219999999))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580016971, -1.9349823, -0.500015259, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.429999977, 0.420000017))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580007911, 0, -0.300018311, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.789999485, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580016971, 1.75997925, 0.109985352, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.429999977, 0.420000017))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 0.600006104, -0.300033569, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.230000019))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580016971, 1.42497253, 0.504989624, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.230000019))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580005884, 1.404953, -0.0950012207, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.480000019, 1.07999897, 0.859999955))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 0.549972534, -0.0149993896, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.420000017, 0.900000095))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580007911, -1.52587891e-05, -0.960006714, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580016971, -1.69000244, 0.389984131, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.979999959, 0.219999999))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580016971, -1.30000305, -0.179977417, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.420000017, 0.890000105))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580007911, 0.599990845, 0.954986572, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.789999485, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580016971, 1.20001221, 0.389984131, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.230000019))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580016971, 1.42497253, -0.0950012207, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.789999485, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580016971, 1.20001221, 0.410003662, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.429999977, 0.420000017))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 0, -0.279998779, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.789999485, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580005884, 1.7399292, 0.710006714, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580005884, -2.22996521, 0.109985352, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.230000019))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580005884, 1.404953, 0.504989624, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.829999983, 0.219999999))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580005884, -1.91496277, -0.500015259, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.429999977, 0.420000017))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580007911, 0.600006104, -0.279998779, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.789999485, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580016971, 1.75997925, 0.710006714, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.789999485, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580005884, 1.7399292, 0.109985352, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.829999983, 0.219999999))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580016971, -1.9349823, 0.100006104, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.480000019, 0.879999101, 0.659999967))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, -1.15001106, -0.0149993896, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580016971, -2.24998474, 0.109985352, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.829999983, 0.219999999))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580005884, -1.91496277, 0.100006104, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580005884, -2.22996521, 0.710006714, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.480000019, 3.27999902, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 2.6499939, 0.315002441, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.480000019, 3.27999902, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 2.6499939, -0.345001221, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 1.24998474, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 1.54997253, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 2.1499939, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 1.84998894, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 2.74998474, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 2.44999695, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 3.34998894, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 3.04997253, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 3.94999695, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.720006824, 3.6499939, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 1.84998894, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 1.24998474, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 2.1499939, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 1.54997253, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 2.44999695, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 2.74998474, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 3.04997253, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 3.94999695, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 3.34998894, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Steel blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.470000029))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.440006018, 3.6499939, -0.0100097656, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Medium blue", "Part", Vector3.new(0.430000007, 4.17999887, 0.689999938))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 2.09998894, -0.0149993896, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Sand blue", "Part", Vector3.new(0.530000031, 0.639999628, 0.280000031))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 0.529998779, 0.300140381, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Sand blue", "Part", Vector3.new(0.530000031, 0.639999628, 0.280000031))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 0.529998779, -0.32989502, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Sand blue", "Part", Vector3.new(0.530000031, 0.43999964, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 0.908126831, 0.426277161, 1, 0, 0, 0, 0.64278698, -0.766044974, 0, 0.766044974, 0.64278698))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Sand blue", "Part", Vector3.new(0.530000031, 0.43999964, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 0.897949219, -0.434822083, 1, 0, 0, 0, 0.64278698, 0.766044974, 0, -0.766044974, 0.64278698))
	Barrel = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Really black", "Barrel", Vector3.new(0.290000021, 0.200000003, 0.689999938))
	BarrelWeld = CreateWeld(m, GunFakeHandle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 4.11000061, -0.0149993896, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.639999986))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0299990177, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.220000029, 0.349999994, 0.709999979))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.439998984, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.569999993, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.214998007, 0, -0.359985352, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.519999981, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.189998984, 0, 0.359939575, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Sand blue", "Part", Vector3.new(0.200000003, 0.209999993, 0.469999969))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.319999993, 0.800000012, 0.799999654))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.780005693, -0.222732544, -0.204811096, 1, 0, 0, 0, 0.707105339, -0.707108378, 0, 0.707108378, 0.707105339))
	Part = CreatePart(m, Enum.Material.Neon, 0.25, 0, "Part", "Institutional white", "Part", Vector3.new(0.319999993, 0.699999988, 0.69999963))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.830007672, -0.222732544, -0.204811096, 1, 0, 0, 0, 0.707105339, -0.707108378, 0, 0.707108378, 0.707105339))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.329999983, 0.599999964, 0.599999607))
	PartWeld = CreateWeld(m, GunFakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.835006714, -0.222732544, -0.204811096, 1, 0, 0, 0, 0.707105339, -0.707108378, 0, 0.707108378, 0.707105339))
	Motor1 = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 1, "Part", "Pastel light blue", "Motor1", Vector3.new(0.620000005, 3.55999947, 0.230000019))
	Motor1Weld = CreateWeld(m, GunFakeHandle, Motor1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.580007911, 1.98999023, 0.345001221, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 4.18999958, 0.200000003))
	PartWeld = CreateWeld(m, Motor1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.315002441, 0.205001831, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.50498962, 0.205001831, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 3.55999947, 0.230000019))
	PartWeld = CreateWeld(m, Motor1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.829999983, 0.219999999))
	PartWeld = CreateWeld(m, Motor1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.19000244, 0.00498962402, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Medium blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.910003662, -0.405014038, 0.00999891758, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.600000024, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Medium blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.50999451, -0.405014038, 0.00999891758, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Medium blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.3099823, -0.20501709, 0.00999891758, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.600000024, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Medium blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor1, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.1099987, -0.605010986, 0.00999891758, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Motor2 = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 1, "Part", "Pastel light blue", "Motor2", Vector3.new(0.620000005, 3.55999947, 0.230000019))
	Motor2Weld = CreateWeld(m, GunFakeHandle, Motor2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.580007911, 1.98999023, 0.375045776, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 4.18999958, 0.200000003))
	PartWeld = CreateWeld(m, Motor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.315002441, 0.204986572, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 3.55999947, 0.230000019))
	PartWeld = CreateWeld(m, Motor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.50498962, 0.204986572, -1, 0, 0, 0, -1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.25, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.620000005, 0.829999983, 0.219999999))
	PartWeld = CreateWeld(m, Motor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.19000244, 0.00498962402, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Medium blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.910003662, -0.404983521, -0.00999891758, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.600000024, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Medium blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.51000977, -0.404983521, -0.00999891758, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Medium blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.1099987, -0.604980469, -0.00999891758, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Part", "Medium blue", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor2, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.309997559, -0.204986572, -0.00999891758, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.600000024, 0.25))
	Handle = CreatePart(m, Enum.Material.Ice, 0, 1, "Part", "Pastel light blue", "Handle", Vector3.new(3.4357357, 0.225530431, 0.225515991))
	HandleWeld = CreateWeld(m, Character["Left Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.100721359, 0.0629272461, 1.06757796, 0, 0, -1, -1, 0, 0, 0, 0.999999881, 0))
	CreateMesh("SpecialMesh", Handle, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.382658452, 0.42945075))
	FakeHandle = CreatePart(m, Enum.Material.Ice, 0, 1, "Part", "Pastel light blue", "FakeHandle", Vector3.new(3.4357357, 0.225530431, 0.225515991))
	FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", FakeHandle, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.382658452, 0.42945075))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.670463562, -0.930160522, 0, 1, 0, 0.569311142, 0, -0.822122157, -0.822122157, 0, -0.569311142))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.102290183))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.276260436))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.696116924, -1.58684921, 0, -1, 0, -0.324895918, 0, 0.94574976, -0.94574976, 0, -0.324895918))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.491989315, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.310406744))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, 0.721996307, -0.699505806, 0, 1, 0, 0.839609861, 0, -0.543189943, -0.543189943, 0, -0.839609861))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -0.342510223, -1.0279789, 0, 1, 0, -0.330947995, 0, -0.943648994, -0.943648994, 0, 0.330947995))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.25911507))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.46617797))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 2.19860411, 3.41370583, 0, -1, 0, 0.501114905, 0, -0.865380824, 0.865380824, 0, 0.501114905))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.73693943, -1.41551399, 0, 1, 0, 0.453842878, 0, -0.89108175, -0.89108175, 0, -0.453842878))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.0504995957))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.919629097, -1.28999901, 0, 1, 0, 0.569311142, 0, -0.822122157, -0.822122157, 0, -0.569311142))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.102290183))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -0.485155582, -1.44175529, 0, -1, 0, -0.330950111, 0, 0.943648338, -0.943648338, 0, -0.330950111))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.25911507))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 1.29203796, -0.902766228, 0, -1, 0, 0.807262182, 0, 0.590193093, -0.590193093, 0, 0.807262182))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0819161087, 0.136162564))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 1.12645817, -0.782366753, 0, 1, 0, 0.807263792, 0, -0.590190887, -0.590190887, 0, -0.807263792))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0819161087, 0.114036903))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.521723568))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000106811523, -0.723071098, -1.80174637, 0, 1, 0, -0.402581155, 0, -0.915384293, -0.915384293, 0, 0.402581185))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.382658452, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225530431))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.46403503, -0.00596618652, 0.00308203697, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.177656248, 0.10933087, 0.122700237))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.400904596))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -2.18682003, 3.88516808, 0, -1, 0, -0.461948067, 0, -0.886907101, 0.886907101, 0, -0.461948067))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.54991293, -1.30178833, 0, 1, 0, 0.385758847, 0, -0.922599614, -0.922599614, 0, -0.385758847))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.184012726))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.64460659, -1.23422813, 0, 1, 0, 0.453842878, 0, -0.89108175, -0.89108175, 0, -0.453842878))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.0504995957))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -0.487340927, -1.44098854, 0, 1, 0, -0.330947995, 0, -0.943648994, -0.943648994, 0, 0.330947995))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.25911507))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -0.610590935, -0.932094574, 0, 1, 0, -0.571112037, 0, -0.820872128, -0.820872128, 0, 0.571112037))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0919578299, 0.106847711))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -0.822813988, -0.763485909, 0, -1, 0, -0.760585189, 0, 0.649238169, -0.649238169, 0, -0.760585189))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.0582351238))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -1.15570831, -1.04762459, 0, -1, 0, -0.760585189, 0, 0.649238169, -0.649238169, 0, -0.760585189))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.0582351238))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -0.608677864, -0.933423996, 0, -1, 0, -0.571113884, 0, 0.820870817, -0.820870817, 0, -0.571113884))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0919578299, 0.106847711))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.646684647, -1.23317146, 0, -1, 0, 0.453840882, 0, 0.891082764, -0.891082764, 0, 0.453840882))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.0504995957))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.628373146, -1.48947906, 0, 1, 0, 0.385758847, 0, -0.922599614, -0.922599614, 0, -0.385758847))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.184012726))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.805734634, -1.12140465, 0, -1, 0, 0.569308877, 0, 0.822123826, -0.822123826, 0, 0.569308877))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.102290183))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -0.417830467, -1.24978828, 0, -1, 0, -0.330950111, 0, 0.943648338, -0.943648338, 0, -0.330950111))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.25911507))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.803817749, -1.12273407, 0, 1, 0, 0.569311142, 0, -0.822122157, -0.822122157, 0, -0.569311142))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.102290183))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.538286209, -1.02547646, 0, 1, 0, 0.453842878, 0, -0.89108175, -0.89108175, 0, -0.453842878))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.0504995957))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -0.858653069, -1.29271889, 0, -1, 0, -0.571113884, 0, 0.820870817, -0.820870817, 0, -0.571113884))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0919578299, 0.106847711))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.491280079))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.565439939, -1.67326546, 0, -1, 0, -0.209574923, 0, 0.977792621, -0.977792621, 0, -0.209574923))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.515809596, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -1.15723991, -1.04590321, 0, 1, 0, -0.760584712, 0, -0.649238765, -0.649238765, 0, 0.760584712))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.0582351238))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.630539894, -1.48857307, 0, -1, 0, 0.385758072, 0, 0.922600091, -0.922600091, 0, 0.385758072))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.184012726))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000106811523, 1.45045471, -0.823974609, 0, 1, 0, 0.913835764, 0, -0.406083912, -0.406083941, 0, -0.913835764))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.655985832, 0.826239228))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225530431))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.24211121, -0.00596618652, 0.00308203697, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.177656248, 0.10933087, 0.122700237))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -0.744375229, -1.12438583, 0, 1, 0, -0.571112037, 0, -0.820872128, -0.820872128, 0, 0.571112037))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0919578299, 0.106847711))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -0.420030594, -1.24901581, 0, 1, 0, -0.330947995, 0, -0.943648994, -0.943648994, 0, 0.330947995))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.25911507))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.276260436))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.700619698, -1.58724403, 0, -1, 0, 0.439010113, 0, 0.898482263, -0.898482263, 0, 0.439010113))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.62865299, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(3.4357357, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.382658452, 0.42945075))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.430718988, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.721237183, 0, 1.50203705e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.382658452, 0.42945075))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -1.00251198, -0.913807869, 0, 1, 0, -0.760584712, 0, -0.649238765, -0.649238765, 0, 0.760584712))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.0582351238))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.552064896, -1.30088806, 0, -1, 0, 0.385758072, 0, 0.922600091, -0.922600091, 0, 0.385758072))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.184012726))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.430718988, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.567123413, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.382658452, 0.42945075))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.430718988, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.912338257, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.382658452, 0.42945075))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 1.29066753, -0.902420044, 0, 1, 0, 0.807263792, 0, -0.590190887, -0.590190887, 0, -0.807263792))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0819161087, 0.114036903))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.430718988, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.450012207, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.382658452, 0.42945075))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -1.00100517, -0.915571213, 0, -1, 0, -0.760585189, 0, 0.649238169, -0.649238169, 0, -0.760585189))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.0582351238))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -0.742448807, -1.1257267, 0, -1, 0, -0.571113884, 0, 0.820870817, -0.820870817, 0, -0.571113884))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0919578299, 0.106847711))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 1.12781715, -0.7827034, 0, -1, 0, 0.807262182, 0, 0.590193093, -0.590193093, 0, 0.807262182))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0819161087, 0.136162564))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.921569824, -1.28865337, 0, -1, 0, 0.569308877, 0, 0.822123826, -0.822123826, 0, 0.569308877))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.102290183))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -0.860566139, -1.29138947, 0, 1, 0, -0.571112037, 0, -0.820872128, -0.820872128, 0, 0.571112037))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0919578299, 0.106847711))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.739030838, -1.4144516, 0, -1, 0, 0.453840882, 0, 0.891082764, -0.891082764, 0, 0.453840882))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.0504995957))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.418472111))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.0652856827, -2.73348045, 0, -1, 0, 0.0839639753, 0, 0.996468782, -0.996468782, 0, 0.0839639753))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, 0.963775635, -1.08845615, 0, 1, 0, 0.843175113, 0, -0.537639081, -0.537639081, 0, -0.843175113))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.504995406, 0.938168466))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.436104476))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -2.45925713, -3.30437374, 0, -1, 0, -0.569325924, 0, 0.822111905, -0.822111905, 0, -0.569325924))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.488143772))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, 0.0373142958, -1.21798134, 0, 1, 0, 0.121275, 0, -0.992618978, -0.992618978, 0, -0.121275))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.501285851, 0.387643158, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.458455741))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.546929121, -3.73899078, 0, -1, 0, -0.0820309743, 0, 0.996629775, -0.996629775, 0, -0.0820309669))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.37202841, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, -0.953471184, 0.981273651, 0, 1, 0, -0.785736859, 0, 0.61856091, 0.61856091, 0, 0.785736859))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.501285851, 0.387643158, 0.565293431))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.50728488))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.191773653, -2.32084084, 0, -1, 0, -0.0167740062, 0, 0.999859333, -0.999859333, 0, -0.0167740062))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.322683364))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, -0.907325745, 1.07279205, 0, 1, 0, -0.834646404, 0, 0.550786257, 0.550786257, 0, 0.834646404))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.427322894, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.418608069))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.898381233, -1.47597694, 0, -1, 0, 0.416545838, 0, 0.909114718, -0.909114778, 0, 0.416545868))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.792649508, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.266679823))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.940636158, -2.86175919, 0, -1, 0, -0.263812959, 0, 0.96457386, -0.96457386, 0, -0.263812989))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.560810208, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.910780907, -1.84451675, 0, -1, 0, -0.362772882, 0, 0.931877613, -0.931877613, 0, -0.362772882))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 0.745530844))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.322683364))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, -0.908473969, 1.07104969, 0, -1, 0, -0.834645152, 0, -0.550788105, 0.550788105, 0, -0.834645152))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.427322894, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.577717006))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.84859705, -3.23407936, 0, -1, 0, 0.305063069, 0, 0.952332258, -0.952332258, 0, 0.305063039))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.37202841, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.345223963))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, 0.727423668, -0.831835747, 0, 1, 0, 0.744162083, 0, -0.667999029, -0.667999029, 0, -0.744162083))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.315847784))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.304209709, -1.53526688, 0, -1, 0, 0.304739892, 0, 0.952435613, -0.952435613, 0, 0.304739892))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.26648441, 0.355325639, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.425149649))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, 0.0427803993, -1.25720596, 0, -1, 0, 0.121273026, 0, 0.992619216, -0.992619216, 0, 0.121273026))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.518580496, 0.395084292, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.493409365))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.946242332, -4.3399086, 0, -1, 0, 0.232690006, 0, 0.972550988, -0.972550988, 0, 0.232690006))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.539913714, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.310406744))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, 0.72315979, -0.697734833, 0, -1, 0, 0.839607894, 0, 0.543192923, -0.543192923, 0, 0.839607894))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.997520804))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.336190224, 3.46850014, 0, -1, 0, -0.158873007, 0, -0.987299025, 0.987299025, 0, -0.158873007))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.536024928, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.242113113))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -1.13912106, 4.13766479, 0, -1, 0, -0.293429881, 0, -0.955980659, 0.955980659, 0, -0.293429881))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.254447699))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, 0.671562195, -1.33263779, 0, 1, 0, 0.571589053, 0, -0.82054013, -0.82054013, 0, -0.571589053))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.435866326, 0.54344964, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000106811523, 0.724951744, -1.54829979, 0, 1, 0, 0.439010888, 0, -0.898481786, -0.898481786, 0, -0.439010888))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.655985832, 0.826239228))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.228231788))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, 0.42011261, -1.24403954, 0, 1, 0, 0.513704956, 0, -0.8579669, -0.8579669, 0, -0.513704956))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.427322894, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, 0.964899063, -1.08669472, 0, -1, 0, 0.843174696, 0, 0.537639797, -0.537639797, 0, 0.843174696))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.504995406, 0.938168466))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.314318269))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, -0.615888596, 0.770624161, 0, -1, 0, -0.782626092, 0, -0.622492075, 0.622492075, 0, -0.782626092))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, -1.00531006, 0.476979613, 0, -1, 0, -0.996047735, 0, -0.0888199806, 0.0888199806, 0, -0.996047735))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.54665482, 0.893179238))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, -0.963575363, 0.985136986, 0, -1, 0, -0.78573519, 0, -0.618563116, 0.618563116, 0, -0.78573519))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.518580496, 0.395084292, 0.576144159))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.387422174))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, -0.579488754, 1.46124458, 0, -1, 0, -0.536422014, 0, -0.843949974, 0.843949974, 0, -0.536422014))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.518580496, 0.513757586, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.228231788))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, 0.421916008, -1.24295616, 0, -1, 0, 0.513703048, 0, 0.857968092, -0.857968092, 0, 0.513703048))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.427322894, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.314318269))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, -0.61457634, 0.772270203, 0, 1, 0, -0.782627463, 0, 0.622490346, 0.622490346, 0, 0.782627463))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.345223963))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, 0.72882843, -0.830247879, 0, -1, 0, 0.744160235, 0, 0.668001235, -0.668001235, 0, 0.744160235))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.274130166))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, 0.89950943, -1.21010208, 0, -1, 0, 0.705389738, 0, 0.708819747, -0.708819747, 0, 0.705389738))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.518580496, 0.513757586, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, 0.458138466, -1.04279709, 0, -1, 0, 0.650501788, 0, 0.759504676, -0.759504676, 0, 0.650501788))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.54665482, 0.529199064))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.461705208, -1.08477974, 0, -1, 0, 0.385758072, 0, 0.922600091, -0.922600091, 0, 0.385758072))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.184012726))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.48363781))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.190896869, -3.55576134, 0, -1, 0, -0.0628709793, 0, 0.998021662, -0.998021662, 0, -0.0628709793))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.62865299, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.302620798))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.280614138, 3.75216103, 0, -1, 0, -0.0659140199, 0, -0.997825384, 0.997825384, 0, -0.0659140125))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.515125394))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 1.70560265, 3.69843292, 0, -1, 0, 0.445284158, 0, -0.895389318, 0.895389318, 0, 0.445284158))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.277396441, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -1.3130846, -1.38956642, 0, -1, 0, -0.625784218, 0, 0.779996276, -0.779996276, 0, -0.625784218))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 1, 0.841063499))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -0.824342728, -0.761721611, 0, 1, 0, -0.760584712, 0, -0.649238765, -0.649238765, 0, 0.760584712))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.0582351238))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.496435463))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -1.47691059, -3.67290688, 0, -1, 0, -0.405739844, 0, 0.913988709, -0.913988709, 0, -0.405739844))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000106811523, 1.55036163, -0.628609657, 0, 1, 0, 0.945750475, 0, -0.32489416, -0.32489413, 0, -0.945750475))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.464656651, 0.335438371))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.9373312, -0.644116402, 0, 1, 0, 0.807263792, 0, -0.590190887, -0.590190887, 0, -0.807263792))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0819161087, 0.114036903))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.617038906))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.473254681, -2.22195435, 0, -1, 0, 0.123833999, 0, 0.992303014, -0.992303014, 0, 0.123833999))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.62865299, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -0.34030962, -1.02875137, 0, -1, 0, -0.330950111, 0, 0.943648338, -0.943648338, 0, -0.330950111))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.25911507))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.298433393))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.0282616615, -2.65164566, 0, -1, 0, -0.075590007, 0, 0.997139096, -0.997139096, 0, -0.0755899996))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.62865299, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.672380447, -0.928833008, 0, -1, 0, 0.569308877, 0, 0.822123826, -0.822123826, 0, 0.569308877))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.102290183))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.361204773))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -1.08310223, -1.58367538, 0, -1, 0, -0.627277195, 0, 0.778796196, -0.778796196, 0, -0.627277195))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.45953846, -1.08568764, 0, 1, 0, 0.385758847, 0, -0.922599614, -0.922599614, 0, -0.385758847))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.184012726))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.272106647, -4.22688484, 0, -1, 0, 0.0114419963, 0, 0.999934614, -0.999934614, 0, 0.0114419963))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.54665482, 0.965766907))
	Part = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.714659035))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.903915405, -2.92600822, 0, -1, 0, 0.26463002, 0, 0.964350104, -0.964350104, 0, 0.26463002))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.655985832, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.938735962, -0.644445419, 0, -1, 0, 0.807262182, 0, 0.590193093, -0.590193093, 0, 0.807262182))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0819161087, 0.136162564))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Part", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.540364265, -1.02441978, 0, -1, 0, 0.453840882, 0, 0.891082764, -0.891082764, 0, 0.453840882))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.098574236, 0.0504995957))
	Wedge = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.457159668))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, 0.455852509, 1.56103706, 0, -1, 0, 0.577684939, 0, -0.816259861, 0.816259861, 0, 0.577684939))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.37792629, 1))
	Wedge = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.457159668))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, 0.457569122, 1.55982208, 0, 1, 0, 0.577683806, 0, 0.816260695, 0.816260695, 0, -0.577683806))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.37792629, 1))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -1.26828766, 0.50060463, 0, 1, 0, -0.942250907, 0, 0.334907979, 0.334907979, 0, 0.942250907))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0824600086, 0.175014526))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 1.13035202, -0.760775566, 0, 1, 0, 0.807263792, 0, -0.590190887, -0.590190887, 0, -0.807263792))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.100634657))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 1.29592323, -0.878992081, 0, -1, 0, 0.807262182, 0, 0.590193093, -0.590193093, 0, 0.807262182))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.100634657))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 1.29457474, -0.880838394, 0, 1, 0, 0.807263792, 0, -0.590190887, -0.590190887, 0, -0.807263792))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.100634657))
	Wedge = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.391042173))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00575256348, 0.212338448, 1.64188576, 0, -1, 0, -0.201983973, 0, -0.979388893, 0.979388893, 0, -0.201983973))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.323268026, 1))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -1.45997047, 0.568735123, 0, 1, 0, -0.942250907, 0, 0.334907979, 0.334907979, 0, 0.942250907))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0824600086, 0.175014526))
	Wedge = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 1.63871801))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, -0.477885485, 5.2969532, 0, -1, 0, -0.0895510241, 0, -0.99598223, 0.99598223, 0, -0.0895510241))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.529218853, 1))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 1.13170242, -0.758928299, 0, -1, 0, 0.807262182, 0, 0.590193093, -0.590193093, 0, 0.807262182))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.100634657))
	Wedge = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 1.48029602))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000106811523, 0.165276766, 5.20165443, 0, 1, 0, 0.0600360148, 0, 0.998196244, 0.998196244, 0, -0.0600360148))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.298565388, 1))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, 0.94260788, -0.620662689, 0, -1, 0, 0.807262182, 0, 0.590193093, -0.590193093, 0, 0.807262182))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.100634657))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, -1.0475769, 0.422157288, 0, 1, 0, -0.942250907, 0, 0.334907979, 0.334907979, 0, 0.942250907))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0824600086, 0.175014526))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -1.46076775, 0.566541195, 0, -1, 0, -0.942250907, 0, -0.334907979, 0.334907979, 0, -0.942250907))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0824600086, 0.175014526))
	Wedge = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 1.6710372))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106811523, 0.360930562, 5.1064682, 0, -1, 0, 0.0419210009, 0, -0.99912101, 0.99912101, 0, 0.0419210009))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.444140643, 0.33703661, 1))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0111541748, 0.941239357, -0.622532845, 0, 1, 0, 0.807263792, 0, -0.590190887, -0.590190887, 0, -0.807263792))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0474151224, 0.100634657))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -1.26906967, 0.49840498, 0, -1, 0, -0.942250907, 0, -0.334907979, 0.334907979, 0, -0.942250907))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0824600086, 0.175014526))
	Wedge = CreatePart(m, Enum.Material.Ice, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.391042173))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00575256348, 0.214397669, 1.6423111, 0, 1, 0, -0.201986089, 0, 0.979388475, 0.979388475, 0, 0.201986074))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.577382743, 0.323268026, 1))
	Wedge = CreatePart(m, Enum.Material.Neon, 0, 0, "Part", "Pastel light blue", "Wedge", Vector3.new(0.225530431, 0.225530431, 0.225515991))
	WedgeWeld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0111541748, -1.04835892, 0.419957161, 0, -1, 0, -0.942250907, 0, -0.334907979, 0.334907979, 0, -0.942250907))
	CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.225709409, 0.0824600086, 0.175014526))
	Hitbox = CreatePart(m, Enum.Material.Ice, 0, 1, "Part", "Pastel light blue", "Hitbox", Vector3.new(7.80644274, 0.225530431, 0.683775246))
	HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.21278381, 0, -0.0227659941, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Hitbox, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.382658452, 1))
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
		else
			do
				if Type == "Normal" then
					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
					if knockback > 0 then
						vp.Parent = hit.Parent.Torso
					end
					game:GetService("Debris"):AddItem(vp, 0.5)
				else
					do
						if Type == "Up" then
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 1)
						else
							do
								if Type == "Snare" then
									local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
									game:GetService("Debris"):AddItem(bp, 1)
								else
									do
										if Type == "Slashnare" then
											Effects.Block.Create(BrickColor.new("Pastel Blue"), hit.Parent.Torso.CFrame * cn(0, 0, 0), 15, 15, 15, 3, 3, 3, 0.07)
											for i = 1, math.random(4, 5) do
												Effects.Sphere.Create(BrickColor.new("Teal"), hit.Parent.Torso.CFrame * cn(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
											end
											local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
											game:GetService("Debris"):AddItem(bp, 1)
										else
											do
												if Type == "Freeze" then
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
												do
													local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
													game:GetService("Debris"):AddItem(debounce, Delay)
													c = Instance.new("ObjectValue")
													c.Name = "creator"
													c.Value = Player
													c.Parent = h
													game:GetService("Debris"):AddItem(c, 0.5)
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
	Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(EffectModel, "Neon", 0, 0, "Part", brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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
	
	local prt = CreatePart(EffectModel, "Neon", 0, 0, "Part", brickcolor, "Effect", Vector3.new())
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
	local speed = 15
	local num = 20
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
			Laser(BrickColor.new("Bright blue"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.25, 0, -0.25, 0.15)
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			do
				if num <= 0 then
					local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						local icprt = CreatePart(workspace, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Bright blue"), "Icicle Part", Vector3.new(1, 1, 1))
						icprt.Anchored = true
						icprt.CFrame = refpart.CFrame
						Effects.Wave.Create(BrickColor.new("Baby blue"), icprt.CFrame, 5, 1, 5, 1, 1, 1, 0.07)
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
						local freezepart = CreatePart(workspace, "SmoothPlastic", 0.5, 0.5, "Part", BrickColor.new("Bright blue"), "Ice Part", Vector3.new(5, 5, 5))
						freezepart.Anchored = true
						freezepart.CanCollide = true
						freezepart.CFrame = icprt.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
						game:GetService("Debris"):AddItem(freezepart, 7)
						coroutine.resume(coroutine.create(function(Part)
			
			wait(1.5)
			for i = 1, 6 do
				p = Part:Clone()
				p.Parent = workspace
				p.Size = Vector3.new(math.random(1, 3), math.random(1, 3), math.random(1, 3))
				p.CFrame = Part.CFrame * CFrame.new(math.random(-5, 5), math.random(-2, 5), math.random(-5, 5))
				p.Anchored = false
				p.Velocity = Vector3.new(math.random(-40, 40), math.random(-10, 40), math.random(-40, 40))
				game:GetService("Debris"):AddItem(p, 5)
			end
			CFuncs.Sound.Create("http://www.roblox.com/asset/?id=87015121", Part, 1, 2)
			Part.Transparency = 1
			Part.CanCollide = false
			wait(2)
			Part.Parent = nil
		end
), freezepart)
						BlockEffect(BrickColor.new("Medium blue"), refpart.CFrame, 1, 1, 1, 3, 3, 3, 0.05)
						BlockEffect(BrickColor.new("Toothpaste"), refpart.CFrame, 1, 1, 1, 5, 5, 5, 0.07)
						MagniDamage(refpart, 15, 10, 15, 0, "Normal")
					end
					do
						game:GetService("Debris"):AddItem(refpart, 0)
					end
				end
			end
		until num <= 0
	end
))
end

	shoottrailtele = function(mouse, partt, SpreadAmount)
	
	local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
	local MainPos = partt.Position
	local MainPos2 = mouse.Hit.p + SpreadVectors
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	local speed = 15
	local num = 20
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
			Laser(BrickColor.new("Cool blue"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.25, 0, -0.25, 0.15)
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			do
				if num <= 0 then
					local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						Torso.CFrame = refpart.CFrame
						BlockEffect(BrickColor.new("Medium blue"), refpart.CFrame, 1, 1, 1, 3, 3, 3, 0.05)
						BlockEffect(BrickColor.new("Toothpaste"), refpart.CFrame, 1, 1, 1, 5, 5, 5, 0.07)
						CFuncs.Sound.Create("rbxassetid://377357848", Torso, 1, 1)
						MagniDamage(refpart, 15, 10, 15, 0, "Normal")
					end
					game:GetService("Debris"):AddItem(refpart, 0)
				end
			end
		until num <= 0
	end
))
end

	attackone = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 18, 0, "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(1.03890194e-08, -4.70399755e-07, -7.73940201e-08, 0.632528722, -0.0217873529, 0.774236262, 0.139324576, 0.986499786, -0.0860634968, -0.76190877, 0.162307024, 0.627024949), CFrame.new(0.209416807, 1.48838139, -0.0294689536, 0.818255663, 0.289456606, -0.496666044, -0.155288324, 0.943157852, 0.293834627, 0.553486884, -0.163305432, 0.816693425), CFrame.new(1.38760209, 0.53665626, 0.26421392, 0.950442016, 0.0719300956, 0.302473903, -0.10882327, -0.834364295, 0.540364265, 0.291241884, -0.546501219, -0.785187304), CFrame.new(-1.65843391, 0.529715955, -0.0987002924, 0.159963533, 0.987063885, -0.0110016167, -0.913298488, 0.152219757, 0.377776265, 0.374563962, -0.0503826849, 0.925833642), CFrame.new(0.396332622, -2.07714558, 0.0710505769, 0.166831598, 0.139324576, -0.976094425, 0.0622849055, 0.986499786, 0.151455387, 0.984018445, -0.0860634968, 0.155901536), CFrame.new(-0.855464697, -1.9000324, 0.0747302026, 0.863558888, 0.139324576, -0.484622627, -0.0785059333, 0.986499786, 0.143718332, 0.498103648, -0.0860634968, 0.862838566)}, 0.3, false)
		GunFakeHandleWeld.C0 = clerp(GunFakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CFuncs.Sound.Create("rbxassetid://341336485", Torso, 1, 1.4)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0103130359, -0.00999802351, -0.037296351, 0.0427503958, 0, -0.999085784, 0, 1, 0, 0.999085784, 0, 0.0427503958), CFrame.new(-0.0331175029, 1.5, -0.0932772383, 0.0239602588, -0.14884612, 0.98857224, -0.0868240893, 0.98480773, 0.150383711, -0.995937645, -0.0894351155, 0.0106728673), CFrame.new(1.2989018, 0.699998617, 0.325723648, 0.956305802, 0.187930554, 0.223967344, 5.96046448e-08, -0.766045153, 0.64278686, 0.292368412, -0.614700735, -0.73257333), CFrame.new(-1.6317538, 0.499998957, -0.512397289, -0.257156312, 0.404916912, -0.877446771, -0.915739954, 0.187936157, 0.355106205, 0.308692515, 0.894830883, 0.322469562), CFrame.new(0.561301827, -1.99999964, 0.0573561266, 0.974370778, -1.55168838e-08, -0.224947974, -1.06124958e-08, 1, -1.14948421e-07, 0.224947974, 1.14389643e-07, 0.974370778), CFrame.new(-0.42256704, -2, 0.0238280296, 0.970294476, 0, 0.241926923, 0, 1, 0, -0.241926923, 0, 0.970294476)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-40), math.rad(0)), 0.4)
	end
	con:disconnect()
	attack = false
end

	attacktwo = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 18, 0, "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.258817434, 0, -0.965926349, 0, 1, 0, 0.96592629, 0, 0.258817405), CFrame.new(2.68220901e-07, 1.50000048, -2.68220901e-07, 0.264189601, -0.122786447, 0.956622958, -0.0868239999, 0.984808087, 0.150382236, -0.960554898, -0.122787237, 0.249515191), CFrame.new(1.07229853, 0.700000644, -0.483284831, 0.939692676, -0.219846755, -0.262001902, -5.96046448e-08, -0.766043186, 0.642789185, -0.342020035, -0.604024291, -0.719845176), CFrame.new(-0.447935492, 5.43892384e-07, -1.15621746, 0.792020082, -0.0414022058, -0.609089375, -0.518511951, 0.481026381, -0.706936359, 0.322256744, 0.875728011, 0.359515071), CFrame.new(0.449936897, -2, -0.326908946, 0.96126169, 0, 0.275637329, 0, 1, 0, -0.275637388, 0, 0.961261749), CFrame.new(-0.562790811, -2, -0.015514046, 0.258820325, 0, 0.965925455, 0, 1, 0, -0.965925515, 0, 0.258820295)}, 0.3, false)
		GunFakeHandleWeld.C0 = clerp(GunFakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.4)
	end
	CFuncs.Sound.Create("rbxassetid://341336485", Torso, 1, 1.2)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.731354833, 0, 0.68199718, 0, 1, 0, -0.68199718, 0, 0.731354892), CFrame.new(1.04308128e-07, 1.50000048, 3.57627869e-07, 0.724090099, 0.166059449, -0.66941613, -0.0868239999, 0.984808087, 0.150382236, 0.684218764, -0.0507688969, 0.72750771), CFrame.new(1.10008144, 0.699999869, 0.222260296, 0.838670492, 0.35008806, 0.417217255, -1.2665987e-07, -0.766043246, 0.642789125, 0.544639289, -0.539088309, -0.642457783), CFrame.new(-1.61916935, 0.800002217, -0.624419332, 0.848000824, 0.502771258, -0.167677104, 0.123712182, -0.495409608, -0.859804988, -0.515354097, 0.708371758, -0.4823066), CFrame.new(0.55881834, -2, 0.0425649658, 0.173648089, 0, -0.984807789, 0, 1, 0, 0.984807849, 0, 0.173648149), CFrame.new(-0.700200438, -2, -0.0387508422, 0.945518136, 0, -0.325569421, 0, 1, 0, 0.325569421, 0, 0.945518136)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(90)), 0.4)
	end
	con:disconnect()
	attack = false
end

	attackthree = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.951056004, 0, -0.309018642, 0, 1, 0, 0.309018612, 0, 0.951056004), CFrame.new(-6.1839819e-07, 1.49999988, 3.87430191e-07, 0.694489479, -0.0801652968, -0.7150231, 0.02945593, 0.996108413, -0.0830693394, 0.718899727, 0.036629118, 0.694148183), CFrame.new(1.57117486, 1.39999986, -0.177208886, 0.99333477, 0.0725342929, 0.0895814598, 0.0746374875, -0.997003019, -0.0203518867, 0.0878366828, 0.0269023888, -0.995771527), CFrame.new(-1.34661162, -1.8440187e-07, 0.0695166588, 0.960140646, 0.187698096, -0.207121551, -0.172987029, 0.981060565, 0.0871533006, 0.219557285, -0.047850091, 0.974425495), CFrame.new(0.489068002, -2, 0.103955574, 0.978147626, 0, -0.2079117, 0, 1, 0, 0.20791167, 0, 0.978147626), CFrame.new(-0.489084542, -2, -0.103948936, 0.951056898, 0, 0.309015751, 0, 1, 0, -0.309015781, 0, 0.951056898)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://341336485", Torso, 1, 1)
	for i = 0, 1, 0.075 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.798319101, 0.00281713065, 0.602228224, -0.217913941, 0.933580399, 0.284501493, -0.561426938, -0.358356893, 0.745908916), CFrame.new(-0.10062664, 1.48619628, -0.0330830663, 0.70138973, -0.123902053, -0.70192647, 0.0526067093, 0.99108839, -0.122377619, 0.710834086, 0.0489083081, 0.701657295), CFrame.new(1.72311258, 1.20349014, -0.520435452, -0.119049042, -0.659365535, 0.742337227, 0.941811025, -0.311704516, -0.125826225, 0.314355284, 0.684161842, 0.65810585), CFrame.new(-1.39501405, 0.0134370327, -0.022988677, 0.807563305, -0.0534532368, -0.587353587, 0.249999985, 0.933012664, 0.258819044, 0.534173667, -0.355851173, 0.766830146), CFrame.new(0.414074719, -2.09887695, 0.174701259, 0.390776753, 0.0106123537, -0.920424342, 0.00860714912, 0.99984771, 0.0151823759, 0.920445323, -0.0138551891, 0.390625894), CFrame.new(0.230491385, -1.77879238, -1.016258, 0.798317373, -0.217913941, -0.561429322, 0.00281605567, 0.933580399, -0.358356893, 0.60223043, 0.284501493, 0.745907128)}, 0.3, false)
		GunFakeHandleWeld.C0 = clerp(GunFakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
	end
	CFuncs.Sound.Create("rbxassetid://300916057", Torso, 1, 1)
	shoottraildd(mouse, Barrel, 0)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.860331953, -0.206215858, -0.466158599, 0.136786669, 0.974370122, -0.178584367, 0.491037905, 0.0898775384, 0.86648941), CFrame.new(-0.0403929502, 1.62064302, -0.147934496, 0.921363533, -0.0475236475, 0.385785937, -0.097228229, 0.932769835, 0.347112656, -0.376345545, -0.357326269, 0.854799449), CFrame.new(1.41754472, 0.812812805, -0.639020264, 0.158917621, -0.23488459, 0.958944321, 0.806086361, -0.529952168, -0.263392597, 0.570061445, 0.814849734, 0.105118603), CFrame.new(-1.04759598, 0.0722919106, 0.655961514, 0.947626054, -0.172780007, 0.268610805, 0.0686168745, 0.931533456, 0.357123554, -0.311923683, -0.31998843, 0.894601107), CFrame.new(0.270141065, -2.00641418, 0.458954185, 0.999395132, 0.0331142992, 0.01061818, -0.0347256362, 0.934054732, 0.355437696, 0.00185218453, -0.355591476, 0.934639692), CFrame.new(-0.962579608, -1.91851139, -0.00564438105, 0.860640049, 0.234480798, 0.452014744, -0.204607978, 0.972100854, -0.114697881, -0.466298342, 0.0062277317, 0.884605646)}, 0.3, false)
		Motor2Weld.C0 = clerp(Motor2Weld.C0, CFrame.new(0, 0, 0.25) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		Motor1Weld.C0 = clerp(Motor1Weld.C0, CFrame.new(0, 0, -0.25) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	attack = false
end

	zattack = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.951056004, 0, -0.309018642, 0, 1, 0, 0.309018612, 0, 0.951056004), CFrame.new(-6.1839819e-07, 1.49999988, 3.87430191e-07, 0.694489479, -0.0801652968, -0.7150231, 0.02945593, 0.996108413, -0.0830693394, 0.718899727, 0.036629118, 0.694148183), CFrame.new(1.57117486, 1.39999986, -0.177208886, 0.99333477, 0.0725342929, 0.0895814598, 0.0746374875, -0.997003019, -0.0203518867, 0.0878366828, 0.0269023888, -0.995771527), CFrame.new(-1.34661162, -1.8440187e-07, 0.0695166588, 0.960140646, 0.187698096, -0.207121551, -0.172987029, 0.981060565, 0.0871533006, 0.219557285, -0.047850091, 0.974425495), CFrame.new(0.489068002, -2, 0.103955574, 0.978147626, 0, -0.2079117, 0, 1, 0, 0.20791167, 0, 0.978147626), CFrame.new(-0.489084542, -2, -0.103948936, 0.951056898, 0, 0.309015751, 0, 1, 0, -0.309015781, 0, 0.951056898)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.234164968, 1.82539225e-07, 0.104689181, 0.290813237, 0.10452529, 0.951053202, -0.0297746658, 0.994521916, -0.100198194, -0.956316471, 0.000821668946, 0.292332351), CFrame.new(0.100671381, 1.50903189, -0.0222766213, 0.286001891, 0.139740199, -0.947985053, 0.0177853405, 0.988364816, 0.151058227, 0.95806396, -0.0600631684, 0.280188948), CFrame.new(1.84903467, 0.750154495, -0.0899131894, -0.0842597038, -0.943633735, 0.320086837, 0.99628979, -0.0741322488, 0.0437174588, -0.0175245013, 0.322582871, 0.946379006), CFrame.new(-1.45409751, -0.0564321503, -0.128028572, 0.96453619, 0.158475474, -0.21108143, -0.121452324, 0.976480365, 0.178144559, 0.234348416, -0.146190554, 0.961097836), CFrame.new(0.440873384, -1.98855019, 0.0919830203, 0.932629466, -0.0297746658, -0.359604955, 0.0637048632, 0.994521916, 0.082872808, 0.355167508, -0.100198194, 0.929417253), CFrame.new(-0.491764724, -2.05225515, -0.26318258, 0.987483501, -0.0297746658, 0.154886395, 0.013733766, 0.994521916, 0.103622362, -0.157123253, -0.100198194, 0.98248291)}, 0.3, false)
		GunFakeHandleWeld.C0 = clerp(GunFakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
	end
	CFuncs.Sound.Create("rbxassetid://341336485", Torso, 1, 1)
	Effects.Sphere.Create(BrickColor.new("Bright blue"), Barrel.CFrame, 1, 1, 1, 5, 5, 5, 0.07)
	shoottrailtele(mouse, Barrel, 0)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.234166175, -8.00937414e-08, 0.104689717, 0.705736101, 0.0919046104, 0.702488482, -0.0297746658, 0.994521916, -0.100198194, -0.707848787, 0.0497971326, 0.704606533), CFrame.new(0.144242555, 1.50196576, -0.105358616, 0.690181851, 0.259984046, -0.675320089, 0.00737122679, 0.930657566, 0.36581707, 0.723598361, -0.25745824, 0.640406609), CFrame.new(1.75621951, 0.887098789, -0.699132383, -0.21947521, -0.639567733, 0.736738503, 0.95851624, -0.282127708, 0.0406260937, 0.18187122, 0.715092361, 0.674956143), CFrame.new(-1.34632289, 0.0167848282, 0.566663861, 0.955941856, 0.114183858, 0.270438612, -0.169469833, 0.966889203, 0.190801814, -0.239697665, -0.228226647, 0.94364059), CFrame.new(0.34564358, -2.00806093, -0.0733739287, 0.992287278, -0.0297746658, 0.120330542, 0.0173416436, 0.994521916, 0.10307996, -0.122740597, -0.100198194, 0.987367749), CFrame.new(-0.646650374, -2.02540207, 0.049372375, 0.799181461, -0.0297746658, 0.60035187, -0.0365215503, 0.994521916, 0.0979407281, -0.599979281, -0.100198194, 0.793716073)}, 0.3, false)
		Motor2Weld.C0 = clerp(Motor2Weld.C0, CFrame.new(0, 0, 0.25) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		Motor1Weld.C0 = clerp(Motor1Weld.C0, CFrame.new(0, 0, -0.25) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	attack = false
end

	xattack = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 5, 15, 0, "Freeze", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	coroutine.resume(coroutine.create(function()
		
		for i = 0, 5 do
			swait(3)
			Effects.Block.Create(BrickColor.new("Pastel Blue"), cn(RootPart.Position) * cn(math.random(-10, 10), math.random(-1, 5), math.random(-10, 10)), 1, 1, 1, 0.5, 0.5, 0.5, 0.03)
			Effects.Wave.Create(BrickColor.new("Pastel Blue"), cn(RootPart.Position) * cn(0, -2.5, 0), 10, 1, 10, 1, -0.1, 1, 0.1)
		end
	end
))
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.848049104, 0, 0.529917777, 0, 1, 0, -0.529917777, 0, 0.848049104), CFrame.new(6.85453415e-07, 1.49999976, -3.27825546e-07, 0.931514919, -0.105088711, 0.348190427, 0.00568907708, 0.961440146, 0.274955869, -0.363658935, -0.254144609, 0.896193624), CFrame.new(1.14568281, 0.700000405, 1.08968258, 0.469471604, 0.567549109, 0.676375985, 0, -0.766043186, 0.642789125, 0.882947564, -0.301771253, -0.359635532), CFrame.new(-1.96172011, 0.500000179, -0.464963198, 0.306839257, 0.91577661, -0.259235173, -0.491744965, -0.0806626454, -0.866995096, -0.814884424, 0.393505692, 0.425578088), CFrame.new(0.350054085, -2, 0.323924571, 0.798635602, 0, -0.601814926, 0, 1, 0, 0.601814926, 0, 0.798635542), CFrame.new(-0.448587358, -2, -0.277886599, 0.992546022, 0, -0.121870577, 0, 1, 0, 0.121870577, 0, 0.992546022)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://333475981", Torso, 1, 1.5)
	for i = 0, 1, 0.05 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.848049104, 0, 0.529917777, 0, 1, 0, -0.529917777, 0, 0.848049104), CFrame.new(-1.43796206e-06, 1.50000036, -6.05359674e-07, 0.905415356, -0.0286707059, -0.423557937, 0.040511813, 0.99899894, 0.0189774334, 0.422589839, -0.0343415849, 0.905670404), CFrame.new(1.23739481, 0.699999452, 0.199971437, 0.694658399, 0.462383807, 0.551045299, 7.4505806e-09, -0.766043127, 0.642789125, 0.719339788, -0.446518898, -0.532138348), CFrame.new(-1.70076394, 0.499999791, 0.0564772487, 0.736472249, 0.674394369, -0.0529231429, -0.352676094, 0.449543417, 0.820688903, 0.577259243, -0.585749805, 0.568919122), CFrame.new(0.511024594, -2, 0.0707657784, 0.798635602, 0, -0.601814985, 0, 1, 0, 0.601814985, 0, 0.798635602), CFrame.new(-0.555901587, -2, -0.109115437, 0.992546022, 0, -0.121870577, 0, 1, 0, 0.121870577, 0, 0.992546022)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-40), math.rad(160)), 0.4)
	end
	CFuncs.Sound.Create("rbxassetid://377357848", Torso, 1, 1)
	Effects.Wave.Create(BrickColor.new("Pastel Blue"), RootPart.CFrame * angles(1.47, 0, 0) * cn(0, -4, 0), 1, 3, 1, 0.5, 0.1, 0.5, 0.06)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0229907017, -2.32830644e-08, -0.0729570612, 0.515036583, 0, -0.857168257, 0, 1, 0, 0.857168257, 0, 0.515036583), CFrame.new(0.0506939441, 1.50000036, 0.0572836474, 0.406723797, -0.033835981, 0.912924528, 0.040511813, 0.99899894, 0.0189774334, -0.912652612, 0.0292656794, 0.407687306), CFrame.new(1.23739362, 0.699998796, 0.199969232, 0.694658399, 0.462383807, 0.551045239, 5.96046448e-08, -0.766043127, 0.642789125, 0.719339728, -0.446518838, -0.532138348), CFrame.new(-2.00502682, 0.599999249, -0.490947366, 0.516218841, 0.842589557, 0.153495923, 0.231477186, 0.035291031, -0.972200036, -0.824582636, 0.537398696, -0.176822349), CFrame.new(0.511021912, -2, 0.0707659274, 0.79863584, -4.76079576e-09, -0.601814568, -4.09769996e-10, 1, -8.45452597e-09, 0.601814568, 6.99869629e-09, 0.79863584), CFrame.new(-0.555901349, -2, -0.109117322, 0.992546082, 0, -0.121870548, 0, 1, 0, 0.121870548, 0, 0.992546082)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(90), math.rad(160)), 0.4)
	end
	con:disconnect()
	attack = false
end

	cattack = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.286342978, -0.153719768, -0.945720196, -0.137199044, 0.970295727, -0.199255824, 0.948257864, 0.186806589, 0.256747127), CFrame.new(-0.205797881, 1.45544362, -0.298883975, 0.303403288, -0.252855241, 0.918702841, -0.236152083, 0.914115787, 0.329582334, -0.923137426, -0.316949964, 0.217633545), CFrame.new(1.19837689, 0.742226064, -0.723878801, 0.960290909, -0.0510607362, -0.274296105, 0.0809528753, -0.889829993, 0.449053675, -0.267005891, -0.453427255, -0.850362122), CFrame.new(-0.728451133, 0.282005757, -0.917490423, 0.620055914, -0.180938572, 0.763410866, 0.768504918, -0.0557612479, -0.637409568, 0.157900691, 0.981914639, 0.104477152), CFrame.new(0.663142383, -1.91206813, 0.269736409, 0.9827407, -0.137199044, 0.124102563, 0.108132839, 0.970295727, 0.216410473, -0.150107473, -0.199255824, 0.968384862), CFrame.new(-0.306767106, -2.01749921, 0.424166173, 0.286340714, -0.137199044, 0.948256135, -0.153719738, 0.970295727, 0.186805904, -0.945718527, -0.199255824, 0.256744921)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://320557353", Torso, 1, 1)
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
	do
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
			m.MeshId = "http://www.roblox.com/asset/?id=3270017"
			m.Scale = Vector3.new(0, 0, 0)
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
	m.Scale = Vector3.new(5, 5, 5)
	m.MeshType = "Sphere"
	billpar.BrickColor = BrickColor.new("White")
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
			do
				swait()
				d.Rotation = d.Rotation + 3
				DIR = billpar.CFrame.lookVector
				num = num + 1
				if num == 4 then
					CFuncs.Sound.Create("rbxassetid://324867021", billpar, 1, 1)
					MagniDamage(billpar, 11, 2, 4, math.random(1, 3), "Normal")
					num = 0
					local hitfloor2, posfloor2 = rayCast(billpar.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
					do
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
								m.MeshId = "http://www.roblox.com/asset/?id=20329976"
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
								local p = Instance.new("Part")
								p.TopSurface = 0
								p.BottomSurface = 0
								p.CanCollide = false
								p.Anchored = true
								p.BrickColor = BrickColor.new("Pastel Blue")
								p.formFactor = "Symmetric"
								p.Size = Vector3.new(1, 1, 1)
								p.CFrame = billpar.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
								p.Parent = EffectModel
								m = Instance.new("SpecialMesh")
								m.MeshType = "FileMesh"
								m.MeshId = "http://www.roblox.com/asset/?id=1051557"
								m.Scale = Vector3.new(8, 8, 8)
								m.Parent = p
								m.Name = "Triangle"
								coroutine.resume(coroutine.create(function(p)
			
			for iii = 1, 15 do
				p.Transparency = iii / 20
				p.Triangle.Scale = p.Triangle.Scale + Vector3.new(1.7, 1.7, 1.7)
				p.CFrame = billpar.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(7 * er), 0)
				Effects.Wave.Create(BrickColor.new("Pastel Blue"), billpar.CFrame * cn(0, -2.5, 0) * angles(0, math.random(-30, 30), 0), 10, 1, 10, 1, -0.1, 1, 0.1)
				swait()
			end
			p.Parent = nil
		end
), p)
								billpar.CFrame = billpar.CFrame * CFrame.new(0, 0, -0.8)
							end
							-- DECOMPILER ERROR at PC239: LeaveBlock: unexpected jumping out DO_STMT

							-- DECOMPILER ERROR at PC239: LeaveBlock: unexpected jumping out IF_THEN_STMT

							-- DECOMPILER ERROR at PC239: LeaveBlock: unexpected jumping out IF_STMT

							-- DECOMPILER ERROR at PC239: LeaveBlock: unexpected jumping out DO_STMT

						end
					end
				end
			end
		end
		billpar:Destroy()
	end
))
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.882951379, 0, 0.469473869, 0, 1, 0, -0.469473869, 0, 0.882951379), CFrame.new(0, 1.50000012, 9.68575478e-07, 0.876509428, 0.147262633, -0.458316088, -0.0868240893, 0.98480773, 0.150383711, 0.473499089, -0.0920198411, 0.875979185), CFrame.new(1.11248815, 0.69999969, -0.0314789116, 0.974372327, 0.144595593, 0.172322422, 1.78813934e-07, -0.766045094, 0.642786801, 0.22495088, -0.626313627, -0.746413231), CFrame.new(-1.8350693, 0.699999869, 0.134343088, -0.12066099, 0.981974363, -0.145504594, 0.118263118, -0.131311819, -0.984261692, -0.985626221, -0.135969818, -0.100287125), CFrame.new(0.350283593, -2, -0.152793735, 0.529920578, 0, -0.848049879, 0, 1, 0, 0.848049879, 0, 0.529920578), CFrame.new(-0.650038362, -2, -0.0475728065, 0.981628954, 0, 0.190810859, 0, 1, 0, -0.190810859, 0, 0.981628954)}, 0.3, false)
	end
	attack = false
end

	vattack = function()
	
	attack = true
	local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, "Part", BrickColor.new("Really black"), "Effect", Vector3.new())
	refpart.Anchored = true
	refpart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -10)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.996199131, 0, -0.0871560574, 0, 1, 0, 0.0871560574, 0, 0.996199131), CFrame.new(5.10364771e-07, 1.50000012, 8.04662704e-07, 0.992988706, 0.0733872131, 0.0927163363, -0.0868240893, 0.98480773, 0.150383711, -0.0802716017, -0.157379314, 0.984274745), CFrame.new(1.57078362, 0.69999969, 0.180774868, 0.906311691, 0.271654963, 0.323745728, 0, -0.766044378, 0.642787635, 0.422620088, -0.582565963, -0.694274962), CFrame.new(-1.9251585, 0.899999559, 0.190688074, -0.214483514, 0.976541221, 0.0191925466, -0.963539004, -0.2083278, -0.16790536, -0.159968182, -0.0545056164, 0.985618412), CFrame.new(0.453157574, -2, 0.211310849, 0.906311691, 0, -0.422620088, 0, 1, 0, 0.422620088, 0, 0.906311691), CFrame.new(-0.453157187, -2, -0.211311907, 0.996199012, 0, 0.087155968, 0, 1, 0, -0.087155968, 0, 0.996199012)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
	end
	CFuncs.Sound.Create("rbxassetid://341336485", Torso, 1, 1.5)
	Effects.Sphere.Create(BrickColor.new("Pastel Blue"), RootPart.CFrame * cn(0, 0, 0), 55, 55, 55, 0.5, 0.5, 0.5, 0.07)
	MagniDamage(refpart, 10, 10, 10, 0, "Slashnare")
	refpart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -10)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.493853062, 0.175142929, -0.851729333, 0.101243839, 0.96126169, 0.256370753, 0.863636255, -0.2128409, 0.456989825), CFrame.new(0.0106344819, 1.55214739, 0.0269275606, 0.855711639, 0.0159827918, 0.517210126, -0.0784841403, 0.991967797, 0.0991963744, -0.511470437, -0.125476301, 0.850092888), CFrame.new(1.18367839, 0.601080418, 0.00922176242, 0.992719889, -0.0355973393, 0.115084246, -0.114522129, -0.575210154, 0.809949279, 0.0373655558, -0.81723249, -0.57509923), CFrame.new(-0.669594288, 0.455130339, -0.661963999, 0.0330018848, -0.82281369, -0.567355931, -0.962292671, 0.127197683, -0.240444168, 0.270007133, 0.55389756, -0.787589788), CFrame.new(0.545038044, -2.14796782, 0.0373603404, 0.992534101, 0.00641049445, 0.12181595, -0.00438442081, 0.999847651, -0.0168929249, -0.121905729, 0.0162327141, 0.992411017), CFrame.new(-0.632243574, -1.94515204, -0.258179277, 0.493853033, 0.101243839, 0.863636136, 0.175142899, 0.96126169, -0.212840885, -0.851729155, 0.256370753, 0.456989825)}, 0.4, false)
	end
	CFuncs.Sound.Create("rbxassetid://341336485", Torso, 1, 1.5)
	Effects.Sphere.Create(BrickColor.new("Pastel Blue"), RootPart.CFrame * cn(0, 0, 0), 55, 55, 55, 0.5, 0.5, 0.5, 0.07)
	MagniDamage(refpart, 10, 10, 10, 0, "Slashnare")
	refpart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -10)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.984245896, -0.0870961994, 0.153893113, 0.035208568, 0.949387312, 0.312128961, -0.173289359, -0.301791996, 0.937497139), CFrame.new(-0.120294906, 1.58912659, -0.014295198, 0.970674336, 0.210372791, -0.11635673, -0.204094589, 0.976883054, 0.0635995567, 0.127046525, -0.0379866809, 0.991171241), CFrame.new(1.13720214, 0.720413446, -0.0768604279, 0.999382138, -0.0271360576, 0.0224352777, -0.0333671272, -0.52651149, 0.849512875, -0.0112400651, -0.849736571, -0.527091742), CFrame.new(-1.70520556, 0.561890483, -0.87596792, 0.472133398, 0.54881829, -0.689849854, -0.78100282, -0.102494806, -0.616059482, -0.408810735, 0.829636991, 0.38023746), CFrame.new(0.431500226, -2.10740995, -0.046277076, 0.447118759, 0.230505943, -0.864266157, -0.232097715, 0.963028431, 0.136773288, 0.863839924, 0.139440283, 0.484088033), CFrame.new(-0.453286558, -1.78561223, -0.925271869, 0.984245777, 0.035208568, -0.173289388, -0.0870962068, 0.949387312, -0.301791966, 0.153893113, 0.312128961, 0.93749702)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(180)), 0.4)
	end
	CFuncs.Sound.Create("rbxassetid://341336485", Torso, 1, 1.5)
	Effects.Sphere.Create(BrickColor.new("Pastel Blue"), RootPart.CFrame * cn(0, 0, 0), 55, 55, 55, 0.5, 0.5, 0.5, 0.07)
	MagniDamage(refpart, 10, 10, 10, 0, "Slashnare")
	refpart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -10)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.720209181, -0.336642832, -0.606612563, 0.157250941, 0.930835366, -0.329875976, 0.675706744, 0.142188638, 0.723333597), CFrame.new(0.143742129, 1.44558299, -0.399535358, 0.729822516, 0.00656326162, 0.683608294, -0.293801188, 0.905912161, 0.304965556, -0.617287576, -0.42341572, 0.663083375), CFrame.new(1.36922002, 0.929454923, -0.665464878, 0.962920129, 0.0204561092, 0.269018054, -0.0703686401, -0.943565011, 0.323625267, 0.260456055, -0.330555677, -0.907138348), CFrame.new(-0.271632493, 0.718876362, -1.13242447, 0.100340128, -0.848274469, -0.519967973, -0.99250555, -0.121971786, 0.00745713711, -0.0697470903, 0.515322924, -0.854155719), CFrame.new(0.468339801, -1.99040389, 0.669673026, 0.979659915, 0.135293022, -0.148211002, -0.0250886306, 0.815338314, 0.578440785, 0.199101076, -0.562956989, 0.8021487), CFrame.new(-0.795290351, -1.7514472, 0.741588831, 0.720209122, 0.157250941, 0.675706625, -0.336642772, 0.930835366, 0.142188653, -0.606612444, -0.329875976, 0.723333538)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.2541641, 9.68575478e-08, -0.308870763, 0.934826374, 0.168161094, -0.312771529, -0.056157399, 0.939692616, 0.337378263, 0.350642979, -0.297825664, 0.887892962), CFrame.new(0.0773843452, 1.57795084, 0.0638956279, 0.938455582, -0.0268699713, 0.34435308, 0.0839753896, 0.984804928, -0.152011037, -0.335036099, 0.171572834, 0.92645216), CFrame.new(1.17438579, 0.881305397, -0.184378237, 0.957006454, -0.139904112, -0.254097104, 0.146975964, -0.521335244, 0.840599537, -0.250073105, -0.841805458, -0.478358686), CFrame.new(-1.62349713, 0.152098745, 0.195335254, 0.936976016, 0.328385174, -0.119327694, -0.266250759, 0.892228782, 0.364744186, 0.226244211, -0.309985489, 0.923429728), CFrame.new(0.604769707, -1.88102603, -0.588217199, 0.984855652, 0.0577834994, -0.163463771, -0.0593868643, 0.998222828, -0.00493493676, 0.162888125, 0.0145678222, 0.98653698), CFrame.new(-0.509436548, -2.01247478, -0.407556683, 0.934826255, -0.056157399, 0.35064289, 0.168161064, 0.939692616, -0.297825634, -0.31277144, 0.337378263, 0.887892842)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://333475957", Torso, 1, 1.5)
	Effects.Block.Create(BrickColor.new("Pastel Blue"), RootPart.CFrame * cn(0, 0, 0), 15, 15, 15, 3, 3, 3, 0.07)
	Effects.Wave.Create(BrickColor.new("Baby blue"), RootPart.CFrame * cn(0, -2.5, 0), 7, 5, 7, 0.5, -0.5, 0.5, 0.1)
	RootPart.CFrame = RootPart.CFrame * cn(0, 0, 20)
	Effects.Block.Create(BrickColor.new("Pastel Blue"), RootPart.CFrame * cn(0, 0, 0), 15, 15, 15, 3, 3, 3, 0.07)
	Effects.Wave.Create(BrickColor.new("Baby blue"), RootPart.CFrame * cn(0, -2.5, 0), 7, 5, 7, 0.5, -0.5, 0.5, 0.1)
	for i = 0, 1, 0.05 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.190624386, -6.70552254e-08, 0.231652617, 0.922526181, -0.180769786, -0.340987176, 0.123666212, 0.97539407, -0.182518527, 0.365590692, 0.126209527, 0.922181726), CFrame.new(0.155111641, 1.48432302, -0.18090266, 0.910687566, 0.146905914, 0.386091888, -0.263940483, 0.925900936, 0.270264566, -0.317779481, -0.348031878, 0.881980777), CFrame.new(1.21428108, 0.646305323, -0.654353261, 0.945779085, -0.287793338, -0.15058884, -0.17152518, -0.836229324, 0.520864308, -0.275828153, -0.466792852, -0.840251923), CFrame.new(-1.45927417, 0.569531977, 0.411221355, 0.917194426, 0.390610874, 0.0785975605, -0.299259096, 0.545111299, 0.783133149, 0.263055891, -0.741806388, 0.616866946), CFrame.new(0.456248045, -2.14613438, -0.202194542, 0.985697627, 0.000825591385, -0.168521851, -0.0309134908, 0.983905494, -0.175995171, 0.165664241, 0.178687677, 0.969858825), CFrame.new(-0.555869579, -2.03145552, -0.275106519, 0.922523499, 0.123666212, 0.365591466, -0.180769593, 0.97539407, 0.126208931, -0.34098798, -0.182518527, 0.922179043)}, 0.3, false)
	end
	CFuncs.Sound.Create("rbxassetid://338601305", Torso, 1, 1.5)
	MagniDamage(refpart, 10, 20, 25, 0, "Slashnare")
	Effects.Wave.Create(BrickColor.new("Baby blue"), refpart.CFrame * cn(0, -2.5, 0), 7, 5, 7, 0.5, -0.5, 0.5, 0.05)
	for i = 1, math.random(10, 15) do
		Effects.Sphere.Create(BrickColor.new("Pastel Blue"), refpart.CFrame * cn(math.random(-5, 5), math.random(0, 5), math.random(-5, 5)) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1.5, 15, 1.5, 0, 5, 0, 0.02)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0635406449, 1.97440386e-07, 0.0772181302, 0.349873543, -0.299630225, -0.887589335, 0.149680495, 0.95317775, -0.262769759, 0.924764156, -0.0409186333, 0.378340483), CFrame.new(0.102144919, 1.49711895, -0.219547942, 0.341629833, 0.0387150273, 0.939036846, -0.381519437, 0.918835402, 0.100917995, -0.858913243, -0.392737418, 0.32867223), CFrame.new(1.13105607, 0.69998312, -0.241636515, 0.983805299, -0.0512800962, 0.171748281, -0.117074117, -0.909404993, 0.399094224, 0.135723174, -0.412738293, -0.900681019), CFrame.new(-0.590765715, 0.123251945, -1.03111267, 0.163495839, -0.492946386, -0.854560137, -0.948694468, 0.159073457, -0.273266017, 0.270643324, 0.855394423, -0.441647679), CFrame.new(0.121061504, -1.87384474, 0.882954121, 0.957356393, 0.229788616, -0.175117046, -0.116162069, 0.86113435, 0.49492836, 0.264528215, -0.453480899, 0.851105213), CFrame.new(-0.634005189, -1.96460354, 0.123627201, 0.349871159, 0.149680495, 0.924762607, -0.29962948, 0.95317775, -0.040919058, -0.887587965, -0.262769759, 0.378338099)}, 0.3, false)
	end
	refpart.Parent = nil
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
		zattack()
	else
		if attack == false and k == "x" and co2 <= cooldown2 then
			cooldown2 = 0
			xattack()
		else
			if attack == false and k == "c" and co3 <= cooldown3 then
				cattack()
				cooldown3 = 0
			else
				if attack == false and k == "v" and co4 <= cooldown4 then
					cooldown4 = 0
					vattack()
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
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("Part") then
				v.Material = "SmoothPlastic"
			elseif v:IsA("Hat") then
				v:WaitForChild("Handle").Material = "SmoothPlastic"
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
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(220), math.rad(0), math.rad(0)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
					Motor2Weld.C0 = clerp(Motor2Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					Motor1Weld.C0 = clerp(Motor1Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					GunFakeHandleWeld.C0 = clerp(GunFakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
				end
			else
				if RootPart.Velocity.y < -1 and hit == nil then
					Anim = "Fall"
					if attack == false then
						RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
						Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10), math.rad(30), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(220), math.rad(0), math.rad(0)), 0.3)
						LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
						Motor2Weld.C0 = clerp(Motor2Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						Motor1Weld.C0 = clerp(Motor1Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						GunFakeHandleWeld.C0 = clerp(GunFakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
					end
				else
					if Torsovelocity < 1 and hit ~= nil then
						Anim = "Idle"
						if attack == false then
							change = 1
							RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
							Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
							RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(220), math.rad(0), math.rad(0)), 0.3)
							LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
							RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
							Motor2Weld.C0 = clerp(Motor2Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							Motor1Weld.C0 = clerp(Motor1Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							GunFakeHandleWeld.C0 = clerp(GunFakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
						end
					else
						if 2 < Torsovelocity and hit ~= nil then
							Anim = "Walk"
							if attack == false then
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.7, -0.5) * angles(math.rad(220), math.rad(0), math.rad(0)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-10)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0 + 1 * math.cos((sine) / 3)) * angles(math.rad(0 - 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0 - 1 * math.cos((sine) / 3)) * angles(math.rad(0 + 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.3)
								Motor2Weld.C0 = clerp(Motor2Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								Motor1Weld.C0 = clerp(Motor1Weld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								GunFakeHandleWeld.C0 = clerp(GunFakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(45)), 0.3)
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
