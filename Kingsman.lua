local Player = game.Players.LocalPlayer
local Character = Player.Character
	wait(0.016666666666667)
	Effects = {}
	local Player = game.Players.localPlayer
	local Character = Player.Character
	local Humanoid = Character.Humanoid
	local mouse = Player:GetMouse()
	local m = Instance.new("Model", Character)
	m.Name = "WeaponModel"
	local effect = Instance.new("Model", Character)
	effect.Name = "Effect"
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
	local mana = 0
	local it = Instance.new
	vt = Vector3.new
	local grabbed = false
	local cf = CFrame.new
	local mr = math.rad
	local angles = CFrame.Angles
	local ud = UDim2.new
	local c3 = Color3.new
	local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	Humanoid.Animator:Destroy()
	Character.Animate:Destroy()
	local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
	local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
	local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
	RSH = nil
	RW = Instance.new("Weld")
	LW = Instance.new("Weld")
	RH = Torso["Right Hip"]
	LH = Torso["Left Hip"]
	RSH = Torso["Right Shoulder"]
	LSH = Torso["Left Shoulder"]
	RSH.Parent = nil
	LSH.Parent = nil
	RW.Name = "RW"
	RW.Part0 = Torso
	RW.C0 = cf(1.5, 0.5, 0)
	RW.C1 = cf(0, 0.5, 0)
	RW.Part1 = RightArm
	RW.Parent = Torso
	LW.Name = "LW"
	LW.Part0 = Torso
	LW.C0 = cf(-1.5, 0.5, 0)
	LW.C1 = cf(0, 0.5, 0)
	LW.Part1 = LeftArm
	LW.Parent = Torso
	clerp = function(a, b, t)
	
	return a:lerp(b, t)
end

	local RbxUtility = LoadLibrary("RbxUtility")
	local Create = RbxUtility.Create
	RemoveOutlines = function(part)
	
	part.TopSurface = 10
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

	local co1 = 25
	local co2 = 8
	local co3 = 15
	local co4 = 30
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local maxEnergy = 100
	local Energy = 0
	local skill1stam = 10
	local skill2stam = 50
	local skill3stam = 60
	local skill4stam = 100
	local recovermana = 5
	local skillcolorscheme = BrickColor.new("Smokey grey").Color
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
	label.Font = Enum.Font.SourceSansBold
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
	text1.Text = "[Z]\n\tAim"
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
	text2.Text = "[X]\n Explosive Shot"
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
	text3.Text = "[C]\n Shockwave"
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
	text4.Text = "[V]\n Rampage"
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

	CreateWeld = function(Parent, Part0, Part1, C0, C1)
	
	local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
	return Weld
