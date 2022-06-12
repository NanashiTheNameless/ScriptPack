-- params : ...
paly = game.Players.LocalPlayer
char = paly.Character
local mouse = paly:GetMouse()
hed = char.Head
tors = char.Torso
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
matr = math.random
local ultcooldown = math.huge

function ExplodeMassen(rad,par)
	local expart = Instance.new("Part",script.Parent)
	local expart2 = Instance.new("Part",script.Parent)
	local partMesh = Instance.new("SpecialMesh",expart)
	partMesh.MeshType = "Sphere"
	local partMesh2 = Instance.new("SpecialMesh",expart2)
	partMesh2.MeshType = "Sphere"
	local expld = Instance.new("Explosion", script.Parent)
local plode = Instance.new("Sound",workspace)
  plode.SoundId = "rbxassetid://579687077"
  plode.Volume = 1
  plode.Pitch = 0.85
  plode.Looped = false
  plode:Play()
local plodez = Instance.new("Sound",workspace)
  plodez.SoundId = "rbxassetid://288641686"
  plodez.Volume = 1
  plodez.Pitch = 0.75
  plodez.Looped = false
  plodez:Play()
local plodeza = Instance.new("Sound",workspace)
  plodeza.SoundId = "rbxassetid://197161452"
  plodeza.Volume = 0.85
  plodeza.Pitch = 0.65
  plodeza.Looped = false
  plodeza:Play()
local plodezar = Instance.new("Sound",workspace)
  plodezar.SoundId = "rbxassetid://197161452"
  plodezar.Volume = 0.85
  plodezar.Pitch = 0.25
  plodezar.Looped = false
  plodezar:Play()
	expld.BlastRadius = rad
	expld.Position = par.Position
	partMesh.Scale = vt(rad,rad,rad)
	expart.Size = vt(1,1,1)*1.5
	expart.Transparency = 0
	expart.Anchored = true
	expart.Material = "Neon"
	expart.BrickColor = bc("White")
	expart.CFrame = par.CFrame
	partMesh2.Scale = vt(rad,rad,rad)
	expart2.Size = vt(1.15,1.15,1.15)*1.5
	expart2.Transparency = 0.5
	expart2.Anchored = true
	expart2.Material = "Neon"
	expart2.BrickColor = BrickColor.new("Lime green")
	expart2.CFrame = par.CFrame
        local value = 1*rad/10
        par:Destroy()
	for i = 0, 300 do
                partMesh.Scale = partMesh.Scale + vt(value,value,value)
		expart.CFrame = expart.CFrame
                partMesh2.Scale = partMesh2.Scale + vt(value,value,value)
		expart2.CFrame = expart.CFrame
                value = value - 0.0175*rad/10
                if value <= 0 then
		expart.Transparency = expart.Transparency + 0.0125
		expart2.Transparency = expart2.Transparency + 0.0125
                value = 0.25
                end
		wait()
	end
  plode.Parent = nil
	expart.Parent = nil
	expart2.Parent = nil
	expld.Parent = nil
end

function Blaze2()
if ultcooldown >= 30 then
local sloc = Instance.new("Part",workspace)
local msh = Instance.new("SpecialMesh",sloc)
msh.MeshType = "Sphere"
sloc.Size = vt(1,1,1)
sloc.Transparency = 1
sloc.BrickColor = BrickColor.new("Lime green")
sloc.Position = hed.Position + vt(0,0.1,0)
sloc.CanCollide = false
sloc.Shape = "Ball"
sloc.Anchored = true
sloc.Material = "Neon"
  local s = Instance.new("Sound",sloc)
  s.SoundId = "rbxassetid://238319531"
  s.Pitch = 0.5
  s.Volume = 5
  s.Looped = false
  s:Play()
local val = 0.65*2.5
for i = 0 , 95 do
sloc.Transparency = sloc.Transparency - 0.035
msh.Scale = msh.Scale + vt(val,val,val)
val = val - 0.0075*2.5
wait()
end
wait(2)
msh.Scale = msh.Scale - vt(1,1,1)
sloc.Transparency = 1
local spartz = Instance.new("Part",char)
  local sen = Instance.new("Sound",spartz)
  sen.SoundId = "rbxassetid://151776391"
  sen.Pitch = 2
  sen.Volume = 5
  sen.Looped = false
  sen:Play()
  local sr = Instance.new("Sound",spartz)
  sr.SoundId = "rbxassetid://238319531"
  sr.Pitch = 0.5
  sr.Volume = 5
  sr.Looped = false
  sr:Play()
  local tick = Instance.new("Sound",spartz)
  tick.SoundId = "rbxassetid://446876721"
  tick.Volume = 5
  tick.Pitch = 0.5
  tick:Play()
local msh2 = Instance.new("SpecialMesh",spartz)
msh2.MeshType = "Sphere"
spartz.Size = vt(2,2,2)
spartz.Shape = "Ball"
spartz.BrickColor = BrickColor.new("Lime green")
spartz.Material = "Granite"
spartz.Transparency = 0
spartz.Anchored = false
msh2.Scale = msh.Scale/2
spartz.Rotation = hed.Rotation
spartz.CanCollide = false
spartz.Position = sloc.Position + vt(math.random(-0,0),math.random(-0,0),math.random(-0,0))
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector * 125
  bv.Parent = spartz
sloc:Destroy()
  wait(0.00001)
  pewdiepie=spartz.Touched:connect(function(hit)
  ExplodeMassen(50,spartz)
  end)
wait(5)
sloc:Destroy()
end
if ultcooldown < 1 then
for i = 0, 29 do
ultcooldown = ultcooldown + 1
wait(1)
end
end
end

wait(0.016666666666667)
local Player = game.Players.localPlayer
local Character = Player.Character
local Player = game.Players.LocalPlayer
local Character = Player.Character
	local Humanoid = Character.Humanoid
	local Effects = {}
	local mouse = Player:GetMouse()
	--[[local m = Instance.new("Model", Character)
	m.Name = "WeaponModel"]]
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
--C1 playanimation aidjaidasjiadjsaijfias v v v
	PlayAnimationFromTable2 = function(table, speed, bool)
	
	RootJoint.C1 = clerp(RootJoint.C1, table[1], speed)
	Torso.Neck.C1 = clerp(Torso.Neck.C1, table[2], speed)
	RW.C1 = clerp(RW.C1, table[3], speed)
	LW.C1 = clerp(LW.C1, table[4], speed)
	RH.C1 = clerp(RH.C1, table[5], speed)
	LH.C1 = clerp(LH.C1, table[6], speed)
	--[[if bool == true and resetc1 == false then
		resetc1 = true
		RootJoint.C1 = RootJoint.C1
		Torso.Neck.C1 = Torso.Neck.C1
		RW.C1 = rarmc1
		LW.C1 = larmc1
		RH.C1 = rlegc1
		LH.C1 = llegc1]]
	end
--end

--
	local co1 = 1
	local co2 = 1
	local co3 = 1
	local co4 = 1
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local skillcolorscheme = BrickColor.new("White").Color
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
	text1.Text = "[Z]\n Painful Stab"
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
	text2.Text = "[X]\n Chargeful Dash"
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
	text3.Text = "[C]\n ????"
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
	text4.Text = "[V]\n Uber Chargeup Punch"
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
	
kys = New("Model",Character,"kys",{})
FakeHandle = New("Part",kys,"FakeHandle",{Anchored=false,CanCollide = false , BrickColor = BrickColor.new("Pastel brown"),Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(1.12282503, 3.62706137, 24.1025467, 0, 1, 0, 0, 0, -1, -1, 0, 0),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})

FakeH=Instance.new("Weld", FakeHandle)
FakeH.Part0 = FakeH.Parent 
FakeH.Part1 = Player.Character["Left Arm"] 

