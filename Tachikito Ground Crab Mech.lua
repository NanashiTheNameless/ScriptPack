

local Player = game.Players.localPlayer
Effects = {}
--[[if script.ClassName == "LocalScript" or script.ClassName == "Script" then
	local Environment = getfenv(getmetatable(LoadLibrary("RbxUtility").Create).__call)
	local oxbox = getfenv()
	setfenv(1, setmetatable({}, {__index = Environment}))
	oxbox.script:Destroy()
end
	if script ~= true then
		print("Escaped Sandbox")
	else
		warn("Failed sandbox escape")
	end]]
	local Character = Player.Character
	local Humanoid = Character.Humanoid
	local mouse = Player:GetMouse()
	local m = Instance.new("Model", Character)
	m.Name = "WeaponModel"
	local effect = Instance.new("Model", Character)
	effect.Name = "Effects"
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
	Character.Sound.Parent = nil
	Humanoid.JumpPower = 80
	Head.face.Transparency = 1
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

	ArtificialHB = Instance.new("BindableEvent", Player.PlayerGui)
	ArtificialHB.Name = "Heartbeat"
	Player.PlayerGui:WaitForChild("Heartbeat")
	frame = 1 / 30
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

	local co1 = 3
	local co2 = 10
	local co3 = 20
	local co4 = 30
	local co5 = 30
	local cooco = 10
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local cooldown5 = 0
	local coolcool = 0
	local maxEnergy = 100
	local Energy = 0
	local skill1stam = 10
	local skill2stam = 30
	local skill3stam = 40
	local skill4stam = 60
	local recovermana = 5
	local skillcolorscheme = BrickColor.new("Toothpaste").Color
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
	framesk5 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.41, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
	bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar5 = makeframe(framesk5, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
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
	text1.Text = "[Z]\n Single Burst"
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
	text2.Text = "[X]\n Multi Burst"
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
	text3.Text = "[C]\n Rapid shot"
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
	text4.Text = "[V]\n Artillery Strike"
	text5 = Instance.new("TextLabel", framesk5)
	text5.BackgroundTransparency = 1
	text5.Size = UDim2.new(1, 0, 1, 0)
	text5.Position = UDim2.new(0, 0, 0, 0)
	text5.TextColor3 = Color3.new(255, 255, 255)
	text5.TextStrokeTransparency = 0
	text5.FontSize = Enum.FontSize.Size32
	text5.Font = Enum.Font.SourceSansLight
	text5.BorderSizePixel = 0
	text5.TextScaled = true
	text5.Text = "Energy"
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

	Damage = function(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	
	for i,v in pairs(hit:GetChildren()) do
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
					v.Health = v.Health - damage
					do
						local bool = Create("BoolValue")({Parent = v, Name = "DebounceHit"})
						if HSound ~= nil and HPitch ~= nil then
							CFuncs.Sound.Create(HSound, hit.Parent, 1, HPitch)
						end
						game:GetService("Debris"):AddItem(bool, cooldown)
						-- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out DO_STMT

						-- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_THEN_STMT

						-- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_STMT

						-- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_THEN_STMT

						-- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_STMT

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

	MainHandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "MainHandle", Vector3.new(2.046, 2.23200011, 2.64600039))
	MainHandleWeld = CFuncs.Weld.Create(m, Character.Torso, MainHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.597103596, 0.768245697, 0.025844574, 0, -1, 0, 0, 0, 1, -1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", MainHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	BarrelL = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BarrelL", Vector3.new(1.08000028, 0.453600079, 0.648000062))
	BarrelLWeld = CFuncs.Weld.Create(m, MainHandle, BarrelL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21498489, 4.51081085, -1.88434207, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", BarrelL, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	BarrelR = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "BarrelR", Vector3.new(1.08000028, 0.453600079, 0.648000062))
	BarrelRWeld = CFuncs.Weld.Create(m, MainHandle, BarrelR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16098022, 4.51081085, -1.88434207, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", BarrelR, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	CannonConnector = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "CannonConnector", Vector3.new(4.10400105, 1.29600036, 4.10400057))
	CannonConnectorWeld = CFuncs.Weld.Create(m, MainHandle, CannonConnector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.59994507, -0.0269966125, 3.88506699, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", CannonConnector, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	LLegBConnector = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "LLegBConnector", Vector3.new(1.29599988, 1.72800016, 1.72800016))
	LLegBConnectorWeld = CFuncs.Weld.Create(m, MainHandle, LLegBConnector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.21697235, 0.375000238, 2.62799835, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", LLegBConnector, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	LLegFConnector = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "LLegFConnector", Vector3.new(1.29599988, 1.72800016, 1.72800016))
	LLegFConnectorWeld = CFuncs.Weld.Create(m, MainHandle, LLegFConnector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94462967, 0.375000238, 1.47602463, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", LLegFConnector, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(2.59200025, 1.72800016, 0.864001572))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, 0.375000238, -3.70797729, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.29600036, 3.06720042, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.98802185, -0.0270271301, -0.375081301, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.864000082, 0.432000041, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.488963127, -1.05300522, -0.0360145569, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.2960006, 0.432000041, 0.648000062))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.62801361, -1.05303955, -0.812889099, 0, 1, 0, 0, 0, -1, -1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.72800064, 3.93120074, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.47602463, -0.0269966125, -0.375000238, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.5120002, 5.18400049, 1.72800171))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.80897903, -2.86499691, -4.57199478, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.29600036, 3.06720042, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0359687805, -0.0270271301, -0.375081301, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.72800064, 3.45600057, 2.16000009))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57199478, -0.0269966125, 5.4570117, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(5.18400049, 1.72800028, 1.72800171))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, -2.8650403, -6.29996109, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.72800064, 4.36320066, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.62795258, -0.0270271301, -0.375000238, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.29600012, 0.432000041, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.375000238, -0.899997711, -0.674999237, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.29600012, 0.432000041, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.375000238, -0.899997711, 0.6210289, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(2.59200025, 1.72800016, 1.29600143))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, 0.375000238, -2.62800598, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(2.16000032, 3.02400041, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.98802185, -0.0270271301, -0.375000238, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(2.16000056, 3.45600057, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.97995758, -0.0269966125, 2.8650403, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.864000082, 0.864000082, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.488963127, 0.0269966125, -0.0360145569, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0.5, "Toothpaste", "Part", Vector3.new(2.59200048, 1.29600012, 2.37600017))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.02199554, -0.0270271301, -0.267035723, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(3.02400041, 1.72800016, 3.67200184))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, 0.375000238, 1.15199661, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.864000082, 0.432000041, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.488963127, 1.10698318, -0.0360145569, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.432000041, 0.432000041, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.674983978, -0.704997063, -0.899997711, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.864000082, 0.432000041, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.488963127, -0.620975494, -0.0360145569, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.432000041, 0.648000062, 0.648001373))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.10700989, -0.812971115, -2.95201111, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(2.59200025, 1.72800016, 0.864001572))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, 0.375000238, -1.54800797, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(4.75200081, 5.20560074, 4.32000017))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.57197571, -0.0252799988, 2.8650403, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(2.59200048, 2.16000009, 2.37600017))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.98802185, -0.0270271301, -0.267014265, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.Neon, 0, 0.5, "Toothpaste", "Part", Vector3.new(2.16000032, 2.20319986, 2.37600017))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.98802185, -0.0270271301, -0.267024755, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(2.16000009, 0.432000041, 3.0240016))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, -0.704997063, 1.47599792, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.432000041, 0.432000041, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.6210289, -0.704997063, -0.899997711, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.864000082, 0.432000041, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.488963127, 0.674999237, -0.0360145569, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.72800028, 0.432000041, 2.59200025))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.375000238, -0.899997711, -0.0269966125, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.51200032, 1.72800028, 1.72800171))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.86302948, -2.8650403, -2.8439827, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.51200032, 1.08000004, 1.08000004))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21500778, 2.0160141, -2.2109971, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(2.16000032, 0.432000041, 1.08000004))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90800476, 1.26896667, -1.34699464, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(1.08000028, 0.864000082, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16098022, 3.63601685, -2.31899524, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(1.51200032, 0.648000062, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16095734, 1.15200043, -2.1029973, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.72800028, 0.648000062, 0.864001632))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, -0.813005447, -2.19600677, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.864000142, 0.432000041, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, -0.704997063, -1.54800797, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.2960006, 1.72800016, 0.648000062))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.62801361, -0.0269966125, 0.812988281, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(2.16000009, 0.432000041, 1.94400144))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, -1.13699913, 1.36799622, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.08000028, 1.5120002, 1.08000004))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16098022, 2.01600647, -1.99499702, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.432000041, 0.648000062, 0.648001373))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.05303955, 0.812889099, -2.95201111, 0, 0, 1, 1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(1.51200032, 0.648000062, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16095734, 2.8800087, -2.1029973, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.51200032, 1.72800028, 1.72800171))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.80897903, -2.8650403, -2.8439827, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.5120002, 5.18400049, 1.72800171))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.86299515, -2.86499691, -4.57199478, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(1.51200032, 0.648000062, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21500778, 1.15200043, -2.1029973, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(0.648000062, 0.432000041, 0.648000062))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21500778, 4.28401566, -2.2109971, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.51200032, 0.648000062, 2.16000009))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21498489, 0.504009247, -2.10299492, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(2.16000032, 0.432000041, 1.08000004))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90800476, -1.32300568, -1.34699464, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.51200032, 1.08000004, 1.08000004))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16095734, 2.0160141, -2.2109971, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(1.08000028, 0.864000082, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21498489, 3.63601685, -2.31899524, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(1.51200032, 0.648000062, 1.29600012))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21500778, 2.8800087, -2.1029973, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(0.648000062, 0.432000041, 0.648000062))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16095734, 4.28401566, -2.2109971, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(1.08000028, 1.5120002, 0.864000082))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16098022, 3.96001434, -1.88699424, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.2960006, 0.432000041, 0.648000062))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.62801361, -1.10699844, 0.812988281, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.51200032, 0.648000062, 2.16000009))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.16098022, 0.504009247, -2.10299492, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.08000028, 1.5120002, 1.08000004))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21498489, 2.01600647, -1.99499702, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Lily white", "Part", Vector3.new(1.08000028, 1.5120002, 0.864000082))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21498489, 3.96001434, -1.88699424, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(3.45600033, 3.45600057, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0270271301, -5.11689377, 1.23679733, 0, 0, -0.99999994, -0.707106829, 0.707106709, 0, 0.707106709, 0.707106829, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(2.15999985, 1.72800028, 1.72800171))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, -2.8650403, -2.8439827, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(2.16000009, 5.18400049, 1.72800171))
	PartWeld = CFuncs.Weld.Create(m, MainHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, -2.86499691, -4.57199478, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	RLegBConnector = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "RLegBConnector", Vector3.new(1.29599988, 1.72800016, 1.72800016))
	RLegBConnectorWeld = CFuncs.Weld.Create(m, MainHandle, RLegBConnector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.13302231, 0.375000238, 2.62799835, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", RLegBConnector, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	RLegFConnector = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 1, "Mid gray", "RLegFConnector", Vector3.new(1.29599988, 1.72800016, 1.72800016))
	RLegFConnectorWeld = CFuncs.Weld.Create(m, MainHandle, RLegFConnector, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.95540237, 0.375000238, 1.47602463, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", RLegFConnector, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.648000062, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0569722652, -1.86302948, 2.44799042, -1, 0, 4.76837158e-07, 4.76837158e-07, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 1.08000004, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0569722652, -1.86302948, -1.65598297, -1, 0, 4.76837158e-07, 4.76837158e-07, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.374999523, -1.75500107, 2.77198029, -1, 0, 4.76837158e-07, 4.76837158e-07, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.374999523, -1.53900528, -1.33200073, -1, 0, 4.76837158e-07, 4.76837158e-07, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.375000238, -1.75500107, -0.180000305, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.5120002, 1.72800016, 1.72800016))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.80897903, 2.84399414, -1.1370821, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(2.16000032, 1.72800016, 1.72800016))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0270271301, -4.59305525, -2.84398651, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.375000238, -1.53900528, 3.92397308, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 1.08000004, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.807035208, -1.78742981, 3.59994507, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.648000062, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.807035208, -1.78738022, -0.50402832, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 1.08000004, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.05697155, -1.78742981, -1.6560173, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.375000238, -1.67942429, -0.180000305, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.648000062, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.807035208, -1.86300659, -0.503986359, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.648000062, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.807034492, -1.86300659, 2.44797516, -1, 0, 4.76837158e-07, 4.76837158e-07, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(5.18400049, 1.72800016, 1.72800016))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, -6.29996109, 4.59305525, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.432000041, 0.432000041, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.620975494, -0.921014309, -1.22401428, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(2.16000009, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0269966125, -1.13699913, -0.180000305, 0, 0, 1, -1, 0, 0, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.375000238, -1.67939377, 2.77199936, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(5.18400049, 1.72800016, 1.72800016))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, 1.13708162, 6.29996109, 0, 0, -1, 1, 0, 0, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 1.08000004, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.05697155, -1.78734207, 3.5999794, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(2.16000009, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, -1.13699913, 2.55599976, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.648000062, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.807035208, -1.78742981, 2.44797516, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 1.08000004, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.807035208, -1.86302948, 3.59999084, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(2.16000009, 1.72800016, 1.72800016))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0269966125, 2.84399414, -1.13708162, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.648000062, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.05697155, -1.86300659, -0.504020691, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.648000062, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.05697155, -1.78736496, -0.504009247, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(0.432000041, 0.432000041, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.674999237, -0.921014309, -1.22401428, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.648000062, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.05697155, -1.78739548, 2.44794464, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 1.08000004, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.807034492, -1.86300659, -1.65599823, -1, 0, 4.76837158e-07, 4.76837158e-07, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.51200032, 1.72800016, 1.72800016))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.86300659, -4.59305525, -2.84398651, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 1.08000004, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.807035208, -1.78742981, -1.65598297, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 1.08000004, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.05697155, -1.86300659, 3.59996033, 1, 0, 0, 0, 0, 1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.375000238, -1.46334457, 3.92396164, -1, 0, 0, 0, 0, -1, 0, -1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Wedge", Vector3.new(0.432000041, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.375000238, -1.46334457, -1.3319664, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.51200032, 1.72800016, 1.72800016))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.80897903, -4.59305525, -2.84398651, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Wedge", Vector3.new(1.5120002, 1.72800016, 1.72800016))
	WedgeWeld = CFuncs.Weld.Create(m, MainHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.86300659, 2.84399414, -1.13708162, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	CannonHandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "CannonHandle", Vector3.new(4.10400105, 1.29600036, 4.10400057))
	CannonHandleWeld = CFuncs.Weld.Create(m, CannonConnector, CannonHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 2.86102295e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", CannonHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.864000797, 2.59200001, 0.648000062))
	PartWeld = CFuncs.Weld.Create(m, CannonHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-05, 2.26800156, 0.431990623, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.864000797, 1.5120002, 1.08000004))
	PartWeld = CFuncs.Weld.Create(m, CannonHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-06, 7.12799835, 1.2959981, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.864000797, 0.864000082, 1.08000004))
	PartWeld = CFuncs.Weld.Create(m, CannonHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-06, 3.99601364, 0.432009697, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(0.864000797, 5.4000001, 0.648000062))
	PartWeld = CFuncs.Weld.Create(m, CannonHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 3.67200851, 1.29599428, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	CannonBarrel = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "CannonBarrel", Vector3.new(0.864000797, 0.432000041, 0.648000062))
	CannonBarrelWeld = CFuncs.Weld.Create(m, CannonHandle, CannonBarrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 7.68434906, 1.29599428, 0, -1, 0, 1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("CylinderMesh", CannonBarrel, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	LLegFHandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "LLegFHandle", Vector3.new(1.29599988, 1.72800016, 1.72800016))
	LLegFHandleWeld = CFuncs.Weld.Create(m, LLegFConnector, LLegFHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", LLegFHandle, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.08000946, -1.08002853, 0.216036797, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.512025, -1.51200867, 0.647968292, 0, -1, 0, -1, 0, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-06, -1.94398499, 0.216036797, 0, 0, -0.99999994, -0.999999881, 0, 0, 0, 0.99999994, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 1.5120002, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, LLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94396973, -0.755974054, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.5120002, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, LLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.08000946, -0.755974054, -1.07999039, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 0.432000041, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, LLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.51200104, 2.37601233, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.72800016, 1.72800016, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, LLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.864013672, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 0.864000142, 0.863999844))
	PartWeld = CFuncs.Weld.Create(m, LLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94396973, 0.432034969, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.5120002, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, LLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.08000946, -0.755974054, 1.07997894, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.72800016, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, LLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.648010254, 1.7280277, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Ball1 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.72799993, 1.72800016, 1.72800016))
	Ball1Weld = CFuncs.Weld.Create(m, LLegFHandle, Ball1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.431991577, 2.5920229, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Ball1, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 1.72800028, 0.863999844))
	PartWeld = CFuncs.Weld.Create(m, LLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.51200104, 1.7280277, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.512025, -1.51200867, 0.648006439, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.864000082, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-05, 1.7280277, 1.51200104, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.864000082, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.432034969, -1.94398499, 0.647968292, 0, -1, 0, -1, 0, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.5120002, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.755974054, -1.08000183, 1.94398499, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.08000946, -1.08000183, 0.216036797, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.864000082, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.432034969, -1.94398499, 0.648006439, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.5120002, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.755974054, -1.94398499, 1.0799675, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 0.648000062))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-05, -2.80800509, -0.324005127, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, LLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.14440918e-05, -2.80800509, 1.1880188, 0, 0, 1, 0, -1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	RLegFHandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "RLegFHandle", Vector3.new(1.29599988, 1.72800016, 1.72800016))
	RLegFHandleWeld = CFuncs.Weld.Create(m, RLegFConnector, RLegFHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.027633667, 0, 4.95910645e-05, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", RLegFHandle, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.72800016, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, RLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.647987366, 1.7280277, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.5120002, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, RLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.07999802, -0.755974054, 1.07997513, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.72800016, 1.72800016, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, RLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.864002228, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 0.432000041, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, RLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.51194763, 2.37601233, -1.52587891e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 1.5120002, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, RLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94396973, -0.755974054, 7.62939453e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 0.864000142, 0.863999844))
	PartWeld = CFuncs.Weld.Create(m, RLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94396973, 0.432034969, 7.62939453e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Ball2 = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.72799993, 1.72800016, 1.72800016))
	Ball2Weld = CFuncs.Weld.Create(m, RLegFHandle, Ball2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.432010651, 2.5920229, 4.19616699e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Ball2, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 1.72800028, 0.863999844))
	PartWeld = CFuncs.Weld.Create(m, RLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.51194763, 1.7280277, -1.52587891e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.05175781e-05, -1.94400406, 0.216036797, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.5120002, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.755974054, -1.08001709, 1.94400406, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.864000082, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.432034969, -1.94403839, 0.648017883, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.512025, -1.51201248, 0.647949219, 0, -1, 0, -1, 0, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.5120002, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.755974054, -1.94400406, 1.07998657, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.864000082, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.432034969, -1.94403839, 0.647949219, 0, -1, 0, -1, 0, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.07999802, -1.08002472, 0.216036797, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.512025, -1.51203156, 0.648017883, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.864000082, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.81469727e-05, 1.7280277, 1.51194763, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.62939453e-06, -2.80800509, 1.18798828, 0, 0, 1, 0, -1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.07998657, -1.07998276, 0.216036797, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 0.648000062))
	WedgeWeld = CFuncs.Weld.Create(m, RLegFHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-05, -2.80800509, -0.324001312, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.5120002, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, RLegFHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.07998657, -0.755974054, -1.07997894, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	LLegBHandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "LLegBHandle", Vector3.new(1.29599988, 1.72800016, 1.72800016))
	LLegBHandleWeld = CFuncs.Weld.Create(m, LLegBConnector, LLegBHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.272411346, 0, 4.57763672e-05, -1, 0, 0, 0, 1, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", LLegBHandle, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.864000082, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.432034969, -1.94399261, 0.648010254, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.512025, -1.51202393, 0.647975922, 0, -1, 0, -1, 0, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 0.648000062))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.80800509, -0.324020386, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 0.432000041, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, LLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.51200104, 2.37601233, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.5120002, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, LLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.0800209, -0.755974054, -1.07999039, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 0.864000142, 0.863999844))
	PartWeld = CFuncs.Weld.Create(m, LLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94397736, 0.432034969, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 1.72800028, 0.863999844))
	PartWeld = CFuncs.Weld.Create(m, LLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.51200104, 1.7280277, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.72799993, 1.72800016, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, LLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.431991577, 2.59202242, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 1.5120002, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, LLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94397736, -0.755974054, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.72800016, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, LLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.648010254, 1.7280277, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.5120002, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, LLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.0800209, -0.755974054, 1.07997894, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.72800016, 1.72800016, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, LLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.864013672, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.0800209, -1.08000946, 0.216036797, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.512025, -1.51202393, 0.648010254, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.5120002, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.755974054, -1.08000946, 1.94399261, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.5120002, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.755974054, -1.94399261, 1.07996368, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.0800209, -1.08002472, 0.216036797, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.864000082, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.7280277, 1.51200104, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.864000082, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.432034969, -1.94399261, 0.647975922, 0, -1, 0, -1, 0, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-06, -1.94399261, 0.216036797, 0, 0, -0.99999994, -0.999999881, 0, 0, 0, 0.99999994, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, LLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.80800509, 1.1880188, 0, 0, 1, 0, -1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	RLegBHandle = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "RLegBHandle", Vector3.new(1.29599988, 1.72800016, 1.72800016))
	RLegBHandleWeld = CFuncs.Weld.Create(m, RLegBConnector, RLegBHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.150001526, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", RLegBHandle, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.512025, -1.51200867, 0.647953033, 0, -1, 0, -1, 0, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.08004761, -1.07998657, 0.216036797, -1, 0, 0, 0, 0, 1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 0.648000062))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.62939453e-06, -2.80800509, -0.323970795, 0, 0, -1, 0, -1, 0, -1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.5120002, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, RLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.08001328, -0.755974054, 1.07999039, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.72800016, 1.72800016, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, RLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.864006042, 0, 3.43322754e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.5120002, 0.432000041))
	PartWeld = CFuncs.Weld.Create(m, RLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.08000183, -0.755974054, -1.07999039, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(1.29600012, 1.72800016, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, RLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.647956848, 1.7280277, -2.28881836e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 0.432000041, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, RLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.51194, 2.37601233, 1.52587891e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 1.5120002, 1.72799993))
	PartWeld = CFuncs.Weld.Create(m, RLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94395065, -0.755974054, 7.62939453e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Mid gray", "Part", Vector3.new(1.72799993, 1.72800016, 1.72800016))
	PartWeld = CFuncs.Weld.Create(m, RLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.431980133, 2.5920229, 1.52587891e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 0.864000142, 0.863999844))
	PartWeld = CFuncs.Weld.Create(m, RLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.94395065, 0.432034969, 7.62939453e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Part = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.432000041, 1.72800028, 0.863999844))
	PartWeld = CFuncs.Weld.Create(m, RLegBHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.51194, 1.7280277, 1.52587891e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.864000082, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.28881836e-05, 1.7280277, 1.51194, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.07997894, -1.08001328, 0.216036797, 1, 0, 0, 0, 0, -1, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.864000082, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.432034969, -1.94400024, 0.648040771, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 1.08000004))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -2.80800509, 1.18800354, 0, 0, 1, 0, -1, 0, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.72800016, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.7220459e-05, -1.94406891, 0.216036797, 0, 0, -1, -1, 0, 0, 0, 1, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.5120002, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.755974054, -1.0799675, 1.94395065, 0, 1, 0, 0, 0, 1, 1, 0, 0))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(0.864000082, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.432034969, -1.94400024, 0.64799881, 0, -1, 0, -1, 0, 0, 0, 0, -1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.5120002, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.755974054, -1.94398499, 1.07994461, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Wedge = CFuncs.Part.Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Wedge", Vector3.new(1.29600012, 0.432000041, 0.432000041))
	WedgeWeld = CFuncs.Weld.Create(m, RLegBHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.512025, -1.51204681, 0.64799881, 0, 1, 0, -1, 0, 0, 0, 0, 1))
	CFuncs.Mesh.Create("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	for _, v in pairs (m:GetChildren()) do
		if v:IsA("WedgePart") or v:IsA("Part") then
		v.BackSurface = "SmoothNoOutlines"
		v.BottomSurface = "SmoothNoOutlines"
		v.FrontSurface = "SmoothNoOutlines"
		v.LeftSurface = "SmoothNoOutlines"
		v.RightSurface = "SmoothNoOutlines"
		v.TopSurface = "SmoothNoOutlines"
		end
	end
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
	
	local prt = CFuncs.Part.Create(effect, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
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
	
	local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
}
}
	LaserBarrage = function(Prt, Parent)
	CanAttack = false
	local efprt = CFuncs.Part.Create(Parent, "SmoothPlastic", 0, 0.5, BrickColor.new("Cyan"), "Effect", Vector3.new(0.2, 0.2, 0.2))
	efprt.Anchored = true
	local efmsh = CFuncs.Mesh.Create("CylinderMesh", efprt, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	local spread = Vector3.new((math.random(-1, 0) + math.random()) * 3, (math.random(-1, 0) + math.random()) * 3, (math.random(-1, 0) + math.random()) * 3) * (Prt.Position - mouse.Hit.p).magnitude / 100
	coroutine.resume(coroutine.create(function(Part, Mesh, Spreaded)
		game:GetService("Debris"):AddItem(Part, 6)
		local TheHit = mouse.Hit.p
		local MouseLook = CFrame.new((Prt.Position + TheHit) / 2, TheHit + Spreaded)
		local hit, pos = rayCast(Prt.Position, MouseLook.lookVector, 1000, Parent)
		local tefprt = CFuncs.Part.Create(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Effect", Vector3.new(0.2, 0.2, 0.2))
		tefprt.CFrame = CFrame.new(pos)
		Effects.Sphere.Create(BrickColor.new("Toothpaste"), CFrame.new(pos), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.1)
		game:GetService("Debris"):AddItem(tefprt, 3)
		Part.CFrame = CFrame.new((Prt.Position + pos) / 2, pos) * angles(1.57, 0, 0)
		if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then
			MagnitudeDamage(tefprt, 8, 10, 20, BrickColor.new("Mid gray"), BrickColor.new("Toothpaste"), "", 1)
		end
		local mag = (Prt.Position - pos).magnitude
		Effects.Cylinder.Create(BrickColor.new("Toothpaste"), Part.CFrame, 1, mag * 5, 1, 0.5, 0, 0.5, 0.1)
		Part.Parent = nil
		CanAttack = true
	end
), efprt, efmsh, spread)
end

	ShootCannon = function(asd)
	
	local MainPos = asd.Position
	local MainPos2 = mouse.Hit.p
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	num = 20
	coroutine.resume(coroutine.create(function(Spreaded)
		
		repeat
			wait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, 50, RootPart.Parent)
			local TheHit = mouse.Hit.p
			local mag = (MainPos - pos).magnitude
			Effects.Cylinder.Create(BrickColor.new("Toothpaste"), CFrame.new((MainPos + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 10, mag * 5, 3, 0.5, 1, 5, 0.4)
			MainPos = MainPos + MouseLook.lookVector * 50
			num = num - 1
			if hit ~= nil then
				num = 0
				local ref = CFuncs.Part.Create(effect, "Neon", 0, 1, BrickColor.new("Dark stone grey"), "Reference", Vector3.new())
				ref.Anchored = true
				ref.CFrame = CFrame.new(pos)
				CFuncs.Sound.Create("rbxassetid://184718741", ref, 1, 1.3)
				for i = 1, 2 do
					Effects.Block.Create(BrickColor.new("Toothpaste"), ref.CFrame, 10, 10, 10, 9, 9, 9, 0.08, 1)
				end
				MagnitudeDamage(ref, 18, 8, 15, BrickColor.new("Toothpaste"), BrickColor.new("Institutional white"))
				game:GetService("Debris"):AddItem(ref, 1)
			end
		until num <= 0
	end
))
end

	LaserShot = function()
	
	attack = true
	Humanoid.WalkSpeed = 0
	for i = 0, 1, 0.05 do
		swait()
		MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
		CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(0)), 0.3)
		RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(30), math.rad(20)), 0.3)
		LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(-30), math.rad(-20)), 0.3)
		RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(-30), math.rad(-20)), 0.3)
		LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(30), math.rad(20)), 0.3)
	end
	local ceef = CFrame.new(CannonBarrel.Position, mouse.Hit.p)
	local hit, pos = rayCast(CannonBarrel.Position, ceef.lookVector, 999, Character)
	local mag = (CannonBarrel.Position - pos).magnitude
	if pos ~= nil then
		CFuncs.Sound.Create("rbxassetid://300916105", CannonBarrel, 1, 1)
		Effects.Sphere.Create(BrickColor.new("Toothpaste"), CannonBarrel.CFrame, 6, 6, 6, 3, 3, 3, 0.08, m)
		Effects.Cylinder.Create(BrickColor.new("Toothpaste"), CFrame.new((CannonBarrel.Position + pos) / 2, pos) * angles(1.57, 0, 0), 2, mag * 5, 3, 1, 1, 1, 0.1)
		local ref = CFuncs.Part.Create(effect, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
		ref.Anchored = true
		ref.CFrame = CFrame.new(pos)
		game:GetService("Debris"):AddItem(ref, 1)
		CFuncs.Sound.Create("rbxassetid://300916057", ref, 1, 1)
		MagnitudeDamage(ref, 10, 10, 20, BrickColor.new("Mid gray"), BrickColor.new("Toothpaste"), "", 1)
		Effects.Sphere.Create(BrickColor.new("Toothpaste"), CFrame.new(ref.Position), 5, 5, 5, 4, 4, 4, 0.1)
	end
	do
		for i = 0, 1, 0.13 do
			swait()
			MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), 0.5)
			CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.5)
			RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(30), math.rad(20)), 0.5)
			LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(-30), math.rad(-20)), 0.5)
			RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(-30), math.rad(-20)), 0.5)
			LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(30), math.rad(20)), 0.5)
		end
		Humanoid.WalkSpeed = 16
		attack = false
	end
