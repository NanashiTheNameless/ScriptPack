--[[Clock by grgrgry21.
             A
          A     A
         A   C   A
          A     A
             A
507267777
--]]


wait(0.016666666666667)

script.Name = "k"
local Player = game.Players.LocalPlayer
local Character = Player.Character
	local Humanoid = Character.Humanoid
	local Effects = {}
	local hobb = 0
		local hobb2 = 0
		ShootEffects = {}
	local mouse = Player:GetMouse()
	--[[local m = Instance.new("Model", Character)
	m.Name = "WeaponModel"]]
	local effect = Instance.new("Model", Character)
	effect.Name = "hb"
	local cf = CFrame.new
	local it = Instance.new
       vt = Vector3.new
	local LeftArm = Character["Left Arm"]
	local RightArm = Character["Right Arm"]
	local LeftLeg = Character["Left Leg"]
	local RightLeg = Character["Right Leg"]
	local Head = Character.Head
	local Torso = Character.Torso
	local Lighting = game.Lighting
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

	local ZAWARUDO = false
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
aaa = Instance.new("Sound",Character) -- due le sound remov b
aaa.Volume = 2
aaa.PlaybackSpeed = 1
aaa.SoundId = "rbxassetid://316900066"
aaa:Stop()
aaa.Name = "ay"

	clerp = function(a, b, t)
	
	return a:lerp(b, t)
	end
	local CC1 = Instance.new("ColorCorrectionEffect",Lighting)
CC1.Saturation = -1
CC1.Enabled = false
local CC2 = Instance.new("ColorCorrectionEffect",Lighting)
CC2.Brightness = 1
CC2.Enabled = false
coroutine.wrap(function()
		while true and wait(.5) do 
	if CC1.Parent == nil then
CC1 = Instance.new("ColorCorrectionEffect",Lighting)
CC1.Saturation = -1
CC1.Enabled = false
elseif CC2.Parent == nil then
CC2 = Instance.new("ColorCorrectionEffect",Lighting)
CC2.Brightness = 1
CC2.Enabled = false
end
		end
		end)()


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


	local co1 = 15
	local co2 = 8
	local co3 = 20
	local co5 = 30
	local co4 = 32
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local cooldown5 = 0
	local skillcolorscheme = BrickColor.new("Pastel light blue").Color
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
	label.TextColor3 = Color3.new(255, 250, 190)
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
	text1.TextColor3 = Color3.new(255, 250, 190)
	text1.TextStrokeTransparency = 0
	text1.FontSize = Enum.FontSize.Size18
	text1.Font = Enum.Font.SourceSansLight
	text1.BorderSizePixel = 0
	text1.TextScaled = true
	text1.Text = "[Z]\n Time Boost"
	text2 = Instance.new("TextLabel", framesk2)
	text2.BackgroundTransparency = 1
	text2.Size = UDim2.new(1, 0, 1, 0)
	text2.Position = UDim2.new(0, 0, 0, 0)
	text2.TextColor3 = Color3.new(255, 250, 190)
	text2.TextStrokeTransparency = 0
	text2.FontSize = Enum.FontSize.Size18
	text2.Font = Enum.Font.SourceSansLight
	text2.BorderSizePixel = 0
	text2.TextScaled = true
	text2.Text = "[X]\n Temporal Bullet"
	text3 = Instance.new("TextLabel", framesk3)
	text3.BackgroundTransparency = 1
	text3.Size = UDim2.new(1, 0, 1, 0)
	text3.Position = UDim2.new(0, 0, 0, 0)
	text3.TextColor3 = Color3.new(255, 250, 190)
	text3.TextStrokeTransparency = 0
	text3.FontSize = Enum.FontSize.Size18
	text3.Font = Enum.Font.SourceSansLight
	text3.BorderSizePixel = 0
	text3.TextScaled = false
	text3.Text = "[C]\n Chrono Field"
	text4 = Instance.new("TextLabel", framesk4)
	text4.BackgroundTransparency = 1
	text4.Size = UDim2.new(1, 0, 1, 0)
	text4.Position = UDim2.new(0, 0, 0, 0)
	text4.TextColor3 = Color3.new(255, 250, 190)
	text4.TextStrokeTransparency = 0
	text4.FontSize = Enum.FontSize.Size18
	text4.Font = Enum.Font.SourceSansLight
	text4.BorderSizePixel = 0
	text4.TextScaled = true
	text4.Text = "[V]\n ZA WARUDO"
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
	BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
------------------

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