Gauntlet8 = New("Part",kys,"Gauntlet8",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.400000006, 1),CFrame = CFrame.new(1.722826, 3.62705588, 24.1025314, 0, 1, 0, -1, 0, 0, 0, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Gauntlet8,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1.00999999),})
mot = New("Motor",Gauntlet8,"mot",{Part0 = Gauntlet8,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 1, 0, 0, 0, 0, 1),C1 = CFrame.new(1.52587891e-005, 0.600000978, 5.48362732e-006, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet1 = New("Part",kys,"Gauntlet1",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.400000006, 1),CFrame = CFrame.new(0.522834003, 3.62705588, 24.1025333, 0, 1, 0, -1, 0, 0, 0, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Gauntlet1,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1.00999999),})
mot = New("Motor",Gauntlet1,"mot",{Part0 = Gauntlet1,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 1, 0, 0, 0, 0, 1),C1 = CFrame.new(1.33514404e-005, -0.599991024, 5.48362732e-006, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet4 = New("Part",kys,"Gauntlet4",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.800000012, 0.200000003),CFrame = CFrame.new(1.52283096, 4.02705097, 24.2525311, 0, 1, 0, 1, 0, 0, 0, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Gauntlet4,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet4,"mot",{Part0 = Gauntlet4,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, -1),C1 = CFrame.new(-0.14998436, 0.400005937, -0.399989605, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet6 = New("Part",kys,"Gauntlet6",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.800000012, 0.200000003),CFrame = CFrame.new(1.52283001, 4.02705097, 23.952528, 0, 1, 0, -1, 0, 0, 0, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Gauntlet6,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet6,"mot",{Part0 = Gauntlet6,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 1, 0, 0, 0, 0, 1),C1 = CFrame.new(0.150018692, 0.400004983, -0.399989605, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet3 = New("Part",kys,"Gauntlet3",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.800000012, 0.200000003),CFrame = CFrame.new(0.722829998, 4.02705193, 24.2525253, 0, -1, 0, -1, 0, 0, 0, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Gauntlet3,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet3,"mot",{Part0 = Gauntlet3,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, -1, 0, -1, 0, 0, -0, -0, -1),C1 = CFrame.new(-0.149978638, -0.399995029, -0.399990559, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet5 = New("Part",kys,"Gauntlet5",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.800000012, 0.200000003),CFrame = CFrame.new(0.722832978, 4.02705288, 23.9525337, 0, -1, 0, 1, 0, 0, 0, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Gauntlet5,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet5,"mot",{Part0 = Gauntlet5,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, 1),C1 = CFrame.new(0.15001297, -0.399992049, -0.399991512, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet9 = New("Part",kys,"Gauntlet9",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 1.19999993),CFrame = CFrame.new(1.12282395, 3.62705588, 24.5625305, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Gauntlet9,"Mesh",{Scale = Vector3.new(1.00999999, 0.5, 1.00999999),})
mot = New("Motor",Gauntlet9,"mot",{Part0 = Gauntlet9,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-0.459983826, -1.07288361e-006, 5.48362732e-006, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet11 = New("Part",kys,"Gauntlet11",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(1.32282996, 4.02705097, 23.9525318, 0, 1, 0, -1, 0, 0, 0, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",Gauntlet11,"Mesh",{Scale = Vector3.new(1.01999998, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet11,"mot",{Part0 = Gauntlet11,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 1, 0, 0, 0, 0, 1),C1 = CFrame.new(0.150014877, 0.200004935, -0.399989605, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet12 = New("Part",kys,"Gauntlet12",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(1.32283199, 4.02705097, 24.252533, 0, 1, 0, 1, 0, 0, 0, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",Gauntlet12,"Mesh",{Scale = Vector3.new(1.01999998, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet12,"mot",{Part0 = Gauntlet12,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, -1),C1 = CFrame.new(-0.149986267, 0.200006962, -0.399989605, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet13 = New("Part",kys,"Gauntlet13",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(0.922828019, 4.02705193, 24.2525234, 0, -1, 0, -1, 0, 0, 0, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",Gauntlet13,"Mesh",{Scale = Vector3.new(1.01999998, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet13,"mot",{Part0 = Gauntlet13,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, -1, 0, -1, 0, 0, -0, -0, -1),C1 = CFrame.new(-0.14997673, -0.199997008, -0.399990559, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet10 = New("Part",kys,"Gauntlet10",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.Neon,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(0.922828972, 4.02705193, 23.9525318, 0, -1, 0, 1, 0, 0, 0, 0, 1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",Gauntlet10,"Mesh",{Scale = Vector3.new(1.01999998, 1, 1.5),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet10,"mot",{Part0 = Gauntlet10,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, -1, 0, 0, 0, 0, 1),C1 = CFrame.new(0.150014877, -0.199996054, -0.399990559, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet7 = New("Part",kys,"Gauntlet7",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.60000002, 0.200000003, 0.399999976),CFrame = CFrame.new(1.12282503, 3.87705588, 24.7125359, 1, 0, 0, 0, 0, -1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Gauntlet7,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1.25999999),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet7,"mot",{Part0 = Gauntlet7,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(-0.609989166, 0, -0.249994516, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Gauntlet2 = New("Part",kys,"Gauntlet2",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.60000002, 0.200000003, 0.399999976),CFrame = CFrame.new(1.12282395, 3.37704897, 24.7125359, -1, 0, 0, 0, 0, 1, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Gauntlet2,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1.25999999),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Gauntlet2,"mot",{Part0 = Gauntlet2,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),C1 = CFrame.new(-0.609989166, -1.07288361e-006, 0.250012398, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Crystal = New("Part",kys,"Crystal",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.800000012, 0.800000012, 0.200000003),CFrame = CFrame.new(1.122823, 4.12705803, 24.1025314, 0, 1, 0, 0, 0, -1, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Crystal,"Mesh",{Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Crystal,"mot",{Part0 = Crystal,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),C1 = CFrame.new(1.52587891e-005, -2.02655792e-006, -0.499996662, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle5 = New("Part",kys,"Handle5",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000036, 0.800000012),CFrame = CFrame.new(-1.27716506, 3.67705393, 25.2125359, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle5,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle5,"mot",{Part0 = Handle5,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-1.10998917, -2.39999008, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle3 = New("Part",kys,"Handle3",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.200000003, 1),CFrame = CFrame.new(-2.17716694, 3.67705393, 24.9125347, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle3,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle3,"mot",{Part0 = Handle3,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-0.809988022, -3.29999208, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle2 = New("Part",kys,"Handle2",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.200000003, 1.60000002),CFrame = CFrame.new(-3.47717381, 3.67705393, 24.712532, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle2,"mot",{Part0 = Handle2,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-0.609985352, -4.59999895, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle8 = New("Part",kys,"Handle8",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.800000072, 2.60000014),CFrame = CFrame.new(4.22282696, 3.67705393, 25.012537, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle8,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle8,"mot",{Part0 = Handle8,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-0.909990311, 3.10000181, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle9 = New("Part",kys,"Handle9",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.800000012, 0.400000006, 3.80000019),CFrame = CFrame.new(1.02283704, 3.67705393, 25.012537, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Handle9,"Mesh",{})
mot = New("Motor",Handle9,"mot",{Part0 = Handle9,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.909990311, -0.0999879837, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle1 = New("Part",kys,"Handle1",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 0.800000072),CFrame = CFrame.new(-1.27716506, 3.67705393, 24.8125324, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Handle1,"Mesh",{})
mot = New("Motor",Handle1,"mot",{Part0 = Handle1,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.709985733, -2.39999008, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle6 = New("Part",kys,"Handle6",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.800000072, 0.600000024),CFrame = CFrame.new(4.42282581, 3.67705393, 24.9125366, 0, 0.707106829, -0.707106829, 1, 0, 0, 0, -0.707106829, -0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle6,"Mesh",{Scale = Vector3.new(0.99000001, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle6,"mot",{Part0 = Handle6,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0.707106829, 0, -0.707106829, -0.707106829, 0, -0.707106829),C1 = CFrame.new(-0.809989929, 3.30000067, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle4 = New("Part",kys,"Handle4",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 1.00000012),CFrame = CFrame.new(-2.17716265, 3.67705393, 24.712532, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Handle4,"Mesh",{})
mot = New("Motor",Handle4,"mot",{Part0 = Handle4,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.609985352, -3.29998779, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle7 = New("Part",kys,"Handle7",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.800000072, 0.600000024),CFrame = CFrame.new(3.72283125, 3.67705393, 24.5125351, 0, 0.500000238, -0.866025388, 1, 0, 0, 0, -0.866025388, -0.500000238),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle7,"Mesh",{Scale = Vector3.new(0.99000001, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle7,"mot",{Part0 = Handle7,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0.500000238, 0, -0.866025388, -0.866025388, 0, -0.500000238),C1 = CFrame.new(-0.409988403, 2.6000061, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle15 = New("Part",kys,"Handle15",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.200000003, 1.4000001),CFrame = CFrame.new(-2.37716579, 3.67705393, 24.8125343, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",Handle15,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle15,"mot",{Part0 = Handle15,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-0.70998764, -3.49999094, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle13 = New("Part",kys,"Handle13",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 1.40000021),CFrame = CFrame.new(-0.977168918, 3.67705393, 24.8125286, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("BlockMesh",Handle13,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Motor",Handle13,"mot",{Part0 = Handle13,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.709981918, -2.09999394, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle11 = New("Part",kys,"Handle11",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 1.4000001),CFrame = CFrame.new(-0.977172971, 3.67705202, 25.1125298, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",Handle11,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle11,"mot",{Part0 = Handle11,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-1.00998306, -2.099998, -0.049990654, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle14 = New("Part",kys,"Handle14",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.400000006, 1.60000002),CFrame = CFrame.new(0.522831023, 3.67705393, 25.0125351, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("BlockMesh",Handle14,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Motor",Handle14,"mot",{Part0 = Handle14,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.909988403, -0.599994004, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle10 = New("Part",kys,"Handle10",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000066, 1.4000001),CFrame = CFrame.new(2.02283406, 3.67705202, 24.8125362, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",Handle10,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle10,"mot",{Part0 = Handle10,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-0.709989548, 0.900009036, -0.049990654, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle16 = New("Part",kys,"Handle16",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 1.80000019),CFrame = CFrame.new(2.22282696, 3.67705393, 25.1125336, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("BlockMesh",Handle16,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Motor",Handle16,"mot",{Part0 = Handle16,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.00998688, 1.10000193, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle12 = New("Part",kys,"Handle12",{CanCollide = false,BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.5,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000066, 1.80000019),CFrame = CFrame.new(4.02282476, 3.67705393, 25.1125317, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 1, 1),})
Mesh = New("SpecialMesh",Handle12,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle12,"mot",{Part0 = Handle12,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-1.00998497, 2.89999962, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
BladeEffect3 = New("Part",kys,"BladeEffect3",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.800000072, 0.400000155),CFrame = CFrame.new(-1.27716982, 3.67705393, 25.212532, 0, -1, 0, -1, 0, 0, 0, 0, -1),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",BladeEffect3,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1.01999998),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",BladeEffect3,"mot",{Part0 = BladeEffect3,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, -1, 0, -1, 0, 0, -0, -0, -1),C1 = CFrame.new(-1.10998535, -2.39999485, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
BladeEffect2 = New("Part",kys,"BladeEffect2",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.600000143),CFrame = CFrame.new(5.02282381, 3.67705393, 25.3125305, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",BladeEffect2,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",BladeEffect2,"mot",{Part0 = BladeEffect2,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-1.20998383, 3.89999866, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
BladeEffect1 = New("Part",kys,"BladeEffect1",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 5.60000038),CFrame = CFrame.new(1.92282903, 3.67705393, 25.3125343, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("BlockMesh",BladeEffect1,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),})
mot = New("Motor",BladeEffect1,"mot",{Part0 = BladeEffect1,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.20998764, 0.800004005, -0.0499925613, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle29 = New("Part",kys,"Handle29",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.20000005),CFrame = CFrame.new(0.422832012, 3.78705502, 24.9125347, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("BlockMesh",Handle29,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Motor",Handle29,"mot",{Part0 = Handle29,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.809988022, -0.699993014, -0.159993649, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle32 = New("Part",kys,"Handle32",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.20000005),CFrame = CFrame.new(2.52283311, 3.78705502, 25.1125374, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("BlockMesh",Handle32,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Motor",Handle32,"mot",{Part0 = Handle32,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.00999069, 1.40000808, -0.159993649, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle30 = New("Part",kys,"Handle30",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1),CFrame = CFrame.new(1.52283096, 3.78705502, 24.9125347, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle30,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle30,"mot",{Part0 = Handle30,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-0.809988022, 0.400005937, -0.159993649, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle28 = New("Part",kys,"Handle28",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1),CFrame = CFrame.new(1.42282796, 3.78705502, 25.1125298, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle28,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle28,"mot",{Part0 = Handle28,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-1.00998306, 0.300002933, -0.159993649, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle27 = New("Part",kys,"Handle27",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.00000012),CFrame = CFrame.new(-0.677162051, 3.78705311, 24.9125309, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle27,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle27,"mot",{Part0 = Handle27,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-0.809984207, -1.79998708, -0.159991741, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle31 = New("Part",kys,"Handle31",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.00000012),CFrame = CFrame.new(3.62284327, 3.78705692, 25.1125374, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle31,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle31,"mot",{Part0 = Handle31,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-1.00999069, 2.50001812, -0.159995556, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle20 = New("Part",kys,"Handle20",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000095),CFrame = CFrame.new(0.822834015, 3.78705692, 25.1125355, 0, 0.866025388, 0.500000238, 1, 0, 0, 0, 0.500000238, -0.866025388),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle20,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle20,"mot",{Part0 = Handle20,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0.866025388, 0, 0.500000238, 0.500000238, 0, -0.866025388),C1 = CFrame.new(-1.00998878, -0.299991012, -0.159995556, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle25 = New("Part",kys,"Handle25",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000095),CFrame = CFrame.new(0.322834015, 3.78705502, 25.0625343, 0, 0.707106829, 0.707106829, 1, 0, 0, 0, 0.707106829, -0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle25,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle25,"mot",{Part0 = Handle25,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0.707106829, 0, 0.707106829, 0.707106829, 0, -0.707106829),C1 = CFrame.new(-0.95998764, -0.799991012, -0.159993649, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade8 = New("Part",kys,"Blade8",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.60000002, 0.200000003, 3.80000067),CFrame = CFrame.new(2.43273091, 3.67706394, 25.8025932, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("BlockMesh",Blade8,"Mesh",{})
mot = New("Motor",Blade8,"mot",{Part0 = Blade8,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.70004654, 1.30990589, -0.0500025749, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade1 = New("Part",kys,"Blade1",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.600000083, 4),CFrame = CFrame.new(-5.26725912, 3.6770649, 25.502594, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Blade1,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade1,"mot",{Part0 = Blade1,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-1.4000473, -6.39008427, -0.0500035286, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade3 = New("Part",kys,"Blade3",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.00000012),CFrame = CFrame.new(4.83273983, 3.67706394, 25.3025894, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Blade3,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade3,"mot",{Part0 = Blade3,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-1.20004272, 3.70991468, -0.0500025749, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade9 = New("Part",kys,"Blade9",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.20000005, 0.200000003, 1.00000024),CFrame = CFrame.new(4.8327322, 3.6770649, 26.002594, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("BlockMesh",Blade9,"Mesh",{})
mot = New("Motor",Blade9,"mot",{Part0 = Blade9,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.9000473, 3.70990705, -0.0500035286, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade10 = New("Part",kys,"Blade10",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.800000072, 3.00000024),CFrame = CFrame.new(6.83273506, 3.6770649, 25.8025951, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Blade10,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade10,"mot",{Part0 = Blade10,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-1.70004845, 5.70990992, -0.0500035286, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade4 = New("Part",kys,"Blade4",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000036, 5.4000001),CFrame = CFrame.new(3.23273134, 3.67706394, 26.802599, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Blade4,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade4,"mot",{Part0 = Blade4,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-2.70005226, 2.1099062, -0.0500025749, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade2 = New("Part",kys,"Blade2",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 3.80000019),CFrame = CFrame.new(7.83274889, 3.67706394, 26.7026005, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Blade2,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade2,"mot",{Part0 = Blade2,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-2.60005379, 6.70992374, -0.0500025749, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade12 = New("Part",kys,"Blade12",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.200000003, 3.80000067),CFrame = CFrame.new(-1.36725795, 3.6770649, 25.5025978, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("BlockMesh",Blade12,"Mesh",{})
mot = New("Motor",Blade12,"mot",{Part0 = Blade12,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.40005112, -2.49008298, -0.0500035286, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade11 = New("Part",kys,"Blade11",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.800000072, 5.4000001),CFrame = CFrame.new(-2.16726398, 3.6770649, 26.2025928, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Blade11,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade11,"mot",{Part0 = Blade11,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-2.10004616, -3.29008913, -0.0500035286, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade5 = New("Part",kys,"Blade5",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 5.4000001),CFrame = CFrame.new(8.63274956, 3.67706299, 26.9025936, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Blade5,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade5,"mot",{Part0 = Blade5,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-2.80004692, 7.50992441, -0.0500016212, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Hitbox = New("Part",kys,"Hitbox",{CanCollide = false,BrickColor = BrickColor.new("Pastel brown"),Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.30000007, 6.79999924, 0.49999997),CFrame = CFrame.new(1.9228251, 3.67706347, 25.8525505, 0, 1, 0, 0, 0, -1, -1, 0, 0),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
mot = New("Motor",Hitbox,"mot",{Part0 = Hitbox,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),C1 = CFrame.new(-1.75000381, 0.800000072, -0.0500020981, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Blade7 = New("Part",kys,"Blade7",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,Reflectance = 0.5,Transparency = 0.40000000596046,Transparency = 0.40000000596046,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000036, 5.00000048),CFrame = CFrame.new(7.83273506, 3.6770649, 26.4025955, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Blade7,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Blade7,"mot",{Part0 = Blade7,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-2.30004883, 6.70990992, -0.0500035286, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle23 = New("Part",kys,"Handle23",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.20000005),CFrame = CFrame.new(2.52283311, 3.56705403, 25.1125374, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("BlockMesh",Handle23,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Motor",Handle23,"mot",{Part0 = Handle23,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-1.00999069, 1.40000808, 0.0600073338, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle22 = New("Part",kys,"Handle22",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000095),CFrame = CFrame.new(0.322834015, 3.56705403, 25.0625343, 0, 0.707106829, 0.707106829, 1, 0, 0, 0, 0.707106829, -0.707106829),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle22,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle22,"mot",{Part0 = Handle22,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0.707106829, 0, 0.707106829, 0.707106829, 0, -0.707106829),C1 = CFrame.new(-0.95998764, -0.799991012, 0.0600073338, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle21 = New("Part",kys,"Handle21",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.00000012),CFrame = CFrame.new(3.62284327, 3.56705689, 25.1125374, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle21,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle21,"mot",{Part0 = Handle21,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-1.00999069, 2.50001812, 0.0600044727, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle17 = New("Part",kys,"Handle17",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.20000005),CFrame = CFrame.new(0.422832012, 3.56705403, 24.9125347, 0, 0, 1, 0, 1, 0, -1, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("BlockMesh",Handle17,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Motor",Handle17,"mot",{Part0 = Handle17,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.809988022, -0.699993014, 0.0600073338, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle19 = New("Part",kys,"Handle19",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1),CFrame = CFrame.new(1.42282796, 3.56705403, 25.1125298, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle19,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle19,"mot",{Part0 = Handle19,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-1.00998306, 0.300002933, 0.0600073338, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle26 = New("Part",kys,"Handle26",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1.00000012),CFrame = CFrame.new(-0.677162051, 3.56705093, 24.9125309, 0, 0, 1, 1, 0, 0, 0, 1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle26,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle26,"mot",{Part0 = Handle26,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),C1 = CFrame.new(-0.809984207, -1.79998708, 0.0600104332, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle18 = New("Part",kys,"Handle18",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 1),CFrame = CFrame.new(1.52283096, 3.56705403, 24.9125347, 0, 0, -1, 1, 0, 0, 0, -1, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle18,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle18,"mot",{Part0 = Handle18,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(-0.809988022, 0.400005937, 0.0600073338, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle24 = New("Part",kys,"Handle24",{CanCollide = false,BrickColor = BrickColor.new("Lime green"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000095),CFrame = CFrame.new(0.822834015, 3.56705689, 25.1125355, 0, 0.866025388, 0.500000238, 1, 0, 0, 0, 0.500000238, -0.866025388),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0, 0, 1),})
Mesh = New("SpecialMesh",Handle24,"Mesh",{Scale = Vector3.new(1.00999999, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Handle24,"mot",{Part0 = Handle24,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0.866025388, 0, 0.500000238, 0.500000238, 0, -0.866025388),C1 = CFrame.new(-1.00998878, -0.299991012, 0.0600044727, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Handle = New("Part",kys,"Handle",{CanCollide = false,BrickColor = BrickColor.new("Pastel brown"),Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(1.12282503, 3.62705994, 24.1025467, 0, 1, 0, 0, 0, -1, -1, 0, 0),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
mot = New("Motor",Handle,"mot",{Part0 = Handle,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),C1 = CFrame.new(0, 0, 1.43051147e-006, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Hitbox1 = New("Part",kys,"Hitbox1",{CanCollide = false,BrickColor = BrickColor.new("Pastel brown"),Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 5.09999943, 0.49999997),CFrame = CFrame.new(-4.12717438, 3.67706108, 25.7025509, 0, 1, 0, 0, 0, -1, -1, 0, 0),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
mot = New("Motor",Hitbox1,"mot",{Part0 = Hitbox1,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),C1 = CFrame.new(-1.6000042, -5.24999952, -0.0499997139, 0, 0, -1, 1, 0, 0, 0, -1, 0),})
Hitbox2 = New("Part",kys,"Hitbox2",{CanCollide = false,BrickColor = BrickColor.new("Pastel brown"),Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.30000007, 5.79999924, 0.49999997),CFrame = CFrame.new(6.52282667, 3.67706108, 26.2525539, 0, 1, 0, 0, 0, -1, -1, 0, 0),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0.8, 0.6),})
mot = New("Motor",Hitbox2,"mot",{Part0 = Hitbox2,Part1 = FakeHandle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),C1 = CFrame.new(-2.15000725, 5.40000153, -0.0499997139, 0, 0, -1, 1, 0, 0, 0, -1, 0),})

--math.rad(90)
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
			Laser(BrickColor.new("Bright red"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
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
						CreateSound("http://www.roblox.com/asset/?id=514867425", refpart, 1, 1)
						BlockEffect(BrickColor.new("Br. yellowish orange"), refpart.CFrame, 1, 1, 1, 10, 10, 10, 0.05)
						BlockEffect(BrickColor.new("Bright red"), refpart.CFrame, 1, 1, 1, 10, 10, 10, 0.07)
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
	--"Congrats grgrgry21, you just messed up that animate. hooh"
	attack = true
		local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 5, 10, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
		)
			local con1 = Hitbox1.Touched:connect(function(hit)
		
		Damagefunc(Hitbox1, hit, 5, 10, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
		)
		local con2 = Hitbox2.Touched:connect(function(hit)
		
		Damagefunc(Hitbox2, hit, 5, 10, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
		)
	
	for i = 0, 0.6, 0.02 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, 0, 0, 0.333751112, 0, -0.942661345, 0, 1, 0, 0.942661345, 0, 0.333751112), 
			CFrame.new(0,0,0,0,0,0,0,0,0,0,0,0), 
			CFrame.new(0, 0, 0, 0.992348373, 0.111921035, 0.0521380194, -0.121607535, 0.959024191, 0.255899042, -0.0213611368, -0.260281384, 0.965296507), 
			CFrame.new(0, 0, 0, 0.995387018, 0, -0.0959409997, 0.0959388614, -0.00666199997, 0.995364964, -0.000639159, -0.999977887, -0.00663126865), 
			CFrame.new(0, 0, 0, 0.998348653, 0.0574459769, 0, -0.0574459769, 0.998348653, 0, 0, 0, 1), 
		    CFrame.new(0, 0, 0, 0.989152253, -0.0627200156, 0.132831022, 0.0632807761, 0.997995853, -2.87003754e-008, -0.132564813, 0.00840567891, 0.991138756)}, 0.2, false)
		PlayAnimationFromTable2({
			CFrame.new(-1.27106923e-005, 1.21593475e-005, 5.96046519e-008, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012), 
			CFrame.new(-1.27106923e-005, 1.5000236, 5.96046519e-008, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012), 
			CFrame.new(0.417645931, 0.121249437, -1.5411886, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012), 
			CFrame.new(-0.999726176, 0.490665674, 0.582476676, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012), 
			CFrame.new(0.370760441, -1.98977411, -0.603499889, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012), 
			CFrame.new(-0.302406222, -2.01250315, 0.500046015, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012)}, 0.2, false)

	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=200633108", Hitbox, 2, 1)
--200633281 200633196
	--Effects.Block.Create(BrickColor.new("Br. yellowish orange"), Hitbox.CFrame, 5, 5, 5, 1, 1, 1, 0.09)
	--Effects.Block.Create(BrickColor.new("Bright red"), Hitbox.CFrame, 5, 5, 5, 1, 1, 1, 0.07)
	con:disconnect()
	con1:disconnect()
	con2:disconnect()
	attack = false
end

	attacktwo = function()
	
	attack = true
	for i = 0, 1, 0.08 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0186349452, -0.248176977, 0.0628215745, 0.375544965, 0.0766297877, 0.923630476, 0.128763035, 0.982597232, -0.133876607, -0.917815626, 0.169206128, 0.359142333), CFrame.new(0.0423668474, 1.57783902, -0.316276073, 0.696152329, 0.180450261, -0.6948452, 0.104184225, 0.932252288, 0.346484721, 0.710294187, -0.313598007, 0.630189419), CFrame.new(1.92671323, 0.132951051, -0.678923368, 0.401373565, -0.876565754, 0.265578508, 0.854572356, 0.254073381, -0.452938288, 0.329553753, 0.408753514, 0.851067066), CFrame.new(-1.04651415, 0.432963669, -0.675856173, 0.261162102, -0.915728152, -0.305346608, -0.132824391, 0.279225171, -0.950994909, 0.9561131, 0.288921267, -0.0487079956), CFrame.new(0.758113086, -1.88259661, 0.453171372, 0.961009741, -0.198991895, 0.191996455, 0.124079227, 0.930845678, 0.343701482, -0.247112811, -0.306477666, 0.91924262), CFrame.new(-0.581928134, -1.66874206, -0.0443570018, 0.834722936, 0.0594652742, 0.547450185, -0.0592483878, 0.998079777, -0.0180748496, -0.547473669, -0.0173480511, 0.836643219)}, 0.2, false)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.332943976, -0.0453501195, -0.185544059, 0.503931701, -0.122271061, -0.855045021, 0.268410921, 0.963087022, 0.0204703975, 0.820979714, -0.239819095, 0.518148959), CFrame.new(0.10902524, 1.42164171, -0.150368646, 0.428041071, -0.00987225771, 0.903705418, -0.0982332975, 0.993507743, 0.0573815703, -0.898404837, -0.113335624, 0.424292356), CFrame.new(0.908786654, 0.47266987, -1.09219909, 0.403207213, 0.872515678, 0.275935531, 0.777617276, -0.167717531, -0.60595572, -0.482426614, 0.458898008, -0.746108055), CFrame.new(-1.85339892, 0.927808642, -0.52081728, -0.0625723004, 0.800370812, -0.596230865, -0.952449501, -0.226383746, -0.203937709, -0.298202783, 0.555118978, 0.776477993), CFrame.new(0.600215256, -2.26092339, 0.0316785164, 0.999409437, -0.0130844563, 0.0317713022, 0.0115824938, 0.998827398, 0.0470069796, -0.0323491395, -0.0466112271, 0.998389244), CFrame.new(-0.808889031, -1.75554359, -0.179014683, 0.920005083, 0.178009719, 0.349146128, -0.121227235, 0.976460695, -0.17840609, -0.372685492, 0.121808507, 0.919928432)}, 0.4, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233856079", Hitbox, 1, 2.5)
	MagniDamage(Hitbox, 5, 10, 15, 10, "Normal")
	MagniDamage(Hitbox1, 5, 10, 15, 10, "Normal")
	
	Effects.Block.Create(BrickColor.new("Lime green"), LeftArm.CFrame, 5, 5, 5, 5, 5, 5, 0.09)
	Effects.Block.Create(BrickColor.new("Lime green"), LeftArm.CFrame, 5, 5, 5, 5, 5, 5, 0.07)
	attack = false
end

	attackthree = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0630386472, -0.278067917, 0.662609518, 0.997418523, 0.0324964076, 0.0640287697, -0.00866699871, 0.939693093, -0.34190917, -0.071278207, 0.340471566, 0.937548816), CFrame.new(0.116541803, 1.50563574, -0.363379985, 0.99741888, 0.00384203624, -0.071700342, 0.0324964076, 0.866294563, 0.498475581, 0.0640287548, -0.499518931, 0.863933623), CFrame.new(1.76550686, 0.851317883, 0.633524954, -0.717778921, -0.64158994, 0.270473421, -0.121112853, -0.267489254, -0.955919087, 0.685656786, -0.718896329, 0.114293337), CFrame.new(-1.85054755, 0.725809753, 0.462940723, -0.385106921, 0.903384864, 0.188649699, -0.491353273, -0.027673766, -0.870520771, -0.781194389, -0.42793712, 0.454538435), CFrame.new(0.482117534, -1.79728031, -0.705268621, 0.984953582, -0.0355595201, 0.169121593, 0.0185976997, 0.994728923, 0.100839898, -0.171815932, -0.0961773992, 0.980422974), CFrame.new(-0.498361021, -1.81340992, 0.0649374723, 0.997632146, -0.00866699871, 0.0682281703, -0.0152039425, 0.939693093, 0.341680884, -0.06707488, -0.34190917, 0.937336206)}, 0.3, false)
	end
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0596649423, -0.0609331392, -0.24926284, 0.997557878, -0.00662699156, 0.0695250854, 0.00176699972, 0.997564137, 0.0697326064, -0.0698178485, -0.0694394559, 0.995139658), CFrame.new(0.03276008, 1.44252896, -0.116725445, 0.997558236, 0.0232553538, -0.0658547133, -0.00662699156, 0.970198154, 0.242222458, 0.0695250779, -0.241194606, 0.967983305), CFrame.new(1.96562946, 0.507137001, -0.054060474, 0.137299404, -0.987933397, -0.0716712326, -0.34079802, 0.0208241269, -0.939905882, 0.93005687, 0.153473929, -0.333826572), CFrame.new(-1.79703903, 0.611130834, -0.341432333, 0.346754491, 0.937174857, 0.0382722393, -0.127409071, 0.0874885172, -0.98798418, -0.92926228, 0.337711692, 0.149741635), CFrame.new(0.583949924, -1.99326468, 0.549392104, 0.985466778, -0.119053118, 0.121168382, 0.0766996518, 0.948305786, 0.307950079, -0.151567101, -0.294180989, 0.943655193), CFrame.new(-0.473392367, -1.41731274, -0.923102856, 0.997566938, 0.0384304449, 0.0581673309, 0.00310152699, 0.809055507, -0.58772409, -0.0696470886, 0.586474597, 0.806967795)}, 0.5, false)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0742319226, -0.212178648, -0.401880711, 0.997319937, -0.0416516848, 0.0601444766, 0.0111089991, 0.898794532, 0.438229501, -0.0723105147, -0.436386824, 0.8968485), CFrame.new(0.0310760923, 1.54887593, -0.183208376, 0.997320294, 0.0496452525, -0.0537361279, -0.0416516848, 0.989159107, 0.140817374, 0.0601444691, -0.138201743, 0.988576412), CFrame.new(0.972631454, 0.606948912, -1.07130337, 0.639069736, 0.749865711, -0.17114751, 0.0601495504, -0.270558029, -0.960822821, -0.76679337, 0.603738368, -0.218009531), CFrame.new(-0.864498973, 0.767386198, -1.04104149, 0.445705116, -0.872666836, -0.1994984, -0.559173465, -0.0973761603, -0.823312283, 0.699050963, 0.478508621, -0.531373262), CFrame.new(0.569158137, -1.99067521, -0.0340827554, 0.986428559, -0.109501459, 0.12234471, 0.118518293, 0.990550876, -0.0690104067, -0.113631904, 0.0825739205, 0.990085661), CFrame.new(-0.47435376, -1.51467299, -0.961076021, 0.99767828, 0.0111089991, 0.0671921968, 0.0194864757, 0.898794532, -0.437936932, -0.0652570128, 0.438229501, 0.896491289)}, 0.6, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233856079", Hitbox, 1, 1)
	MagniDamage(Hitbox, 5, 10, 15, 10, "Normal")
	MagniDamage(Hitbox1, 5, 10, 15, 10, "Normal")
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame, 5, 5, 1, 5, 5, 1, 0.07)
	Effects.Block.Create(BrickColor.new("Lime green"), LeftArm.CFrame, 5, 5, 5, 6, 6, 3, 0.09)
	Effects.Block.Create(BrickColor.new("Lime green"), LeftArm.CFrame, 5, 5, 5, 6, 6, 3, 0.07)
	attack = false
end

	dunk = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0558750853, -0.0773498267, 0.332619429, -0.377112269, 0.0229866933, -0.925881863, -0.214679077, 0.970296085, 0.111528262, 0.90094322, 0.24082613, -0.360975742), CFrame.new(-0.0114901662, 1.54095101, -0.0923257098, 0.257508159, -0.214679077, 0.942126632, 0.166381299, 0.970296085, 0.175621539, -0.951843977, 0.111528262, 0.285577655), CFrame.new(1.58127809, 0.795648813, -1.15537035, 0.257202566, -0.756908178, 0.600780487, 0.964671552, 0.23781319, -0.11337468, -0.0570593029, 0.608716011, 0.791333795), CFrame.new(-1.67734432, 0.1196426, 0.90712893, 0.35411644, 0.772008419, 0.527830005, -0.913678527, 0.405985177, 0.0191814546, -0.199482933, -0.489059329, 0.849133134), CFrame.new(0.502895653, -1.82377911, -0.404230505, 0.717630088, -0.214679077, 0.662510157, 0.234164506, 0.970296085, 0.060766872, -0.655876279, 0.111528262, 0.74658376), CFrame.new(-0.741218328, -1.53127491, -0.412305295, 0.845636725, 0.0793296099, 0.527831078, -0.105245247, 0.994261265, 0.0191820543, -0.523280203, -0.0717727393, 0.849132836)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231917845", Hitbox, 1, 2)
	Effects.Wave.Create(BrickColor.new("Lime green"), RootPart.CFrame, 1, 1, 1, 10, 5, 10, 0.07)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 5, 5, 5, 0.09)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 5, 5, 5, 0.07)
	for i = 0, 1, 0.05 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * 50
		PlayAnimationFromTable({CFrame.new(-0.347489059, 1.89379489, -0.530023634, 0.793617308, 0.26859948, -0.545916855, -0.398839056, 0.907263517, -0.133417904, 0.459454417, 0.32361573, 0.827147961), CFrame.new(-0.155465648, 1.53718615, -0.221591562, 0.908247709, -0.356378019, -0.219273746, 0.410897195, 0.858626902, 0.306469262, 0.0790553093, -0.368448973, 0.926280618), CFrame.new(1.88301468, 1.10491538, -0.0779324025, 0.873505831, -0.437252998, 0.214003652, -0.034406364, -0.493952602, -0.868807912, 0.485596418, 0.751545608, -0.446514755), CFrame.new(-1.83038306, 0.636132836, -0.234082431, 0.924620271, 0.373744726, 0.0734322965, -0.10938219, 0.445217013, -0.888716757, -0.364846468, 0.813693285, 0.452537686), CFrame.new(1.17151093, -1.51884532, 0.288996607, 0.823733747, -0.512612104, 0.242263496, 0.290519148, 0.748543799, 0.596054316, -0.486889541, -0.420607924, 0.765524387), CFrame.new(-0.630549073, -1.55479836, -0.714515686, 0.848122776, -0.304236203, 0.433737427, 0.21012038, 0.94470042, 0.251774967, -0.486351013, -0.122398987, 0.865148008)}, 0.3, false)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.623933315, -0.369826853, -0.156407177, 0.849217772, -0.397029608, 0.348132133, -0.00044699994, 0.658747792, 0.752363741, -0.528041959, -0.639076173, 0.559242845), CFrame.new(-0.00439473987, 1.45538008, -0.0782935619, 0.938704193, -0.0374080688, -0.342688411, -0.0310979187, 0.980852127, -0.19225502, 0.343318582, 0.191127568, 0.919566631), CFrame.new(1.00555742, 0.750556827, -1.25407493, 0.468402296, 0.699207723, 0.540099919, 0.820548713, -0.117627844, -0.559342086, -0.327565491, 0.7051754, -0.628831208), CFrame.new(-1.95691848, 0.234090745, 0.140298545, 0.247598886, 0.777176738, -0.578525066, -0.83666712, -0.12958549, -0.532161355, -0.488551885, 0.615795493, 0.618152916), CFrame.new(0.935974598, -1.46626627, -0.895650029, 0.826233387, -0.118111357, -0.55080694, -0.0985342935, 0.932397962, -0.347742766, 0.554643631, 0.341590106, 0.758740246), CFrame.new(-0.8566764, -1.7819916, -0.314571321, 0.898790061, 0.438003123, 0.0181599259, -0.420946509, 0.873872995, -0.243207857, -0.122395292, 0.210948437, 0.969804227)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=233856079", Hitbox, 1, 0.8)
		MagniDamage(Hitbox, 5, 10, 15, 10, "Normal")
	    MagniDamage(Hitbox1, 5, 10, 15, 10, "Normal")
	Effects.Block.Create(BrickColor.new("Br. yellowish orange"), RootPart.CFrame, 5, 5, 5, 5, 5, 5, 0.09)
	Effects.Block.Create(BrickColor.new("Bright red"), RootPart.CFrame, 5, 5, 5, 5, 5, 5, 0.07)
	attack = false
end

	dunkooza = function()
	
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.0288373418, -0.192418262, -0.0531356111, 0.997948349, -0.0446073487, -0.0459267199, 0.060890004, 0.882948518, 0.465504676, 0.0197860003, -0.467346132, 0.883853197), CFrame.new(0.0114286756, 1.44308722, 0.0591937304, 0.997938633, 0.0608900972, 0.0197861046, -0.0446069054, 0.882949769, -0.46734193, -0.0459263027, 0.465505332, 0.88384515), CFrame.new(1.41529405, -0.107281052, 0.612583578, 0.971561313, 0.0101020709, -0.236572772, 0.118062474, 0.845376968, 0.520960093, 0.205255911, -0.534075022, 0.820142746), CFrame.new(-1.71688473, -0.0926266164, 0.561368287, 0.901585162, 0.236020699, 0.362544537, -0.250200659, 0.96816051, -0.0080781281, -0.352907896, -0.0834257305, 0.931931615), CFrame.new(0.317776978, -1.71058083, -0.680077612, 0.964743137, 0.0786031038, -0.251182169, -0.171697885, 0.911277533, -0.374290407, 0.199476242, 0.404221505, 0.892644644), CFrame.new(-0.754294932, -1.82473743, -0.323320627, 0.962212265, 0.140705347, 0.233130246, -0.11977759, 0.987579584, -0.101686805, -0.244542569, 0.0699205399, 0.967114389)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=238319531", RootPart, 2.5, 0.5)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 10, 10, 1, -0.1*2, -0.1*2, 0, 0.01)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 20, 20, 1, -0.2*2, -0.2*2, 0, 0.02)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 30, 30, 1, -0.3*2, -0.3*2, 0, 0.03)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 40, 40, 1, -0.4*2, -0.4*2, 0, 0.04)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 50, 50, 1, -0.5*2, -0.5*2, 0, 0.05)
        wait(0.675)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=238319531", RootPart, 1, 2)
        wait(1)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231917845", Hitbox, 1, 0.8)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=151776391", RootPart, 1, 1.5)
	Effects.Wave.Create(BrickColor.new("Lime green"), RootPart.CFrame, 1, 1, 1, 5, 1, 5, 0.06)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 8, 8, 8, 0.09)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 7, 7, 7, 0.07)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 6, 6, 6, 0.09)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 5, 5, 5, 0.07)
	for i = 0, 1, 0.04 do
		swait()
		Torso.Velocity = RootPart.CFrame.lookVector * 150
		PlayAnimationFromTable({CFrame.new(-0.0415195711, 2.08569407, -0.185997486, 0.997948468, 0.0446058102, -0.045927316, -0.0608890243, 0.882946372, -0.46550864, 0.0197869763, 0.467350066, 0.883850992), CFrame.new(-0.0330298916, 1.53079355, -0.280739367, 0.997948587, -0.0615424737, 0.0176494569, 0.0446060188, 0.866098166, 0.497879982, -0.0459269285, -0.496071339, 0.867066443), CFrame.new(2.00445485, 0.648462772, 0.409209311, 0.184988767, -0.961532891, -0.203061089, 0.252809882, 0.24623464, -0.935657859, 0.949666619, 0.121750318, 0.288635612), CFrame.new(-1.91055453, 0.245741665, -0.27787447, 0.495856375, 0.751108885, 0.435846418, 0.356316745, 0.281724274, -0.890881538, -0.79193747, 0.5970487, -0.127937913), CFrame.new(0.498059809, -1.45009089, 0.698198855, 0.964743495, -0.0428793319, -0.259676158, 0.171697423, 0.850315392, 0.497477412, 0.19947511, -0.524523735, 0.82769841), CFrame.new(-0.727485538, -1.60267472, -0.11832726, 0.981819093, 0.0295088291, 0.187511846, -0.164540589, 0.624853075, 0.763207197, -0.094645977, -0.780184627, 0.618348002)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(-0.117653005, -1.15651703, -0.983633459, 0.993958175, -0.0787762105, -0.076430276, 0.107529014, 0.559188843, 0.822037339, -0.0220180228, -0.82528919, 0.564281106), CFrame.new(0.0185009073, 1.37960994, 0.113212526, 0.993958294, 0.107188329, 0.0236212909, -0.0787765905, 0.846520543, -0.526495278, -0.0764300525, 0.521453321, 0.849849999), CFrame.new(1.5037396, 0.407824367, -1.32765841, 0.140987605, -0.0965467021, 0.985292554, 0.883371055, 0.461591452, -0.0811730698, -0.446965665, 0.881823242, 0.150365233), CFrame.new(-1.40880704, 1.01266086, -1.31886494, -0.12855117, 0.0286603589, -0.991288841, -0.79185468, 0.598803818, 0.120001137, 0.597026765, 0.800382912, -0.0542820916), CFrame.new(0.417401671, -0.608768165, -1.15205181, 0.96308738, 0.0867218822, -0.254838139, -0.193809614, 0.880385101, -0.432851017, 0.186818033, 0.466263294, 0.864695191), CFrame.new(-0.742704809, -1.885674, -0.234664246, 0.961165249, 0.149617493, 0.23189722, -0.11127989, 0.979062796, -0.17044884, -0.252544075, 0.138023973, 0.957690477)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=231917806", Hitbox, 1, 0.8)
	MagniDamage(Hitbox, 5, 10, 15, 10, "Normal")
	MagniDamage(Hitbox1, 5, 10, 15, 10, "Normal")
	Effects.Sphere.Create(BrickColor.new("Lime green"), RootPart.CFrame * cn(0, -2, 0), 5, 5, 5, 20, 20, 20, 0.08)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 8, 8, 8, 0.04)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 7, 7, 7, 0.03)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 6, 6, 6, 0.04)
	Effects.Block.Create(BrickColor.new("Lime green"), RootPart.CFrame, 5, 5, 5, 5, 5, 5, 0.03)
	attack = false
end

	dunkannons = function()
	
	attack = true
	Humanoid.WalkSpeed = 4
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.186240405, 0.110796131, -0.440708041, 0.993961096, 0.0229864083, -0.107295461, -0.0480340123, 0.970295787, -0.23710531, 0.098658137, 0.240827292, 0.96554029), CFrame.new(-0.00653786398, 1.47169375, -0.0460130274, 0.993961334, -0.0480340123, 0.0986581594, 0.022986412, 0.970295787, 0.240827352, -0.107295483, -0.23710531, 0.965540528), CFrame.new(1.55870771, 0.422533929, -0.228132412, 0.920158267, 0.269758672, -0.28379336, -0.349885702, 0.24116005, -0.905219197, -0.17575103, 0.932240129, 0.31629023), CFrame.new(-1.4401089, 0.59103018, 0.10050077, 0.997758627, 0.030987978, -0.0593110174, -0.0609709062, 0.0556920618, -0.996584773, -0.0275789797, 0.997967064, 0.0574565977), CFrame.new(0.374292582, -2.11797833, 0.117044657, 0.998829126, -0.0480340123, -0.00577862561, 0.0480335876, 0.970295787, 0.237105429, -0.00578215718, -0.23710531, 0.971466839), CFrame.new(-0.76240015, -1.74029541, -0.806325555, 0.940569639, -0.0480340123, 0.336186945, -0.0359573625, 0.970295787, 0.239234746, -0.337692142, -0.23710531, 0.910903454)}, 0.3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({CFrame.new(0.0913087875, -1.21074545, -1.43529654, 0.981485367, -0.0903667733, -0.168877333, 0.18883504, 0.309012026, 0.932122827, -0.0320478007, -0.946754932, 0.320355177), CFrame.new(0.0631730855, 1.29753327, 0.298094243, 0.981485724, 0.19137165, 0.00791353732, -0.0903667733, 0.499100775, -0.861819267, -0.168877408, 0.845148146, 0.507153869), CFrame.new(1.1398747, 0.727956295, -1.15539122, 0.57954824, 0.308892846, 0.754127979, 0.673663259, 0.339146107, -0.656626105, -0.458586603, 0.888574898, -0.0115382075), CFrame.new(-1.34308207, 0.352208972, 0.579449832, 0.984155059, 0.000163774937, -0.177310467, -0.149885938, -0.533476114, -0.832428753, -0.0947272182, 0.845815182, -0.524998605), CFrame.new(0.186483294, -1.48678553, -0.810016513, 0.972759366, 0.0996307135, 0.209315687, -0.188833594, 0.864302933, 0.466178745, -0.13446641, -0.493005574, 0.859572232), CFrame.new(-1.12868333, -0.336534053, -0.54941982, 0.960084856, 0.18883504, 0.20634529, 0.141356587, 0.309012026, -0.940494537, -0.241361499, 0.932122827, 0.269984663)}, 0.3, false)
	end
	--[[for i = 0, 3 do
		local hobib = math.random(1, 6)
		for i = 0, 1, 0.1 do
			swait()
			PlayAnimationFromTable({CFrame.new(-0.0225678831, -1.21728492, -1.42334998, 0.996199608, -0.0492271595, 0.0718503445, -0.0538799912, 0.299834162, 0.952468574, -0.0684305131, -0.952720106, 0.296042293), CFrame.new(0.0751699433, 1.43051457, -0.39642638, 0.996199965, 0.0806309506, -0.0329308063, -0.0492271446, 0.833168447, 0.550824106, 0.0718503594, -0.547109783, 0.8339715), CFrame.new(1.46657431, 0.799420893, -0.830374599, 0.644049466, 0.0717548952, 0.761611223, 0.703545749, 0.335361838, -0.626542866, -0.300372809, 0.93935281, 0.165506721), CFrame.new(-1.34261823, 0.297376126, 0.252365947, 0.983457386, -0.180813491, -0.0108846743, -0.109879918, -0.547714889, -0.829418421, 0.144008338, 0.816893458, -0.558521807), CFrame.new(0.551745534, -1.45635438, -0.741569817, 0.983590007, 0.17892608, -0.0231617149, -0.148542851, 0.87597388, 0.458917201, 0.102401309, -0.447945833, 0.888177037), CFrame.new(-0.834492505, -0.362758934, -0.796781898, 0.983163714, -0.0538799912, 0.174602941, 0.182717323, 0.299834162, -0.93633008, -0.00190247595, 0.952468574, 0.304630846)}, 0.3, false)
		end
		Effects.Block.Create(BrickColor.new("Br. yellowish orange"), m:FindFirstChild("Shoot" .. hobib).CFrame, 5, 5, 5, 0.5, 0.5, 0.5, 0.07)
		CFuncs.Sound.Create("http://www.roblox.com/asset/?id=151776307", RootPart, 1, 2)
		shoottraildd(mouse, m:FindFirstChild("Shoot" .. hobib), 0.5)
		for i = 0, 1, 0.5 do
			swait()
			PlayAnimationFromTable({CFrame.new(-0.00831588358, -1.21728492, -1.2740283, 0.996199608, -0.0492271595, 0.0718503445, -0.0538799912, 0.299834162, 0.952468574, -0.0684305131, -0.952720106, 0.296042293), CFrame.new(0.0711895972, 1.57347798, -0.441656053, 0.996199965, 0.0806309506, -0.0329308063, -0.0492271446, 0.833168447, 0.550824106, 0.0718503594, -0.547109783, 0.8339715), CFrame.new(1.47081995, 0.64692831, -0.782130241, 0.644049466, 0.0717548952, 0.761611223, 0.703545749, 0.335361838, -0.626542866, -0.300372809, 0.93935281, 0.165506721), CFrame.new(-1.34102535, 0.240191355, 0.270457268, 0.983457386, -0.180813491, -0.0108846743, -0.109879918, -0.547714889, -0.829418421, 0.144008338, 0.816893458, -0.558521807), CFrame.new(0.547765613, -1.31339121, -0.786799312, 0.983590007, 0.17892608, -0.0231617149, -0.148542851, 0.87597388, 0.458917201, 0.102401309, -0.447945833, 0.888177037), CFrame.new(-0.838472426, -0.219795436, -0.842011452, 0.983163714, -0.0538799912, 0.174602941, 0.182717323, 0.299834162, -0.93633008, -0.00190247595, 0.952468574, 0.304630846)}, 0.3, false)
		end
	end]]
	Humanoid.WalkSpeed = 16
	attack = false
end

	verydunk = function()
	
	attack = true
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=238319531", RootPart, 2.5, 0.5)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 10, 10, 1, -0.1*2, -0.1*2, 0, 0.01)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 20, 20, 1, -0.2*2, -0.2*2, 0, 0.02)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 30, 30, 1, -0.3*2, -0.3*2, 0, 0.03)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 40, 40, 1, -0.4*2, -0.4*2, 0, 0.04)
	Effects.Ring.Create(BrickColor.new("Lime green"), LeftArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 50, 50, 1, -0.5*2, -0.5*2, 0, 0.05)
	for i = 0, 1, 0.05 do
		swait()
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 7.5, 7.5, 7.5, 1, 1, 1, 0.065)
		--Effects.Block.Create(BrickColor.new("Br. yellowish orange"), Barrel2.CFrame, 5, 5, 5, -1, -1, -1, 0.07)
		PlayAnimationFromTable({CFrame.new(0.041139707, 0.044585079, 0.431010723, 0.164062083, 0.0416527241, -0.985569894, -0.436991155, 0.898793995, -0.0347580127, 0.884376585, 0.436387777, 0.165659875), CFrame.new(-0.0562867522, 1.59175599, -0.00447699428, 0.285545528, -0.436991155, 0.852937639, 0.101980112, 0.898793995, 0.426344275, -0.952923834, -0.0347580127, 0.301210999), CFrame.new(1.4891398, 1.07213497, -1.11837041, -0.21181941, 0.971555471, 0.105890013, 0.977145553, 0.212517619, 0.00477617467, -0.017863173, 0.10448163, -0.994366407), CFrame.new(-1.52433658, 0.125274807, -0.768075228, 0.502447903, 0.333001524, -0.797907352, -0.844186068, 0.388335317, -0.369520664, 0.186804652, 0.859247208, 0.476233542), CFrame.new(0.95525521, -1.80896652, 0.0362099186, 0.887154818, -0.436991155, 0.14830631, 0.424316525, 0.898793995, 0.110112481, -0.181414992, -0.0347580127, 0.982791901), CFrame.new(-0.618177056, -1.84541512, -0.400635123, 0.782929122, -0.436991155, 0.442787081, 0.361066431, 0.898793995, 0.248596638, -0.506608844, -0.0347580127, 0.861474812)}, 0.1, false)
	end
	for i = 0, 1, 0.25 do
		swait()
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 7.5, 7.5, 7.5, 1, 1, 1, 0.065)
		PlayAnimationFromTable({CFrame.new(0.0401331335, 0.0741440356, 0.42046985, 0.151488289, 0.0610756539, -0.98657006, -0.640763819, 0.766044617, -0.0509660058, 0.752643824, 0.639879048, 0.155181855), CFrame.new(-0.411456347, 1.51497698, -0.0327271074, 0.254760653, -0.640763819, 0.724236727, 0.149534211, 0.766044617, 0.625152171, -0.955372512, -0.0509660058, 0.29097414), CFrame.new(1.304847, 1.15274966, -0.9747262, -0.220305115, 0.952353835, 0.210922092, 0.974325597, 0.204557091, 0.0940542966, 0.0464273617, 0.226227403, -0.972967565), CFrame.new(-1.51677501, -0.265117556, -0.138394684, 0.758258045, 0.610287666, -0.229333594, -0.645010769, 0.753440619, -0.127626568, 0.09490031, 0.244696528, 0.964944422), CFrame.new(1.39025009, -1.5400058, 0.0708092526, 0.759066045, -0.640763819, 0.115066618, 0.622178853, 0.766044617, 0.161458939, -0.191603184, -0.0509660058, 0.980148077), CFrame.new(-0.267891169, -1.79467082, -0.372773767, 0.673933685, -0.640763819, 0.367743045, 0.529434681, 0.766044617, 0.364519417, -0.515278399, -0.0509660058, 0.855505824)}, 0.3, false)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=238319531", RootPart, 1, 2)
	for i = 0, 1, 0.25 do
		swait()
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 7.5, 7.5, 7.5, 1, 1, 1, 0.065)
		PlayAnimationFromTable({CFrame.new(0.0401331335, 0.0741440356, 0.42046985, 0.151488289, 0.0610756539, -0.98657006, -0.640763819, 0.766044617, -0.0509660058, 0.752643824, 0.639879048, 0.155181855), CFrame.new(-0.411456347, 1.51497698, -0.0327271074, 0.254760653, -0.640763819, 0.724236727, 0.149534211, 0.766044617, 0.625152171, -0.955372512, -0.0509660058, 0.29097414), CFrame.new(1.304847, 1.15274966, -0.9747262, -0.220305115, 0.952353835, 0.210922092, 0.974325597, 0.204557091, 0.0940542966, 0.0464273617, 0.226227403, -0.972967565), CFrame.new(-1.51677501, -0.265117556, -0.138394684, 0.758258045, 0.610287666, -0.229333594, -0.645010769, 0.753440619, -0.127626568, 0.09490031, 0.244696528, 0.964944422), CFrame.new(1.39025009, -1.5400058, 0.0708092526, 0.759066045, -0.640763819, 0.115066618, 0.622178853, 0.766044617, 0.161458939, -0.191603184, -0.0509660058, 0.980148077), CFrame.new(-0.267891169, -1.79467082, -0.372773767, 0.673933685, -0.640763819, 0.367743045, 0.529434681, 0.766044617, 0.364519417, -0.515278399, -0.0509660058, 0.855505824)}, 0.3, false)
	end
for i = 0, 24 do
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=238319531", RootPart, 1, 2)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=238319531", RootPart, 1, 1.75)
	MagniDamage(Hitbox, 10, 1, 2, 10, "Normal")
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 25, 25, 1, -1.5, -1.5, 0, 0.05)
wait(0.05)
end
	for i = 0, 1, 0.5 do
		swait()
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 7.5, 7.5, 7.5, 1, 1, 1, 0.065)
		--Effects.Block.Create(BrickColor.new("Br. yellowish orange"), Barrel2.CFrame, 10, 10, 10, -1, -1, -1, 0.07)
		PlayAnimationFromTable({CFrame.new(0.200224042, -0.227714077, -0.387235343, 0.949956238, -0.243331015, 0.195888788, 0.123870984, 0.869098783, 0.478877187, -0.28677237, -0.430647433, 0.855747461), CFrame.new(0.0819287449, 1.41396284, -0.27420333, 0.915596783, 0.0299440324, 0.400981069, -0.112619296, 0.976408243, 0.184238791, -0.386004388, -0.213846684, 0.89736855), CFrame.new(1.14642, 0.662253082, -0.920918107, -0.00301490724, 0.0640034825, 0.99794513, 0.980141044, -0.19768405, 0.0156396553, 0.198278829, 0.97817421, -0.0621364564), CFrame.new(-1.45047593, 0.217968062, 0.413363159, -0.0768081546, 0.277757645, -0.957575679, -0.941704333, -0.335731506, -0.021848321, -0.327556908, 0.900075078, 0.287352532), CFrame.new(0.520247221, -1.82374465, -0.525635481, 0.988821089, 0.149106205, 0.000458553433, -0.148477226, 0.98435849, 0.0948312283, 0.0136885494, -0.0938392878, 0.995493293), CFrame.new(-0.57537961, -2.09034443, 0.11631836, 0.99074924, 0.0795628428, 0.109935179, -0.08136677, 0.996611834, 0.012014389, -0.10860683, -0.020848304, 0.993866265)}, 0.4, false)
	end
	for i = 0, 1, 0.13 do
		swait()
	Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 5, 5, 1, 1*2, 1*2, 0, 0.075)
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 7.5, 7.5, 7.5, 5, 5, 5, 0.065)
		PlayAnimationFromTable({CFrame.new(-0.32173726, -0.227715075, -0.881562114, 0.0899681896, -0.490443766, 0.866817713, 0.123871259, 0.869101048, 0.478878796, -0.988212466, 0.0642898232, 0.138943106), CFrame.new(0.337672263, 1.68985736, -0.235476986, 0.875947833, 0.165182114, -0.453246117, -0.0474886224, 0.96451354, 0.259732485, 0.480064601, -0.205987319, 0.852707028), CFrame.new(1.79723549, 0.554554403, -0.512672782, 0.0541117489, -0.913280547, 0.40372315, 0.943166137, -0.0860183686, -0.321000129, 0.327890873, 0.398147374, 0.856719494), CFrame.new(-1.44090164, 0.658615828, -0.388829917, -0.199676231, -0.419071078, -0.885725915, -0.922202766, -0.225134045, 0.314418942, -0.331171125, 0.87959981, -0.341513991), CFrame.new(0.575238645, -1.87178028, -0.452693194, 0.773394883, 0.110019118, -0.624305904, 0.125435278, 0.93879509, 0.320830435, 0.62139225, -0.326437622, 0.712258458), CFrame.new(-1.11411142, -1.55052757, -0.724033237, 0.763290703, 0.479035646, -0.433490157, -0.499207586, 0.863237977, 0.0749294758, 0.410098314, 0.159208834, 0.898038864)}, 0.3, false)
	end
for i = 0, 4 do
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=151776391", RootPart, 1, 3)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=151776391", RootPart, 1, 5)
	MagniDamage(Hitbox, 30, 5, 7, 10, "Normal")
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 15, 15, 15, 2.5, 2.5, 2.5, 0.05)
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 10, 10, 1, 10, 10, 0, 0.05)
wait(0.25)
end
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 100, 100, 25, -1.5, -1.5, 0, 0.02)
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 90, 90, 20, -1.5, -1.5, 0, 0.02)
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 80, 80, 15, -1.5, -1.5, 0, 0.02)
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=238319531", RootPart, 7.5, 0.5)
wait(1.65)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=151776391", RootPart, 2, 2)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=151776391", RootPart, 2, 1)
	MagniDamage(Hitbox1, 30, 10, 15, 10, "Normal")
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 50, 50, 50, 4.75, 4.75, 4.75, 0.065)
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 50, 50, 50, 4.75, 4.75, 4.75, 0.065)
wait(0.75)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=151776391", RootPart, 1, 2)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=151776391", RootPart, 1, 1)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=151776391", RootPart, 1, 0.5)
	MagniDamage(Hitbox, 10, 25, 30, 10, "Normal")
	MagniDamage(Hitbox1, 10, 25, 30, 10, "Normal")
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 5, 5, 5, 4.75, 4.75, 4.75, 0.01)
	Effects.Block.Create(BrickColor.new("Lime green"), RightArm.CFrame, 5, 5, 5, 4.75, 4.75, 4.75, 0.01)
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 10, 10, 1, 2, 2, 0, 0.02)
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 10, 10, 1, 3, 3, 0, 0.03)
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 10, 10, 1, 4, 4, 0, 0.04)
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 10, 10, 1, 5, 5, 0, 0.05)
Effects.Ring.Create(BrickColor.new("Lime green"), RightArm.CFrame * angles(math.random(-50,50), math.random(-50,50), math.random(-50,50)), 10, 10, 1, 1, 1, 0, 0.01)
	attack = false
end

	mouse.Button1Down:connect(function()
	
	if attack == false and attacktype == 1 then
		attacktype = 2
		attacktwo()
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

	mouse.KeyDown:connect(function(k)
	
	k = k:lower()
	if attack == false and k == "z" and co1 <= cooldown1 then
		cooldown1 = 0
		dunk()
	else
		if attack == false and k == "x" and co2 <= cooldown2 then
			cooldown2 = 0
			dunkooza()
		else
			if attack == false and k == "c" and co3 <= cooldown3 then
				cooldown3 = 0
attack = true
				Blaze2()
attack = false
			else
				if attack == false and k == "v" and co4 <= cooldown4 then
					cooldown4 = 0
					verydunk()
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
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				end
			else
				if RootPart.Velocity.y < -1 and hit == nil then
					Anim = "Fall"
					if attack == false then
						RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
						LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					end
				else
					if Torsovelocity < 1 and hit ~= nil then
						Anim = "Idle"
						if attack == false then
							change = 1
							--FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(1.1,0,1.2) * angles(0,0,-math.rad(90)), 0.3)

							RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0-0.1*math.cos(sine/16), 0) * angles(math.rad(0-2*math.cos(sine/16)), math.rad(35), math.rad(0-0.2*math.cos(sine/42))), 0.3)
							Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10-2*math.cos(sine/16)), math.rad(-35), math.rad(0)), 0.3)
							RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.25-0.075*math.cos(sine/16), -0.5-0.25*math.cos(sine/16)) * angles(math.rad(0-5*math.cos(sine/16)), math.rad(70), math.rad(75+7.5*math.cos(sine/16))), 0.3)
							LW.C0 = clerp(LW.C0, CFrame.new(-1-0.15*math.cos(sine/16), 0.5, -0.75-0.1*math.cos(sine/16)) * angles(math.rad(90+10*math.cos(sine/16)), math.rad(0), math.rad(50-5*math.cos(sine/16))), 0.3)
							RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2+0.1*math.cos(sine/16), 0-0.25*math.cos(sine/16)) * angles(math.rad(0+10*math.cos(sine/16)), math.rad(-30), math.rad(0)), 0.3)
							LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2+0.1*math.cos(sine/16), 0+0.25*math.cos(sine/16)) * angles(math.rad(0-10*math.cos(sine/16)), math.rad(-30), math.rad(0)), 0.3)
						end
					else
						if 2 < Torsovelocity and hit ~= nil then
							Anim = "Walk"
							if attack == false then
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
								Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0 + 1 * math.cos((sine) / 3)) * angles(math.rad(0 - 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0 - 1 * math.cos((sine) / 3)) * angles(math.rad(0 + 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
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