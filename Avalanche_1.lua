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

	local co1 = 15
	local co2 = 20
	local co3 = 3
	local co4 = 30
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local skillcolorscheme = BrickColor.new("Bright blue").Color
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
	framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.5, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
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
	text1.Text = "[Z]\n Ion Strike"
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
	text2.Text = "[X]\n Ice Grenade"
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
	text3.Text = "[C]\n N/A"
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
	text4.Text = "[F]\n Aim"
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

	local Freeze = false
	Damage = function(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	
	for i,v in pairs(hit:GetChildren()) do
		do
			if v:IsA("Humanoid") and hit.Name ~= Character.Name then
				local find = v:FindFirstChild("DebounceHit")
				if not find then
					if v.Parent:findFirstChild("Head") then
						local BillG = Create("BillboardGui")({Parent = v.Parent.Head, Size = UDim2.new(1, 0, 1, 0), Adornee = v.Parent.Head, StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3))})
						do
							local TL = Create("TextLabel")({Parent = BillG, Size = UDim2.new(3, 3, 3, 3), BackgroundTransparency = 1, Text = tostring(damage) .. "-", TextColor3 = Color1.Color, TextStrokeColor3 = Color2.Color, TextStrokeTransparency = 0, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, FontSize = Enum.FontSize.Size18, Font = "ArialBold"})
							coroutine.resume(coroutine.create(function()
		
		swait(1)
		for i = 0, 1, 0.1 do
			swait(0.1)
			BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, 0.1, 0)
		end
		BillG:Destroy()
	end
))
						end
					end
					do
						if Freeze == false then
							v.Health = v.Health - damage
						else
							if Freeze == true then
								v.Health = v.Health - damage
								v.Parent.Torso.Anchored = true
								CFuncs.Sound.Create("http://www.roblox.com/asset/?id=338594574", v.Parent.Torso, 1, 1)
								for i = 1, 6 do
									Effects.Freeze.Create(BrickColor.new("Toothpaste"), v.Parent.Torso.CFrame, 0.5, 0.5, 0.5, 0.1, 0.3, 0.1)
									Effects.Break.Create(BrickColor.new("Toothpaste"), v.Parent.Torso.CFrame, 0.5, math.random(5, 15), 0.5)
								end
								for i = 1, 10 do
									local freezepart = CFuncs.Part.Create(v.Parent, "Neon", 0.5, 0.85, BrickColor.new("Toothpaste"), "Ice Part", Vector3.new(math.random(2, 3) + math.random(), math.random(2, 3) + math.random(), math.random(2, 3) + math.random()))
									freezepart.Anchored = true
									freezepart.CFrame = v.Parent.Torso.CFrame * CFrame.new(math.random(-1, 0) + math.random(), -2.5, math.random(-1, 0) + math.random()) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
									coroutine.resume(coroutine.create(function(Part)
		
		swait(80)
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=338594737", v.Parent.Torso, 1, 1)
		v.Parent.Torso.Anchored = false
		Part.Anchored = false
		Part.Velocity = Vector3.new(math.random(-20, 20), math.random(20, 30), math.random(-20, 20))
		game:GetService("Debris"):AddItem(Part, 5)
	end
), freezepart)
								end
							end
						end
						do
							local bool = Create("BoolValue")({Parent = v, Name = "DebounceHit"})
							if HSound ~= nil and HPitch ~= nil then
								CFuncs.Sound.Create(HSound, v.Parent.Torso, 1, HPitch)
							end
							game:GetService("Debris"):AddItem(bool, cooldown)
						end
						do
							-- DECOMPILER ERROR at PC310: LeaveBlock: unexpected jumping out DO_STMT

							-- DECOMPILER ERROR at PC310: LeaveBlock: unexpected jumping out IF_THEN_STMT

							-- DECOMPILER ERROR at PC310: LeaveBlock: unexpected jumping out IF_STMT

							-- DECOMPILER ERROR at PC310: LeaveBlock: unexpected jumping out IF_THEN_STMT

							-- DECOMPILER ERROR at PC310: LeaveBlock: unexpected jumping out IF_STMT

							-- DECOMPILER ERROR at PC310: LeaveBlock: unexpected jumping out DO_STMT

						end
					end
				end
			end
		end
	end
end

	MagnitudeDamage = function(Part, magni, mindam, maxdam, Color1, Color2, HSound, HPitch)
	
	for _,c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then
					Damage(head.Parent, math.random(mindam, maxdam), 0, Color1, Color2, HSound, HPitch)
				end
			end
		end
	end