fff1 = New("Model",Character,"fff1",{})
d1 = New("Part",fff1,"d1",{Transparency = 1,BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(21.4104996, 13.1000175, 49.3994942, -4.37113883e-008, -1, 4.37113883e-008, -4.37113918e-008, -4.37113847e-008, -1, 1, -4.37113918e-008, -4.37113883e-008),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("CylinderMesh",d1,"Mesh",{Scale = Vector3.new(1.29999995, 1.00999999, 1.29999995),})

asda1 = Instance.new("Weld",d1) 
asda1.Part0 = asda1.Parent 
asda1.Part1 = RootPart
asda1.C0 = CFrame.new(1.6,-2,0)*CFrame.Angles(-math.rad(90),0,math.rad(90))--math.rad(90)
--^ main
m = New("Model",Character,"m",{})
ref1 = New("Part",m,"ref1",{BrickColor = BrickColor.new("Navy blue"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6004982, 13.1000061, 49.3995209, 0, 1, 8.21014128e-015, -1, 0, 0, 0, 8.21014128e-015, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0.12549, 0.376471),})

asda2 = Instance.new("Weld",ref1) 
asda2.Part0 = asda2.Parent 
asda2.Part1 = d1
--asda2.C0 = CFrame.new(1,-1.785,0)*CFrame.Angles(-math.rad(90),0,math.rad(90))
--minute
h = New("Model",Character,"h",{})
ref2 = New("Part",h,"ref2",{BrickColor = BrickColor.new("Navy blue"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6004982, 13.1000061, 49.3995209, 0, 1, 8.21014128e-015, -1, 0, 0, 0, 8.21014128e-015, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0.12549, 0.376471),})

asda3 = Instance.new("Weld",ref2) 
asda3.Part0 = asda3.Parent 
asda3.Part1 = d1
--asda3.C0 = CFrame.new(1,-1.785,0)*CFrame.Angles(-math.rad(90),0,math.rad(90))
--hour
s1 = New("Model",Character,"s1",{})
ref3 = New("Part",s1,"ref3",{BrickColor = BrickColor.new("Navy blue"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6004982, 13.1000061, 49.3995209, 0, 1, 1.64202821e-015, -1, 0, 0, 0, 1.64202832e-015, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0.12549, 0.376471),})

asda4 = Instance.new("Weld",ref3) 
asda4.Part0 = asda4.Parent 
asda4.Part1 = d1
--asda4.C0 = CFrame.new(1,-2.2,0)*CFrame.Angles(-math.rad(90),0,math.rad(90))

--sinstuff

s2 = New("Model",Character,"s2",{})
ref4 = New("Part",s2,"ref4",{BrickColor = BrickColor.new("Navy blue"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6004982, 13.1000061, 49.3995209, 0, 1, 1.64202821e-015, -1.00000024, 0, 0, 0, 1.64202853e-015, 1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0.12549, 0.376471),})

asda5 = Instance.new("Weld",ref4) 
asda5.Part0 = asda5.Parent 
asda5.Part1 = d1 --RootJoint
--asda5.C0 = CFrame.new(1,-2.2,0)*CFrame.Angles(-math.rad(90),0,math.rad(90))

--sinstuff2
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 9.70000458, 49.3995209, 0, 1, 4.92608443e-015, -1.00000024, 0, 0, 0, 4.9260857e-015, 1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),C1 = CFrame.new(3.40000057, -0.200000763, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 16.5000076, 49.3995209, 0, 1, 4.92608443e-015, -1.00000024, 0, 0, 0, 4.9260857e-015, 1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),C1 = CFrame.new(-3.40000153, -0.200000763, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 13.1000061, 45.999527, -3.28405643e-015, 1, 0, -0, 0, -1.00000024, -1.00000024, 3.28405727e-015, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),C1 = CFrame.new(0, -0.200000763, -3.3999939, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 13.1000061, 52.7995224, -3.28405643e-015, 1, 0, -0, 0, -1.00000024, -1.00000024, 3.28405727e-015, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),C1 = CFrame.new(0, -0.200000763, 3.40000153, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 10.6958447, 51.803688, -2.32217873e-015, 1, -2.32217873e-015, 0.707107008, 0, -0.707107008, -0.707107008, 3.28405727e-015, -0.707107008),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, -0.707106829),C1 = CFrame.new(2.4041605, -0.200000763, 2.40416718, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 15.5041714, 51.803688, -2.32217873e-015, 1, 2.32217873e-015, -0.707107008, 0, -0.707107008, -0.707107008, 3.28405727e-015, 0.707107008),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, 0.707106829),C1 = CFrame.new(-2.40416431, -0.200000763, 2.40416718, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 15.5041676, 46.995369, -2.32217873e-015, 1, -2.32217873e-015, 0.707107008, 0, -0.707107008, -0.707107008, 3.28405727e-015, -0.707107008),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, -0.707106829),C1 = CFrame.new(-2.40416145, -0.200000763, -2.40415192, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 10.6958427, 46.9953613, -2.32217873e-015, 1, 2.32217873e-015, -0.707107008, 0, -0.707107008, -0.707107008, 3.28405727e-015, 0.707107008),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, 0.707106829),C1 = CFrame.new(2.40416241, -0.200000763, -2.40415955, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 16.3841534, 50.2795067, -8.49976122e-016, 1, 3.17215512e-015, -0.965926111, 0, -0.258819044, -0.258819044, 3.28405727e-015, 0.965926111),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, -0.258818984, 1, 0, 0, 0, -0.258818984, 0.965925872),C1 = CFrame.new(-3.28414726, -0.200000763, 0.879985809, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 12.2200203, 52.68367, -3.17215512e-015, 1, -8.49976122e-016, 0.258819044, 0, -0.965926111, -0.965926111, 3.28405727e-015, -0.258819044),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, -0.258818984),C1 = CFrame.new(0.879985809, -0.200000763, 3.28414917, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 16.0444851, 47.6995316, -1.64202895e-015, 1, -2.84407617e-015, 0.866025567, 0, -0.500000358, -0.500000358, 3.28405727e-015, -0.866025567),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0.866025388, -0.500000238, 1, 0, 0, 0, -0.500000238, -0.866025388),C1 = CFrame.new(-2.94447899, -0.200000763, -1.69998932, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.4000101, 46.45504, -2.84407617e-015, 1, 1.64202895e-015, -0.500000358, 0, -0.866025567, -0.866025567, 3.28405727e-015, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.500000238, -0.866025388, 1, 0, 0, 0, -0.866025388, 0.500000238),C1 = CFrame.new(1.69999599, -0.200000763, -2.9444809, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.8000078, 52.3440094, -2.84407617e-015, 1, 1.64202895e-015, -0.500000358, 0, -0.866025567, -0.866025567, 3.28405727e-015, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.500000238, -0.866025388, 1, 0, 0, 0, -0.866025388, 0.500000238),C1 = CFrame.new(-1.70000172, -0.200000763, 2.94448853, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 9.81585693, 48.5195389, -8.49976122e-016, 1, 3.17215512e-015, -0.965926111, 0, -0.258819044, -0.258819044, 3.28405727e-015, 0.965926111),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, -0.258818984, 1, 0, 0, 0, -0.258818984, 0.965925872),C1 = CFrame.new(3.28414822, -0.200000763, -0.879981995, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 13.97999, 46.1153793, -3.17215512e-015, 1, -8.49976122e-016, 0.258819044, 0, -0.965926111, -0.965926111, 3.28405727e-015, -0.258819044),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, -0.258818984),C1 = CFrame.new(-0.879983902, -0.200000763, -3.28414154, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 10.1555214, 51.0995255, -1.64202895e-015, 1, -2.84407617e-015, 0.866025567, 0, -0.500000358, -0.500000358, 3.28405727e-015, -0.866025567),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0.866025388, -0.500000238, 1, 0, 0, 0, -0.500000238, -0.866025388),C1 = CFrame.new(2.94448376, -0.200000763, 1.70000458, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.4000101, 52.3440094, -2.84407617e-015, 1, -1.64202895e-015, 0.500000358, 0, -0.866025567, -0.866025567, 3.28405727e-015, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0.500000238, -0.866025388, 1, 0, 0, 0, -0.866025388, -0.500000238),C1 = CFrame.new(1.69999599, -0.200000763, 2.94448853, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 12.2200203, 46.1153793, -3.17215512e-015, 1, 8.49976122e-016, -0.258819044, 0, -0.965926111, -0.965926111, 3.28405727e-015, 0.258819044),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, 0.258818984),C1 = CFrame.new(0.879985809, -0.200000763, -3.28414154, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 9.81585693, 50.2795067, 8.49976122e-016, 1, 3.17215512e-015, -0.965926111, 0, 0.258819044, 0.258819044, 3.28405727e-015, 0.965926111),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, 0.258818984, 1, 0, 0, 0, 0.258818984, 0.965925872),C1 = CFrame.new(3.28414822, -0.200000763, 0.879985809, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 16.3841534, 48.5195389, 8.49976122e-016, 1, 3.17215512e-015, -0.965926111, 0, 0.258819044, 0.258819044, 3.28405727e-015, 0.965926111),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, 0.258818984, 1, 0, 0, 0, 0.258818984, 0.965925872),C1 = CFrame.new(-3.28414726, -0.200000763, -0.879981995, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 16.0444946, 51.0995255, -1.64202895e-015, 1, 2.84407617e-015, -0.866025567, 0, -0.500000358, -0.500000358, 3.28405727e-015, 0.866025567),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.866025388, -0.500000238, 1, 0, 0, 0, -0.500000238, 0.866025388),C1 = CFrame.new(-2.94448853, -0.200000763, 1.70000458, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 13.97999, 52.68367, -3.17215512e-015, 1, 8.49976122e-016, -0.258819044, 0, -0.965926111, -0.965926111, 3.28405727e-015, 0.258819044),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, 0.258818984),C1 = CFrame.new(-0.879983902, -0.200000763, 3.28414917, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.800004, 46.4550476, -2.84407617e-015, 1, -1.64202895e-015, 0.500000358, 0, -0.866025567, -0.866025567, 3.28405727e-015, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, 0.500000238, -0.866025388, 1, 0, 0, 0, -0.866025388, -0.500000238),C1 = CFrame.new(-1.6999979, -0.200000763, -2.94447327, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 10.1555214, 47.6995239, -1.64202895e-015, 1, 2.84407617e-015, -0.866025567, 0, -0.500000358, -0.500000358, 3.28405727e-015, 0.866025567),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(0.400000006, 0.699999988, 4.5),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.866025388, -0.500000238, 1, 0, 0, 0, -0.500000238, 0.866025388),C1 = CFrame.new(2.94448376, -0.200000763, -1.69999695, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.5, 0.200000003, 0.400000006),CFrame = CFrame.new(21.4004974, 16.7500076, 49.3995209, 0, 1, 4.92608443e-015, -1.00000024, 0, 0, 0, 4.9260857e-015, 1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(1, 0.699999988, 1),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),C1 = CFrame.new(-3.65000153, -0.200000763, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.5, 0.200000003, 0.400000006),CFrame = CFrame.new(21.4004974, 9.45000458, 49.3995209, 0, 1, 4.92608443e-015, -1.00000024, 0, 0, 0, 4.9260857e-015, 1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(1, 0.699999988, 1),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),C1 = CFrame.new(3.65000057, -0.200000763, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 16.7500038, 49.099514, -1, 0, 3.28405643e-015, -0, -1.00000024, 0, -3.28405727e-015, 0, 1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(-3.64999771, -0.200000763, -0.300006866, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 16.7500076, 49.6995239, 1, 0, -1.1920929e-007, 0, -1.00000024, 0, -1.19209318e-007, 0, -1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, -1.1920929e-007, 0, -1, 0, -1.1920929e-007, 0, -1),C1 = CFrame.new(-3.65000153, -0.200000763, 0.300003052, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 17.8000183, 49.5995255, -1, 0, -3.28405643e-015, -0, 1.00000024, -0, -3.28405727e-015, 0, -1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-4.70001221, -0.200000763, 0.200004578, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 17.8000183, 49.1995239, 1, 0, 3.28405643e-015, 0, 1.00000024, 0, 3.28405727e-015, 0, 1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C1 = CFrame.new(-4.70001221, -0.200000763, -0.199996948, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 9.45001125, 49.6995316, -1, 0, -3.28405643e-015, -0, 1.00000024, -0, -3.28405727e-015, 0, -1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(3.6499939, -0.200000763, 0.300010681, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 9.45000935, 49.0995331, 1, 0, 3.28405643e-015, 0, 1.00000024, 0, 3.28405727e-015, 0, 1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C1 = CFrame.new(3.6499958, -0.200000763, -0.299987793, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 8.39999294, 49.5995331, 1, 0, -3.28405643e-015, 0, -1.00000024, -0, 3.28405727e-015, 0, -1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(4.70001221, -0.200000763, 0.200012207, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 8.39999485, 49.1995239, -1, 0, 3.28405643e-015, -0, -1.00000024, 0, -3.28405727e-015, 0, 1.00000024),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(4.7000103, -0.200000763, -0.199996948, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.5, 0.200000003, 0.400000006),CFrame = CFrame.new(21.4004974, 14.9250546, 52.5605164, -2.84407617e-015, 1, 1.64202895e-015, -0.500000358, 0, -0.866025567, -0.866025567, 3.28405727e-015, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(1, 0.699999988, 1),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.500000238, -0.866025388, 1, 0, 0, 0, -0.866025388, 0.500000238),C1 = CFrame.new(-1.82504749, -0.200000763, 3.16099548, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.5, 0.200000003, 0.400000006),CFrame = CFrame.new(21.4004974, 11.2750511, 46.238533, -2.84407617e-015, 1, 1.64202895e-015, -0.500000358, 0, -0.866025567, -0.866025567, 3.28405727e-015, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(1, 0.699999988, 1),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.500000238, -0.866025388, 1, 0, 0, 0, -0.866025388, 0.500000238),C1 = CFrame.new(1.82495403, -0.200000763, -3.16098785, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 15.184866, 52.4105148, -1, -2.84407617e-015, 1.64202895e-015, -0, -0.500000358, -0.866025567, -3.28405727e-015, -0.866025567, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.500000238, -0.866025388, 0, -0.866025388, 0.500000238),C1 = CFrame.new(-2.08485985, -0.200000763, 3.01099396, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 14.6652422, 52.7105141, 1, -2.84407617e-015, -1.64202895e-015, 0, -0.500000358, 0.866025567, 3.28405727e-015, -0.866025567, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238),C1 = CFrame.new(-1.56523609, -0.200000763, 3.31099319, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 15.2768574, 53.5698624, -1, 2.84407617e-015, -1.64202895e-015, -0, 0.500000358, 0.866025567, -3.28405727e-015, 0.866025567, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.500000238, 0.866025388, 0, 0.866025388, -0.500000238),C1 = CFrame.new(-2.17685032, -0.200000763, 4.17034149, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 15.6232729, 53.369854, 1, 2.84407617e-015, 1.64202895e-015, 0, 0.500000358, -0.866025567, 3.28405727e-015, 0.866025567, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.500000238, 0.866025388, 0, -0.866025388, 0.500000238),C1 = CFrame.new(-2.52326584, -0.200000763, 3.9703331, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 11.0152378, 46.3885422, -1, 2.84407617e-015, -1.64202895e-015, -0, 0.500000358, 0.866025567, -3.28405727e-015, 0.866025567, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.500000238, 0.866025388, 0, 0.866025388, -0.500000238),C1 = CFrame.new(2.0847683, -0.200000763, -3.0109787, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 11.5348558, 46.0885391, 1, 2.84407617e-015, 1.64202895e-015, 0, 0.500000358, -0.866025567, 3.28405727e-015, 0.866025567, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.500000238, 0.866025388, 0, -0.866025388, 0.500000238),C1 = CFrame.new(1.56515026, -0.200000763, -3.31098175, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 10.5768328, 45.4291992, 1, -2.84407617e-015, -1.64202895e-015, 0, -0.500000358, 0.866025567, 3.28405727e-015, -0.866025567, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.500000238, -0.866025388, 0, 0.866025388, -0.500000238),C1 = CFrame.new(2.52317238, -0.200000763, -3.97032166, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 10.9232502, 45.2291946, -1, -2.84407617e-015, 1.64202895e-015, -0, -0.500000358, -0.866025567, -3.28405727e-015, -0.866025567, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.500000238, -0.866025388, 0, -0.866025388, 0.500000238),C1 = CFrame.new(2.17675591, -0.200000763, -4.17032623, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.5, 0.200000003, 0.400000006),CFrame = CFrame.new(21.4004974, 14.9250469, 46.238533, 2.84407617e-015, 1, 1.64202895e-015, -0.500000358, 0, 0.866025567, 0.866025567, 3.28405727e-015, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(1, 0.699999988, 1),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.500000238, 0.866025388, 1, 0, 0, 0, 0.866025388, 0.500000238),C1 = CFrame.new(-1.82503986, -0.200000763, -3.16098785, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.5, 0.200000003, 0.400000006),CFrame = CFrame.new(21.4004974, 11.2750435, 52.560524, 2.84407617e-015, 1, 1.64202895e-015, -0.500000358, 0, 0.866025567, 0.866025567, 3.28405727e-015, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",r,"Mesh",{Scale = Vector3.new(1, 0.699999988, 1),})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 0, -0.500000238, 0.866025388, 1, 0, 0, 0, 0.866025388, 0.500000238),C1 = CFrame.new(1.82496166, -0.200000763, 3.16100311, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 14.6652384, 46.0885315, -1, 2.84407617e-015, 1.64202895e-015, -0, -0.500000358, 0.866025567, -3.28405727e-015, 0.866025567, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.500000238, 0.866025388, 0, 0.866025388, 0.500000238),C1 = CFrame.new(-1.56523228, -0.200000763, -3.31098938, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 15.1848583, 46.3885345, 1, 2.84407617e-015, -1.64202895e-015, 0, -0.500000358, -0.866025567, 3.28405727e-015, 0.866025567, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.500000238, 0.866025388, 0, -0.866025388, -0.500000238),C1 = CFrame.new(-2.08485222, -0.200000763, -3.01098633, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 15.6232605, 45.4291916, -1, -2.84407617e-015, -1.64202895e-015, -0, 0.500000358, -0.866025567, -3.28405727e-015, -0.866025567, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.500000238, -0.866025388, 0, -0.866025388, -0.500000238),C1 = CFrame.new(-2.52325344, -0.200000763, -3.97032928, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 15.2768497, 45.2291946, 1, -2.84407617e-015, 1.64202895e-015, 0, 0.500000358, 0.866025567, 3.28405727e-015, -0.866025567, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238),C1 = CFrame.new(-2.17684364, -0.200000763, -4.17032623, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 11.5348644, 52.7105255, -1, -2.84407617e-015, -1.64202895e-015, -0, 0.500000358, -0.866025567, -3.28405727e-015, -0.866025567, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.500000238, -0.866025388, 0, -0.866025388, -0.500000238),C1 = CFrame.new(1.56514168, -0.200000763, 3.31100464, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(21.4004974, 11.0152473, 52.4105225, 1, -2.84407617e-015, 1.64202895e-015, 0, 0.500000358, 0.866025567, 3.28405727e-015, -0.866025567, 0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238),C1 = CFrame.new(2.0847578, -0.200000763, 3.01100159, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 10.9232521, 53.5698624, 1, 2.84407617e-015, -1.64202895e-015, 0, -0.500000358, -0.866025567, 3.28405727e-015, 0.866025567, -0.500000358),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.500000238, 0.866025388, 0, -0.866025388, -0.500000238),C1 = CFrame.new(2.176754, -0.200000763, 4.17034149, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
r = New("Part",s2,"r",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.60000002, 0.400000006),CFrame = CFrame.new(21.4004974, 10.5768375, 53.3698616, -1, 0, 0, 0, -0.500000238, 0.866025388, 0, 0.866025388, 0.500000238),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",r,"Mesh",{Scale = Vector3.new(0.699999988, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",r,"mot",{Part0 = r,Part1 = ref4,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.500000238, 0.866025388, 0, 0.866025388, 0.500000238),C1 = CFrame.new(2.52316856, -0.200000763, 3.97034073, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})

a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 15.851428, 49.2080994, 2.32217873e-015, 1, 2.32217873e-015, -0.707106829, 0, 0.707106829, 0.707106829, 3.28405643e-015, 0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, 0.707106829, 1, 0, 0, 0, 0.707106829, 0.707106829),C1 = CFrame.new(-2.75142193, -0.200000763, -0.191421509, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 10.3585863, 49.2080994, -2.32217873e-015, 1, 2.32217873e-015, -0.707106829, 0, -0.707106829, -0.707106829, 3.28405643e-015, 0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, 0.707106829),C1 = CFrame.new(2.74141979, -0.200000763, -0.191421509, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 10.3585863, 49.5909424, -2.32217873e-015, 1, -2.32217873e-015, 0.707106829, 0, -0.707106829, -0.707106829, 3.28405643e-015, -0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, -0.707106829),C1 = CFrame.new(2.74141979, -0.200000763, 0.191421509, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 15.851428, 49.5909424, -2.32217873e-015, 1, 2.32217873e-015, -0.707106829, 0, -0.707106829, -0.707106829, 3.28405643e-015, 0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, 0.707106829),C1 = CFrame.new(-2.75142193, -0.200000763, 0.191421509, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 16.218586, 49.5909424, -2.32217873e-015, 1, -2.32217873e-015, 0.707106829, 0, -0.707106829, -0.707106829, 3.28405643e-015, -0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, -0.707106829),C1 = CFrame.new(-3.11857986, -0.200000763, 0.191421509, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 16.218586, 49.2080994, -2.32217873e-015, 1, 2.32217873e-015, -0.707106829, 0, -0.707106829, -0.707106829, 3.28405643e-015, 0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, 0.707106829),C1 = CFrame.new(-3.11857986, -0.200000763, -0.191421509, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 9.99142838, 49.5909424, -2.32217873e-015, 1, 2.32217873e-015, -0.707106829, 0, -0.707106829, -0.707106829, 3.28405643e-015, 0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, 0.707106829),C1 = CFrame.new(3.10857773, -0.200000763, 0.191421509, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 9.99142551, 49.2080994, 2.32217873e-015, 1, 2.32217873e-015, -0.707106829, 0, 0.707106829, 0.707106829, 3.28405643e-015, 0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, 0.707106829, 1, 0, 0, 0, 0.707106829, 0.707106829),C1 = CFrame.new(3.10858059, -0.200000763, -0.191421509, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
b = New("Part",s1,"b",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Transparency = 0.44999998807907,Transparency = 0.44999998807907,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.600000024),CFrame = CFrame.new(21.4004974, 16.0328484, 49.3995209, 2.32217873e-015, 1, 2.32217873e-015, -0.707106829, 0, 0.707106829, 0.707106829, 3.28405643e-015, 0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",b,"Mesh",{Scale = Vector3.new(0.800000012, 0.400000006, 0.800000012),})
mot = New("Motor",b,"mot",{Part0 = b,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, 0.707106829, 1, 0, 0, 0, 0.707106829, 0.707106829),C1 = CFrame.new(-2.93284225, -0.200000763, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
b = New("Part",s1,"b",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Transparency = 0.44999998807907,Transparency = 0.44999998807907,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.600000024),CFrame = CFrame.new(21.4004974, 10.182848, 49.3995209, 2.32217873e-015, 1, 2.32217873e-015, -0.707106829, 0, 0.707106829, 0.707106829, 3.28405643e-015, 0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",b,"Mesh",{Scale = Vector3.new(0.800000012, 0.400000006, 0.800000012),})
mot = New("Motor",b,"mot",{Part0 = b,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.707106829, 0.707106829, 1, 0, 0, 0, 0.707106829, 0.707106829),C1 = CFrame.new(2.91715813, -0.200000763, 0, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.3124399, 46.9253387, 3.17215512e-015, 1, -8.49976122e-016, 0.258818984, 0, 0.965925872, 0.965925872, 3.28405643e-015, -0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, 0.965925872, 1, 0, 0, 0, 0.965925872, -0.258818984),C1 = CFrame.new(-1.21243382, -0.200000763, -2.47418213, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.5660181, 51.6822815, 8.49976122e-016, 1, 3.17215512e-015, -0.965925872, 0, 0.258818984, 0.258818984, 3.28405643e-015, 0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, 0.258818984, 1, 0, 0, 0, 0.258818984, 0.965925872),C1 = CFrame.new(1.533988, -0.200000763, 2.28276062, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.8975716, 51.873703, -3.17215512e-015, 1, 8.49976122e-016, -0.258818984, 0, -0.965925872, -0.965925872, 3.28405643e-015, 0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, 0.258818984),C1 = CFrame.new(1.20243454, -0.200000763, 2.47418213, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.6439943, 47.1167603, 8.49976122e-016, 1, 3.17215512e-015, -0.965925872, 0, 0.258818984, 0.258818984, 3.28405643e-015, 0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, 0.258818984, 1, 0, 0, 0, 0.258818984, 0.965925872),C1 = CFrame.new(-1.54398823, -0.200000763, -2.28276062, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.8275738, 46.7987976, -3.17215512e-015, 1, 8.49976122e-016, -0.258818984, 0, -0.965925872, -0.965925872, 3.28405643e-015, 0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, 0.258818984),C1 = CFrame.new(-1.72756767, -0.200000763, -2.60072327, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.4960184, 46.6073761, 8.49976122e-016, 1, 3.17215512e-015, -0.965925872, 0, 0.258818984, 0.258818984, 3.28405643e-015, 0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, 0.258818984, 1, 0, 0, 0, 0.258818984, 0.965925872),C1 = CFrame.new(-1.39601231, -0.200000763, -2.79214478, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.713994, 52.1916733, 8.49976122e-016, 1, 3.17215512e-015, -0.965925872, 0, 0.258818984, 0.258818984, 3.28405643e-015, 0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, 0.258818984, 1, 0, 0, 0, 0.258818984, 0.965925872),C1 = CFrame.new(1.38601208, -0.200000763, 2.7921524, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.3824358, 52.0002518, 3.17215512e-015, 1, -8.49976122e-016, 0.258818984, 0, 0.965925872, 0.965925872, 3.28405643e-015, -0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, 0.965925872, 1, 0, 0, 0, 0.965925872, -0.258818984),C1 = CFrame.new(1.7175703, -0.200000763, 2.6007309, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
b = New("Part",s1,"b",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Transparency = 0.44999998807907,Transparency = 0.44999998807907,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.600000024),CFrame = CFrame.new(21.4004974, 14.5689297, 46.8639374, 3.17215512e-015, 1, -8.49976122e-016, 0.258818984, 0, 0.965925872, 0.965925872, 3.28405643e-015, -0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",b,"Mesh",{Scale = Vector3.new(0.800000012, 0.400000006, 0.800000012),})
mot = New("Motor",b,"mot",{Part0 = b,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, 0.965925872, 1, 0, 0, 0, 0.965925872, -0.258818984),C1 = CFrame.new(-1.46892357, -0.200000763, -2.5355835, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
b = New("Part",s1,"b",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Transparency = 0.44999998807907,Transparency = 0.44999998807907,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.600000024),CFrame = CFrame.new(21.4004974, 11.6439257, 51.9301834, 3.17215512e-015, 1, -8.49976122e-016, 0.258818984, 0, 0.965925872, 0.965925872, 3.28405643e-015, -0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",b,"Mesh",{Scale = Vector3.new(0.800000012, 0.400000006, 0.800000012),})
mot = New("Motor",b,"mot",{Part0 = b,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, 0.965925872, 1, 0, 0, 0, 0.965925872, -0.258818984),C1 = CFrame.new(1.45608044, -0.200000763, 2.53066254, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.6439943, 51.6822815, -8.49976122e-016, 1, 3.17215512e-015, -0.965925872, 0, -0.258818984, -0.258818984, 3.28405643e-015, 0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, -0.258818984, 1, 0, 0, 0, -0.258818984, 0.965925872),C1 = CFrame.new(-1.54398823, -0.200000763, 2.28276062, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.8975716, 46.9253387, -3.17215512e-015, 1, -8.49976122e-016, 0.258818984, 0, -0.965925872, -0.965925872, 3.28405643e-015, -0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, -0.258818984),C1 = CFrame.new(1.20243454, -0.200000763, -2.47418213, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.5660181, 47.1167641, 8.49976122e-016, 1, -3.17215512e-015, 0.965925872, 0, 0.258818984, 0.258818984, 3.28405643e-015, -0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.965925872, 0.258818984, 1, 0, 0, 0, 0.258818984, -0.965925872),C1 = CFrame.new(1.533988, -0.200000763, -2.28275681, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.3124399, 51.8737106, -3.17215512e-015, 1, -8.49976122e-016, 0.258818984, 0, -0.965925872, -0.965925872, 3.28405643e-015, -0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, -0.258818984),C1 = CFrame.new(-1.21243382, -0.200000763, 2.47418976, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.4960184, 52.1916733, 8.49976122e-016, 1, -3.17215512e-015, 0.965925872, 0, 0.258818984, 0.258818984, 3.28405643e-015, -0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.965925872, 0.258818984, 1, 0, 0, 0, 0.258818984, -0.965925872),C1 = CFrame.new(-1.39601231, -0.200000763, 2.7921524, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 14.8275738, 52.0002518, -3.17215512e-015, 1, -8.49976122e-016, 0.258818984, 0, -0.965925872, -0.965925872, 3.28405643e-015, -0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, -0.258818984),C1 = CFrame.new(-1.72756767, -0.200000763, 2.6007309, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.3824396, 46.7987976, -3.17215512e-015, 1, -8.49976122e-016, 0.258818984, 0, -0.965925872, -0.965925872, 3.28405643e-015, -0.258818984),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.600000024, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, 0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, -0.258818984),C1 = CFrame.new(1.71756649, -0.200000763, -2.60072327, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
a = New("Part",s1,"a",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.200000003),CFrame = CFrame.new(21.4004974, 11.713994, 46.6073723, -8.49976122e-016, 1, 3.17215512e-015, -0.965925872, 0, -0.258818984, -0.258818984, 3.28405643e-015, 0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("BlockMesh",a,"Mesh",{Scale = Vector3.new(1, 0.605000019, 0.400000006),})
mot = New("Motor",a,"mot",{Part0 = a,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, -0.258818984, 1, 0, 0, 0, -0.258818984, 0.965925872),C1 = CFrame.new(1.38601208, -0.200000763, -2.79214859, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
b = New("Part",s1,"b",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Transparency = 0.44999998807907,Transparency = 0.44999998807907,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.600000024),CFrame = CFrame.new(21.4004974, 14.5689297, 51.935112, -8.49976122e-016, 1, 3.17215512e-015, -0.965925872, 0, -0.258818984, -0.258818984, 3.28405643e-015, 0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",b,"Mesh",{Scale = Vector3.new(0.800000012, 0.400000006, 0.800000012),})
mot = New("Motor",b,"mot",{Part0 = b,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, -0.258818984, 1, 0, 0, 0, -0.258818984, 0.965925872),C1 = CFrame.new(-1.46892357, -0.200000763, 2.53559113, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
b = New("Part",s1,"b",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,Transparency = 0.44999998807907,Transparency = 0.44999998807907,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.599999964, 0.200000003, 0.600000024),CFrame = CFrame.new(21.4004974, 11.6439257, 46.8688583, 0, 1, 0, -0.965925872, 0, -0.258818984, -0.258818984, 0, 0.965925872),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("BlockMesh",b,"Mesh",{Scale = Vector3.new(0.800000012, 0.400000006, 0.800000012),})
mot = New("Motor",b,"mot",{Part0 = b,Part1 = ref3,C0 = CFrame.new(0, 0, 0, 0, -0.965925872, -0.258818984, 1, 0, 0, 0, -0.258818984, 0.965925872),C1 = CFrame.new(1.45608044, -0.200000763, -2.53066254, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})

d2 = New("Part",h,"d2",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.700000286, 0.200000003),CFrame = CFrame.new(21.6104984, 12.4900179, 49.3795242, -1, 0, 1.14941981e-014, 0, -1, 0, -1.14941981e-014, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d2,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d2,"mot",{Part0 = d2,Part1 = ref2,C0 = CFrame.new(0, 0, 0, -1, 0, -1.64202821e-015, 0, -1, 0, 1.64202821e-015, 0, 1),C1 = CFrame.new(0.609988213, 0.0100002289, -0.0199966431, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d2 = New("Part",h,"d2",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.700000286, 0.200000003),CFrame = CFrame.new(21.6104984, 12.4900103, 49.4195251, 1, 0, -4.92608443e-015, 0, -1, 0, 4.92608443e-015, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d2,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d2,"mot",{Part0 = d2,Part1 = ref2,C0 = CFrame.new(0, 0, 0, 1, 0, 1.64202821e-015, 0, -1, 0, -1.64202821e-015, 0, -1),C1 = CFrame.new(0.609995842, 0.0100002289, 0.0200042725, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d2 = New("Part",h,"d2",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(21.6104984, 12.8800058, 49.3795242, 1, 0, 1.14941981e-014, 0, 1, 0, 1.14941981e-014, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d2,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d2,"mot",{Part0 = d2,Part1 = ref2,C0 = CFrame.new(0, 0, 0, 1, 0, 1.64202821e-015, 0, 1, 0, 1.64202821e-015, 0, 1),C1 = CFrame.new(0.220000267, 0.0100002289, -0.0199966431, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d2 = New("Part",h,"d2",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 12.7800102, 49.3295212, -1, -1.14941981e-014, 0, 0, 0, -1, -1.14941981e-014, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d2,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d2,"mot",{Part0 = d2,Part1 = ref2,C0 = CFrame.new(0, 0, 0, -1, 0, -1.64202821e-015, -1.64202821e-015, 0, -1, 0, -1, 0),C1 = CFrame.new(0.31999588, 0.0100002289, -0.0699996948, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d2 = New("Part",h,"d2",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(21.6104984, 12.8800097, 49.4195251, -1, 0, -1.14941981e-014, 0, 1, 0, -1.14941981e-014, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d2,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d2,"mot",{Part0 = d2,Part1 = ref2,C0 = CFrame.new(0, 0, 0, -1, 0, -1.64202821e-015, 0, 1, 0, -1.64202821e-015, 0, -1),C1 = CFrame.new(0.219996452, 0.0100002289, 0.0200042725, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d2 = New("Part",h,"d2",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 12.7400103, 49.4695206, -1, 1.14941981e-014, 0, 0, 0, 1, -1.14941981e-014, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d2,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d2,"mot",{Part0 = d2,Part1 = ref2,C0 = CFrame.new(0, 0, 0, -1, 0, -1.64202821e-015, 1.64202821e-015, 0, 1, 0, 1, 0),C1 = CFrame.new(0.359995842, 0.0100002289, 0.0699996948, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d2 = New("Part",h,"d2",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 12.7800064, 49.4695206, 1, 1.14941981e-014, 0, 0, 0, -1, 1.14941981e-014, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d2,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d2,"mot",{Part0 = d2,Part1 = ref2,C0 = CFrame.new(0, 0, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1, 0, -1, 0),C1 = CFrame.new(0.319999695, 0.0100002289, 0.0699996948, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d2 = New("Part",h,"d2",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 12.7400055, 49.3295135, 1, -1.14941981e-014, 0, 0, 0, 1, 1.14941981e-014, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d2,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d2,"mot",{Part0 = d2,Part1 = ref2,C0 = CFrame.new(0, 0, 0, 1, 0, 1.64202821e-015, -1.64202821e-015, 0, -1, 0, 1, 0),C1 = CFrame.new(0.36000061, 0.0100002289, -0.0700073242, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})

d = New("Part",m,"d",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 13.2500238, 49.3795013, -1, 0, 1.14941981e-014, 0, -1, 0, -1.14941981e-014, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d,"mot",{Part0 = d,Part1 = ref1,C0 = CFrame.new(0, 0, 0, -1, 0, -1.64202821e-015, 0, -1, 0, 1.64202821e-015, 0, 1),C1 = CFrame.new(-0.150017738, 0.0100002289, -0.0200195313, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d = New("Part",m,"d",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 13.2500238, 49.4195023, 1, 0, -1.14941981e-014, 0, -1, 0, 1.14941981e-014, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d,"mot",{Part0 = d,Part1 = ref1,C0 = CFrame.new(0, 0, 0, 1, 0, 1.64202821e-015, 0, -1, 0, -1.64202821e-015, 0, -1),C1 = CFrame.new(-0.150017738, 0.0100002289, 0.0199813843, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d = New("Part",m,"d",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 2.00000024, 0.200000003),CFrame = CFrame.new(21.6104984, 14.0400143, 49.4195023, -1, -8.74227766e-008, -1.88682823e-014, -8.74227766e-008, 1, 8.74227695e-008, -1.1762855e-014, 8.74227766e-008, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d,"mot",{Part0 = d,Part1 = ref1,C0 = CFrame.new(0, 0, 0, -1, -8.74227766e-008, -1.91068547e-015, -8.74227766e-008, 1, 8.74227766e-008, -9.01611261e-015, 8.74227695e-008, -1),C1 = CFrame.new(-0.940008163, 0.0100002289, 0.0199813843, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d = New("Part",m,"d",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 2.00000024, 0.200000003),CFrame = CFrame.new(21.6104984, 14.0400181, 49.3795052, 1, 0, 4.92608443e-015, 0, 1, 0, 4.92608443e-015, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d,"mot",{Part0 = d,Part1 = ref1,C0 = CFrame.new(0, 0, 0, 1, 0, 1.64202821e-015, 0, 1, 0, 1.64202821e-015, 0, 1),C1 = CFrame.new(-0.940011978, 0.0100002289, -0.0200157166, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d = New("Part",m,"d",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 13.3700256, 49.4695206, 1, 1.14941981e-014, 0, 0, 0, -1, 1.14941981e-014, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d,"mot",{Part0 = d,Part1 = ref1,C0 = CFrame.new(0, 0, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1, 0, -1, 0),C1 = CFrame.new(-0.270019531, 0.0100002289, 0.0699996948, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d = New("Part",m,"d",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 13.3300257, 49.4695168, -1, 1.14941981e-014, 0, 0, 0, 1, -1.14941981e-014, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d,"mot",{Part0 = d,Part1 = ref1,C0 = CFrame.new(0, 0, 0, -1, 0, -1.64202821e-015, 1.64202821e-015, 0, 1, 0, 1, 0),C1 = CFrame.new(-0.230019569, 0.0100002289, 0.0699958801, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d = New("Part",m,"d",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 13.3700256, 49.3295021, -1, -1.14941981e-014, 0, 0, 0, -1, -1.14941981e-014, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d,"mot",{Part0 = d,Part1 = ref1,C0 = CFrame.new(0, 0, 0, -1, 0, -1.64202821e-015, -1.64202821e-015, 0, -1, 0, -1, 0),C1 = CFrame.new(-0.270019531, 0.0100002289, -0.0700187683, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})
d = New("Part",m,"d",{BrickColor = BrickColor.new("New Yeller"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6104984, 13.3300257, 49.3295021, 1, -1.14941981e-014, 0, 0, 0, 1, 1.14941981e-014, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 1, 0),})
Mesh = New("SpecialMesh",d,"Mesh",{Scale = Vector3.new(1.00999999, 0.699999988, 0.200000003),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",d,"mot",{Part0 = d,Part1 = ref1,C0 = CFrame.new(0, 0, 0, 1, 0, 1.64202821e-015, -1.64202821e-015, 0, -1, 0, 1, 0),C1 = CFrame.new(-0.230019569, 0.0100002289, -0.0700187683, 0, -1, 0, 1, 0, 1.64202821e-015, 1.64202821e-015, 0, 1),})

Main = New("Part",fff1,"Main",{Transparency=1,BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Marble,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(5, 0.600000024, 5),CFrame = CFrame.new(21.4004993, 13.1000175, 49.3994942, -4.37113883e-008, -1, 4.37113883e-008, -4.37113918e-008, -4.37113847e-008, -1, 1, -4.37113918e-008, -4.37113883e-008),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("CylinderMesh",Main,"Mesh",{})
PointLight = New("PointLight",Main,"PointLight",{Color = Color3.new(1, 1, 0),Brightness = 1.5,Range = 10,Shadows = true,})
mot = New("Motor",Main,"mot",{Part0 = Main,Part1 = d1})

hitaa = New("Part",RightArm,"hitaa",{BrickColor = BrickColor.new("Pastel brown"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-6.89994907, -0.981778979, -19.6199532, -1, 0, 0, 0, 1, 0, 0, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.8, 0.6),})
mot = New("Motor",hitaa,"mot",{Part0 = hitaa,Part1 = RightArm,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-4.76837158e-007, -0.981797993, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})

hitbb = New("Part",LeftArm,"hitbb",{BrickColor = BrickColor.new("Pastel brown"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 0.200000003, 1),CFrame = CFrame.new(-6.89994907, -0.981778979, -19.6199532, -1, 0, 0, 0, 1, 0, 0, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.8, 0.6),})
mot = New("Motor",hitbb,"mot",{Part0 = hitbb,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-4.76837158e-007, -0.981797993, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})


for _,v in pairs(Character.fff1:children()) do
					if v:IsA("Part") then    
					 v.CanCollide = false
					end
end

for _,v in pairs(Character.h:children()) do
					if v:IsA("Part") then    
					 v.CanCollide = false
					end
end

for _,v in pairs(Character.m:children()) do
					if v:IsA("Part") then    
					 v.CanCollide = false
					end
end

for _,v in pairs(Character.s1:children()) do
					if v:IsA("Part") then    
					 v.CanCollide = false
					end
end

for _,v in pairs(Character.s2:children()) do
					if v:IsA("Part") then    
					 v.CanCollide = false
					end
					end
reweld = function()
asda1 = Instance.new("Weld",d1) 
asda1.Part0 = asda1.Parent 
asda1.Part1 = RootPart
asda1.C0 = CFrame.new(1.6,-2,0)*CFrame.Angles(-math.rad(90),0,math.rad(90))
end


------------------
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
		                    elseif Type == "NerfSpeed" then

					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
					if knockback > 0 then
						vp.Parent = hit.Parent.Torso
					end
					hit.Parent.Humanoid.WalkSpeed = hit.Parent.Humanoid.WalkSpeed - 8
                                      coroutine.wrap(function()
                                      wait(7.5)
hit.Parent.Humanoid.WalkSpeed = hit.Parent.Humanoid.WalkSpeed + 8
                                      end)()
					game:GetService("Debris"):AddItem(vp, 0.5)

								elseif Type == "ZA" then
											--[[local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
											local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})]]
hit.Parent.Torso.Anchored = true				
								elseif Type == "UNZA" then
											--[[local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
											local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})]]
hit.Parent.Torso.Anchored = false	
								elseif Type == "Freeze" then
											local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
											local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
											hit.Parent.Torso.Anchored = true

											coroutine.resume(coroutine.create(function(Part)
												


		swait(1.5)
		hit.Parent.Torso.Anchored = false
		end), hit.Parent.Torso)
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

	MagniDamage = function(Part, magni, mindam, maxdam, knock, Type, HitSound, HitPitch)

	
	for _,c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1) -- 231917784
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
			Laser(BrickColor.new("Pastel light blue"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				CFuncs.Sound.Create("http://www.roblox.com/asset/?id=377357848", refpart, 1, 1.2)
				local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			do
				if num <= 0 then
					local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						CFuncs.Sound.Create("http://www.roblox.com/asset/?id=377357848", refpart, 1, 1.2)

						Effects.Ring.Create(BrickColor.new("Pastel light blue"), refpart.CFrame*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), .4, 1, .4, 1, 1, 1, 0.03)
						Effects.Sphere.Create(BrickColor.new("Pastel light blue"), refpart.CFrame, .4, 2, .4, 2, 6, 2, 0.04)
						Effects.Sphere.Create(BrickColor.new("Pastel light blue"), refpart.CFrame, .5, 1, .5, 3.5, -0.1, 3.5, 0.03)
						Effects.Break.Create(BrickColor.new("Pastel light blue"), refpart.CFrame, 1, 1, 8, 0, 0, 0, 0.02)
						Effects.Break.Create(BrickColor.new("Pastel light blue"), refpart.CFrame, 1, 1, 8, 0, 0, 0, 0.02)
						Effects.Break.Create(BrickColor.new("Pastel light blue"), refpart.CFrame, 1, 1, 8, 0, 0, 0, 0.02)
						Effects.Break.Create(BrickColor.new("Pastel light blue"), refpart.CFrame, 1, 1, 8, 0, 0, 0, 0.02)
						MagniDamage(refpart, 15, 4, 6, 0, "Snare")
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
for i = 0, .8, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0, -0, 0.983240366, 0, -0.182314038, 0, 1, 0, 0.182314053, 0, 0.983240366) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(8.56816769e-008, 1.49998975, 3.27825546e-007, 0.968345106, 0.0211830046, 0.248714969, 0, 0.996392667, -0.0848625675, -0.249615386, 0.0821762457, 0.964851975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.47883904, 1.37533414, -0.118989259, 0.996842504, -0.0781434923, 0.0140943676, -0.0766539723, -0.993345499, -0.0859594867, 0.020717755, 0.0846076906, -0.996199012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.46654546, -0.00545517821, 0.177010268, 0.969353974, 0.160958394, 0.185594693, -0.158087075, 0.986961246, -0.0302666947, -0.18804644, -9.81613994e-007, 0.982160091) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.610617697, -1.99094284, 0.0384979583, 0.988270342, -0.0815663189, 0.129107922, 0.0808790103, 0.996667981, 0.0105663948, -0.129539579, -3.33413482e-007, 0.991574347) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.514573693, -1.9992379, 0.0393124409, 0.9955194, 0.0519619919, 0.079001002, -0.0517990179, 0.99864912, -0.00411220873, -0.0791079402, 1.60932541e-006, 0.996866107) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end

	local icepart1 = CreatePart(effect, "SmoothPlastic", 0.5, 0, BrickColor.new("Pastel yellow"), "Ice", vt(2, 4, 2))
	icepart1.Anchored = true
	icepart1.Material = Enum.Material.Neon
	i1msh = CreateMesh("SpecialMesh", icepart1, "FileMesh", "http://www.roblox.com/asset/?id=1778999", vt(0, 0, 0), vt(0.7, 2, 0.7))
	icepart1.CFrame = cf(d1.Position)
	game:GetService("Debris"):AddItem(icepart1, 20)
	MouseLook = cf(icepart1.Position, mouse.Hit.p)
	table.insert(ShootEffects, {MouseLook, "ShootIce", 50, icepart1.Position, 8, 27, 0, icepart1, 7, 2})
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=243711369", RootPart, 1, 1)
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), Main.CFrame, 20, 20, 20, 7,7,7, 0.04)
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.00851282757, 0, 0.0190916806, 0.997331738, 0, 0.0730039924, 0, 1, 0, -0.073003985, 0, 0.997331738) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.70897692e-007, 1.49998987, -1.6912818e-006, 0.998496473, -0.0161174443, 0.0523953661, 0.0127870068, 0.997913361, 0.0632886514, -0.0533060879, -0.062523514, 0.996618986) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.41756415, 0.446261495, -0.661091387, 0.989582777, -0.14088431, -0.0296280943, -0.022518998, 0.0517899916, -0.998404145, 0.142193913, 0.988670647, 0.0480779111) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.46655786, -0.00545603503, 0.177008122, 0.969354093, 0.160958484, 0.18559435, -0.15808706, 0.986961246, -0.0302672647, -0.188046187, -3.66009772e-007, 0.98216033) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.610601902, -1.99094224, 0.0384980775, 0.988270879, -0.0815661848, 0.129104376, 0.0808790103, 0.996667922, 0.0105653116, -0.129535973, 4.46569175e-007, 0.991574824) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.514607847, -1.99923801, 0.0393167809, 0.99551934, 0.0519619472, 0.0790022239, -0.0517989732, 0.998649061, -0.00411218312, -0.0791091472, 1.52480789e-006, 0.996866107) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end

	attack = false
end

	attacktwo = function()
	
	attack = true
for i = 0, .8, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0, -0, 0.915169716, 0, -0.403068811, 0, 1, 0, 0.403068841, 0, 0.915169716) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.49998999, 0, 0.915169716, 0, 0.403068841, 0, 1, 0, -0.403068811, 0, 0.915169716) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.72302592, 0.480873883, 0.34545505, -0.360856354, -0.932621479, 1.3820827e-006, 0.0416060127, -0.0160999689, -0.999004364, 0.931692958, -0.360497057, 0.0446124338) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.60763597, 0.0917641222, 0.111390933, 0.964031518, 0.193775475, 0.181918919, -0.19041495, 0.981045961, -0.035931509, -0.185433418, -9.68575478e-007, 0.982656896) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.549230337, -1.97915792, 0.171269327, 0.995902479, -2.57045031e-007, 0.090434432, -0.0109210024, 0.992681265, 0.120269552, -0.0897725523, -0.120764367, 0.988613605) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.513430953, -1.99406397, -0.104594104, 0.991901577, -2.01165676e-007, 0.127009511, 0.00719299726, 0.998395145, -0.056173306, -0.126805633, 0.0566319749, 0.990309715) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.0512321219, 0, 0.0664251596, 0.597703338, 0, 0.80171746, 0, 1, 0, -0.80171746, 0, 0.597703338) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.0930336639, 1.49998999, -0.0208555777, 0.803879023, 0, -0.594793081, 0, 1, 0, 0.594793081, 0, 0.803879023) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.37545145, 0.43551597, -0.697339773, 0.770106077, -0.637804031, 0.0119516104, 0.0810759738, 0.0792760402, -0.993550301, 0.632742822, 0.766108036, 0.112761557) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.59538281, 0.133316398, 0.058069095, 0.928464472, 0.363101572, 0.0781743824, -0.364578098, 0.931159317, 0.00501947524, -0.0709702671, -0.0331610888, 0.996927142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.727690279, -1.98223972, -0.035868004, 0.92835331, -0.158009529, 0.336442113, 0.164802998, 0.986290216, 0.00846458785, -0.333167076, 0.0475885421, 0.941666245) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.607054114, -2.02382755, -0.0483864322, 0.995053411, 0.0982613564, 0.0146176517, -0.0972279757, 0.993469954, -0.0597009957, -0.020388484, 0.0579844266, 0.9981094) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=200633327", hitaa, 1, 1)
	MagniDamage(hitaa, 5, 10, 15, 8, "Normal")
	Effects.Ring.Create(BrickColor.new("Pastel yellow"), hitaa.CFrame*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3)), 1, 1, 1, .4, .4, .4, 0.07)
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), hitaa.CFrame, 3, 3, 3, 1, 1, 1, 0.07)
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), hitaa.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
	
	attack = false
end

	attackthree = function()
	
	attack = true
for i = 0, .8, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.0512321219, 0, 0.0664251596, 0.597703338, 0, 0.80171746, 0, 1, 0, -0.80171746, 0, 0.597703338) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.0930336639, 1.49998999, -0.0208555777, 0.803879023, 0, -0.594793081, 0, 1, 0, 0.594793081, 0, 0.803879023) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.60971248, 0.207180589, -0.495457321, 0.275419563, -0.303849936, -0.912041426, -0.0474039912, 0.943287611, -0.328574836, 0.960154772, 0.133730352, 0.245396167) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.78717256, 0.447586179, 0.334187806, 0.0612866357, 0.951363683, 0.301912785, -0.998120248, 0.0583484732, 0.0187498312, 0.000221760944, -0.302494347, 0.953151345) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.727688074, -1.98223948, -0.035872139, 0.931450605, -0.158010811, -0.327768952, 0.132881016, 0.986289978, -0.0978505537, 0.338736713, 0.0475886948, 0.939677) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.519062459, -1.94417262, -0.151531458, 0.96966517, -0.0462034196, -0.240031272, 0.00256700069, 0.983844101, -0.179009229, 0.244424284, 0.172962844, 0.954117835) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.0462111123, 0, 0.202685356, 0.461550891, 0, -0.88711375, 0, 1, 0, 0.88711375, 0, 0.461550921) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.0968333483, 1.49998999, 0.02548212, 0.18550694, 0, 0.982643008, 0, 1, 0, -0.982643008, 0, 0.18550697) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.6466248, 0.240842074, 0.0897599757, -0.152841717, -0.389663756, -0.908185959, -0.0286720004, 0.920344889, -0.390055358, 0.987834692, -0.0335772336, -0.151839584) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.72251821, 0.453693986, -0.312195331, 0.386920214, 0.919621527, 0.0677430406, 0.00720899832, 0.070446007, -0.997489572, -0.922085106, 0.386437207, 0.020627439) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.7345801, -1.9846673, 0.0372933596, 0.985809922, -0.158008948, -0.0566743612, 0.15479894, 0.986290276, -0.0571744256, 0.0649315119, 0.0475899801, 0.996754408) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.648979306, -1.92699826, 0.116046399, 0.914659441, 0.134477407, 0.38120085, -0.123473041, 0.990915298, -0.0533050522, -0.384905994, 0.00168794766, 0.922954321) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=200633327", hitbb, 1, 1)
	MagniDamage(hitbb, 5, 10, 15, 8, "Normal")
	Effects.Ring.Create(BrickColor.new("Pastel yellow"), hitbb.CFrame*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3)), 1, 1, 1, .4, .4, .4, 0.07)
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), hitbb.CFrame, 3, 3, 3, 1, 1, 1, 0.07)
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), hitbb.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
	
	attack = false
end

	speedy = function()
	
	attack = true
for i = 0, 2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.49150038, -0.0688499361, 1, 0, 0, 0, 0.992482662, 0.122385956, 0, -0.122385956, 0.992482662) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.725152731, 0.0744890273, -0.672266722, 0.865225017, 0.501383841, 4.32208509e-007, -0.387073994, 0.667963982, -0.635608315, -0.318684012, 0.549943984, 0.772011757) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.655232072, 0.0590805709, -0.61469841, 0.785735309, -0.6019665, -0.142325431, 0.451796144, 0.715657234, -0.532649159, 0.42249316, 0.354219079, 0.834283233) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.610615134, -1.990942, 0.0385110974, 0.9882707, -0.0815659091, 0.129105181, 0.0808790028, 0.996667981, 0.0105633158, -0.129536599, 2.48372089e-006, 0.991574824) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.519666016, -1.9989748, -0.0244619809, 0.995519519, 0.0519621335, 0.0789999664, -0.0517989993, 0.99864912, -0.00411419664, -0.0791070238, 3.64350853e-006, 0.996866226) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .1, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), Torso.CFrame, 5, 5, 5, 7, 7, 7, 0.04)
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=199145350", hitbb, 1.8, 1)
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=206083122", hitbb, 1.8, 1.1)
Humanoid.WalkSpeed = Humanoid.WalkSpeed + 8
MagniDamage(RootPart, 15, 5, 20, 0, "NerfSpeed")
for i = 0, 2.5, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.00939341728, 0.125396341, 1, 0, -0, 0, 0.997205973, -0.0747009963, 0, 0.0747009963, 0.997205973) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.45105875, 0.0791763514, 1, 0, -0, 0, 0.996746778, -0.0805972219, -0, 0.0805972219, 0.996746778) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.97454011, 0.509812295, -0.0234206058, 0.0669680238, -0.99768585, 0.0117595494, 0.0795672387, -0.00640839292, -0.996808946, 0.994577467, 0.0676899999, 0.0789539516) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.97330952, 0.508654654, -0.107940592, 0.112083934, 0.993531048, -0.0182603225, -0.212485954, 0.00601216126, -0.977145731, -0.970714688, 0.113402396, 0.211785227) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.610615134, -1.990942, 0.0385110974, 0.9882707, -0.0815659091, 0.129105181, 0.0808790028, 0.996667981, 0.0105633158, -0.129536599, 2.48372089e-006, 0.991574824) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.519666016, -1.9989748, -0.0244619809, 0.995519519, 0.0519621335, 0.0789999664, -0.0517989993, 0.99864912, -0.00411419664, -0.0791070238, 3.64350853e-006, 0.996866226) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .2, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
Effects.Sphere.Create(BrickColor.new("Pastel yellow"), Torso.CFrame* CFrame.new(math.random(-15,15),-3.5,math.random(-15,15)), 3, 5, 3, 0, 5, 0, 0.055)
end

	attack = false
	wait(14)
	Humanoid.WalkSpeed = Humanoid.WalkSpeed - 8
end

	coldbullet = function()
	
	attack = true
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.48415041, 0.0942030549, 1, 0, -0, 0, 0.986156881, -0.165814981, 0, 0.165814981, 0.986156881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.54259729, 1.40340829, -0.276845753, 0.991367102, -0.131115481, -1.97978102e-006, -0.124968015, -0.944881439, -0.302625418, 0.0396770053, 0.300013155, -0.953109622) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.51970267, 0.0644921362, 0, 0.996598005, 0.082415998, 0, -0.082415998, 0.996598005, 0, -0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.569116831, -2.00013852, 0.0165762268, 0.990056217, -0.0815572739, 0.114619412, 0.0808790028, 0.996667981, 0.0105633158, -0.115099013, -0.00118797144, 0.993353546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.560130596, -2.00817132, -0.0628854185, 0.985871851, 0.051956106, -0.159239814, -0.0514129922, 0.99864912, 0.00753138354, 0.15941599, 0.000762016047, 0.987211287) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
    
local aaaaa = New("Part",EffectModel,"aaaaa",{CanCollide= false,BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.3999252, 0.0900051594, -10.1199179, 1, -1.27036265e-006, -2.38418579e-007, 1.26942575e-006, 1, 2.36354492e-010, 2.83122034e-007, 4.84627505e-010, 0.999999821),Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",aaaaa,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mots = New("Motor",aaaaa,"mot",{Part0 = aaaaa,Part1 = RootPart,C0 = CFrame.new(0, 0, 0, 0.999999762, 0.000308061455, 0.000602531713, -0.000307433715, 0.999999404, -0.00104269374, -0.000602822693, 0.00104250852, 0.999999166),C1 = CFrame.new(0.000949859619, 0.0905847028, -3.29769325, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=315746833", aaaaa, 1, 1.2)
local as1 = New("Part",EffectModel,"as1",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Neon,Size = Vector3.new(1.20000005, 1.20000005, 1.20000005),CFrame = CFrame.new(-48.399929, 1.29000497, -10.1199169, 1, -1.27067494e-006, -2.23517418e-007, 1.26911345e-006, 1, 4.76801709e-010, 2.98023167e-007, 7.25055627e-010, 0.999999702),Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",as1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
as1.CFrame = RootPart.CFrame * CFrame.new(20,0,0)
mot = New("Motor",as1,"mot",{Part0 = as1,Part1 = aaaaa,C0 = CFrame.new(0, 0, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),C1 = CFrame.new(1.99999619, 1.19999731, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),})
local as2 = New("Part",EffectModel,"as2",{CanCollide= false,BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Neon,Size = Vector3.new(1.20000005, 1.20000005, 1.20000005),CFrame = CFrame.new(-52.399929, 1.29000497, -10.1199179, 1, -1.27067494e-006, -2.23517418e-007, 1.26911345e-006, 1, 4.76801709e-010, 2.98023167e-007, 7.25055627e-010, 0.999999702),Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",as2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",as2,"mot",{Part0 = as2,Part1 = aaaaa,C0 = CFrame.new(0, 0, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),C1 = CFrame.new(-2.00000381, 1.20000231, 9.53674316e-007, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),})
local as3 = New("Part",EffectModel,"as3",{CanCollide= false,BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Neon,Size = Vector3.new(1.20000005, 1.20000005, 1.20000005),CFrame = CFrame.new(-50.399929, 2.39000511, -10.1199179, 1, -1.27067494e-006, -2.23517418e-007, 1.26911345e-006, 1, 4.76801709e-010, 2.98023167e-007, 7.25055627e-010, 0.999999702),Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",as3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",as3,"mot",{Part0 = as3,Part1 = aaaaa,C0 = CFrame.new(0, 0, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),C1 = CFrame.new(0, 2.29999995, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),})
local as4 = New("Part",EffectModel,"as4",{CanCollide= false,BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Neon,Size = Vector3.new(1.20000005, 1.20000005, 1.20000005),CFrame = CFrame.new(-50.399929, -2.10999489, -10.1199179, 1, -1.27067494e-006, -2.23517418e-007, 1.26911345e-006, 1, 4.76801709e-010, 2.98023167e-007, 7.25055627e-010, 0.999999702),Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",as4,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",as4,"mot",{Part0 = as4,Part1 = aaaaa,C0 = CFrame.new(0, 0, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),C1 = CFrame.new(-7.62939453e-006, -2.20000005, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),})
local as5 = New("Part",EffectModel,"as5",{CanCollide= false,BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Neon,Size = Vector3.new(1.20000005, 1.20000005, 1.20000005),CFrame = CFrame.new(-52.399929, -1.10999513, -10.1199179, 1, -1.27067494e-006, -2.23517418e-007, 1.26911345e-006, 1, 4.76801709e-010, 2.98023167e-007, 7.25055627e-010, 0.999999702),Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",as5,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",as5,"mot",{Part0 = as5,Part1 = aaaaa,C0 = CFrame.new(0, 0, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),C1 = CFrame.new(-2.00000381, -1.19999778, 9.53674316e-007, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),})
local as6 = New("Part",EffectModel,"as6",{CanCollide= false,BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Neon,Size = Vector3.new(1.20000005, 1.20000005, 1.20000005),CFrame = CFrame.new(-48.399929, -1.10999513, -10.1199169, 1, -1.27005035e-006, -2.5331974e-007, 1.26973805e-006, 1, -4.09272616e-012, 2.68220901e-007, 2.44199327e-010, 0.99999994),Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",as6,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",as6,"mot",{Part0 = as6,Part1 = aaaaa,C0 = CFrame.new(0, 0, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),C1 = CFrame.new(1.99999619, -1.20000279, 0, 1, 1.26973805e-006, 2.68220901e-007, -1.27005035e-006, 1, 2.44199327e-010, -2.5331974e-007, -4.09272616e-012, 0.99999994),})
wait(0.0001)
mots:Remove()
aaaaa.Anchored = true
	Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as1.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
	Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as2.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
	Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as3.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
	Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as4.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
	Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as5.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
	Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as6.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
	
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.48415041, 0.0942030549, 1, 0, -0, 0, 0.986156881, -0.165814981, 0, 0.165814981, 0.986156881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.54259729, 1.40340829, -0.276845753, 0.991367102, -0.131115481, -1.97978102e-006, -0.124968015, -0.944881439, -0.302625418, 0.0396770053, 0.300013155, -0.953109622) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.51970267, 0.0644921362, 0, 0.996598005, 0.082415998, 0, -0.082415998, 0.996598005, 0, -0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.569116831, -2.00013852, 0.0165762268, 0.990056217, -0.0815572739, 0.114619412, 0.0808790028, 0.996667981, 0.0105633158, -0.115099013, -0.00118797144, 0.993353546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.560130596, -2.00817132, -0.0628854185, 0.985871851, 0.051956106, -0.159239814, -0.0514129922, 0.99864912, 0.00753138354, 0.15941599, 0.000762016047, 0.987211287) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
for i = 0, .8, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0534169301, -4.47034836e-007, -0.0169453733, 0.962434232, 0, -0.271515071, 0, 1, 0, 0.271515071, 0, 0.962434232) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-9.7900629e-006, 1.48415017, 0.0942019373, 0.851388931, 1.45286322e-007, 0.52453506, 0.0869760439, 0.986156821, -0.14117375, -0.517273903, 0.165815741, 0.839602947) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.56265366, 1.3869462, 0.274677634, 0.987873316, -0.155027479, 0.00854469836, -0.14991197, -0.93805933, 0.312363833, -0.0404095203, -0.309856832, -0.949924231) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.51970673, 0.0644919425, -9.06500372e-006, 0.996598125, 0.0824159682, -1.57952309e-006, -0.0824159682, 0.996598005, 3.12086399e-007, 1.57952309e-006, -1.86264515e-007, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.569116831, -2.00013852, 0.0165762268, 0.990056217, -0.0815572739, 0.114619412, 0.0808790028, 0.996667981, 0.0105633158, -0.115099013, -0.00118797144, 0.993353546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.560130596, -2.00817132, -0.0628854185, 0.985871851, 0.051956106, -0.159239814, -0.0514129922, 0.99864912, 0.00753138354, 0.15941599, 0.000762016047, 0.987211287) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end

coroutine.wrap(function()
    shoottraildd(mouse, as1, 0)
    Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as1.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
    CFuncs.Sound.Create("http://www.roblox.com/asset/?id=588734356", aaaaa, 1.2, 1)
wait(0.000001)
    as1:Remove()
wait(0.3)
    shoottraildd(mouse, as2, 0)
    Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as2.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
   CFuncs.Sound.Create("http://www.roblox.com/asset/?id=588734356", aaaaa, 1.2, 1)
wait(0.000001)
    as2:Remove()
wait(0.3)
    shoottraildd(mouse, as3, 0)
    Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as3.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
   CFuncs.Sound.Create("http://www.roblox.com/asset/?id=588734356", aaaaa, 1.2, 1)
wait(0.000001)
    as3:Remove()
wait(0.3)
    shoottraildd(mouse, as4, 0)
    Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as4.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
   CFuncs.Sound.Create("http://www.roblox.com/asset/?id=588734356", aaaaa, 1.2, 1)
wait(0.000001)
    as4:Remove()
wait(0.3)
    shoottraildd(mouse, as5, 0)
    Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as5.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
   CFuncs.Sound.Create("http://www.roblox.com/asset/?id=588734356", aaaaa, 1.2, 1)
wait(0.000001)
    as5:Remove()
wait(0.3)
    shoottraildd(mouse, as6, 0)
    Effects.Sphere.Create(BrickColor.new("Pastel light blue"), as6.CFrame, 1, 1, 1, 2.5, 2.5, 2.5, 0.05)
   CFuncs.Sound.Create("http://www.roblox.com/asset/?id=588734356", aaaaa, 1.2, 1)
wait(0.000001)
    as6:Remove()
wait(0.5)
aaaaa:Remove()
end)()
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.111820459, -4.47034836e-007, 0.023071155, 0.929634094, 0, 0.36848399, 0, 1, 0, -0.36848402, 0, 0.929634094) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.0756670386, 1.48687446, 0.0632101893, 0.965196848, 0.0614212155, -0.254209608, -0.0433639772, 0.996161222, 0.07604222, 0.257904291, -0.0623721778, 0.964155138) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.44207835, 0.328478098, -0.827597618, 0.974427521, -0.17347005, -0.142825827, -0.113971032, 0.166241989, -0.979476571, 0.193653479, 0.97070682, 0.142220229) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.51971054, 0.0644920543, 3.54305644e-006, 0.996598125, 0.0824160054, -1.37090683e-006, -0.0824160054, 0.996598125, 2.26883776e-006, 1.51991844e-006, -2.1494925e-006, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.569116831, -2.00013852, 0.0165762268, 0.990056217, -0.0815572739, 0.114619412, 0.0808790028, 0.996667981, 0.0105633158, -0.115099013, -0.00118797144, 0.993353546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.560130596, -2.00817132, -0.0628854185, 0.985871851, 0.051956106, -0.159239814, -0.0514129922, 0.99864912, 0.00753138354, 0.15941599, 0.000762016047, 0.987211287) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
	attack = false
end

	itstimetostop = function()
	
	attack = true
	local Partss = New("Part",EffectModel,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = RootPart.CFrame,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
    wait(0.000001)
Partss.Anchored = true
for i = 0, 2.5, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(7.72176281e-006, 1.49709809, -0.0341288596, 0.999996305, -1.09264441e-007, -2.76946639e-006, -1.46610135e-009, 0.999243379, -0.03889402, -2.77162098e-006, 0.0388943031, 0.99925077) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.58703041, 0.0667609274, 0, 0.989292264, -0.145948023, 0, 0.145948023, 0.989292264, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.57452953, 0.0782548338, 0, 0.987653613, 0.15665409, 0, -0.15665409, 0.987653613, 0, -0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.569116831, -2.00013852, 0.0165762268, 0.990056217, -0.0815572739, 0.114619412, 0.0808790028, 0.996667981, 0.0105633158, -0.115099013, -0.00118797144, 0.993353546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.560130596, -2.00817132, -0.0628854185, 0.985871851, 0.051956106, -0.159239814, -0.0514129922, 0.99864912, 0.00753138354, 0.15941599, 0.000762016047, 0.987211287) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .1, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
 
  RootPart.CFrame = RootPart.CFrame * cn(0, 0, 35)
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), Partss.CFrame, 5, 5, 5, 4, 4, 4, 0.07)
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), RootPart.CFrame, 5, 5, 5, 4, 4, 4, 0.07)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=206083431", RootPart, 1, 1)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=206083431", Partss, 1, 1)
	
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.999992609, -2.93219404e-009, -5.54325197e-006, -2.93219404e-009, 1, -2.25555485e-009, -5.54325197e-006, -2.25555485e-009, 1.00001478) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(7.81543258e-006, 1.49709809, -0.0341300145, 0.999992609, 4.63888114e-007, -5.50921868e-006, -2.93219404e-009, 0.996447384, 0.0842180401, -5.54325197e-006, -0.0842192918, 0.996462286) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(2.02800846, 0.543468714, -0.1216157, 0.000593992707, -0.992605269, 0.121324614, 0.999999821, 0.00058961421, -7.20731914e-005, -5.54607027e-009, 0.121338286, 0.99262619) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.99515152, 0.474708557, -0.149513379, 0.000463999459, 0.985972464, -0.166863158, -0.999999881, 0.000457491755, -7.74242799e-005, -3.11408871e-010, 0.166855961, 0.985996306) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.569116831, -2.00013852, 0.0165762268, 0.990056217, -0.0815572739, 0.114619412, 0.0808790028, 0.996667981, 0.0105633158, -0.115099013, -0.00118797144, 0.993353546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.560130596, -2.00817132, -0.0628854185, 0.985871851, 0.051956106, -0.159239814, -0.0514129922, 0.99864912, 0.00753138354, 0.15941599, 0.000762016047, 0.987211287) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end