end

	rayCast = function(Position, Direction, Range, Ignore)
	
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
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

	local getclosest = function(obj, distance)
	
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

	Handle = CreatePart(m, Enum.Material.Plastic, 0, 1, "Black", "FakeHandle", Vector3.new(0.210000008, 0.690000117, 0.280000001))
	HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.09519327, -0.237398148, 0.0399169922, 0, -1, 0, 0, 0, -1, 1, 0, 0))
	FakeHandle = CreatePart(m, Enum.Material.Plastic, 0, 1, "Black", "FakeHandle", Vector3.new(0.210000008, 0.690000117, 0.280000001))
	FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.73999995, 0.270000041, 0.369999975))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.085001111, 1.52000237, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Torso, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Smoky grey", "Part", Vector3.new(0.73999995, 0.280000031, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.085001111, 1.52000237, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Torso, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.210000008, 2.1500001, 0.280000001))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.479999542, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.24000013, 0.200000003))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.085001111, 0.934999466, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.25000012, 0.280000001))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.155000687, 0.930000305, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.780000091, 0.280000001))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.500024796, -0.00252342224, 0, 0.939692736, 0.342019916, 0, -0.342019886, 0.939692736, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.680000067, 0.280000001))
	PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.395633698, -0.0501976013, 0, 0.573575675, -0.819152594, 0, 0.819152594, 0.573575675, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Motor = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Motor", Vector3.new(0.50999999, 0.430000126, 0.460000008))
	MotorWeld = CreateWeld(m, FakeHandle, Motor, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.565002441, 0, -0.155000687, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CreateMesh("CylinderMesh", Motor, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Barrel = CreatePart(m, Enum.Material.Plastic, 0, 0.19999998807907, "Really black", "Barrel", Vector3.new(0.200000003, 0.290000021, 0.420000017))
	BarrelWeld = CreateWeld(m, Motor, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.10501862, -0.0033416748, 0.0717830658, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Barrel, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Hitbox = CreatePart(m, Enum.Material.Plastic, 0, 1, "Black", "Hitbox", Vector3.new(8.09000015, 0.200000003, 0.579999983))
	HitboxWeld = CreateWeld(m, Motor, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.09000206, 0, -0.0749988556, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Lily white", "Part", Vector3.new(0.50999999, 0.400000125, 0.5))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(1.47000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.385002136, 0.309951782, -0.324119568, 1, 0, 0, 0, 0.707106352, -0.707107365, 0, 0.707107365, 0.707106352))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0.5, "Really black", "Part", Vector3.new(0.200000003, 0.290000021, 0.420000017))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.08501816, -0.0033416748, 0.0717830658, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.549999952, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.645000458, 0.119994998, -0.160003662, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000012, 0.400000006))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.350000113, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0.274999738, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.350000113, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.220003128, 0, 0.224998474, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.87000275, -0.179977417, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.87000275, -0.179977417, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.06999969, -0.179977417, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.06999969, -0.179977417, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.27000046, -0.179977417, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.27000046, -0.179977417, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.67000198, -0.179977417, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.67000198, -0.179977417, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.47000122, -0.179977417, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.47000122, -0.179977417, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51999855, 0.15864563, -0.128311157, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.289999992))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.05500031, 0, 0.25, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0.5, "Really black", "Part", Vector3.new(0.200000003, 0.290000021, 0.420000017))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.04501724, -0.0033416748, 0.0717830658, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399995804, 0.159515381, -0.32478714, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.649995804, 0.159515381, -0.32478714, 1, 0, 0, 0, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.07000351, -0.179977417, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(8.38999939, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.02000046, 0.0999945402, -0.160003662, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.400000006, 0.420000017))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(8.11502075, -0.472320557, 0.0145721436, -1, 0, 0, 0, 0.087155968, 0.996194661, 0, 0.996194661, -0.087155968))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(1.3900001, 0.400000006, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.52001953, -0.457969666, 0.134735107, -1, 0, 0, 0, 0.173647985, 0.984807849, 0, 0.984807849, -0.173647985))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(7.01000023, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.33000374, -0.0100097656, -0.410409927, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.400000006, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.430000007, 0.430000007))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.90501785, -0.469436646, -0.0100708008, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.400000006))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(1.41000009, 0.400000006, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.5100174, -0.447546005, 0.193862915, -1, 0, 0, 0, 0.173647985, 0.984807849, 0, 0.984807849, -0.173647985))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(1.41000009, 0.400000006, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.5100174, -0.455595016, -0.148193359, -1, 0, 0, 0, -0.173647985, 0.984807849, 0, 0.984807849, 0.173647985))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(0.200000003, 0.290000021, 0.420000017))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.11502075, -0.0033416748, 0.291788101, 1, 0, 0, 0, -1, 0, 0, 0, -1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(8.17000008, 0.370000094, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.13000107, 0, 0.164999008, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.699999988))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.1700058, 0, 0.204998016, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.610000014, 0.390000105, 0.620000005))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(8.02000046, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.05500221, 0, 0.204999924, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(1.42000008, 0.360000104, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.50500107, -0.00500488281, -0.235006332, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.400000006))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(1.41000009, 0.400000006, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.5100174, -0.445177078, -0.207275391, -1, 0, 0, 0, -0.173647985, 0.984807849, 0, 0.984807849, 0.173647985))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(1.42000008, 0.330000043, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.50500107, -0.135002136, -0.160003662, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(7, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.32500458, 0.295806885, -0.30997467, 1, 0, 0, 0, 0.707106352, -0.707107365, 0, 0.707107365, 0.707106352))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.5, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(1.41000021, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.51000595, 0.465515137, -0.479682922, 1, 0, 0, 0, 0.707106352, -0.707107365, 0, 0.707107365, 0.707106352))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.800000012, 0.800000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Black", "Part", Vector3.new(0.230000004, 0.540000141, 0.280000001))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.181612015, 0.194005966, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(1.42000008, 0.330000043, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.50500107, -0.135002136, 0.150024414, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.07000351, -0.179977417, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(7.01999998, 0.469999999, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.3350029, -0.166389465, -0.153320313, -1, 0, 0, 0, -0.258818984, 0.965925872, 0, 0.965925872, 0.258818984))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.67000198, 0.170028687, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.47000122, 0.170028687, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.27000046, 0.170028687, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.47000122, 0.170028687, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.27000046, 0.170028687, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.06999969, 0.170028687, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.06999969, 0.170028687, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.86999893, 0.170028687, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.86999893, 0.170028687, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.07000351, 0.170028687, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-8.07000351, 0.170028687, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.87000275, 0.170028687, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.87000275, 0.170028687, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.67000198, 0.170028687, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(8.38999939, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.02000427, 0.0999907255, -0.149932861, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0.20000000298023, 0, "Fossil", "Part", Vector3.new(7, 0.469999999, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.32500458, -0.168994904, -0.143600464, 1, 0, 0, 0, 0.258818984, 0.965925872, 0, -0.965925872, 0.258818984))
	CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.300000012))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.86999893, -0.179977417, -0.165000916, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
	Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
	PartWeld = CreateWeld(m, Motor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.86999893, -0.179977417, 0.134994507, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.200000003, 0.5))
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
			HitHealth = h.Health
			h.Health = h.Health - Damage
			if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Hologram" then
				print("gained spree")
				game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
			end
			if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 then
				print("gained kill")
				Player.PlayerGui.Kills.Value = Player.PlayerGui.Kills.Value + 1
			end
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
							local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
						elseif Type == "DarkUp" then
									coroutine.resume(coroutine.create(function()
		
		for i = 0, 1, 0.1 do
			swait()
			BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
		end
	end
))
									local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
									game:GetService("Debris"):AddItem(bodyVelocity, 1)
								elseif Type == "Snare" then
											local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
											game:GetService("Debris"):AddItem(bp, 0.5)
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
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
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

	BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	
	local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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

	SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

	RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.new(x1, y1, z1)
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

	CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

	WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

	SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

	BreakEffect = function(brickcolor, cframe, x1, y1, z1)
	
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

	CloudEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://1095708", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

	Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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
	local speed = 15
	local num = 20
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
			if Type == "Explosive" then
				Laser(BrickColor.new("Bright red"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
			else
				if Type == "Poison" then
					Laser(BrickColor.new("Bright violet"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
					SphereEffect(BrickColor.new("Bright violet"), CFrame.new((MainPos + pos) / 2, pos), 1, 1, 1, 2, 2, 2, 0.07)
				else
					if Type == "Stun" then
						Laser(BrickColor.new("White"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
					end
				end
			end
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			do
				if num <= 0 then
					local refpart = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						if Type == "Explosive" then
							CreateSound("http://www.roblox.com/asset/?id=514867425", refpart, 1, 1)
							BlockEffect(BrickColor.new("Br. yellowish orange"), refpart.CFrame, 1, 1, 1, 10, 10, 10, 0.05)
							BlockEffect(BrickColor.new("Bright red"), refpart.CFrame, 1, 1, 1, 10, 10, 10, 0.07)
							MagniDamage(refpart, 15, 10 * multiply, 10 * multiply, 0, "Normal")
						else
							if Type == "Poison" then
								if hit.Name == "Head" then
									SphereEffect(BrickColor.new("Bright violet"), refpart.CFrame, 1, 1, 1, 1, 1, 1, 0.07)
									MagniDamage(refpart, 5, 18 * multiply, 20 * multiply, 0, "Curse")
								else
									SphereEffect(BrickColor.new("Bright violet"), refpart.CFrame, 1, 1, 1, 1, 1, 1, 0.07)
									MagniDamage(refpart, 5, 3 * multiply, 3 * multiply, 0, "Curse")
								end
							else
								if Type == "Stun" then
									BlockEffect(BrickColor.new("White"), refpart.CFrame, 1, 1, 1, 1, 1, 1, 0.07)
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

	shoottrail = function(mouse, partt, SpreadAmount, multiply)
	
	local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
	local MainPos = partt.Position
	local MainPos2 = mouse.Hit.p + SpreadVectors
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	local speed = 100
	local num = 20
	CreateSound("http://www.roblox.com/asset/?id=274538143", partt, 1, 1)
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
			Laser(BrickColor.new("Bright yellow"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.5, 0, -0.5, 0.15)
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			do
				if num <= 0 then
					local refpart = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						MagniDamage(refpart, 5, 5 * multiply, 15 * multiply, 0, "Normal")
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
		
		Damagefunc(Hitbox, hit, 10, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(-40)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(80)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	con:disconnect()
	attack = false
end

	attacktwo = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-180), math.rad(0), math.rad(0)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 0.8)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-10), math.rad(-80)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-180), math.rad(0), math.rad(0)), 0.3)
	end
	con:disconnect()
	attack = false
end

	attackthree = function()
	
	attack = true
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		MotorWeld.C0 = clerp(MotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(10), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
	end
	MagniDamage(Barrel, 8, 8, 15, 0, "Normal")
	shoottrail(mouse, Barrel, 0, 0.7)
	BlockEffect(BrickColor.new("Br. yellowish orange"), Barrel.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
	BlockEffect(BrickColor.new("Really red"), Barrel.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(-20), math.rad(-90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
	end
	attack = false
end

	yatata = function()
	
	attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-180), math.rad(0), math.rad(0)), 0.3)
	end
	for i = 1, 5 do
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		for i = 0, 1, 0.2 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(80)), 0.3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-180), math.rad(0), math.rad(0)), 0.3)
		end
		CreateSound("http://www.roblox.com/asset/?id=440145223", RootPart, 1, 0.7)
		CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 1)
		MagniDamage(Barrel, 8, 8, 15, 0, "Normal")
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		BlockEffect(BrickColor.new("Br. yellowish orange"), Barrel.CFrame, 5, 5, 5, 3, 3, 3, 0.07)
		BlockEffect(BrickColor.new("Really red"), Barrel.CFrame, 5, 5, 5, 3, 3, 3, 0.07)
		for i = 0, 1, 0.2 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-10), math.rad(-80)), 0.3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-180), math.rad(0), math.rad(0)), 0.3)
		end
		CreateSound("http://www.roblox.com/asset/?id=440145223", RootPart, 1, 0.7)
		MagniDamage(Barrel, 8, 8, 15, 0, "Normal")
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		BlockEffect(BrickColor.new("Br. yellowish orange"), Barrel.CFrame, 5, 5, 5, 3, 3, 3, 0.07)
		BlockEffect(BrickColor.new("Really red"), Barrel.CFrame, 5, 5, 5, 3, 3, 3, 0.07)
		for i = 0, 1, 0.2 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(-10), math.rad(-80)), 0.3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		end
		CreateSound("http://www.roblox.com/asset/?id=440145223", RootPart, 1, 0.7)
		CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 0.9)
		MagniDamage(Barrel, 8, 8, 15, 0, "Normal")
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		BlockEffect(BrickColor.new("Br. yellowish orange"), Barrel.CFrame, 5, 5, 5, 3, 3, 3, 0.07)
		BlockEffect(BrickColor.new("Really red"), Barrel.CFrame, 5, 5, 5, 3, 3, 3, 0.07)
		for i = 0, 1, 0.2 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(80)), 0.3)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		end
		CreateSound("http://www.roblox.com/asset/?id=440145223", RootPart, 1, 0.7)
		MagniDamage(Barrel, 8, 8, 15, 0, "Normal")
		Torso.Velocity = RootPart.CFrame.lookVector * 30
		BlockEffect(BrickColor.new("Br. yellowish orange"), Barrel.CFrame, 5, 5, 5, 3, 3, 3, 0.07)
		BlockEffect(BrickColor.new("Really red"), Barrel.CFrame, 5, 5, 5, 3, 3, 3, 0.07)
	end
	con:disconnect()
	attack = false