end

	Handle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Navy blue", "Handle", Vector3.new(0.721709907, 0.220000014, 0.288684011))
	HandleWeld = CFuncs.Weld.Create(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0303153992, 0.949148595, -0.0313568115, -1.3939877e-11, -3.50077062e-05, 1, 4.4349184e-11, 1, 3.50077062e-05, -1, 4.43495414e-11, -1.3937837e-11))
	FakeHandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Navy blue", "FakeHandle", Vector3.new(0.721709907, 0.220000014, 0.288684011))
	FakeHandleWeld = CFuncs.Weld.Create(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	Barrel = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Barrel", Vector3.new(0.200000003, 0.977367997, 0.833026052))
	BarrelWeld = CFuncs.Weld.Create(m, FakeHandle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.70572281, 1.37112498, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	Hitbox = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Hitbox", Vector3.new(2.30000019, 1.977368, 1.0330261))
	HitboxWeld = CFuncs.Weld.Create(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.35572243, 1.37112427, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.721709907, 0.220000014, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.29910278, 0.577258348, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.433025986, 0.220000014, 0.5773682))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.58778954, 0.72158885, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.721710145, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.58765984, 1.58784962, 0, 1, 8.60077052e-05, -1.38771633e-11, -8.60077052e-05, 1, 4.43269831e-11, 1.38819633e-11, -4.43260498e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.220000014, 0.433025986, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.01042366, 0.865940809, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.577368021, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.2989769, 1.51567078, 0, 1, 8.60077052e-05, -1.38771633e-11, -8.60077052e-05, 1, 4.43269831e-11, 1.38819633e-11, -4.43260498e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.288683981, 0.577367961, 1.15473604))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.515625, 0.938107252, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.220000014, 0.433025986, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.866085052, 1.58766735, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.220000014, 0.88048619, 0.288683981))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.0103662, -4.76837158e-05, -2.52595329, 3.52576644e-05, -1, -3.52554998e-05, 2.50002974e-09, -3.52554998e-05, 1, -1, -3.52576644e-05, 1.25700195e-09))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.433025986, 0.59180212, 0.433025986))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.29905081, -4.57763672e-05, -1.29907036, 3.52576644e-05, -1, -3.52554998e-05, 2.50002974e-09, -3.52554998e-05, 1, -1, -3.52576644e-05, 1.25700195e-09))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.433025926, 0.866051972, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.288663864, 0.938218772, 0, 0.999990821, 3.94598246e-05, -6.4558428e-12, -3.94599338e-05, 1, 2.1612984e-11, 1.65765925e-12, -2.16222491e-11, 0.999990821))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.220000014, 0.866051853, 1.15473604))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.87646866, 1.22678411, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.220000014, 1.15473592, 1.15473604))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.7321434, 1.22678125, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.220000014, 0.88048619, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.29905272, -5.91278076e-05, -2.95897865, 3.52576644e-05, -1, -3.52554998e-05, 2.50002974e-09, -3.52554998e-05, 1, -1, -3.52576644e-05, 1.25700195e-09))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(1.01039398, 0.220000014, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.30936432, 1.73212481, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.220000014, 0.288684011))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.433008194, -1.51395798e-05, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.288684011, 1.0103941, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.08260155, 1.58766258, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(1.0103941, 0.220000014, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.29912567, 1.73207355, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(1.0103941, 0.220000014, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.58769798, 0.433049262, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.220000014, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.721681595, 1.38282776e-05, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(1.15473592, 0.866051972, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.23731804, 1.22687554, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.220000014, 0.220000014, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.17549133, 0.865965366, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.288684011, 0.433025986, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.08258629, 0.721663713, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(2.02078772, 0.866051972, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.80421257, 1.22693038, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.288683981, 0.288683981, 1.15473604))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.22693253, 0.793777108, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.866052091, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.44331741, 1.51567817, 0, 1, 8.60077052e-05, -1.38771633e-11, -8.60077052e-05, 1, 4.43269831e-11, 1.38819633e-11, -4.43260498e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.220000014, 0.433025986, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.577432632, 1.15470457, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.220000014, 0.220000014, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.29909897, 2.02067709, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.288683951, 0.220000014, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.6598568, 1.73208642, 0, 1, -6.19830826e-06, 6.29358198e-12, 6.19830826e-06, 1, 4.54044652e-13, -6.29259318e-12, -4.54265559e-13, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.288683981, 0.220000014, 0.88048619))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.22681999, 1.44344759, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(1.44341958, 0.288684011, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.80421638, 0.649561226, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.288684011, 0.288683981, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.95899582, 0.793791771, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.866051853, 0.433025986, 0.59180212))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.360992432, 1.29902101, -1.33514404e-05, 0.999990821, 6.66356864e-05, -2.3743129e-11, -6.66355481e-05, 1, 1.93350717e-11, 1.89453696e-11, -1.93429873e-11, 0.999990821))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.433025986, 0.220000014, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.144330978, 1.876459, 0, 1, 2.24691612e-05, -4.596332e-13, -2.24691612e-05, 1, 8.00964919e-11, 4.62429574e-13, -8.00967348e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.288683981, 1.29907799, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.649446487, 1.15478182, 0, 1, 8.60077052e-05, -1.38771633e-11, -8.60077052e-05, 1, 4.43269831e-11, 1.38819633e-11, -4.43260498e-11, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.866051853, 1.29907799, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.360815048, 1.15469754, 0, 1, 7.27595761e-12, 6.12357387e-16, -7.27595761e-12, 1, -1.57604371e-14, 3.60822483e-16, 1.55027443e-14, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.433025986, 0.288684011))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.577348709, 0.288660467, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.721709907, 0.288683981, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.15467644, 1.80425811, 1.33514404e-05, 1, -6.19830826e-06, 6.29358198e-12, 6.19830826e-06, 1, 4.54044652e-13, -6.29259318e-12, -4.54265559e-13, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.288683951, 0.220000014, 0.288684011))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.505184174, 1.15036964e-05, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.288683891, 0.220000014, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.67023468, 0.721758068, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.220000014, 0.288683981, 0.59180212))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.144369125, 1.22688651, -1.33514404e-05, 0.999990821, -1.47163337e-05, -1.14032898e-11, 1.47157189e-05, 1, -2.46699779e-11, 6.60460662e-12, 2.46607214e-11, 0.999990821))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.288683981, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.59806442, 0.505243123, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.433025986, 0.220000014, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.08996844, 3.61562538, -1.33514404e-05, 9.4587449e-10, -1, -1.2555178e-09, 1, 9.4587449e-10, -1.26664645e-09, 1.26664734e-09, -1.25551836e-09, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.577367961, 0.220000014, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.66011667, 3.60839462, -1.33514404e-05, 9.4587449e-10, -1, -1.2555178e-09, 1, 9.4587449e-10, -1.26664645e-09, 1.26664734e-09, -1.25551836e-09, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.220000014, 0.220000014, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.30939293, 0.433067858, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.288683981, 0.288684011, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.938171387, 0.649560869, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.220000014, 0.433025986, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.288736343, 1.01040649, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.721709907, 0.220000014, 0.288684011))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.220000014, 0.220000014, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.45373726, 5.01871109e-05, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.45372581, 0.288736999, 0.216508865, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.433025986, 0.433026046, 0.88048619))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.29898643, 1.73213005, 1.33514404e-05, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(1.01039398, 0.721709907, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.288614273, 1.01042449, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.220000014, 0.577367961, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.17551613, 1.94851351, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.220000014, 0.88048619))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.29898453, 2.0208149, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.577367961, 0.220000014, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.08275223, 3.60841179, -1.33514404e-05, 9.4587449e-10, -1, -1.2555178e-09, 1, 9.4587449e-10, -1.26664645e-09, 1.26664734e-09, -1.25551836e-09, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.220000014, 0.577368021, 0.433025986))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.61572266, 1.37112474, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.866020203, 0.144353211, -0.36084938, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.288683981, 0.721709907, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.793930054, 1.29904842, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.866020203, 0.144353211, 0.360855103, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.220000014, 0.721709907, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.17548752, 1.29897356, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.01034927, 0.288698375, 0.360855103, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.433025986, 0.220000014, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.66733575, 3.61560822, -1.33514404e-05, 9.4587449e-10, -1, -1.2555178e-09, 1, 9.4587449e-10, -1.26664645e-09, 1.26664734e-09, -1.25551836e-09, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.288683981, 0.577367961, 0.288683981))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.09285212, -8.58306885e-05, -3.39200974, 3.52576644e-05, -1, -3.52554998e-05, 2.50002974e-09, -3.52554998e-05, 1, -1, -3.52576644e-05, 1.25700195e-09))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.220000014, 0.88048619, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.01036763, -4.76837158e-05, -2.95897865, 3.52576644e-05, -1, -3.52554998e-05, 2.50002974e-09, -3.52554998e-05, 1, -1, -3.52576644e-05, 1.25700195e-09))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.433025986, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.46406937, 1.8764689, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.288684011, 0.220000014, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.24766922, 0.721608043, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.288683981, 0.721709907, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.958992, 1.29899025, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.220000014, 0.88048619, 0.288683981))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.01036739, -4.76837158e-05, -3.39199257, 3.52576644e-05, -1, -3.52554998e-05, 2.50002974e-09, -3.52554998e-05, 1, -1, -3.52576644e-05, 1.25700195e-09))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.220000014, 0.577367961, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.60849762, 1.37112522, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.288683981, 0.866051972, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.39199638, 1.2267971, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.288683891, 0.220000014, 0.2886841))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.38156319, 0.433070838, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.288684011, 0.220000014, 0.866052091))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.08251572, 0.433040679, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.220000014, 0.88048619, 0.288683981))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.29905128, -5.91278076e-05, -2.52594757, 3.52576644e-05, -1, -3.52554998e-05, 2.50002974e-09, -3.52554998e-05, 1, -1, -3.52576644e-05, 1.25700195e-09))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.01034927, 0.288698375, -0.36084938, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark green", "Part", Vector3.new(0.220000014, 0.220000014, 0.577367961))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.865962982, 0.721782565, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.288683981, 0.220000014, 0.220000014))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.793857574, 1.16229057e-05, -0.36084938, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.288683981, 0.220000014, 0.220000014))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.793857574, 1.16229057e-05, 0.360855103, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.220000014, 0.433025986, 0.866051972))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.865955353, 1.01046729, -1.33514404e-05, 1, 8.60077052e-05, -1.39353251e-11, -8.60077052e-05, 1, 4.43501867e-11, 1.39401268e-11, -4.434925e-11, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Part", Vector3.new(0.577367902, 0.577367961, 0.577368021))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.10321617, 1.94864511, 0, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.220000014, 0.88048619, 0.288683981))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.29905152, -5.91278076e-05, -3.39199257, 3.52576644e-05, -1, -3.52554998e-05, 2.50002974e-09, -3.52554998e-05, 1, -1, -3.52576644e-05, 1.25700195e-09))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	PartWeld = CFuncs.Weld.Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.45372581, 0.288736999, -0.216510773, 1, 0, 4.87457297e-16, 0, 1, -1.30578652e-16, 4.87457297e-16, -1.30578652e-16, 1))
	CFuncs.Mesh.Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099975, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577367961, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 2.45371437, -0.433077872, 5.96023959e-08, 1.74693199e-07, -1, 1, 4.79283299e-05, 5.96107697e-08, 4.79283299e-05, -1, -1.74690328e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.216514587, 0.433077097, -2.16505814, -4.67294331e-06, 2.33721812e-06, 1, -4.82202013e-05, 1, -2.33744322e-06, -1, -4.82202122e-05, -4.67283053e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.216466904, -0.144152641, 2.45382309, -1.6820808e-05, 1.22771155e-06, 1, 8.3281986e-05, -1, 1.22911251e-06, 1, 8.32820078e-05, 1.68207062e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.36084938, 0.866117477, 0.288571775, -1.67632988e-05, 4.86131569e-07, 1, 1, 8.3284096e-05, 1.67632552e-05, -8.3284096e-05, 1, -4.87527643e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.360841751, 0.866130829, 0.288571417, -1.67632988e-05, 4.86131569e-07, 1, 1, 8.3284096e-05, 1.67632552e-05, -8.3284096e-05, 1, -4.87527643e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.288683981))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 3.03111076, -2.09300184, 1.4917008e-06, -2.51827078e-06, -1, 1, 4.92137588e-05, 1.49157688e-06, 4.92137551e-05, -1, 2.51834444e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.288683981, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.360853195, 0.0720514655, 1.01045609, 1.66594764e-05, 7.09434573e-07, -1, -8.39135391e-05, 1, 7.0803668e-07, 1, 8.39135246e-05, 1.66595346e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(1.15473604, 0.288683981, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-05, -1.37124991, -1.58767891, -1.15058829e-05, 1.16190358e-06, 1, 7.63280477e-05, -1, 1.16278193e-06, 1, 7.63280623e-05, 1.15057956e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(1.15473592, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-06, 0.721721113, 1.87631607, -5.51631103e-07, 8.05786021e-06, 1, -7.78436442e-05, 1, -8.05790296e-06, -1, -7.78436442e-05, -5.51003893e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.52587891e-05, 1.29893112, 1.87643325, 6.12785641e-07, -8.15486055e-06, -1, -1, -7.79344919e-05, -6.12150131e-07, -7.79344919e-05, 1, -8.15490876e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-06, 0.577369511, 1.731987, -5.51631103e-07, 8.05786021e-06, 1, -7.78436442e-05, 1, -8.05790296e-06, -1, -7.78436442e-05, -5.51003893e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark green", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-05, 1.15480661, 1.58766747, -1.14968698e-05, 1.05288314e-06, 1, -7.62934724e-05, 1, -1.05376023e-06, -1, -7.62934869e-05, -1.14967897e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.14440918e-05, 1.2990489, -0.865930557, 5.38245899e-07, -8.11262089e-06, -1, -7.7932571e-05, 1, -8.11266273e-06, 1, 7.7932571e-05, 5.37613687e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.577367961, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-05, -0.000178277493, -2.30948257, -1.63920467e-05, 5.98826318e-07, 1, -8.32968872e-05, 1, -6.0019164e-07, -1, -8.32969017e-05, -1.63919976e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-06, 0.865955353, 0.72167933, 4.16319835e-06, -5.27811881e-06, -1, -1, -7.79344919e-05, -4.16278681e-06, -7.793447e-05, 1, -5.27844304e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577367961, 0.288684011, 0.288683981))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.81458092, -0.505244374, -5.96093059e-08, 1.20536496e-08, 1, -1, -4.81428433e-05, -5.96087162e-08, 4.81428433e-05, -1, 1.20565211e-08))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.433025986, 0.433025986))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.721621871, -0.721767426, -2.65211384e-06, 6.91636785e-07, 1, -7.76494489e-05, 1, -6.91842615e-07, -1, -7.76494489e-05, -2.65206018e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000108838081, 0.216508865, 0.866125107, -8.2136954e-05, 1, 7.00357191e-07, -1.73874942e-05, -7.01785268e-07, 1, 1, 8.21369395e-05, 1.73875505e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000109732151, 0.216505051, 0.866117477, 8.27777039e-05, -1, -5.66252481e-07, 1.02252243e-05, 5.67098823e-07, -1, 1, 8.27776967e-05, 1.02252725e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(1.15473604, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.6239624e-05, -1.73211741, 1.87630653, 1.15484472e-05, -1.20873779e-06, -1, 7.59356262e-05, -1, 1.20961465e-06, -1, -7.59356408e-05, -1.15483563e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.288684011))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.71661377e-05, 0.865907669, 1.94858384, 3.90277876e-07, -8.37191328e-06, -1, -1, -7.79642869e-05, -3.896252e-07, -7.79642796e-05, 1, -8.3719433e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(1.15473604, 0.288683981, 0.288683981))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, -1.0825491, -1.22681618, -1.15058829e-05, 1.16190358e-06, 1, 7.63280477e-05, -1, 1.16278193e-06, 1, 7.63280623e-05, 1.15057956e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316e-06, 1.15472341, -1.29895592, 1.26110137e-07, -8.06712887e-06, -1, -7.7932571e-05, 1, -8.06713888e-06, 1, 7.7932571e-05, 1.25481463e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.59180212, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.144762039, 1.44347048, -2.44392018e-09, 3.87486864e-07, 1, 1, -0.00023206092, 2.53384247e-09, 0.00023206092, 1, -3.87486295e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099975))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-06, 0.577455521, 1.44332528, -3.36299445e-06, 1.11026122e-06, 1, 1, 7.75619483e-05, 3.36290827e-06, -7.75619483e-05, 1, -1.11052213e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316e-06, -1.15462112, -1.01037407, 4.39400139e-07, -7.98918609e-06, -1, 1, 7.79642869e-05, 4.38777249e-07, 7.79642796e-05, -1, 7.98922065e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-06, 0.577333868, -0.865961075, 5.38245899e-07, -8.11262089e-06, -1, -7.7932571e-05, 1, -8.11266273e-06, 1, 7.7932571e-05, 5.37613687e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.47955322e-05, -1.01024795, -1.58780861, 1.53565597e-05, 6.01717929e-08, -1, 8.41154979e-05, -1, -5.88800688e-08, -1, -8.41154979e-05, -1.5356567e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.67028809e-05, 0.865906, -1.58779335, -1.70109615e-05, -6.02148376e-08, 1, -8.31919388e-05, 1, 5.87996638e-08, -1, -8.31919388e-05, -1.70109688e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577367961, 0.288684011, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.33514404e-05, 0.938173294, -0.433095038, 5.96023959e-08, 1.74693199e-07, -1, 1, 4.79283299e-05, 5.96107697e-08, 4.79283299e-05, -1, -1.74690328e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.866051972, 0.288683981, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.71661377e-05, -1.51543999, 2.02078128, -5.06920287e-07, 7.85272368e-06, 1, 1, 7.76739253e-05, 5.063103e-07, -7.76739253e-05, 1, -7.8527637e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.577368021, 0.288683981, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-06, -1.65981102, 1.87652087, -2.08590222e-07, -6.32272304e-07, -1, -1, -1.46291495e-05, 2.08599474e-07, -1.46291495e-05, 1, -6.32269177e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.577368021, 0.433025986, 0.433025986))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-06, -0.288698196, 1.58784819, -2.40121611e-09, 3.87431214e-07, 0.999990821, 0.999990821, 3.94929666e-05, 2.38111664e-09, -3.94930757e-05, 1, -3.87427775e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.57763672e-05, 0.72149235, 3.4642086, 1.71214324e-05, 1.72130683e-07, -1, -8.27811818e-05, 1, 1.70713307e-07, 1, 8.27811818e-05, 1.71214488e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.577368021, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-06, 0.72158432, 1.87650549, -2.40388998e-09, 3.87445539e-07, 1, 1, 1.47557366e-05, 2.39817388e-09, -1.47557366e-05, 1, -3.87445567e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.14440918e-05, -1.15472364, 1.29895592, 3.65992008e-07, -8.08717687e-06, -1, 7.7932571e-05, -1, 8.08720506e-06, -1, -7.7932571e-05, -3.65361785e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.288683981, 0.288684011))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000100970268, 0.505271912, 0.288665771, 8.63475361e-05, -1, 6.10917766e-07, 1, 8.63475507e-05, 2.54107908e-05, -2.54108418e-05, 6.0872361e-07, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577367961, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.86102295e-05, 0.577338934, 0.865907669, -1.67041981e-05, -3.37721644e-07, 1, -8.37883053e-05, 1, 3.36322017e-07, -1, -8.37882981e-05, -1.67042235e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.288684011, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316e-06, -0.793758273, 1.29911232, -7.43303508e-06, 1.22163033e-06, 1, 7.63520002e-05, -1, 1.22219762e-06, 1, 7.63520075e-05, 7.43294186e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577367961, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.33514404e-05, -1.87652028, 0.433006287, 8.36841273e-12, -6.12419143e-11, 1, 4.76499372e-05, -1, -6.124206e-11, 1, 4.76499372e-05, -8.36453996e-12))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099975, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577367961, 0.220000014, 0.433025986))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.33514404e-05, -2.02083421, 0.144403458, 8.6050507e-12, -1.12807347e-10, 1, 8.40728972e-05, -1, -1.12807826e-10, 1, 8.40729044e-05, -8.59459986e-12))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099975, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.288683981, 0.577367961))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.14440918e-05, -3.3919487, 1.94865453, -8.21310664e-07, -3.71713895e-06, -1, -1, -4.91896208e-05, 8.21493472e-07, -4.91896208e-05, 1, -3.71709848e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.216470718, 2.30948448, 0.144159853, -1.67632988e-05, 4.86131569e-07, 1, 1, 8.3284096e-05, 1.67632552e-05, -8.3284096e-05, 1, -4.87527643e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.88048619, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.02084994, 1.44337082, 7.22397203e-07, -2.65794e-07, 1, 4.78476795e-05, -1, -2.65828561e-07, 1, 4.78476795e-05, -7.22384527e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459e-06, -1.01047516, -1.58765054, -6.6305638e-06, 4.3576631e-07, 1, -1, -7.63698336e-05, -6.63053061e-06, 7.63698263e-05, -1, 4.362727e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.216533661, 2.30948448, 0.144159973, -1.67632988e-05, 4.86131569e-07, 1, 1, 8.3284096e-05, 1.67632552e-05, -8.3284096e-05, 1, -4.87527643e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.7220459e-06, -0.865915298, 1.2990557, -2.55266741e-06, 2.22020481e-06, 1, 1, 8.28424963e-05, 2.55248347e-06, -8.28424891e-05, 1, -2.22041626e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316e-06, -1.73195755, 1.87651253, -6.14582223e-06, 1.36220535e-06, 1, 7.64126744e-05, -1, 1.36267499e-06, 1, 7.64126817e-05, 6.14571854e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577368021, 0.288684011, 0.721709907))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.47955322e-05, -1.94867647, 0.432897568, 2.0264722e-06, 5.09253368e-07, -0.999990821, 0.000109784494, -1, -5.09026336e-07, -0.999990821, -0.000109785047, -2.02652313e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-06, -1.29899931, 0.288755417, -1.15058829e-05, 1.16190358e-06, 1, 7.63280477e-05, -1, 1.16278193e-06, 1, 7.63280623e-05, 1.15057956e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-05, -2.30951476, -3.03111649, -8.09607911e-07, -6.23818596e-06, -1, 4.91291576e-05, -1, 6.2381464e-06, -1, -4.91291503e-05, 8.09914411e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.288683981, 0.288684011))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000100672245, 0.50525856, 0.288679123, -8.62885718e-05, 1, -4.91710637e-07, 1, 8.62885863e-05, 1.91060262e-05, 1.91060717e-05, -4.90062007e-07, -1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-9.53674316e-06, -3.17544556, 2.30951023, -8.21310664e-07, -3.71713895e-06, -1, -1, -4.91896208e-05, 8.21493472e-07, -4.91896208e-05, 1, -3.71709848e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-06, 0.577240825, 1.29911613, 2.53324151e-06, -1.13211729e-06, -1, -7.76727393e-05, 1, -1.13231397e-06, 1, 7.76727466e-05, 2.53315375e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.71661377e-05, -1.29893303, -1.87643337, 5.12328938e-07, -7.89359183e-06, -1, 1, 7.79344919e-05, 5.11713779e-07, 7.79344919e-05, -1, 7.89363185e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099975))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577368021, 0.433025986, 0.433025986))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-06, 0.288612366, -1.58781135, -2.44521902e-06, 3.38393022e-07, 0.999990821, -0.999990821, -9.30486058e-05, -2.44518264e-06, 9.30482274e-05, -1, 3.3861744e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577367961, 0.433025986, 0.433025986))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-06, -2.0208354, -2.5980854, -1.15616069e-06, -1.49042464e-07, -1, 4.70736268e-05, -1, 1.48988065e-07, -1, -4.70736268e-05, 1.15616774e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.88048619, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.02085447, -1.15470123, -6.70561178e-07, 3.69151508e-07, -1, 4.78494367e-05, -1, -3.69183596e-07, -1, -4.78494367e-05, 6.705435e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.76837158e-05, 0.721509099, -2.74252701, -1.70109615e-05, -6.02148376e-08, 1, -8.31919388e-05, 1, 5.87996638e-08, -1, -8.31919388e-05, -1.70109688e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.360855103, 0.288558185, 1.1547966, 1.66594764e-05, 7.09434573e-07, -1, -8.39135391e-05, 1, 7.0803668e-07, 1, 8.39135246e-05, 1.66595346e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.288684011, 0.433025986, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.67028809e-05, 0.288648129, 0.721580505, -1.67041981e-05, -3.37721644e-07, 1, -8.37883053e-05, 1, 3.36322017e-07, -1, -8.37882981e-05, -1.67042235e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.216474533, 0.144152999, -2.45382309, -1.41198152e-05, -1.24599399e-06, 1, -8.33266895e-05, 1, 1.24481744e-06, -1, -8.33266749e-05, -1.41199198e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459e-06, -0.865945816, -0.72168082, 2.79766277e-06, -2.31785612e-06, -1, 1, 7.79344919e-05, 2.79748178e-06, 7.79344846e-05, -1, 2.31807394e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.288684011, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.47955322e-05, -4.00543213e-05, 0.577262878, -1.67041981e-05, -3.37721644e-07, 1, -8.37883053e-05, 1, 3.36322017e-07, -1, -8.37882981e-05, -1.67042235e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459e-06, -1.01028359, 1.01046181, -7.43303508e-06, 1.22163033e-06, 1, 7.63520002e-05, -1, 1.22219762e-06, 1, 7.63520075e-05, 7.43294186e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-06, 0.721805573, 1.73200512, -3.36299445e-06, 1.11026122e-06, 1, 1, 7.75619483e-05, 3.36290827e-06, -7.75619483e-05, 1, -1.11052213e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.577367961, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-06, -2.16504097, 0.43307972, -8.21357446e-07, -5.09606161e-06, -1, -1, -4.78931943e-05, 8.21601475e-07, -4.78931979e-05, 1, -5.09602251e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.288683981, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.360837936, 0.0720519423, 1.01046753, 1.66594764e-05, 7.09434573e-07, -1, -8.39135391e-05, 1, 7.0803668e-07, 1, 8.39135246e-05, 1.66595346e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.360843658, 0.721786499, 0.144236863, -1.67632988e-05, 4.86131569e-07, 1, 1, 8.3284096e-05, 1.67632552e-05, -8.3284096e-05, 1, -4.87527643e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.288683981, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-06, 2.52592087, 1.73215079, -1.24540463e-06, 6.92964932e-07, 1, 1, 4.81465177e-05, 1.2453711e-06, -4.81465177e-05, 1, -6.93024845e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.433025986, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-06, -2.88677025, 1.73214579, 1.32623063e-06, -6.52077517e-07, -1, -1, -4.82320611e-05, -1.32619914e-06, -4.82320611e-05, 1, -6.52141466e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.360858917, 1.58762693, -1.58782005, -7.33726074e-06, 4.9689362e-07, 1, -7.64126744e-05, 1, -4.97454209e-07, -1, -7.64126817e-05, -7.33722254e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.88048619, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.33514404e-05, -1.44337273, -1.4434824, -1.49009651e-07, -1.74382194e-07, 1, -1, -4.77710601e-05, -1.49017978e-07, 4.77710601e-05, -1, -1.74375046e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-06, 0.721630752, 0.288751602, 2.6822504e-06, -1.05700735e-06, -1, -7.79004258e-05, 1, -1.05721631e-06, 1, 7.79004258e-05, 2.68216832e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.216505051, 0.43307817, -2.16505623, -4.67294331e-06, 2.33721812e-06, 1, -4.82202013e-05, 1, -2.33744322e-06, -1, -4.82202122e-05, -4.67283053e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.216529846, 0.144152522, -2.45382881, -1.41198152e-05, -1.24599399e-06, 1, -8.33266895e-05, 1, 1.24481744e-06, -1, -8.33266749e-05, -1.41199198e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.360836029, 0.288558662, 1.15480804, 1.66594764e-05, 7.09434573e-07, -1, -8.39135391e-05, 1, 7.0803668e-07, 1, 8.39135246e-05, 1.66595346e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.360847473, 0.721775055, 0.14423722, -1.67632988e-05, 4.86131569e-07, 1, 1, 8.3284096e-05, 1.67632552e-05, -8.3284096e-05, 1, -4.87527643e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.216537476, -0.144153237, 2.45382881, -1.6820808e-05, 1.22771155e-06, 1, 8.3281986e-05, -1, 1.22911251e-06, 1, 8.32820078e-05, 1.68207062e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Bright bluish green", "Wedge", Vector3.new(0.220000014, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000106930733, 0.21651268, 0.866123199, -7.99797781e-05, 1, 7.00359237e-07, -1.21703379e-05, -7.0133251e-07, 1, 1, 7.99797708e-05, 1.21703943e-05))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.656099916, 0.656099916, 0.656099916))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Wedge", Vector3.new(0.866051972, 0.220000014, 0.288683981))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-06, 3.03110123, 1.80431747, -1.47524008e-06, 5.90472155e-07, 1, 1, 4.78687507e-05, 1.47521177e-06, -4.78687507e-05, 1, -5.90542754e-07))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.577367961, 0.220000014, 0.220000014))
	WedgeWeld = CFuncs.Weld.Create(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-06, -0.433074057, 2.45373154, -1.21425751e-06, 2.73477553e-06, 1, 4.83096082e-05, -1, 2.7348342e-06, 1, 4.83096119e-05, 1.21412518e-06))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.656099916, 0.656099916))
	EffectModel = Instance.new("Model", Character)
	EffectModel.Name = "Effects"
	Effects = {
Block = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	
	local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
Cylinder = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end
}
, 
Sphere = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
Wave = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Break = {Create = function(brickcolor, cframe, x1, y1, z1)
	
	local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
}
, 
Freeze = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3)
	
	local prt = CFuncs.Part.Create(workspace, "Neon", 0.4, 0.3, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=1778999", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, 0.1 do
			wait()
			Part.CFrame = Part.CFrame * CFrame.new(0, 0.3, 0)
			Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
		end
		table.insert(Effects, {Part, "Disappear", 0.01})
		game:GetService("Debris"):AddItem(Part, 5)
	end
), prt, msh)
end
}
}
	local Aim = false
	spread = 0
	range = 500
	rangepower = 10
	FireCannon = function(mouse, baseprt)
	
	coroutine.resume(coroutine.create(function(v)	
		local spreadvector = Vector3.new(math.random(-spread, spread), math.random(-spread, spread), math.random(-spread, spread)) * (baseprt.Position - mouse.Hit.p).magnitude / 100
		local dir = CFrame.new((baseprt.Position + mouse.Hit.p) / 2, mouse.Hit.p + spreadvector)
		local hit, pos = rayCast(baseprt.Position, dir.lookVector, 10, Character)
		local rangepos = range
		local ShootBullet = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Lmao", Vector3.new(1, 1, 1))
		ShootBullet.Anchored = false
		ShootBullet.CFrame = baseprt.CFrame
		local FakeBoolit = CFuncs.Part.Create(ShootBullet, "SmoothPlastic", 0, 0, BrickColor.new("Toothpaste"), "Lmao2", Vector3.new(0.5, 0.5, 0.5))
		CFuncs.Mesh.Create("SpecialMesh", FakeBoolit, "FileMesh", "rbxassetid://433301027", Vector3.new(0, 0, 0), Vector3.new(0.02, 0.02, 0.02))
		local FakeBoolitWeld = CFuncs.Weld.Create(FakeBoolit, ShootBullet, FakeBoolit, CFrame.fromEulerAnglesXYZ(math.rad(180), 0, 0) * CFrame.new(0, 0, 0))
		local shodderp = CFuncs.Weld.Create(ShootBullet, ShootBullet, Barrel, CFrame.fromEulerAnglesXYZ(-3.14, 0, 3) * CFrame.new(0, 0, 0))
		shodderp.Parent = nil
		local drawtrail = function(From, To)			
			local effectsmsh = Instance.new("CylinderMesh")
			effectsmsh.Scale = Vector3.new(1, 1, 1)
			effectsmsh.Name = "Mesh"
			local effectsg = Instance.new("Part")
			effectsg.Material = "SmoothPlastic"
			effectsg.formFactor = 3
			effectsg.CanCollide = false
			effectsg.Name = "Eff"
			effectsg.Locked = true
			effectsg.Anchored = true
			effectsg.Size = Vector3.new(0.2, 0.2, 0.2)
			effectsg.Parent = m
			effectsmsh.Parent = effectsg
			effectsg.BrickColor = BrickColor.new("Toothpaste")
			effectsg.Reflectance = 0.25
			effectsg.Transparency = 1
			local LP = From
			local point1 = To
			local mg = (LP - point1).magnitude
			effectsmsh.Scale = Vector3.new(1.5, mg * 5, 1.5)
			effectsg.CFrame = CFrame.new((LP + point1) / 2, point1) * CFrame.Angles(math.rad(90), 0, 0)
			ShootBullet.CFrame = effectsg.CFrame * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
			local shodderp = CFuncs.Weld.Create(ShootBullet, ShootBullet, effectsg, CFrame.fromEulerAnglesXYZ(3.14, 0, 0) * CFrame.new(0, 0, 0))
			Effects.Block.Create(BrickColor.new("Toothpaste"), ShootBullet.CFrame, 0, 0, 0, 0.5, 0.5, 0.5, 0.05, 1)
			coroutine.resume(coroutine.create(function()				
				effectsg.Transparency = 1
				wait(0.1)
				effectsg.Parent = nil
			end))
		end

		local newpos = baseprt.Position
		local inc = rangepower
		repeat
			wait(0)
			rangepos = rangepos - 10
			dir = dir * CFrame.Angles(math.rad(-0.5), 0, 0)
			hit = rayCast(newpos, dir.lookVector, inc, Character)
			drawtrail(newpos, pos)
			newpos = newpos + dir.lookVector * inc
			if inc >= 20 then
				inc = inc - 10
			end
			if hit ~= nil then
				rangepos = 0
			end
		until rangepos <= 0
		local TehCF = ShootBullet.CFrame
		local NewCF = CFrame.new(ShootBullet.Position)
		local NewPOS = ShootBullet.Position
		local rand = math.random(1, 3)
		ShootBullet.Parent = nil
		local sprt = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Sound Part", Vector3.new(0.5, 0.5, 0.5))
		sprt.CFrame = TehCF
		sprt.Anchored = true
		if Freeze == false then
			MagnitudeDamage(sprt, 15, 10, 15, BrickColor.new("Toothpaste"), BrickColor.new("Navy blue"), " ", 1)
			CFuncs.Sound.Create("rbxassetid://184718741", sprt, 1, 1.3)
			Effects.Sphere.Create(BrickColor.new("Toothpaste"), sprt.CFrame, 5, 5, 5, 5, 5, 5, 0.06)
			Effects.Block.Create(BrickColor.new("Toothpaste"), sprt.CFrame, 5, 5, 5, 5, 5, 5, 0.06, 1)
			Effects.Wave.Create(BrickColor.new("Toothpaste"), sprt.CFrame * CFrame.Angles(1.65, 0, 0), 0.5, 0.5, 0.5, 1, 1, 1, 0.06)
		elseif Freeze == true then
			MagnitudeDamage(sprt, 15, 10, 15, BrickColor.new("Toothpaste"), BrickColor.new("Navy blue"), " ", 1)
			Effects.Block.Create(BrickColor.new("Toothpaste"), NewCF, 1, 1, 1, 5, 5, 5, 0.05)
		end
		game:GetService("Debris"):AddItem(sprt, 5)
	end
))
end

	attackone = function()
	
	if cooldown4 >= 5 then
		cooldown4 = cooldown4 - 5
	else
		Aim = false
		return 
	end
	attack = true
	RootPart.Velocity = RootPart.CFrame.lookVector * -50
	CFuncs.Sound.Create("rbxassetid://131632972", Barrel, 1, 0.8)
	CFuncs.Sound.Create("rbxassetid://184718741", Barrel, 0.5, 1.8)
	Effects.Sphere.Create(BrickColor.new("Toothpaste"), Barrel.CFrame, 1, 1, 1, 2, 2, 2, 0.07)
	Effects.Block.Create(BrickColor.new("Toothpaste"), Barrel.CFrame, 1, 1, 1, 2, 2, 2, 0.07, 1)
	FireCannon(mouse, Barrel)
	for i = 0, 1, 0.3 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0464506708, -0.238988817, 0.118124016, 0.707105935, 1.89660625e-07, -0.707107782, 0.183011979, 0.96592617, 0.18301174, 0.683013916, -0.258817852, 0.683012009) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-1.4975667e-06, 1.49999011, -1.12503767e-06, 0.707105935, 0.0616276413, 0.704417109, 1.89660625e-07, 0.996194899, -0.0871547163, -0.707107782, 0.0616277307, 0.704415262) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.50920224, -0.144947827, -0.112141252, 0.707105935, -0.18301408, 0.683013439, 1.89660625e-07, 0.965925574, 0.258820474, -0.707107782, -0.183013335, 0.683011651) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.345030844, 0.663422287, -1.18909049, -0.0882733837, -0.911283314, 0.402207464, 0.995046556, -0.0992052853, -0.00638471544, 0.0457193702, 0.399651557, 0.91552639) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.642704308, -2.00846434, 0.00167004019, 0.865560055, -0.126088485, 0.484672725, 0.0328175947, 0.979987144, 0.196337596, -0.499728858, -0.154036194, 0.852375507) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-1.02584946, -1.7481159, -0.398575753, 0.573394775, 0.225872323, 0.787528038, -0.0250177607, 0.965623856, -0.258737028, -0.818897307, 0.128656253, 0.559334397) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.8, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0.3, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.8)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0464505926, 0, 0.0535500757, 0.707106352, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707106352) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-3.7252903e-08, 1.49999177, -3.7252903e-08, 0.707106352, -0.0616286285, 0.704416573, 0, 0.996194661, 0.087155968, -0.707107365, -0.0616285391, 0.70441556) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.40920067, 8.94069672e-08, -0.212141812, 0.707106352, 0.241844803, 0.664463639, 0, 0.939692736, -0.342019886, -0.707107365, 0.24184446, 0.664462686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.682863712, 0.0131569803, -1.24407899, 0.596025348, -0.347929686, 0.723670602, 0.692534328, 0.67887038, -0.243990541, -0.406387001, 0.646591187, 0.645577073) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.64141804, -1.99999678, 3.75509262e-06, 0.865559459, -0.0400083363, 0.499205828, 0.0328160077, 0.999192536, 0.023180481, -0.49973011, -0.00368214212, 0.866173565) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.634346068, -1.9999969, -0.00707113743, 0.573396206, 0.0143492911, 0.819152713, -0.0250170156, 0.999687016, -1.71228081e-07, -0.818896413, -0.0204926543, 0.573575795) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0.3, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
	end
	attack = false