for i = 0, .6, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, -0, 1, -1.07449856e-015, 0, -1.07449856e-015, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(7.62939453e-006, 1.49709415, -0.0341291353, 1, 2.27373675e-013, 3.63797881e-012, -1.07449856e-015, 0.996447265, 0.0842192993, 0, -0.0842192844, 0.996447325) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.84205848, 0.408117235, -0.891217828, 0.000593980891, 0.713094711, 0.701067507, 0.999999881, -0.000423589954, -0.000416394992, 3.60636214e-008, 0.701067686, -0.713094771) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.711725891, 0.459441841, -0.873697877, -0.061717771, -0.779377222, -0.623507917, -0.996860981, 0.0791722238, -0.000290292868, 0.0495907627, 0.621532798, -0.781817019) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.5, -1.9999882, -9.53674316e-007, 1, -1.07449856e-015, 0, -1.07449856e-015, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.500007629, -1.9999882, -9.53674316e-007, 1, -1.07449856e-015, 0, -1.07449856e-015, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .45, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end
MagniDamage(Partss, 30, 15, 30, 1, "Freeze")
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=206083252", RootPart, 1, 1)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=206083122", Partss, 2, .8)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=228343252", Partss, 2, 1)
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), Partss.CFrame, 5, 5, 5, 6, 6, 6, 0.04)
	Effects.Sphere.Create(BrickColor.new("Pastel yellow"), Partss.CFrame, 5, 5, 5, 7.5, 7.5, 7.5, 0.06)
	Effects.Ring.Create(BrickColor.new("Pastel yellow"), Partss.CFrame*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0)), 0.5, 0.5, 0.5, 2, 2, 1, 0.04)
	attack = false
	wait(0.5)
    Partss:Remove()