end

	FireCannon = function()
	
	attack = true
	Humanoid.WalkSpeed = 0
	for i = 1, 2 do
		for i = 0, 1, 0.05 do
			swait()
			MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.5, 1) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
			CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-5), math.rad(0)), 0.3)
			RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(30), math.rad(20)), 0.3)
			LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(-30), math.rad(-20)), 0.3)
			RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(-30), math.rad(-20)), 0.3)
			LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(30), math.rad(20)), 0.3)
		end
		ShootCannon(CannonBarrel)
		CFuncs.Sound.Create("rbxassetid://184749318", CannonBarrel, 1, 1)
		CFuncs.Sound.Create("rbxassetid://184574181", CannonBarrel, 1, 1.1)
		Effects.Sphere.Create(BrickColor.new("Toothpaste"), CannonBarrel.CFrame, 6, 6, 6, 3, 3, 3, 0.08, m)
		for i = 0, 1, 0.13 do
			swait()
			MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.5, 2) * angles(math.rad(5), math.rad(0), math.rad(0)), 0.5)
			CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
			RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(30), math.rad(20)), 0.5)
			LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(-30), math.rad(-20)), 0.5)
			RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(-30), math.rad(-20)), 0.5)
			LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(30), math.rad(20)), 0.5)
		end
	end
	Humanoid.WalkSpeed = 16
	attack = false