end

	QuadShot = function()
	
	attack = true
	Humanoid.WalkSpeed = 0
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.906307876, 0, -0.422617942, 0, 1, 0, 0.422617942, 0, 0.906307876) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.15483999e-07, 1.49999237, 6.2584877e-07, 0.984807909, -0.0301534608, 0.171008915, 0, 0.984807849, 0.173648059, -0.173646972, -0.171009988, 0.969846606) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.31206596, 1.29694152, 0.476807415, 0.939692438, -8.40150562e-08, 0.342020661, -0.21984686, -0.76604414, 0.60402298, 0.262002856, -0.642788053, -0.719845831) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.942681372, 0.940122128, -0.586095691, 0.630203903, -0.660239339, -0.408567131, -0.764881134, -0.618345797, -0.180569708, -0.133416563, 0.426300973, -0.894688547) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.622640371, -1.99763227, -0.00348503888, 0.921796083, -0.0198112018, 0.387168586, 0.0109610008, 0.9996261, 0.0250536501, -0.387520134, -0.0188506003, 0.92166841) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.647147298, -1.99463391, -0.0074134469, 0.763117492, 0.0317284837, 0.645480394, -0.0823379681, 0.995427787, 0.0484137535, -0.640992999, -0.0900929123, 0.762240887) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.1, -0.2) * angles(math.rad(150), math.rad(-34), math.rad(0)), 0.3)
	end
	local ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
	ref.Anchored = true
	ref.CFrame = Head.CFrame * CFrame.new(-0.25, 0.25, -0.6)
	Effects.Sphere.Create(BrickColor.new("Cyan"), CFrame.new(ref.Position), 0, 0, 0, 0.2, 5, 0.2, 0.1)
	Effects.Sphere.Create(BrickColor.new("Cyan"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 0, 0, 0, 0.2, 5, 0.2, 0.1)
	Effects.Sphere.Create(BrickColor.new("Cyan"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(0, 0, 1.57), 0, 0, 0, 0.2, 5, 0.2, 0.1)
	CFuncs.Sound.Create("rbxassetid://300563970", RootPart, 1, 1)
	local cf2 = mouse.Hit.p + Vector3.new(math.random(-100, 100) / 50, 50, math.random(-100, 100) / 50)
	local hit2, pos2 = rayCast(cf2, CFrame.new(cf2, cf2 - Vector3.new(0, 1, 0)).lookVector, 999, Character)
	if hit2 ~= nil then
		local d1 = CFuncs.Part.Create(workspace, "Neon", 0, 0.5, BrickColor.new("Toothpaste"), "Effect", Vector3.new())
		d1.Anchored = true
		d1.CFrame = CFrame.new(pos2)
		game:GetService("Debris"):AddItem(d1, 5)
		local msh = CFuncs.Mesh.Create("CylinderMesh", d1, "nil", "nil", Vector3.new(0, 0, 0), Vector3.new(100, 5, 100))
		local d2 = d1:Clone()
		d2.Parent = d1
		d2.CFrame = CFrame.new(d1.Position)
		d2.BrickColor = BrickColor.new("Cyan")
		d2.Mesh.Scale = Vector3.new(0, 5, 0)
		table.insert(Effects, {d1, "QuadShot", d2, d2.Mesh, 0})
	end
	do
		for i = 0, 1, 0.1 do
			swait()
			PlayAnimationFromTable({CFrame.new(0.00321083516, 0, -0.0634426698, 0.582263947, 0, -0.812999904, 0, 1, 0, 0.812999904, 0, 0.582263947) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.47521496e-06, 1.49999189, -1.94460154e-06, 0.623624027, -0.00443960726, 0.781711996, -0.115167953, 0.988550425, 0.0974915028, -0.773194432, -0.150826216, 0.6159724) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.31206596, 1.29694152, 0.476807415, 0.939692438, -8.40150562e-08, 0.342020661, -0.21984686, -0.76604414, 0.60402298, 0.262002856, -0.642788053, -0.719845831) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-1.68316388, 0.510640204, -0.502018332, 0.570830464, 0.778613091, -0.260604084, -0.431534857, 0.0144789768, -0.901980042, -0.698520184, 0.627337456, 0.344263643) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.622647941, -1.99763203, -0.00349700451, 0.812314093, -0.0198106803, 0.582883835, 0.00510299997, 0.9996261, 0.026863046, -0.583198071, -0.0188467726, 0.812111378) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.747580051, -1.97961462, 0.123161972, 0.607162058, 0.0317292884, 0.793944478, -0.0907969996, 0.995427847, 0.0296548083, -0.789373457, -0.090093039, 0.607266903) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.1, -0.2) * angles(math.rad(150), math.rad(-34), math.rad(0)), 0.3)
		end
		Humanoid.WalkSpeed = 16
		attack = false
	end