end

	ZA_WARUDO = function()
	if ZAWARUDO == false then
	attack = true
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=468760371", Character, 1.2, 1)

for i = 0, 5, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.177850813, -0.743620574, 1, 0, 0, 0, 0.744746029, 0.667348087, 0, -0.667348087, 0.744746029) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.4652698, -0.194930851, 1, 0, 0, 0, 0.949188828, 0.314707339, 0, -0.314707339, 0.949188828) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.497361898, 0.440065473, -0.843780816, 0.0928059891, 0.891081214, -0.444253772, -0.992857218, 0.116418988, 0.0261014998, 0.0749780834, 0.438658178, 0.895520687) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.392023444, 0.310406357, -0.863107085, 0.344419092, -0.905194759, 0.248994127, 0.938073754, 0.321277171, -0.129610062, 0.0373262167, 0.278215051, 0.959793448) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.569116831, -2.00013852, 0.0165762268, 0.990056217, -0.0815572739, 0.114619412, 0.0808790028, 0.996667981, 0.0105633158, -0.115099013, -0.00118797144, 0.993353546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.560130596, -2.00817132, -0.0628854185, 0.985871851, 0.051956106, -0.159239814, -0.0514129922, 0.99864912, 0.00753138354, 0.15941599, 0.000762016047, 0.987211287) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)