end

	Shoot = function(asd)
	local MainPos = asd.Position
	local MainPos2 = mouse.Hit.p
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	num = 100
	coroutine.resume(coroutine.create(function(Spreaded)
		repeat
			wait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, 50, RootPart.Parent)
			local TheHit = mouse.Hit.p
			local mag = (MainPos - pos).magnitude
			Effects.Cylinder.Create(BrickColor.new("Toothpaste"), CFrame.new((MainPos + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 3, mag * 5, 3, 0.5, 1, 0.5, 0.4)
			MainPos = MainPos + MouseLook.lookVector * 50
			num = num - 1
			if hit ~= nil then
				num = 0
				local ref = CFuncs.Part.Create(effect, "Neon", 0, 1, BrickColor.new("Dark stone grey"), "Reference", Vector3.new())
				ref.Anchored = true
				ref.CFrame = CFrame.new(pos)
				MagnitudeDamage(ref, 5, 8, 15, BrickColor.new("Toothpaste"), BrickColor.new("Institutional white"))
				game:GetService("Debris"):AddItem(ref, 1)
			end
		until num <= 0
	end
))
end

	AutoFire = function()
	attack = true
	Humanoid.WalkSpeed = 2
	for i = 1, 3 do
		for i = 0, 1, 0.5 do
			swait()
			MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
			CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.5)
			RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(30), math.rad(20)), 0.5)
			LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(-30), math.rad(-20)), 0.5)
			RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(-30), math.rad(-20)), 0.5)
			LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(30), math.rad(20)), 0.5)
		end
		Shoot(BarrelL)
		CFuncs.Sound.Create("rbxassetid://157396527", BarrelL, 1, 0.8)
		CFuncs.Sound.Create("rbxassetid://184574181", BarrelL, 1, 1.3)
		Effects.Sphere.Create(BrickColor.new("Toothpaste"), BarrelL.CFrame, 6, 6, 6, 3, 3, 3, 0.3, m)
		for i = 0, 1, 0.5 do
			swait()
			MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.6, 0) * angles(math.rad(0.1), math.rad(0), math.rad(0)), 0.5)
			CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.5)
			RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(30), math.rad(20)), 0.5)
			LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(-30), math.rad(-20)), 0.5)
			RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(-30), math.rad(-20)), 0.5)
			LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(30), math.rad(20)), 0.5)
		end
		for i = 0, 1, 0.5 do
			swait()
			MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
			CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.5)
			RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(30), math.rad(20)), 0.5)
			LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(-30), math.rad(-20)), 0.5)
			RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(-30), math.rad(-20)), 0.5)
			LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(30), math.rad(20)), 0.5)
		end
		Shoot(BarrelR)
		CFuncs.Sound.Create("rbxassetid://157396527", BarrelR, 1, 0.8)
		CFuncs.Sound.Create("rbxassetid://184574181", BarrelR, 1, 1.3)
		Effects.Sphere.Create(BrickColor.new("Toothpaste"), BarrelR.CFrame, 6, 6, 6, 3, 3, 3, 0.3, m)
		for i = 0, 1, 0.5 do
			swait()
			MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.6, 0) * angles(math.rad(0.1), math.rad(0), math.rad(0)), 0.5)
			CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(0)), 0.5)
			RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(30), math.rad(20)), 0.5)
			LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(-30), math.rad(-20)), 0.5)
			RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(-30), math.rad(-20)), 0.5)
			LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(9.5), math.rad(30), math.rad(20)), 0.5)
		end
	end
	Humanoid.WalkSpeed = 16
	attack = false