end

	CreateGrenade = function()
	
	local GrenadeModel = Instance.new("Model", Character)
	GrenadeModel.Name = "GrenadeModel"
	local GrenadeHandle = CFuncs.Part.Create(GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Handle", Vector3.new(0.720000029, 0.720000029, 0.720000029))
	local GrenadeHandleWeld = CFuncs.Weld.Create(GrenadeModel, Character["Left Arm"], GrenadeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0399894714, 0.0880355835, -1.03497469, -1, -1.29144695e-10, -1.65926451e-07, 1.65926451e-07, -5.96046377e-08, -1, 1.291348e-10, -1, 5.96046377e-08))
	GrenadeHandleWeld.Name = "HandleWeld"
	CFuncs.Mesh.Create("SpecialMesh", GrenadeHandle, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	local Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, 6.07967377e-06, -0.305992126, -0.99999994, 2.91125325e-05, 0.000388413115, 0.0003884123, -2.87742059e-05, 1, 2.91237066e-05, 1, 2.87628955e-05))
	CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	local Button = CFuncs.Part.Create(GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Button", Vector3.new(0.287999928, 0.24000001, 0.251999915))
	local Buttonweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Button, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.378005981, -2.2649765e-06, 1, 0, 4.87636868e-18, 0, 1, 0, 4.87636868e-18, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", Button, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.150000006, 1))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, "Navy blue", "Part", Vector3.new(0.287999928, 0.24000001, 0.287999928))
	Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-06, -0.323997498, 4.05311584e-06, 1, 0, 4.87636868e-18, 0, 1, 0, 4.87636868e-18, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.299999982, 1))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.Neon, 0, 0, "Toothpaste", "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, 9.77516174e-06, -0.395996094, -0.99999994, 2.91125325e-05, 0.000388413115, 0.0003884123, -2.87742059e-05, 1, 2.91237066e-05, 1, 2.87628955e-05))
	CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.0468000025, 0.0468000025, 0.259199947))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.Neon, 0, 0, "Toothpaste", "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.396003723, 5.96046448e-07, 1, 0, 4.87636868e-18, 0, 1, 0, 4.87636868e-18, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 0.300000012, 0.300000012))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.67572021e-06, -7.62939453e-06, -0.305995941, 2.90565495e-05, -0.000388383865, 0.99999994, -2.88907795e-05, -0.99999994, -0.000388383021, 1, -2.88794927e-05, -2.90677672e-05))
	CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.Neon, 0, 0, "Toothpaste", "Part", Vector3.new(0.287999928, 0.685800076, 0.287999928))
	Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.000904083252, 0, 3.6234119e-12, 0, 1, -1, -1.42108547e-14, 3.62340236e-12, 1.42108547e-14, -1, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.67028809e-05, 0, 0.306002617, -0.99999994, -0.000388418615, 2.90845201e-05, 0.0003884178, -1, -2.87741423e-05, 2.90956923e-05, -2.87628409e-05, 1))
	CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-05, 1.52587891e-05, -0.306001425, -0.99999994, -0.000388418615, 2.90845201e-05, 0.0003884178, -1, -2.87741423e-05, 2.90956923e-05, -2.87628409e-05, 1))
	CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.45571136e-05, -3.05175781e-05, 0.305992126, 2.90565495e-05, -0.000388383865, 0.99999994, -2.88907795e-05, -0.99999994, -0.000388383021, 1, -2.88794927e-05, -2.90677672e-05))
	CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	Part = CFuncs.Part.Create(GrenadeModel, Enum.Material.Neon, 0, 0, "Toothpaste", "Part", Vector3.new(0.287999928, 0.685800076, 0.287999928))
	Partweld = CFuncs.Weld.Create(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000904083252, -5.96046448e-07, 0, -1, 2.46687932e-07, -5.96051919e-08, 5.96052629e-08, 3.27825546e-07, -1, -2.46687904e-07, -1, -3.27825546e-07))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	for _,Part in pairs(GrenadeModel:GetChildren()) do
		do
			pcall(function()
		
		Part.CanCollide = true
	end
)
		end
	end
	local Beep = Instance.new("Sound")
	Beep.Name = "Beep"
	Beep.SoundId = "rbxassetid://146785518"
	Beep.Volume = 0.5
	Beep.Looped = true
	Beep.Pitch = 4
	Beep.Parent = GrenadeHandle
	Beep:Play()
	GrenadeHandleWeld:remove()
	local BodyVelocity = Instance.new("BodyVelocity")
	BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	BodyVelocity.velocity = mouse.Hit.p - GrenadeHandle.Position.unit * 250
	BodyVelocity.Parent = GrenadeHandle
	game:GetService("Debris"):AddItem(BodyVelocity, 0.1)
	game:GetService("Debris"):AddItem(GrenadeModel, 10)
	swait()
	ExplodeCon = GrenadeHandle.Touched:connect(function(Hit)
		
		if Hit.Parent ~= Character then
			Freeze = true
			ExplodeCon:disconnect()
			CFuncs.Sound.Create("rbxassetid://240036913", GrenadeHandle, 1, 1)
			if Hit.Parent == GrenadeHandle.Parent then
				return 
			end
			local Weld = Instance.new("Weld")
			Weld.Part0 = GrenadeHandle
			Weld.Part1 = Hit
			Weld.C0 = GrenadeHandle.CFrame:inverse() * CFrame.new(GrenadeHandle.Position)
			Weld.C1 = Hit.CFrame:inverse() * CFrame.new(GrenadeHandle.Position)
			Weld.Parent = GrenadeHandle
			for i = 4, 10, 0.075 do
				Beep.Pitch = i
				swait()
			end
			local sprt = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Sound Part", Vector3.new(0.5, 0.5, 0.5))
			sprt.CFrame = GrenadeHandle.CFrame
			sprt.Anchored = true
			MagnitudeDamage(sprt, 15, 10, 25, BrickColor.new("Cyan"), BrickColor.new("Navy blue"), " ", 1)
			CFuncs.Sound.Create("rbxassetid://166221646", sprt, 1, 1)
			CFuncs.Sound.Create("rbxassetid://338594711", sprt, 1, 1.2)
			for i = 1, 6 do
				Effects.Break.Create(BrickColor.new("Toothpaste"), sprt.CFrame, 0.5, math.random(5, 15), 0.5)
			end
			Effects.Sphere.Create(BrickColor.new("Toothpaste"), sprt.CFrame, 5, 5, 5, 5, 5, 5, 0.06)
			Effects.Block.Create(BrickColor.new("Toothpaste"), sprt.CFrame, 5, 5, 5, 5, 5, 5, 0.06, 1)
			game:GetService("Debris"):AddItem(sprt, 5)
			GrenadeModel:remove()
		end
		do
			Freeze = false
		end
	end
)
	return GrenadeModel