end
CC1.Enabled = true
CC2.Enabled = true
CC2.Brightness = 1
MagniDamage(RootPart, 9999, 0, 0, 0, "ZA")
for i = 0, 4, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.281110048, 0.529077351, 1, 0, -0, 0, 0.805058897, -0.593194962, 0, 0.593194962, 0.805058897) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.33065295, 0.180981219, 1, 0, -0, 0, 0.904641747, -0.426173031, -0, 0.426173031, 0.904641747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.92553496, 0.908301771, 0.317027301, 0.37792623, -0.86482209, 0.330536634, -0.88082701, -0.445819765, -0.159338474, 0.2851592, -0.230927393, -0.930245638) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.95883834, 0.761072397, 0.179563373, 0.303336978, 0.928125501, -0.21580027, 0.914744496, -0.347061217, -0.206860423, -0.266888291, -0.134653628, -0.954274178) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.499997318, -1.6976459, 0.593691707, 0.991746008, -0.0490451008, 0.118467622, -0.0304243304, 0.807547688, 0.589017212, -0.124556661, -0.587759733, 0.799389958) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.618919909, -1.69471121, 0.584955096, 0.997009993, 0.0631974638, -0.0444660001, -0.0246038102, 0.805114567, 0.592608988, 0.073251605, -0.589743018, 0.804262102) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .35, false)
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
CC2.Brightness = CC2.Brightness - 0.02
end
   ZAWARUDO = true
	attack = false
	else

	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=290810519", Character, 1.2, 1)
	MagniDamage(RootPart, 9999, 0, 0, 0, "UNZA")
	ZAWARUDO = false
	CC1.Enabled = false
    CC2.Enabled = false