end

	QuadShot = function()
	
	attack = true
	Humanoid.WalkSpeed = 0
	for i = 0, 1, 0.1 do
		swait()
		MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
		CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
		RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(30), math.rad(20)), 0.3)
		LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(-30), math.rad(-20)), 0.3)
		RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(-30), math.rad(-20)), 0.3)
		LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(30), math.rad(20)), 0.3)
	end
	Effects.Sphere.Create(BrickColor.new("Toothpaste"), CannonBarrel.CFrame, 6, 6, 6, 3, 3, 3, 0.1, m)
	for i = 1, 5 do
		CFuncs.Sound.Create("rbxassetid://131632972", CannonBarrel, 1, 1.1)
		local hit, pos = rayCast(CannonBarrel.Position, CannonBarrel.CFrame * CFrame.fromEulerAnglesXYZ(1.57, 0, 0).lookVector, -220, Character)
		local mag = (CannonBarrel.Position - pos).magnitude
		Effects.Cylinder.Create(BrickColor.new("Toothpaste"), CFrame.new((CannonBarrel.Position + pos) / 2, pos) * angles(1.57, 0, 0), 6, mag * 5, 6, -0.5, 1, -0.5, 0.1)
		local cf2 = mouse.Hit.p + Vector3.new(math.random(-1500, 1500) / 100, 100, math.random(-1500, 1500) / 100)
		local hit2, pos2 = rayCast(cf2, CFrame.new(cf2, cf2 - Vector3.new(0, 1, 0)).lookVector, 999, Character)
		if hit2 ~= nil then
			local d1 = CFuncs.Part.Create(effect, "Neon", 0, 0.5, BrickColor.new("Toothpaste"), "Effect", Vector3.new())
			d1.Anchored = true
			d1.CFrame = CFrame.new(pos2)
			game:GetService("Debris"):AddItem(d1, 5)
			local msh = CFuncs.Mesh.Create("CylinderMesh", d1, "nil", "nil", Vector3.new(0, 0, 0), Vector3.new(30, 5, 30))
			local d2 = d1:Clone()
			d2.Parent = d1
			d2.CFrame = CFrame.new(d1.Position)
			d2.BrickColor = BrickColor.new("Cyan")
			d2.Mesh.Scale = Vector3.new(0, 5, 0)
			table.insert(Effects, {d1, "QuadShot", d2, d2.Mesh, 0})
		end
	end
	for i = 0, 1, 0.13 do
		swait()
		MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.7, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
		CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-70), math.rad(0)), 0.3)
		RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(40), math.rad(30)), 0.3)
		LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(30), math.rad(-40), math.rad(-30)), 0.3)
		RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(-40), math.rad(-30)), 0.3)
		LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(40), math.rad(30)), 0.3)
	end
	Humanoid.WalkSpeed = 16
	attack = false