end

	ThrowGrenade = function()
	
	attack = true
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.555494964, 0, 0.831519902, 0, 1, 0, -0.831519902, 0, 0.555494964) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-3.27825546e-07, 1.49999201, 2.5331974e-07, 0.625445068, 0.0577181466, -0.778130531, 0, 0.997260332, 0.0739721954, 0.780268192, -0.0462655462, 0.623731613) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.31206596, 1.29694152, 0.476807415, 0.939692438, -8.40150562e-08, 0.342020661, -0.21984686, -0.76604414, 0.60402298, 0.262002856, -0.642788053, -0.719845831) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-1.84413862, 0.829995692, -0.263126075, 0.277553767, 0.689586163, 0.668905735, 0.838962317, -0.513218045, 0.180968568, 0.468087941, 0.510958135, -0.720982313) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.727452874, -1.99999678, 0.0524490774, 0.500000715, 0.0181959216, -0.865833819, 0, 0.999779224, 0.0210108496, 0.866024971, -0.0105054397, 0.499890357) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.644299269, -1.99999678, -0.0719765127, 0.80593729, 0.0581622086, -0.589136958, -0.0274869967, 0.997765243, 0.060901694, 0.591362596, -0.0328893401, 0.805734873) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.1, -0.2) * angles(math.rad(150), math.rad(-34), math.rad(0)), 0.3)
	end
	CreateGrenade()
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.10872753, 0, -0.099864617, 0.541791856, 0, -0.840512812, 0, 1, 0, 0.840512812, 0, 0.541791856) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.13993883e-06, 1.49999213, -1.13248825e-06, 0.663318098, -0.0493231155, 0.746710539, -0.000380000245, 0.99780333, 0.0662463158, -0.748337686, -0.0442261323, 0.661842227) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.31206596, 1.29694152, 0.476807415, 0.939692438, -8.40150562e-08, 0.342020661, -0.21984686, -0.76604414, 0.60402298, 0.262002856, -0.642788053, -0.719845831) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.818766117, 0.29000023, -1.04174209, 0.371324599, -0.529005647, 0.763067067, 0.921572506, 0.310204625, -0.233403519, -0.113235161, 0.789889991, 0.602703691) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.607915223, -1.99999642, 0.0348861739, 0.989780545, 0.00892156549, 0.142320454, -0.0195019897, 0.997132361, 0.0731216595, -0.141259938, -0.075149931, 0.987116218) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.64430511, -1.99999678, -0.0719578862, 0.719177306, 0.046785295, 0.693249881, -0.0489069782, 0.998664379, -0.0166606959, -0.693103433, -0.0219227616, 0.72050488) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.1, -0.2) * angles(math.rad(150), math.rad(-34), math.rad(0)), 0.3)
	end
	attack = false