end

	Grenade = function()
	
	attack = true
	Humanoid.AutoRotate = false
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 1.3)
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		MotorWeld.C0 = clerp(MotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 1.1)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(10), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=134626404", Barrel, 1, 1.6)
	shoottraildd(mouse, Barrel, 0, 1, "Explosive")
	BlockEffect(BrickColor.new("Br. yellowish orange"), Barrel.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
	BlockEffect(BrickColor.new("Really red"), Barrel.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(-20), math.rad(-90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
	end
	Humanoid.AutoRotate = true
	attack = false
end

	Quake = function()
	
	attack = true
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 1.3)
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		MotorWeld.C0 = clerp(MotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 1.1)
	for i = 0, 1, 0.05 do
		swait()
		BlockEffect(BrickColor.new("Really red"), Barrel.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(20), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(20), math.rad(-90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(90), math.rad(40), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=134626404", RootPart, 1, 1)
	MagniDamage(Barrel, 15, 10, 15, 0, "Knockdown")
	BlockEffect(BrickColor.new("Br. yellowish orange"), Barrel.CFrame, 5, 5, 5, 5, 5, 5, 0.07)
	BlockEffect(BrickColor.new("Really red"), Barrel.CFrame, 5, 5, 5, 5, 5, 5, 0.03)
	RingEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, -2, -10) * angles(1.57, 0, 0), 3, 3, 1, 5, 5, 0, 0.07)
	CloudEffect(BrickColor.new("Smokey grey"), RootPart.CFrame * cf(0, -2, -10), 1, 3, 1, 0.3, 1, 0.3, 0.01)
	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * -20
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(10), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(-20), math.rad(-90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos(sine / 25), 0) * angles(math.rad(90), math.rad(40), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
	end
	attack = false
end

	local aiming = false
	Aim = function()
	
	attack = true
	aiming = true
	Humanoid.JumpPower = 0
	Humanoid.WalkSpeed = 5
	Humanoid.AutoRotate = false
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 1.1)
	for i = 0, 1, 0.2 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		MotorWeld.C0 = clerp(MotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CreateSound("http://www.roblox.com/asset/?id=169285411", RootPart, 1, 1.3)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(10), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
	end
end

	local bang = false
	shoot = function()
	
	bang = true
	shoottrail(mouse, Barrel, 0, 1.5)
	BlockEffect(BrickColor.new("Br. yellowish orange"), Barrel.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
	BlockEffect(BrickColor.new("Really red"), Barrel.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(-20), math.rad(-90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos(sine / 20)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(10), math.rad(90)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos(sine / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos(sine / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
	end
	bang = false
end

	mouse.Button1Down:connect(function()
	
	if attack == false and attacktype == 1 and aiming == false then
		attacktype = 2
		attackone()
	else
		if attack == false and attacktype == 2 and aiming == false then
			attacktype = 3
			attacktwo()
		else
			if attack == false and attacktype == 3 and aiming == false then
				attacktype = 1
				attackthree()
			end
		end
	end
	if attack == true and aiming == true and bang == false then
		if cooldown1 >= 0 then
			cooldown1 = cooldown1 - 2
			shoot()
		else
			Humanoid.JumpPower = 50
			Humanoid.WalkSpeed = 16
			Humanoid.AutoRotate = true
			attack = false
			aiming = false
		end
	end
end
)
	mouse.KeyDown:connect(function(k)
	
	k = k:lower()
	if attack == false and k == "z" and aiming == false then
		Aim()
	else
		if attack == true and k == "z" and aiming == true then
			Humanoid.WalkSpeed = 16
			Humanoid.JumpPower = 50
			Humanoid.AutoRotate = true
			attack = false
			aiming = false
		else
			if attack == false and co2 <= cooldown2 and k == "x" then
				cooldown2 = 0
				Grenade()
			else
				if attack == false and co3 <= cooldown3 and k == "c" then
					cooldown3 = 0
					Quake()
				else
					if attack == false and co4 <= cooldown4 and k == "v" then
						cooldown4 = 0
						yatata()
					end
				end
			end
		end
	end
end
)
	updateskills = function()
	
	if cooldown1 <= co1 and aiming == false then
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

	while true do
		swait()
		if aiming == true then
			local aim = CFrame.new(RootPart.Position, mouse.Hit.p)
			local direction = aim.lookVector
			local headingA = math.atan2(direction.x, direction.z)
			headingA = math.deg(headingA)
			Humanoid.AutoRotate = false
			RootPart.CFrame = CFrame.new(RootPart.Position) * angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
		else
			do
				Humanoid.AutoRotate = true
				updateskills()
				bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
				bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
				bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
				bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
				Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
				velocity = RootPart.Velocity.y
				sine = sine + change
				local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
				if equipped == true or equipped == false then
					if 1 < RootPart.Velocity.y and hit == nil then
						Anim = "Jump"
						if attack == false then
							RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos((sine) / 20)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
							RW.C0 = clerp(RW.C0, CFrame.new(1.6, 0.5, -0.4) * angles(math.rad(240), math.rad(0), math.rad(-30 + 5 * math.cos((sine) / 15))), 0.3)
							LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos((sine) / 25), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos((sine) / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos((sine) / 20), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
							MotorWeld.C0 = clerp(MotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.3, -0.2) * angles(math.rad(0), math.rad(50), math.rad(-60 - 0.5 * math.cos((sine) / 25))), 0.3)
						end
					else
						if RootPart.Velocity.y < -1 and hit == nil then
							Anim = "Fall"
							if attack == false then
								RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos((sine) / 20)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.6, 0.5, -0.4) * angles(math.rad(240), math.rad(0), math.rad(-30 + 5 * math.cos((sine) / 15))), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos((sine) / 25), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos((sine) / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos((sine) / 20), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
								MotorWeld.C0 = clerp(MotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.3, -0.2) * angles(math.rad(0), math.rad(50), math.rad(-60 - 0.5 * math.cos((sine) / 25))), 0.3)
							end
						else
							if Torsovelocity < 1 and hit ~= nil then
								Anim = "Idle"
								if attack == false then
									change = 1
									RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos((sine) / 20)) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
									Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(40)), 0.3)
									RW.C0 = clerp(RW.C0, CFrame.new(1.6, 0.5, -0.4) * angles(math.rad(240), math.rad(0), math.rad(-30 + 5 * math.cos((sine) / 15))), 0.3)
									LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos((sine) / 25), 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
									RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos((sine) / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
									LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos((sine) / 20), 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
									FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.3, -0.2) * angles(math.rad(0), math.rad(50), math.rad(-60 - 0.5 * math.cos((sine) / 25))), 0.3)
									MotorWeld.C0 = clerp(MotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
								end
							else
								if 2 < Torsovelocity and hit ~= nil then
									Anim = "Walk"
									if attack == false then
										RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0 - 0.15 * math.cos((sine) / 20)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
										Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
										RW.C0 = clerp(RW.C0, CFrame.new(1.6, 0.5, -0.4) * angles(math.rad(240), math.rad(0), math.rad(-30 + 5 * math.cos((sine) / 15))), 0.3)
										LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 - 0.1 * math.cos((sine) / 25), 0) * angles(math.rad(0 - 10 * math.cos((sine) / 10)), math.rad(0), math.rad(0)), 0.3)
										RH.C0 = clerp(RH.C0, cf(1, -1 + 0.15 * math.cos((sine) / 20), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0 - 50 * math.cos((sine) / 3))), 0.3)
										LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.15 * math.cos((sine) / 20), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0 - 50 * math.cos((sine) / 3))), 0.3)
										MotorWeld.C0 = clerp(MotorWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
										FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.3, -0.2) * angles(math.rad(0), math.rad(50), math.rad(-60 - 0.5 * math.cos((sine) / 25))), 0.3)
									end
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
		--end
	--end