end

	local Sprint = false
	local CanAttack = true
	mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 and CanAttack == true and cooldown5 >= 0 then
		cooldown5 = cooldown5 - 2
		attacktype = 2
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=138083993", BarrelL, 1, 1)
		Effects.Block.Create(BrickColor.new("Toothpaste"), BarrelL.CFrame, 1, 1, 1, 1.5, 1.5, 1.5, 0.07, 1)
		for i = 1, 3 do
			LaserBarrage(BarrelL, Character)
		end
	else
			if attack == false and attacktype == 2 and CanAttack == true and cooldown5 >= 0 then
				cooldown5 = cooldown5 - 2
				attacktype = 1
				CFuncs.Sound.Create("http://www.roblox.com/asset/?id=138083993", BarrelR, 1, 1)
				Effects.Block.Create(BrickColor.new("Toothpaste"), BarrelR.CFrame, 1, 1, 1, 1.5, 1.5, 1.5, 0.07, 1)
				for i = 1, 3 do
					LaserBarrage(BarrelR, Character)
			end
		end
	end
end
)
	mouse.KeyDown:connect(function(k)
	
	k = k:lower()
	if attack == false and k == "z" and co1 <= cooldown1 then
		cooldown1 = 0
		LaserShot()
	else
		if attack == false and k == "x" and co2 <= cooldown2 then
			cooldown2 = 0
			FireCannon()
		else
			if attack == false and k == "c" and co3 <= cooldown3 then
				cooldown3 = 0
				AutoFire()
			else
				if attack == false and k == "v" and co4 <= cooldown4 then
					cooldown4 = 0
					QuadShot()
				else
					if attack == false and k == "0" then
						--[[if Player.Name ~= "Nocturna_Alteriano" and Player.Name ~= "Qaeo" and Player.Name ~= "Player1" then
							return 
						end]]
						Sprint = true
					end
				end
			end
		end
	end
end
)
	mouse.KeyUp:connect(function(k)
	
	k = k:lower()
	if attack == false and k == "0" and Sprint == true then
		Sprint = false
	end
end
)
	local floornum = 0
	local floornum2 = 0
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
	if cooldown5 <= co5 and attack == false then
		cooldown5 = cooldown5 + 0.033333333333333
	end