end

	AutoFire = function()
	
	if cooldown4 >= 10 then
		cooldown4 = cooldown4 - 10
	else
		Aim = false
		return 
	end
	attack = true
	for i = 1, 3 do
		RootPart.Velocity = RootPart.CFrame.lookVector * -50
		CFuncs.Sound.Create("rbxassetid://131632972", Barrel, 1, 1)
		CFuncs.Sound.Create("rbxassetid://184718741", Barrel, 0.5, 2)
		Effects.Sphere.Create(BrickColor.new("Toothpaste"), Barrel.CFrame, 1, 1, 1, 2, 2, 2, 0.1)
		Effects.Block.Create(BrickColor.new("Toothpaste"), Barrel.CFrame, 1, 1, 1, 2, 2, 2, 0.1, 1)
		FireCannon(mouse, Barrel)
		for i = 0, 1, 0.5 do
			swait()
			PlayAnimationFromTable({CFrame.new(-0.0464506708, -0.238988817, 0.118124016, 0.707105935, 1.89660625e-07, -0.707107782, 0.183011979, 0.96592617, 0.18301174, 0.683013916, -0.258817852, 0.683012009) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-1.4975667e-06, 1.49999011, -1.12503767e-06, 0.707105935, 0.0616276413, 0.704417109, 1.89660625e-07, 0.996194899, -0.0871547163, -0.707107782, 0.0616277307, 0.704415262) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.50920224, -0.144947827, -0.112141252, 0.707105935, -0.18301408, 0.683013439, 1.89660625e-07, 0.965925574, 0.258820474, -0.707107782, -0.183013335, 0.683011651) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.345030844, 0.663422287, -1.18909049, -0.0882733837, -0.911283314, 0.402207464, 0.995046556, -0.0992052853, -0.00638471544, 0.0457193702, 0.399651557, 0.91552639) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.642704308, -2.00846434, 0.00167004019, 0.865560055, -0.126088485, 0.484672725, 0.0328175947, 0.979987144, 0.196337596, -0.499728858, -0.154036194, 0.852375507) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-1.02584946, -1.7481159, -0.398575753, 0.573394775, 0.225872323, 0.787528038, -0.0250177607, 0.965623856, -0.258737028, -0.818897307, 0.128656253, 0.559334397) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.8, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0.3, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.8)
		end
		for i = 0, 1, 0.3 do
			swait()
			PlayAnimationFromTable({CFrame.new(-0.0464505926, 0, 0.0535500757, 0.707106352, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707106352) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-3.7252903e-08, 1.49999177, -3.7252903e-08, 0.707106352, -0.0616286285, 0.704416573, 0, 0.996194661, 0.087155968, -0.707107365, -0.0616285391, 0.70441556) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.40920067, 8.94069672e-08, -0.212141812, 0.707106352, 0.241844803, 0.664463639, 0, 0.939692736, -0.342019886, -0.707107365, 0.24184446, 0.664462686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.682863712, 0.0131569803, -1.24407899, 0.596025348, -0.347929686, 0.723670602, 0.692534328, 0.67887038, -0.243990541, -0.406387001, 0.646591187, 0.645577073) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.64141804, -1.99999678, 3.75509262e-06, 0.865559459, -0.0400083363, 0.499205828, 0.0328160077, 0.999192536, 0.023180481, -0.49973011, -0.00368214212, 0.866173565) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.634346068, -1.9999969, -0.00707113743, 0.573396206, 0.0143492911, 0.819152713, -0.0250170156, 0.999687016, -1.71228081e-07, -0.818896413, -0.0204926543, 0.573575795) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0.3, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
		end
	end
	attack = false