wait(0.0001)

	end
	end

ROAD_CLOCKER_DA = function()
		if cooldown4 >= 5 then
		cooldown4 = cooldown4 - 1
	else
		ZAWARUDO = false
		return 
		end
Humanoid.WalkSpeed = Humanoid.WalkSpeed - 10
			attack = true
			aaa:Play()
				Effects.Wave.Create(BrickColor.new("White"), RootPart.CFrame* CFrame.new(0,-3.5,0)*CFrame.Angles(0,math.random(-3,3),0), 2, 1.4, 2, 2, 0.5, 2, 0.04)

  RootPart.CFrame = RootPart.CFrame * cn(0, 100, 0)
  RootPart.Anchored = true
--CFuncs.Sound.Create("http://www.roblox.com/asset/?id=316900066", Character, 2, 1)
for i = 0,3.4,0.1 do
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
	RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 20, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
	LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
	RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)

end

for i = 0, 3.4, 0.1 do
swait()
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
PlayAnimationFromTable({
CFrame.new(-0.0543854274, 0.0653581619, -0.0153446486, 0.999893725, 1.32348898e-023, -0.0145949963, 1.32348898e-023, 1, 5.10784028e-023, 0.0145949963, 6.18808747e-023, 0.999893725) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.00310443901, 1.49623549, -0.0591216758, 0.998496592, -0.0161174126, 0.0523950122, 0.0127869993, 0.997913361, 0.0632885918, -0.0533057302, -0.0625234619, 0.996619165) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.01680541, 1.01249492, 0.844263077, 0.860779405, 0.314063996, 0.400528312, -0.131423995, -0.623093128, 0.771027088, 0.491718322, -0.716323256, -0.495070159) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.94883877, 1.11356771, 0.808953822, 0.974076867, -0.201793745, -0.102244578, -0.025124006, -0.545678854, 0.837617755, -0.224818721, -0.81333524, -0.536602974) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.596612215, -1.96407795, 0.30139935, 0.990056336, -0.105161816, 0.0934332013, 0.080878973, 0.968968868, 0.233576417, -0.115097173, -0.223697007, 0.967839122) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.604411244, -1.95887828, 0.237399012, 0.985872269, 0.0906665549, -0.140839517, -0.0514130257, 0.964044213, 0.260721415, 0.159414217, -0.249797046, 0.955085814) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
end
RootPart.Anchored = false
for i = 0, 3.4, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0543861352, 0.0800853595, -0.0558407269, 0.999893665, -1.10110406e-007, -0.0145940548, 0.00109299948, -0.997191012, 0.0748930201, -0.0145530701, -0.0749010071, -0.997084856) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.00310526788, 1.49623299, -0.059112858, 0.998496532, -0.0161143057, 0.0523945764, 0.0127840936, 0.997913718, 0.0632854253, -0.0533050522, -0.0625204593, 0.996619165) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.56126046, 1.03657067, -0.0428321362, 0.985848427, -0.167636231, -0.00111646391, -0.16751875, -0.98486048, -0.0445811749, 0.0063738618, 0.0441373028, -0.999005079) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.48109519, 1.02676392, -0.0605452731, 0.991394401, 0.117286392, 0.0581491552, 0.122015491, -0.988809168, -0.0858412907, 0.0474303924, 0.0921976566, -0.994610429) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.595261931, -1.96545184, 0.0760071874, 0.99859637, -0.0526276566, 0.00598855037, 0.0525915064, 0.99859792, 0.0060411403, -0.00629808288, -0.00571771525, 0.99996376) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.603838146, -1.96648335, 0.105420589, 0.998116553, 0.0611952133, -0.00433245115, -0.060846433, 0.996493757, 0.0574300699, 0.00783170667, -0.0570582785, 0.998340189) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
asda1.C0 = clerp(asda1.C0, CFrame.new(0.400082916, 2.51000118, -0.219945937, -1.00000012, -4.91027095e-007, 0, -4.57792339e-007, 1.00000012, 3.08199378e-006, -2.98023224e-008, 3.03153502e-006, -1.00000024) * CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0), 0.6)