end

	while true do
		swait()
		updateskills()
		bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
		bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
		bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
		bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
		bar5:TweenSize(UDim2.new(1 * (cooldown5 / co5), 0, 1, 0), "Out", "Quad", 0.5)
		if Sprint == false then
			local aim = CFrame.new(RootPart.Position, mouse.Hit.p)
			local direction = aim.lookVector
			local headingA = math.atan2(direction.x, direction.z)
			headingA = math.deg(headingA)
			Humanoid.AutoRotate = false
			RootPart.CFrame = CFrame.new(RootPart.Position) * angles(math.rad(0), math.rad(headingA - 180), math.rad(0))
		else
				Humanoid.AutoRotate = true
				for i,v in pairs(Character:GetChildren()) do
					if v:IsA("Model") then
						for _,c in pairs(v:GetChildren()) do
							if c:IsA("Part") then
								c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
							end
						end
					end
				end
			end
				Humanoid.PlatformStand = false
				Humanoid.Sit = false
				for i,v in pairs(Torso:GetChildren()) do
					if v:IsA("BodyGyro") then
						v:remove()
					elseif v:IsA("BodyPosition") then
							v:remove()
						elseif v:IsA("BodyForce") then
								v:remove()
							elseif v:IsA("BodyVelocity") then
									v:remove()
								elseif v:IsA("BodyThrust") then
										v:remove()
									elseif v:IsA("BodyAngularVelocity") then
											v:remove()
					end
				end
				for i,v in pairs(Character:GetChildren()) do
					if v:IsA("Part") then
						v.Transparency = 1
					elseif v:IsA("Hat") then
							v:WaitForChild("Handle").Transparency = 1
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
							change = 1
							MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
							CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(10), math.rad(0)), 0.3)
							RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(30), math.rad(30)), 0.3)
							LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(-30), math.rad(-30)), 0.3)
							RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(-30), math.rad(-30)), 0.3)
							LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(30), math.rad(30)), 0.3)
						end
					else
						if RootPart.Velocity.y < -1 and hit == nil then
							Anim = "Fall"
							if attack == false then
								change = 1
								MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
								CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(10), math.rad(0)), 0.3)
								RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(30), math.rad(50)), 0.3)
								LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(-30), math.rad(-50)), 0.3)
								RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(-30), math.rad(-50)), 0.3)
								LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(20), math.rad(30), math.rad(50)), 0.3)
							end
						else
							if Torsovelocity < 1 and hit ~= nil then
								Anim = "Idle"
								if attack == false then
									change = 1
									MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.5 + 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
									CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20 + 1 * math.cos((sine) / 20)), math.rad(0)), 0.3)
									RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0 - 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(10 + 1 * math.cos((sine) / 20)), math.rad(20 - 1 * math.cos((sine) / 20)), math.rad(20)), 0.3)
									LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0 - 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(10 + 1 * math.cos((sine) / 20)), math.rad(-20 + 1 * math.cos((sine) / 20)), math.rad(-20)), 0.3)
									RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0 - 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(10 + 1 * math.cos((sine) / 20)), math.rad(-20 + 1 * math.cos((sine) / 20)), math.rad(-20)), 0.3)
									LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0 - 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(10 + 1 * math.cos((sine) / 20)), math.rad(20 - 1 * math.cos((sine) / 20)), math.rad(20)), 0.3)
								end
							else
								if 2 < Torsovelocity and hit ~= nil then
									Anim = "Walk"
									if attack == false and Sprint == false then
										change = 1.5
										Humanoid.WalkSpeed = 16
										floornum = floornum + 1
										floornum2 = floornum2 + 1
										if 15 <= floornum then
											floornum = 0
											CFuncs.Sound.Create("rbxassetid://180199793", Torso, 0.9, math.random(220, 250) / 100)
										end
										if 16 <= floornum2 then
											floornum2 = 0
											CFuncs.Sound.Create("rbxassetid://180199793", Torso, 0.9, math.random(220, 250) / 100)
										end
										MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.3 + 0.01 * math.cos((sine) / 8), 0) * angles(math.rad(0), math.rad(2 * math.cos((sine) / 7)), math.rad(0)), 0.3)
										CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
										RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0 - 0.5 * math.cos((sine) / 8) / 2, 0 + 0.5 * math.sin((sine) / 8) / 2) * angles(math.rad(-20 * math.sin((sine) / 8)), math.rad(20), math.rad(20)), 0.3)
										LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0 + 0.5 * math.cos((sine) / 8) / 2, 0 - 0.5 * math.sin((sine) / 8) / 2) * angles(math.rad(20 * math.sin((sine) / 8)), math.rad(-20), math.rad(-20)), 0.3)
										RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0 + 0.5 * math.cos((sine) / 8) / 2, 0 + 0.5 * math.sin((sine) / 8) / 2) * angles(math.rad(-20 * math.sin((sine) / 8)), math.rad(-20), math.rad(-20)), 0.3)
										LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0 - 0.5 * math.cos((sine) / 8) / 2, 0 - 0.5 * math.sin((sine) / 8) / 2) * angles(math.rad(20 * math.sin((sine) / 8)), math.rad(20), math.rad(20)), 0.3)
									else
										if attack == false and Sprint == true then
											change = 3
											hitfloor2 = rayCast(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 6, Character)
											floornum = floornum + 1
											if 2 <= floornum then
												floornum = 0
												if hitfloor2 ~= nil then
													Effects.Break.Create(BrickColor.new("New Yeller"), CFrame.new(Ball1.Position), 3, 1, 2)
													Effects.Break.Create(BrickColor.new("New Yeller"), CFrame.new(Ball2.Position), 3, 1, 2)
												end
											end
											Humanoid.WalkSpeed = 100
											MainHandleWeld.C0 = clerp(MainHandleWeld.C0, CFrame.new(0, -0.7 + 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
											CannonHandleWeld.C0 = clerp(CannonHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
											RLegFHandleWeld.C0 = clerp(RLegFHandleWeld.C0, CFrame.new(0, 0.2 - 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(20 + 1 * math.cos((sine) / 20)), math.rad(20 - 1 * math.cos((sine) / 20)), math.rad(25)), 0.3)
											LLegFHandleWeld.C0 = clerp(LLegFHandleWeld.C0, CFrame.new(0, 0.2 - 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(20 + 1 * math.cos((sine) / 20)), math.rad(-20 + 1 * math.cos((sine) / 20)), math.rad(-25)), 0.3)
											RLegBHandleWeld.C0 = clerp(RLegBHandleWeld.C0, CFrame.new(0, 0 - 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(20 + 1 * math.cos((sine) / 20)), math.rad(-10 + 1 * math.cos((sine) / 20)), math.rad(-15)), 0.3)
											LLegBHandleWeld.C0 = clerp(LLegBHandleWeld.C0, CFrame.new(0, 0 - 0.1 * math.cos((sine) / 20), 0) * angles(math.rad(20 + 1 * math.cos((sine) / 20)), math.rad(10 - 1 * math.cos((sine) / 20)), math.rad(15)), 0.3)
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
									end
									do
										if Thing[2] == "QuadShot" then
											if Thing[5] < 30 then
												Thing[5] = Thing[5] + 1.5
												Thing[4].Scale = Vector3.new(Thing[5], 5, Thing[5])
											else
												refda = CFuncs.Part.Create(effect, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
												refda.Anchored = true
												refda.CFrame = CFrame.new(Thing[1].Position)
												game:GetService("Debris"):AddItem(refda, 1)
												CFuncs.Sound.Create("rbxassetid://300916105", refda, 1, 1)
												MagnitudeDamage(refda, 20, 10, 15, BrickColor.new("Toothpaste"), BrickColor.new("Institutional white"))
												Effects.Cylinder.Create(BrickColor.new("Toothpaste"), CFrame.new(refda.Position), 3, 9999, 3, 1, 1, 1, 0.1)
												for i = 1, 3 do
													Effects.Sphere.Create(BrickColor.new("Toothpaste"), CFrame.new(refda.Position), 10, 10, 10, 4 * i, 4 * i, 4 * i, 0.08)
												end
												Thing[1].Parent = nil
												table.remove(Effects, e)
											end
										end
										do
											if Thing[2] == "Block2" then
												Thing[1].CFrame = Thing[1].CFrame
												Mesh = Thing[7]
												Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											end
											do
												if Thing[2] == "Cylinder" then
													Mesh = Thing[1].Mesh
													Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
													Thing[1].Transparency = Thing[1].Transparency + Thing[3]
												end
												do
													if Thing[2] == "Blood" then
														Mesh = Thing[7]
														Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
														Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
													end
													do
														if Thing[2] == "Elec" then
															Mesh = Thing[1].Mesh
															Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														end
														do
															if Thing[2] == "Disappear" then
																Thing[1].Transparency = Thing[1].Transparency + Thing[3]
															end
															do
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