end

	mouse.Button1Down:connect(function()
	
	if attack == false and attacktype == 1 and Aim == true then
		attackone()
	end
end
)
	mouse.KeyDown:connect(function(k)	
	k = k:lower()
	if attack == false and k == "f" and Aim == false then
		Aim = true
	elseif attack == false and k == "f" and Aim == true then
		Aim = false
	elseif attack == false and k == "z" and co1 <= cooldown1 then
		cooldown1 = 0
		QuadShot()
	elseif attack == false and k == "x" and co2 <= cooldown2 then
		cooldown2 = 0
		ThrowGrenade()
	elseif attack == false and k == "c" and Aim == true then
		AutoFire()
	end
end
)
	updateskills = function()
	
	if Aim == false then
		text3.Text = "[X]\n N/A"
		text4.Text = "[F]\n Aim"
	else
		text3.Text = "[X]\n Rapid Fire"
		text4.Text = "[Click]\n Fire"
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
	if cooldown4 <= co4 and Aim == false then
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
		if Aim == false and attack == false then
			Humanoid.WalkSpeed = 18
		elseif Aim == true and attack == false then
			Humanoid.WalkSpeed = 10
		end
		if Aim == true then
			local aim = CFrame.new(RootPart.Position, mouse.Hit.p)
			local direction = aim.lookVector
			local headingA = math.atan2(direction.x, direction.z)
			headingA = math.deg(headingA)
			Humanoid.AutoRotate = false
			RootPart.CFrame = CFrame.new(RootPart.Position) * angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
		else
			Humanoid.AutoRotate = true