--asda1.C0 = clerp(asda1.C0, CFrame.new(-0.603838146, -1.96648335, 0.105420589, 0.998116553, 0.0611952133, -0.00433245115, -0.060846433, 0.996493757, 0.0574300699, 0.00783170667, -0.0570582785, 0.998340189) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),  0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
end

	for i = 0, 33.5 do
	for i = 0, 0.2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.438125938, -0.652273774, -0.41643393, 0.763427138, -0.357512295, -0.537925661, 0.645894051, 0.422568649, 0.635811806, 0, -0.832838893, 0.553515434) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.0228356048, 1.5688957, -0.180054456, 0.985420585, -3.93390656e-006, -0.170136839, 0.0573835224, 0.941412568, 0.332339555, 0.160167634, -0.337257326, 0.927687466) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.73330295, 0.486301005, 0.434037954, -0.443160832, -0.896442175, 2.98023224e-006, -0.0292905867, 0.0144766271, -0.999466121, 0.89596355, -0.442924231, -0.0326727629) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.52312505, 0.437584281, -0.565626383, 0.660413742, 0.750902057, -5.51342964e-007, -0.160599381, 0.141245484, -0.976861119, -0.733526766, 0.645132601, 0.213874876) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.433801413, -1.81545305, -0.376765013, 0.891345024, 0.07519418, 0.447045982, 0.13168484, 0.900675654, -0.414056271, -0.433778048, 0.427936107, 0.792910695) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.508779526, -1.95581961, -0.00714170933, 0.631465018, -0.192457214, 0.751140594, 1.90734863e-006, 0.968708515, 0.248200849, -0.775404334, -0.156728715, 0.611705959) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .5, false)
asda1.C0 = clerp(asda1.C0, CFrame.new(0.400082916, 2.51000118, -0.219945937, -1.00000012, -4.91027095e-007, 0, -4.57792339e-007, 1.00000012, 3.08199378e-006, -2.98023224e-008, 3.03153502e-006, -1.00000024) * CFrame.new(math.random(-.8,.8), 0, math.random(-.8,.8)) * CFrame.Angles(0, 0, 0), 0.6)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)

	end
	Effects.Wave.Create(BrickColor.new("White"), d1.CFrame*CFrame.Angles(0,math.random(-3,3),0), 3, 2, 3, 2, 1.5, 2, 0.1)
	MagniDamage(RootPart, 15, 1, 2, 0, "Snare")
for i = 0, 0.2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.0510107577, -0.761927605, -0.18478027, 0.724990964, -0.129856974, 0.676406264, -0.57642591, 0.423135787, 0.699063241, -0.376989931, -0.896712482, 0.231916681) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.181300402, 1.56885433, 0.0068913335, 0.988376975, -0.0427272618, 0.145895571, 0.0462492108, 0.998712718, -0.0208326131, -0.144817621, 0.0273380429, 0.989080787) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.60648417, 0.375880867, -0.687566161, 0.566877961, -0.818428516, -0.0939370394, -0.185049683, -0.0153920054, -0.982608736, 0.802749097, 0.574402213, -0.160175398) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.51646495, 0.674804688, 0.487342864, -0.489115715, 0.833340347, -0.257506996, 0.147124082, -0.212176189, -0.966093183, -0.859721303, -0.510416627, -0.0188257247) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.871143162, -1.9990623, 0.0637177229, 0.789155126, -0.257492602, -0.557612658, 0.300640583, 0.953621507, -0.0148819983, 0.535583377, -0.155896783, 0.829967916) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.337542653, -1.902969, -0.312210649, 0.931101203, -0.180936784, -0.316721499, 0.0775390267, 0.946634352, -0.31284368, 0.356424361, 0.266730875, 0.895442128) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .5, false)
asda1.C0 = clerp(asda1.C0, CFrame.new(0.400082916, 2.51000118, -0.219945937, -1.00000012, -4.91027095e-007, 0, -4.57792339e-007, 1.00000012, 3.08199378e-006, -2.98023224e-008, 3.03153502e-006, -1.00000024) * CFrame.new(math.random(-.8,.8), 0, math.random(-.8,.8)) * CFrame.Angles(0, 0, 0), 0.6)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)

end
	Effects.Wave.Create(BrickColor.new("White"), d1.CFrame*CFrame.Angles(0,math.random(-3,3),0), 3, 2, 3, 2, 1.5, 2, 0.1)
	MagniDamage(RootPart, 15, 1, 2, 0, "Snare")
	end
		for i = 0, 11, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.438125938, -0.652273774, -0.41643393, 0.763427138, -0.357512295, -0.537925661, 0.645894051, 0.422568649, 0.635811806, 0, -0.832838893, 0.553515434) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.0228356048, 1.5688957, -0.180054456, 0.985420585, -3.93390656e-006, -0.170136839, 0.0573835224, 0.941412568, 0.332339555, 0.160167634, -0.337257326, 0.927687466) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.73330295, 0.486301005, 0.434037954, -0.443160832, -0.896442175, 2.98023224e-006, -0.0292905867, 0.0144766271, -0.999466121, 0.89596355, -0.442924231, -0.0326727629) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.52312505, 0.437584281, -0.565626383, 0.660413742, 0.750902057, -5.51342964e-007, -0.160599381, 0.141245484, -0.976861119, -0.733526766, 0.645132601, 0.213874876) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.433801413, -1.81545305, -0.376765013, 0.891345024, 0.07519418, 0.447045982, 0.13168484, 0.900675654, -0.414056271, -0.433778048, 0.427936107, 0.792910695) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.508779526, -1.95581961, -0.00714170933, 0.631465018, -0.192457214, 0.751140594, 1.90734863e-006, 0.968708515, 0.248200849, -0.775404334, -0.156728715, 0.611705959) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .1, false)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)

end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.228446066, -1.48212528, -0.550315619, 0.824775159, -0.129855767, 0.55034852, -0.455873132, 0.423135728, 0.783030033, -0.334553093, -0.89671278, 0.289794058) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.0976848304, 1.26252365, -0.239582315, 0.674241364, 0.3157444, -0.667610824, 0.127691194, 0.840538144, 0.526489139, 0.727388263, -0.440228701, 0.526407778) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.32592511, 0.429207683, -0.495870918, 0.817416489, -0.52062422, -0.246537656, -0.142856166, 0.231401607, -0.962312698, 0.558052361, 0.821829677, 0.114777088) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.620685518, 0.468271345, -1.17272544, 0.873836577, -0.439916283, -0.20708324, -0.160386607, 0.14126873, -0.976892829, 0.459005296, 0.886858046, 0.0528891087) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.510329783, -2.02312136, 0.541678071, 0.786354899, 0.0386069119, -0.616567731, 0.170318723, 0.94581759, 0.276443243, 0.593833148, -0.322395474, 0.737172663) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.630517483, -1.95606935, 0.0893948376, 0.979490995, 0.115002185, -0.165445685, -0.110246316, 0.993189931, 0.0376783311, 0.168652013, -0.0186658204, 0.985499024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)


end
MagniDamage(RootPart, 30, 20, 20, 3, "Snare")

local refza = New("Part",Character,"ref",{BrickColor = BrickColor.new("Navy blue"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(21.6004982, 13.1000061, 49.3995209, 0, 1, 8.21014128e-015, -1, 0, 0, 0, 8.21014128e-015, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0.12549, 0.376471),})
refza.CFrame = d1.CFrame
asda1:Remove()
local zaz = Instance.new("Weld",d1) 
zaz.Part0 = zaz.Parent 
zaz.Part1 = refza

BlockEffect(BrickColor.new("White"), d1.CFrame, 1, 1, 1, 10, 10, 10, 0.03)
BlockEffect(BrickColor.new("White"), d1.CFrame, 1, 1, 1, 9, 9, 9, 0.03)
BlockEffect(BrickColor.new("White"), d1.CFrame, 1, 1, 1, 10, 10, 10, 0.03)
BlockEffect(BrickColor.new("White"), d1.CFrame, 1, 1, 1, 9, 9, 9, 0.03)
Effects.Wave.Create(BrickColor.new("White"), d1.CFrame*CFrame.Angles(0,math.random(-3,3),0), 3, 2, 3, 4, 3, 4, 0.03)
Humanoid.WalkSpeed = Humanoid.WalkSpeed + 10
for i = 0, 2.6, 0.1 do
swait()
Torso.Velocity = RootPart.CFrame.lookVector * -120
PlayAnimationFromTable({
CFrame.new(0, 0, -0, 1, 0, -0, 0, 0.848545611, -0.529122353, 0, 0.529122353, 0.848545611) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.49387562, -0.138826936, 1, 0, -0, 0, 0.940898359, 0.338689297, -0, -0.338689327, 0.940898359) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.82390237, 0.196082667, -0.583297253, 0.832020283, -0.510337353, 0.217481375, 0.547232866, 0.690750957, -0.472651571, 0.0909862816, 0.512268662, 0.853992105) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.68355048, 0.120761484, -0.29691118, 0.905902386, 0.42348659, 1.60111165e-006, -0.382476956, 0.818178117, -0.429297298, -0.181802958, 0.388900876, 0.903163314) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.870058, -1.91794252, -0.551199377, 0.936423123, -0.350873113, 6.20790615e-007, 0.284235597, 0.758577347, -0.586319745, 0.205723375, 0.549043477, 0.810079813) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.669897377, -1.74547827, -0.518977344, 0.95398134, 0.179228425, -0.240409926, -0.28491354, 0.791764855, -0.540308177, 0.0935095251, 0.58393991, 0.806393445) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
end
BlockEffect(BrickColor.new("Br. yellowish orange"), refza.CFrame, 1, 1, 1, 10, 10, 10, 0.01)
BlockEffect(BrickColor.new("Br. yellowish orange"), refza.CFrame, 1, 1, 1, 9, 9, 9, 0.01)
BlockEffect(BrickColor.new("Bright red"), refza.CFrame, 1, 1, 1, 10, 10, 10, 0.01)
BlockEffect(BrickColor.new("Bright red"), refza.CFrame, 1, 1, 1, 9, 9, 9, 0.01)
MagniDamage(d1, 40, 45, 45, 3, "Knockdown")
wait(0.01)
reweld()
for i = 0, 1, 0.1 do
swait()
Torso.Velocity = RootPart.CFrame.lookVector * -40
PlayAnimationFromTable({
CFrame.new(0, 0, -0, 1, 0, -0, 0, 0.848545611, -0.529122353, 0, 0.529122353, 0.848545611) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(hobb*-20), 0, 0), 
CFrame.new(0, 1.49387562, -0.138826936, 1, 0, -0, 0, 0.940898359, 0.338689297, -0, -0.338689327, 0.940898359) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.82390237, 0.196082667, -0.583297253, 0.832020283, -0.510337353, 0.217481375, 0.547232866, 0.690750957, -0.472651571, 0.0909862816, 0.512268662, 0.853992105) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.68355048, 0.120761484, -0.29691118, 0.905902386, 0.42348659, 1.60111165e-006, -0.382476956, 0.818178117, -0.429297298, -0.181802958, 0.388900876, 0.903163314) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.870058, -1.91794252, -0.551199377, 0.936423123, -0.350873113, 6.20790615e-007, 0.284235597, 0.758577347, -0.586319745, 0.205723375, 0.549043477, 0.810079813) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.669897377, -1.74547827, -0.518977344, 0.95398134, 0.179228425, -0.240409926, -0.28491354, 0.791764855, -0.540308177, 0.0935095251, 0.58393991, 0.806393445) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)