end
				for i,v in pairs(Character:GetChildren()) do
					if v:IsA("Model") then
						for _,c in pairs(v:GetChildren()) do
							if c:IsA("Part") then
								c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
							end
						end
					end
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
						if attack == false and Aim == false then
							change = 1
							PlayAnimationFromTable({CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0, 1.48262739, 0.0984807014, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.31206596, 1.29694152, 0.476807415, 0.939692438, -8.40150562e-08, 0.342020661, -0.21984686, -0.76604414, 0.60402298, 0.262002856, -0.642788053, -0.719845831) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-1.5668143, 0.113709539, -0.0510462224, 0.923045218, 0.254886031, -0.288133383, -0.185842037, 0.951251626, 0.246136591, 0.336824089, -0.173647895, 0.925416708) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.500001609, -1.79999721, 1.49011612e-07, 0.995449364, 0.0227353834, -0.0925409794, -0.0044040014, 0.981060326, 0.193652838, 0.0951910391, -0.192364037, 0.976695895) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.500002027, -1.49999654, -0.19999975, 0.866025269, 4.00048179e-07, 0.500000358, -0.129410043, 0.965925813, 0.224143773, -0.482963175, -0.258819193, 0.836516142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
							FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.1, -0.2) * angles(math.rad(150), math.rad(-34), math.rad(0)), 0.3)
						else
							if attack == false and Aim == true then
								change = 1
								PlayAnimationFromTable({CFrame.new(-0.0464505926, 0, 0.0535500757, 0.707106352, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707106352) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-3.7252903e-08, 1.49999177, -3.7252903e-08, 0.707106352, -0.0616286285, 0.704416573, 0, 0.996194661, 0.087155968, -0.707107365, -0.0616285391, 0.70441556) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.40920067, 8.94069672e-08, -0.212141812, 0.707106352, 0.241844803, 0.664463639, 0, 0.939692736, -0.342019886, -0.707107365, 0.24184446, 0.664462686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.682863712, 0.0131569803, -1.24407899, 0.596025348, -0.347929686, 0.723670602, 0.692534328, 0.67887038, -0.243990541, -0.406387001, 0.646591187, 0.645577073) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.500000715, -1.79999745, -1.35600567e-06, 0.94129312, 0.0227346793, 0.336824238, -0.0858320072, 0.981060266, 0.173648357, -0.326497018, -0.192364305, 0.92541647) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.500002027, -1.49999654, -0.19999975, 0.866025269, 4.00048179e-07, 0.500000358, -0.129410043, 0.965925813, 0.224143773, -0.482963175, -0.258819193, 0.836516142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0.3, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
							end
						end
					else
						if RootPart.Velocity.y < -1 and hit == nil then
							Anim = "Fall"
							if attack == false and Aim == false then
								change = 1
								PlayAnimationFromTable({CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0, 1.49127769, -0.0996195972, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.30000818, 1.19999981, 0.59999907, 0.984807849, 3.59532123e-07, 0.173648059, -0.133021981, -0.642787039, 0.754407048, 0.111618988, -0.766044915, -0.633021712) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-1.59500337, 0.0681275129, -0.400336176, 0.891351998, 0.429748684, -0.144249231, -0.452659994, 0.826742291, -0.334060162, -0.024304999, 0.363061041, 0.9314484) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.448000163, -1.9800508, -0.127594233, 0.980724096, -0.0317484438, -0.192801416, -0.000597000064, 0.986220241, -0.165436789, 0.195397034, 0.162362948, 0.967190921) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.514118016, -1.48724687, -0.321207315, 0.954581738, 0.0457262322, 0.294419378, 0.046677988, 0.953000247, -0.299352139, -0.294269949, 0.299499005, 0.907582223) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
								FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.1, -0.2) * angles(math.rad(150), math.rad(-34), math.rad(0)), 0.3)
							else
								if attack == false and Aim == true then
									change = 1
									PlayAnimationFromTable({CFrame.new(-0.0464505926, 0, 0.0535500757, 0.707106352, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707106352) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-3.7252903e-08, 1.49999177, -3.7252903e-08, 0.707106352, -0.0616286285, 0.704416573, 0, 0.996194661, 0.087155968, -0.707107365, -0.0616285391, 0.70441556) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.40920067, 8.94069672e-08, -0.212141812, 0.707106352, 0.241844803, 0.664463639, 0, 0.939692736, -0.342019886, -0.707107365, 0.24184446, 0.664462686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.682863712, 0.0131569803, -1.24407899, 0.596025348, -0.347929686, 0.723670602, 0.692534328, 0.67887038, -0.243990541, -0.406387001, 0.646591187, 0.645577073) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.456608057, -1.97967982, -0.125822604, 0.944759369, 0.055468414, 0.323037177, 0.00132900046, 0.984919786, -0.173006475, -0.327762127, 0.163878798, 0.930438459) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.720192492, -1.86214101, -0.19086799, 0.866024852, 0.211309791, 0.453154802, -0.129409984, 0.970153272, -0.205074862, -0.482963949, 0.118957169, 0.867522418) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
									FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0.3, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
								end
							end
						else
							if Torsovelocity < 1 and hit ~= nil then
								Anim = "Idle"
								if attack == false and Aim == false then
									change = 1
									PlayAnimationFromTable({CFrame.new(0.0130468942, -0.311750889, 0.0817597061, 0.819151819, 0, -0.573576868, 0, 1, 0, 0.573576868, 0, 0.819151819) * CFrame.new(0, -0.1 + 0.1 * math.cos((sine) / 20), 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.49011612e-08, 1.49998987, 1.49011612e-08, 0.819151819, -0.0439680889, 0.571889162, 0, 0.997057617, 0.076655969, -0.573576868, -0.0627928749, 0.816741586) * CFrame.new(0, 0, 0) * CFrame.Angles(0 + 0.05 * math.cos((sine) / 20), 0, 0), CFrame.new(1.18289697, 1.30086362, 0.35635227, 0.76604414, 0.321394622, 0.556670487, 0, -0.866024971, 0.500000954, 0.642788112, -0.383022755, -0.663413286) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-1.54763377, -0.046230197, -0.109767228, 0.98908627, 0.109599225, -0.09847036, -0.121894002, 0.98412174, -0.129020855, 0.0827661753, 0.1396157, 0.986740708) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0 + 0.1 * math.cos((sine) / 20)), CFrame.new(0.714063168, -1.72399032, 0.0776934996, 0.936059713, -0.192616343, 0.294433892, 0.160290003, 0.978408575, 0.13047564, -0.313208342, -0.074938193, 0.946723282) * CFrame.new(0, 0 - 0.05 * math.cos((sine) / 20), 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.731964469, -1.73628664, -0.173331201, 0.623145103, -0.0355542637, 0.781297803, 0, 0.998966217, 0.0454596318, -0.78210628, -0.0283279475, 0.622500956) * CFrame.new(0, 0 - 0.05 * math.cos((sine) / 20), 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
									FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.1, -0.2) * angles(math.rad(150), math.rad(-34), math.rad(0)), 0.3)
								else
									if attack == false and Aim == true then
										change = 1
										PlayAnimationFromTable({CFrame.new(-0.0464505926, 0, 0.0535500757, 0.707106352, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707106352) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-3.7252903e-08, 1.49999177, -3.7252903e-08, 0.707106352, -0.0616286285, 0.704416573, 0, 0.996194661, 0.087155968, -0.707107365, -0.0616285391, 0.70441556) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.40920067, 8.94069672e-08, -0.212141812, 0.707106352, 0.241844803, 0.664463639, 0, 0.939692736, -0.342019886, -0.707107365, 0.24184446, 0.664462686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.682863712, 0.0131569803, -1.24407899, 0.596025348, -0.347929686, 0.723670602, 0.692534328, 0.67887038, -0.243990541, -0.406387001, 0.646591187, 0.645577073) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.64141804, -1.99999678, 3.75509262e-06, 0.865559459, -0.0400083363, 0.499205828, 0.0328160077, 0.999192536, 0.023180481, -0.49973011, -0.00368214212, 0.866173565) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.634346068, -1.9999969, -0.00707113743, 0.573396206, 0.0143492911, 0.819152713, -0.0250170156, 0.999687016, -1.71228081e-07, -0.818896413, -0.0204926543, 0.573575795) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)}, 0.3, false)
										FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0.3, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
									end
								end
							else
								if 2 < Torsovelocity and hit ~= nil then
									Anim = "Walk"
									if attack == false and Aim == false then
										change = 3
										PlayAnimationFromTable({CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(-5 * math.cos((sine) / 10)), math.rad(0)), CFrame.new(0, 1.5, 0) * angles(math.rad(10), math.rad(5 * math.cos((sine) / 10)), math.rad(0)), CFrame.new(1.18289697, 1.30086362, 0.35635227, 0.76604414, 0.321394622, 0.556670487, 0, -0.866024971, 0.500000954, 0.642788112, -0.383022755, -0.663413286), CFrame.new(-1.5, 0.1 + 0.1 * math.cos((sine) / 10), -1 * math.cos((sine) / 10)) * angles(math.rad(70 * math.cos((sine) / 10)), math.rad(0), math.rad(-5)), CFrame.new(0.5, -1.85 - 0.5 * math.cos((sine) / 8) / 2, 0 + 2 * math.sin((sine) / 8) / 2) * angles(math.rad(-70 * math.sin((sine) / 8)), math.rad(-3), math.rad(0)), CFrame.new(-0.5, -1.85 + 0.5 * math.cos((sine) / 8) / 2, 0 - 2 * math.sin((sine) / 8) / 2) * angles(math.rad(70 * math.sin((sine) / 8)), math.rad(3), math.rad(0))}, 0.3, false)
										FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, -0.1, -0.2) * angles(math.rad(150), math.rad(-34), math.rad(0)), 0.3)
									else
										if attack == false and Aim == true then
											change = 2
											PlayAnimationFromTable({CFrame.new(-0.0464505926, 0, 0.0535500757, 0.707106352, 0, -0.707107365, 0, 1, 0, 0.707107365, 0, 0.707106352) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-3.7252903e-08, 1.49999177, -3.7252903e-08, 0.707106352, -0.0616286285, 0.704416573, 0, 0.996194661, 0.087155968, -0.707107365, -0.0616285391, 0.70441556) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(1.40920067, 8.94069672e-08, -0.212141812, 0.707106352, 0.241844803, 0.664463639, 0, 0.939692736, -0.342019886, -0.707107365, 0.24184446, 0.664462686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(-0.682863712, 0.0131569803, -1.24407899, 0.596025348, -0.347929686, 0.723670602, 0.692534328, 0.67887038, -0.243990541, -0.406387001, 0.646591187, 0.645577073) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), CFrame.new(0.5, -1.85 - 0.3 * math.cos((sine) / 8) / 2, 0 + 1.3 * math.sin((sine) / 8) / 2) * angles(math.rad(-20 * math.sin((sine) / 8)), math.rad(-10), math.rad(0)), CFrame.new(-0.5, -1.85 + 0.3 * math.cos((sine) / 8) / 2, 0 - 1.3 * math.sin((sine) / 8) / 2) * angles(math.rad(20 * math.sin((sine) / 8)), math.rad(10), math.rad(0))}, 0.3, false)
											FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0.3, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
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
										if Thing[2] == "QuadShot" then
											if Thing[5] < 100 then
												Thing[5] = Thing[5] + 1.5
												Thing[4].Scale = Vector3.new(Thing[5], 5, Thing[5])
											else
												refda = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
												refda.Anchored = true
												refda.CFrame = CFrame.new(Thing[1].Position)
												game:GetService("Debris"):AddItem(refda, 5)
												CFuncs.Sound.Create("rbxassetid://300916105", refda, 1, 0.5)
												CFuncs.Sound.Create("rbxassetid://184718741", refda, 1, 0.8)
												MagnitudeDamage(refda, 40, 10, 30, BrickColor.new("Toothpaste"), BrickColor.new("Navy blue"))
												Effects.Cylinder.Create(BrickColor.new("Toothpaste"), CFrame.new(refda.Position), 3, 9999, 3, 10, 10, 10, 0.05)
												Effects.Sphere.Create(BrickColor.new("Toothpaste"), refda.CFrame, 10, 10, 10, 10, 10, 10, 0.06)
												Effects.Block.Create(BrickColor.new("Toothpaste"), refda.CFrame, 10, 10, 10, 10, 10, 10, 0.06, 1)
												Effects.Wave.Create(BrickColor.new("Toothpaste"), refda.CFrame, 1, 1, 1, 3, 3, 3, 0.06)
												Thing[1].Parent = nil
												table.remove(Effects, e)
											end
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