end
zaz:Remove()
	attack = false
end
	mouse.Button1Down:connect(function()
	
	if attack == false and attacktype == 1 then
		attacktype = 2
		attacktwo()
	else
		if attack == false and attacktype == 2 then
			attacktype = 3
			attackthree()
		else
			if attack == false and attacktype == 3 then
				attacktype = 1
				attackone()
			end
		end
	end
end
)
	updateskills = function()
	  if ZAWARUDO == true then

    text3.Text = "[C]\n ROLL CLOCKER DAAA"
  else

    text3.Text = "[C]\n Chrono Field"
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
	if cooldown5 <= co5 then
	cooldown5 = cooldown5 + 0.033333333333333
	end
	if cooldown4 <= co4 and ZAWARUDO == false then
    cooldown4 = cooldown4 + 0.033333333333333
	   end


end

	mouse.KeyDown:connect(function(k)
	
	k = k:lower()
	if attack == false and k == "z" and co1 <= cooldown1 then
		cooldown1 = 0
		speedy()
	else
		if attack == false and k == "x" and co2 <= cooldown2 then
			cooldown2 = 0
			coldbullet()
		else
			if attack == false and k == "c" and co3 <= cooldown3 and ZAWARUDO == false then
				cooldown3 = 0
				itstimetostop()
			else
				if attack == false and k == "v" then
					ZA_WARUDO()
					else
					if attack == false and k == "c" and co5 <= cooldown5 and ZAWARUDO == true then
					cooldown5 = 0
					ROAD_CLOCKER_DA()

					end
				end
			end
		end
	end
end
	)

	dio = function()

  if cooldown4 <= 0 then
  ZAWARUDO = false

	MagniDamage(RootPart, 9999, 0, 0, 0, "UNZA")
	ZAWARUDO = false
	CC1.Enabled = false
    CC2.Enabled = false
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=290810519", Character, 1.5, 1)

cooldown4 = 0.001
	end
  if ZAWARUDO == true then
    cooldown4 = cooldown4 - 0.005
  end
	end

		while 1 do
		swait()
		if hobb <= 360 then
			hobb = hobb + 2
		else
			hobb = 0
			end

		if hobb2 <= 360 then
			hobb2 = hobb2 + 2/12
		else
			hobb2 = 0


		end
				

		updateskills()
		if ZAWARUDO == false then
		bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
		bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
		bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
		bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
		else
		bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
		bar3:TweenSize(UDim2.new(1 * (cooldown5 / co5), 0, 1, 0), "Out", "Quad", 0.5)
		bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
		bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
		
		end
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("Part") then
				v.Material = "SmoothPlastic"
			else
				if v:IsA("Hat") then
					v:WaitForChild("Handle").Material = "SmoothPlastic"
				end
				dio()
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
										if ZAWARUDO == false then			 
							asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
							asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
							asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
							asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
							asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
					RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
										else
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
					RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)

											end
				end
			else
				if RootPart.Velocity.y < -1 and hit == nil then
					Anim = "Fall"
					if attack == false then
									 if ZAWARUDO == false then				 
							asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
							asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
							asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
							asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
							asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
						RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
						LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
									else
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
						RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
						LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)

										end
					end
				else
					if Torsovelocity < 1 and hit ~= nil then
						Anim = "Idle"
						if attack == false then
							change = 1
							 if ZAWARUDO == false then
							asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
							asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
							asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
							asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
							asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
							PlayAnimationFromTable({
CFrame.new(-0.0543853901, 0+ .1 * math.cos((sine) / 10) , -0.0153465532, 0.999893546, 0, -0.0145949936, 0, 1, 0, 0.0145949936, 0, 0.999893546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.00310419453, 1.49623597, -0.0591169037, 0.998496473, -0.0161174126, 0.0523950197, 0.0127870021, 0.997913361, 0.0632885918, -0.0533057302, -0.0625234395, 0.996619046) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.452906311, 0.343407422+ .05 * math.cos((sine) / 10), -0.82563889, 0.241463348, 0.952254772, 0.186833009, -0.0538249873, 0.205376089, -0.977201939, -0.968916178, 0.22590217, 0.100845881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.242443532, 0.552706838+ .05 * math.cos((sine) / 10), -0.797077477, 0.412329286, -0.902833998, 0.121964745, 0.0437210128, -0.114110932, -0.992505491, 0.909985304, 0.414571434, -0.00757845864) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.569116831, -2.00013852- .05 * math.cos((sine) / 10), 0.0165762268, 0.990056217, -0.0815572739, 0.114619412, 0.0808790028, 0.996667981, 0.0105633158, -0.115099013, -0.00118797144, 0.993353546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.560130596, -2.00817132- .05 * math.cos((sine) / 10), -0.0628854185, 0.985871851, 0.051956106, -0.159239814, -0.0514129922, 0.99864912, 0.00753138354, 0.15941599, 0.000762016047, 0.987211287) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
							}, .3, false)
							else
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0.00000000001),0), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0.00000000001),0), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)
							PlayAnimationFromTable({
CFrame.new(-0.0543853901, 0+ .1 * math.cos((sine) / 10) , -0.0153465532, 0.999893546, 0, -0.0145949936, 0, 1, 0, 0.0145949936, 0, 0.999893546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.00310419453, 1.49623597, -0.0591169037, 0.998496473, -0.0161174126, 0.0523950197, 0.0127870021, 0.997913361, 0.0632885918, -0.0533057302, -0.0625234395, 0.996619046) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.452906311, 0.343407422+ .05 * math.cos((sine) / 10), -0.82563889, 0.241463348, 0.952254772, 0.186833009, -0.0538249873, 0.205376089, -0.977201939, -0.968916178, 0.22590217, 0.100845881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.242443532, 0.552706838+ .05 * math.cos((sine) / 10), -0.797077477, 0.412329286, -0.902833998, 0.121964745, 0.0437210128, -0.114110932, -0.992505491, 0.909985304, 0.414571434, -0.00757845864) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.569116831, -2.00013852- .05 * math.cos((sine) / 10), 0.0165762268, 0.990056217, -0.0815572739, 0.114619412, 0.0808790028, 0.996667981, 0.0105633158, -0.115099013, -0.00118797144, 0.993353546) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.560130596, -2.00817132- .05 * math.cos((sine) / 10), -0.0628854185, 0.985871851, 0.051956106, -0.159239814, -0.0514129922, 0.99864912, 0.00753138354, 0.15941599, 0.000762016047, 0.987211287) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
							}, .3, false)
							
							end
						end
					else
						if 2 < Torsovelocity and hit ~= nil then
							Anim = "Walk"
							if attack == false then
									if ZAWARUDO == false then						 
							asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
							asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb),0), 0.3)
							asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2),0), 0.3)
							asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
							asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)

								PlayAnimationFromTable({
CFrame.new(0, -0.0527451783, 0.0838486254, 1, 0, 0, 0, 0.992250264, 0.12425603, 0, -0.12425603, 0.992250264) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.53525484, 0.010611102, 1, 0, 0, 0, 0.998678744, -0.0513891429, 0, 0.0513891354, 0.998678744) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.50000381, 0.0627550036, -0.0766433328, 1, 0, 0, 0, 0.992250264, -0.12425603, 0, 0.12425603, 0.992250264) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 3)) * CFrame.Angles(math.rad(0 - 35 * math.cos((sine) / 3)), 0, 0), 
CFrame.new(-1.49999905, 0.0627550036, -0.0766433328, 1, 0, 0, 0, 0.992250264, -0.12425603, 0, 0.12425603, 0.992250264) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 3)) * CFrame.Angles(math.rad(0 + 35 * math.cos((sine) / 3)), 0, 0), 
CFrame.new(0.5, -1.94821644, -0.113747716, 1, 0, 0, 0, 0.992250264, -0.12425603, 0, 0.12425603, 0.992250264) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 3)) * CFrame.Angles(math.rad(0 + 35 * math.cos((sine) / 3)), 0, 0), 
CFrame.new(-0.5, -1.95007682, -0.0988910645, 1, 0, 0, 0, 0.992250264, -0.12425603, 0, 0.12425603, 0.992250264) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 3)) * CFrame.Angles(math.rad(0 - 35 * math.cos((sine) / 3)), 0, 0), 
								}, .3, false)
									else
	asda1.C0 = clerp(asda1.C0, CFrame.new(1.6 + 1 * math.cos((sine) / 35),-2,0) * angles(-math.rad(90),0,math.rad(90)), 0.3)
	asda2.C0 = clerp(asda2.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb*0),0.00000000001), 0.05)
	asda3.C0 = clerp(asda3.C0, CFrame.new(0,.205,0) * angles(0,math.rad(-hobb2*0),0.00000000001), 0.05)
	asda4.C0 = clerp(asda4.C0, CFrame.new(0,-0.2,0) * angles(0,0 + 4 * math.cos((sine) / 50),0), 0.3)--0 + 10 * math.cos((sine) / 40)
	asda5.C0 = clerp(asda5.C0, CFrame.new(0,-0.2,0) * angles(0,0 - 4 * math.cos((sine) / 50),0), 0.3)

								PlayAnimationFromTable({
CFrame.new(0, -0.0527451783, 0.0838486254, 1, 0, 0, 0, 0.992250264, 0.12425603, 0, -0.12425603, 0.992250264) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.53525484, 0.010611102, 1, 0, 0, 0, 0.998678744, -0.0513891429, 0, 0.0513891354, 0.998678744) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.50000381, 0.0627550036, -0.0766433328, 1, 0, 0, 0, 0.992250264, -0.12425603, 0, 0.12425603, 0.992250264) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 3)) * CFrame.Angles(math.rad(0 - 35 * math.cos((sine) / 3)), 0, 0), 
CFrame.new(-1.49999905, 0.0627550036, -0.0766433328, 1, 0, 0, 0, 0.992250264, -0.12425603, 0, 0.12425603, 0.992250264) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 3)) * CFrame.Angles(math.rad(0 + 35 * math.cos((sine) / 3)), 0, 0), 
CFrame.new(0.5, -1.94821644, -0.113747716, 1, 0, 0, 0, 0.992250264, -0.12425603, 0, 0.12425603, 0.992250264) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 3)) * CFrame.Angles(math.rad(0 + 35 * math.cos((sine) / 3)), 0, 0), 
CFrame.new(-0.5, -1.95007682, -0.0988910645, 1, 0, 0, 0, 0.992250264, -0.12425603, 0, 0.12425603, 0.992250264) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 3)) * CFrame.Angles(math.rad(0 - 35 * math.cos((sine) / 3)), 0, 0), 
								}, .3, false)
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
								if Thing[2] == "ShootIce" then
									local Look = Thing[1]
									local hit, pos = rayCast(Thing[4], Look.lookVector, Thing[9], Character)
									local mag = (Thing[4] - pos).magnitude
									Thing[8].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * angles(-1.57, 0, 0)
									Thing[4] = Thing[4] + Look.lookVector * Thing[9]
									Thing[3] = Thing[3] - 1
									BlockEffect(BrickColor.new("Pastel yellow"), Thing[8].CFrame, 20, 20, 20, 5, 5, 5, 0.1)
									if hit ~= nil or Thing[3] <= 0 then
										Thing[3] = 0
										ref = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really red"), "Reference", vt())
										ref.Anchored = true
										ref.CFrame = cf(pos)
										game:GetService("Debris"):AddItem(ref, 1)
										ref11 = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Really red"), "Reference", vt(5, 5, 5))
										ref11.Anchored = true
										ref11.CFrame = cf(pos)
										game:GetService("Debris"):AddItem(ref11, 5)
										size = 3
										if Thing[10] == 2 then
											freeze = true
											size = 4
											CreateSound("http://www.roblox.com/asset/?id=188959279", ref, 1, 1)
										else
											CreateSound("http://www.roblox.com/asset/?id=188959279", ref, 1, 2)
										end
										MagniDamage(ref, size, 10, 25, 3, "Normal")
										freeze = false
										for i = 1, 8 do
											BreakEffect(BrickColor.new("Pastel yellow"), ref.CFrame * cf(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100), math.random(20, 50) / 100, math.random(1, 5), math.random(20, 50) / 100)
										end
										if Thing[10] == 2 then
											for i = 1, 5 do
												BlockEffect(BrickColor.new("Pastel yellow"), cf(ref.Position), 30, 30, 30, 5, 5, 5, 0.05)
											end
										end
									end
												if Thing[3] <= 0 then
													Thing[8].Transparency = 1
													game:GetService("Debris"):AddItem(Thing[8], 5)
													table.remove(ShootEffects, e)
												end
end
end
else
												Part.Parent = nil
												table.remove(ShootEffects, e)
						end
					end
				end
		end