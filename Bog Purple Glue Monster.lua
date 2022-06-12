--[[Bog(?) by Salvo_Starly, Injectionner and Dooven.
Credit to Curseei.
             A
          A     A
         A   C   A
          A     A
             A
]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local Mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local Camera = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local Create = LoadLibrary("RbxUtility").Create
-- blob V
local pet1 = false
local pet2 = false
local pet3 = false


local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}

Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Create('Motor'){
		Parent = part0,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return w
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)

local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
	Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
	RW.C0 = clerp(RW.C0, table[3], speed) 
	LW.C0 = clerp(LW.C0, table[4], speed) 
	RH.C0 = clerp(RH.C0, table[5], speed) 
	LH.C0 = clerp(LH.C0, table[6], speed) 
	if bool == true then
		if resetc1 == false then
			resetc1 = true
			RootJoint.C1 = RootJoint.C1
			Torso.Neck.C1 = Torso.Neck.C1
			RW.C1 = rarmc1
			LW.C1 = larmc1
			RH.C1 = rlegc1
			LH.C1 = llegc1
		end
	end
end

ArtificialHB = Create("BindableEvent", script){
	Parent = script,
	Name = "Heartbeat",
}

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
CFuncs = {	
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			return Part
		end;
	};
	
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};

	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	Sound = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local Sound = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = "rbxassetid://" .. id,
					Parent = par or workspace,
				}
				Sound:play() 
				game:GetService("Debris"):AddItem(Sound, 10)
			end))
		end;
	};
	
	Decal = {
		Create = function(Color, Texture, Transparency, Name, Parent)
			local Decal = Create("Decal"){
				Color3 = Color,
				Texture = "rbxassetid://" .. Texture,
				Transparency = Transparency,
				Name = Name,
				Parent = Parent,
			}
			return Decal
		end;
	};
	
	BillboardGui = {
		Create = function(Parent, Image, Position, Size)
			local BillPar = CFuncs.Part.Create(Parent, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "BillboardGuiPart", Vector3.new(1, 1, 1))
			BillPar.CFrame = CFrame.new(Position)
			local Bill = Create("BillboardGui"){
				Parent = BillPar,
				Adornee = BillPar,
				Size = UDim2.new(1, 0, 1, 0),
				SizeOffset = Vector2.new(Size, Size),
			}
			local d = Create("ImageLabel", Bill){
				Parent = Bill,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = "rbxassetid://" .. Image,
			}
			return BillPar
		end
	};
	
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local Particle = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return Particle
		end;
	};
	
	CreateTemplate = {
		
	};
}
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end


FHead = New("Model",Character,"FHead",{})
FHeads = New("Part",FHead,"FHead",{BrickColor = BrickColor.new("Bright violet"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 1, 1),CFrame = CFrame.new(-71.5295258, 31.5899944, -48.3860397, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",FHeads,"Mesh",{Scale = Vector3.new(1.29999995, 1.29999995, 1.29999995),})
mot = New("Motor",FHeads,"mot",{Part0 = FHeads,Part1 = Head,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, -0.00999641418, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
eye2 = New("Part",FHead,"eye2",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.299999982),CFrame = CFrame.new(-71.2700043, 31.7900009, -47.9059982, -8.94069672e-08, 1, -3.06497716e-10, -1, -8.94069672e-08, 1.10863176e-08, -5.69275738e-10, 8.84143159e-09, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",eye2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",eye2,"mot",{Part0 = eye2,Part1 = Head,C0 = CFrame.new(0, 0, 0, -8.94069672e-08, -1, -5.69275738e-10, 1, -8.94069672e-08, 8.84143159e-09, -3.06497716e-10, 1.10863176e-08, 1),C1 = CFrame.new(-0.259521484, 0.190010071, -0.480041504, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
mouthslime3 = New("Part",FHead,"mouthslime3",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.05999994, 0.200000003, 0.939999998),CFrame = CFrame.new(-71.3595352, 31.4678268, -48.2122421, 0.731440544, 0.68190515, 3.15442861e-07, -0.676676571, 0.725832105, -0.123600096, -0.084283784, 0.0904059261, 0.992332041),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",mouthslime3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",mouthslime3,"mot",{Part0 = mouthslime3,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0.731440544, -0.676676571, -0.084283784, 0.68190515, 0.725832105, 0.0904059261, 3.15442861e-07, -0.123600096, 0.992332041),C1 = CFrame.new(-0.16999054, -0.132164001, -0.173797607, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
mouthslime4 = New("Part",FHead,"mouthslime4",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.809999883, 0.200000003, 0.939999998),CFrame = CFrame.new(-71.6595764, 31.3799286, -48.2080956, -0.284449756, 0.895270467, -0.342898577, -0.951339722, -0.307804942, -0.0144658349, -0.118496694, 0.322098225, 0.93926096),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",mouthslime4,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",mouthslime4,"mot",{Part0 = mouthslime4,Part1 = Head,C0 = CFrame.new(0, 0, 0, -0.284449756, -0.951339722, -0.118496694, 0.895270467, -0.307804942, 0.322098225, -0.342898577, -0.0144658349, 0.93926096),C1 = CFrame.new(0.130050659, -0.220062256, -0.177944183, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.8500061, 31.4500008, -47.9260025, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.320480347, -0.149990082, -0.460037231, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.5499954, 31.4600182, -47.8259964, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.0204696655, -0.139972687, -0.560043335, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.6600037, 31.4600105, -47.8460007, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.130477905, -0.139980316, -0.540039063, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.3199921, 31.260004, -47.8859978, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.209533691, -0.339986801, -0.500041962, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.3800049, 31.4700356, -47.8559952, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.149520874, -0.129955292, -0.530044556, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.7600021, 31.260006, -47.8859978, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.230476379, -0.339984894, -0.500041962, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.4199982, 31.2700043, -47.8459969, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.109527588, -0.329986572, -0.540042877, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.5399933, 31.260004, -47.8459969, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.0104675293, -0.339986801, -0.540042877, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
eye_socket2 = New("Part",FHead,"eye_socket2",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.519999981, 0.980000079, 0.729999959),CFrame = CFrame.new(-71.4469299, 31.7127285, -48.1378136, 0.538143992, 0.837109029, -0.0982321426, -0.842836916, 0.53518492, -0.0565964021, 0.00519499788, 0.113250695, 0.993552864),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye_socket2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",eye_socket2,"mot",{Part0 = eye_socket2,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0.538143992, -0.842836916, 0.00519499788, 0.837109029, 0.53518492, 0.113250695, -0.0982321426, -0.0565964021, 0.993552864),C1 = CFrame.new(-0.0825958252, 0.112737656, -0.248226166, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.6499939, 31.260004, -47.855999, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.12046814, -0.339986801, -0.530040741, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
eye1 = New("Part",FHead,"eye1",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.299999982),CFrame = CFrame.new(-71.7900162, 31.7925339, -47.9059982, -8.94069672e-08, 1, -3.06497716e-10, -1, -8.94069672e-08, 1.10863176e-08, -5.69275738e-10, 8.84143159e-09, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",eye1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",eye1,"mot",{Part0 = eye1,Part1 = Head,C0 = CFrame.new(0, 0, 0, -8.94069672e-08, -1, -5.69275738e-10, 1, -8.94069672e-08, 8.84143159e-09, -3.06497716e-10, 1.10863176e-08, 1),C1 = CFrame.new(0.260490417, 0.19254303, -0.480041504, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
pupil2 = New("Part",FHead,"pupil2",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.299999982),CFrame = CFrame.new(-71.7799988, 31.7825317, -47.7659988, -8.94069672e-08, -1, 3.06497716e-10, 1, -8.94069672e-08, 1.10863176e-08, 5.69275738e-10, 8.84143159e-09, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",pupil2,"Mesh",{Scale = Vector3.new(0.300000012, 0.300000012, 0.100000001),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",pupil2,"mot",{Part0 = pupil2,Part1 = Head,C0 = CFrame.new(0, 0, 0, -8.94069672e-08, 1, 5.69275738e-10, -1, -8.94069672e-08, 8.84143159e-09, 3.06497716e-10, 1.10863176e-08, 1),C1 = CFrame.new(0.250473022, 0.182540894, -0.620040894, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.219986, 31.2600021, -47.9459991, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.309539795, -0.339988708, -0.440040588, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.2799988, 31.4600086, -47.8859978, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.249526978, -0.139982224, -0.500041962, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.1799927, 31.4300175, -47.9559975, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.349533081, -0.169973373, -0.430042267, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.8700027, 31.2700081, -47.9560013, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.34047699, -0.329982758, -0.430038452, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
mouthslime1 = New("Part",FHead,"mouthslime1",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.809999883, 0.200000003, 0.939999998),CFrame = CFrame.new(-71.3795776, 31.3918514, -48.2380943, -0.284464717, 0.832457125, 0.475494742, -0.951335847, -0.183813453, -0.247331187, -0.118490413, -0.522711933, 0.844234765),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",mouthslime1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",mouthslime1,"mot",{Part0 = mouthslime1,Part1 = Head,C0 = CFrame.new(0, 0, 0, -0.284464717, -0.951335847, -0.118490413, 0.832457125, -0.183813453, -0.522711933, 0.475494742, -0.247331187, 0.844234765),C1 = CFrame.new(-0.14994812, -0.20813942, -0.147945404, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
tooth = New("Part",FHead,"tooth",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-71.7700043, 31.4500065, -47.8759995, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",tooth,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",tooth,"mot",{Part0 = tooth,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.240478516, -0.14998436, -0.510040283, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
mouthslime2 = New("Part",FHead,"mouthslime2",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.809999883, 0.200000003, 0.939999998),CFrame = CFrame.new(-71.7495956, 31.3112774, -48.3080978, 0.36108613, 0.795057118, -0.487350166, -0.925086856, 0.371291727, -0.0797050968, 0.117577657, 0.47962296, 0.869569838),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",mouthslime2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",mouthslime2,"mot",{Part0 = mouthslime2,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0.36108613, -0.925086856, 0.117577657, 0.795057118, 0.371291727, 0.47962296, -0.487350166, -0.0797050968, 0.869569838),C1 = CFrame.new(0.220069885, -0.288713455, -0.0779418945, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
eye_socket1 = New("Part",FHead,"eye_socket1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.519999981, 0.980000079, 0.729999959),CFrame = CFrame.new(-71.6030579, 31.7127285, -48.1378136, 0.538143992, -0.837109029, 0.0982321426, 0.842836916, 0.53518492, -0.0565964021, -0.00519499788, 0.113250695, 0.993552864),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye_socket1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",eye_socket1,"mot",{Part0 = eye_socket1,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0.538143992, 0.842836916, -0.00519499788, -0.837109029, 0.53518492, 0.113250695, 0.0982321426, -0.0565964021, 0.993552864),C1 = CFrame.new(0.0735321045, 0.112737656, -0.248226166, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
pupil2 = New("Part",FHead,"pupil2",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.299999982),CFrame = CFrame.new(-71.2700043, 31.7825317, -47.7659988, -8.94069672e-08, 1, -3.06497716e-10, -1, -8.94069672e-08, 1.10863176e-08, -5.69275738e-10, 8.84143159e-09, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",pupil2,"Mesh",{Scale = Vector3.new(0.300000012, 0.300000012, 0.100000001),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",pupil2,"mot",{Part0 = pupil2,Part1 = Head,C0 = CFrame.new(0, 0, 0, -8.94069672e-08, -1, -5.69275738e-10, 1, -8.94069672e-08, 8.84143159e-09, -3.06497716e-10, 1.10863176e-08, 1),C1 = CFrame.new(-0.259521484, 0.182540894, -0.620040894, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
mouth_part = New("Part",FHead,"mouth_part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.05999994, 0.860000074, 0.769999981),CFrame = CFrame.new(-71.5295258, 31.3692322, -48.118679, 1, 0, -0, 0, 0.99233228, -0.123600617, 0, 0.123600617, 0.99233228),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",mouth_part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",mouth_part,"mot",{Part0 = mouth_part,Part1 = Head,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.99233228, 0.123600617, 0, -0.123600617, 0.99233228),C1 = CFrame.new(0, -0.230758667, -0.267360687, -1, 0, 0, 0, 1, 0, 0, 0, -1),})

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

FindNearestTorso = function(pos)
	local list = (game.Workspace:children())
	local torso = nil
	local dist = 1000
	local temp, human, temp2 = nil, nil, nil
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2.Name ~= Character.Name then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
				local dohit = true
				if dohit == true then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso, dist
end
--[[function whotfufollowinat() -- i give up - Salvo
bin = ref
function move(FT)
	local dir = (ref.Position - bin.Position).unit
	local spawnPos = bin.Position
	local pos = spawnPos + (dir * 1)
	bin:findFirstChild("BodyGyro").cframe = CFrame.new(pos,  pos + dir)
	bin:findFirstChild("BodyGyro").maxTorque = Vector3.new(9000,9000,9000)
end

function moveTo(FT)
	bin.BodyPosition.position = ref.Position
	bin.BodyPosition.maxForce = Vector3.new(10000,10000,10000) * bin.Speed.Value
end
ref = Instance.new("Part", m)
ref.Size = Vector3.new(.2,.2,.2)
ref.Transparency = 1
ref.CanCollide = false
ref.Anchored = true
ref.Position = Mouse.Hit.p

refNV = Instance.new("NumberValue", ref)
refNV.Value = .1
refBG = Instance.new("BodyGyro", ref)
refBG.D = 500
refBG.MaxTorque = Vector3.new(9000,9000,9000)
refBG.P = 3000
refBP = Instance.new("BodyPosition", ref)
refBP.D = 1250
refBP.MaxForce = Vector3.new(500,500,500)
refBP.P = 10000
end]]
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					swait()
					Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
				end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Create("ObjectValue"){
			Name = "creator",
			Value = Player,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "SciFi",
		TextColor3 = Color,
		TextScaled = true,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
					Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, "rbxassetid://" .. HitSound, HitPitch)
				end
			end
		end
	end
end

EffectModel = Create("Model"){
	Parent = Character,
	Name = "Effects",
}

Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			if Type == 1 or Type == nil then
				table.insert(Effects, {
					prt,
					"Block1",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			elseif Type == 2 then
				table.insert(Effects, {
					prt,
					"Block2",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		end;
	};
	
	Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part..Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 2)
			Effects[#Effects + 1] = {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3
			}
		end;
	};
	
	Head = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};
	
	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};
	
	Elect = {
		Create = function(cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("Lime green"), "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 2)
			local xval = math.random() / 2
			local yval = math.random() / 2
			local zval = math.random() / 2
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			table.insert(Effects, {
				prt,
				"Elec",
				0.1,
				x,
				y,
				z,
				xval,
				yval,
				zval
			})
		end;

	};
	
	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};


	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};

	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Shatter",
				num,
				prt.CFrame,
				math.random() - math.random(),
				0,
				math.random(50, 100) / 100
			})
		end;
	};
	
	Fire = {
		Create = function(brickcolor, cframe, x1, y1, z1, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Fire",
				delay,
				1,
				1,
				1,
				msh
			})
		end;
	};
	
	FireWave = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Top",
			}
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Bottom",
			}
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"FireWave",
				1,
				30,
				math.random(400, 600) / 100,
				msh
			})
		end;
	};
	
	Lightning = {
		Create = function(p0, p1, tym, ofs, col, th, tra, last)
			local magz = (p0 - p1).magnitude
			local curpos = p0
			local trz = {
				-ofs,
				ofs
			}
			for i = 1, tym do
				local li = CFuncs.Part.Create(EffectModel, "Neon", 0, tra or 0.4, col, "Ref", Vector3.new(th, th, magz / tym))
				local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
				local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
				li.Material = "Neon"
				if tym == i then
					local magz2 = (curpos - p1).magnitude
					li.Size = Vector3.new(th, th, magz2)
					li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
					table.insert(Effects, {
						li,
						"Disappear",
						last
					})
				else
					do
						do
							li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
							curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
							game.Debris:AddItem(li, 10)
							table.insert(Effects, {
								li,
								"Disappear",
								last
							})
						end
					end
				end
			end
		end
	};

	EffectTemplate = {

	};
}

function attackone()
	attack = true

	        -- V  change that number to make it longer (infinite) or shorter (.1)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(1.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(-1.5, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(0.5, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(-0.5, -2, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		}, .3, false)
	end
	attack = false
end
--v Salvo
function Sweet_Pet()
	attack = true
	
	-- ^ V too lazy so
if pet1 == false and pet2 == false and pet3 == false then
Blob1 = New("Model",Character,"Blob",{})
Main1 = New("Part",Blob1,"Main1",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.25, 1.44000006, 1.43000007),CFrame = CFrame.new(-74.9199219, 29.9099884, -48.4600906, 0, 0, 1, 0, 1, -0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Main1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
moter1 = New("Weld",Main1,"mot",{Part0 = RootPart,Part1 = Main1,})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.389999986, 1.44000006, 0.200000003),CFrame = CFrame.new(-74.3649292, 29.52001, -48.2801018, 0.499999851, 0, 0.866026402, 0, 1, 0, -0.866026402, 0, 0.499999851),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0.499999851, 0, -0.866026402, 0, 1, 0, 0.866026402, 0, 0.499999851),C1 = CFrame.new(-0.179988861, -0.389978409, 0.554992676, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.360000014, 1.25999999, 0.370000124),CFrame = CFrame.new(-75.4099426, 29.6300049, -48.2550125, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.205078125, -0.279983521, -0.490020752, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.74000001, 0.200000003),CFrame = CFrame.new(-75.4049072, 29.2000046, -48.1551018, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.304988861, -0.709983826, -0.484985352, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.389999986, 0.830000103, 0.370000005),CFrame = CFrame.new(-75.0899048, 29.6649971, -48.8900833, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.429992676, -0.244991302, -0.16998291, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.75999999, 0.200000003),CFrame = CFrame.new(-74.3949127, 29.0299931, -48.375103, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.0849876404, -0.879995346, 0.525009155, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.44000006, 0.330000043),CFrame = CFrame.new(-75.2098923, 29.1399956, -48.9050369, -0.499999851, 0, 0.866026402, 0, 1, 0, -0.866026402, 0, -0.499999851),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, -0.499999851, 0, -0.866026402, 0, 1, 0, 0.866026402, 0, -0.499999851),C1 = CFrame.new(0.444946289, -0.769992828, -0.289970398, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.75999999, 0.200000003),CFrame = CFrame.new(-74.8549194, 28.9199905, -48.395092, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.0649986267, -0.989997864, 0.0650024414, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob1,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-75.3349304, 29.7899857, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.120002747, -0.415008545, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob1,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-75.1649246, 29.6399879, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.270000458, -0.245002747, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob1,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-74.894928, 29.5300064, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.379981995, 0.0249938965, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob1,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-75.0449295, 29.5499878, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.36000061, -0.125007629, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.450000018, 1.62, 0.470000088),CFrame = CFrame.new(-74.9399414, 29.4699974, -48.4299431, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.0301475525, -0.439990997, -0.0200195313, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob1,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-74.7149277, 29.579998, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.329990387, 0.204994202, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob1,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-74.4749298, 29.8500042, -48.0951042, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.36498642, -0.0599842072, 0.444992065, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(-75.4049072, 27.9600029, -48.1551018, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.304988861, -1.9499855, -0.484985352, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob1,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-74.5449295, 29.7100029, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.199985504, 0.374992371, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob1,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.349999994, 0.200000003),CFrame = CFrame.new(-75.1149292, 30.0949879, -47.9651031, 0.059391059, -0.163175851, 0.984808326, -0.336823851, 0.925417364, 0.173648059, -0.939692974, -0.342019916, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0.059391059, -0.336823851, -0.939692974, -0.163175851, 0.925417364, -0.342019916, 0.984808326, 0.173648059, 0),C1 = CFrame.new(-0.494987488, 0.184999466, -0.195007324, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob1,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.62, 0.220000088),CFrame = CFrame.new(-74.6549377, 27.9100056, -48.5549431, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.0948524475, -1.99998283, 0.264984131, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob1,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.349999994, 0.200000003),CFrame = CFrame.new(-74.6349258, 30.0929966, -47.9951057, 0.0593911298, 0.183489531, 0.981231213, -0.336824954, 0.929004073, -0.153336063, -0.939694643, -0.321394831, 0.116978109),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main1,C0 = CFrame.new(0, 0, 0, 0.0593911298, -0.336824954, -0.939694643, 0.183489531, 0.929004073, -0.321394831, 0.981231213, -0.153336063, 0.116978109),C1 = CFrame.new(-0.464984894, 0.183008194, 0.284996033, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
pet1 = true
elseif pet1 == true and pet2 == false and pet3 == false then
Blob2 = New("Model",Character,"Blob",{})
Main2 = New("Part",Blob2,"Main2",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.25, 1.44000006, 1.43000007),CFrame = CFrame.new(-72.6199188, 38.4400291, -48.4600906, 0, 0, 1, 0, 1, -0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Main2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.389999986, 1.44000006, 0.200000003),CFrame = CFrame.new(-72.0649261, 38.0500565, -48.2801018, 0.499999851, 0, 0.866026402, 0, 1, 0, -0.866026402, 0, 0.499999851),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.499999851, 0, -0.866026402, 0, 1, 0, 0.866026402, 0, 0.499999851),C1 = CFrame.new(-0.179988861, -0.389972687, 0.554992676, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.360000014, 1.25999999, 0.370000124),CFrame = CFrame.new(-73.1099396, 38.1600456, -48.2550125, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.205078125, -0.279983521, -0.490020752, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.74000001, 0.200000003),CFrame = CFrame.new(-73.1049042, 37.7300491, -48.1551018, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.304988861, -0.709980011, -0.484985352, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.389999986, 0.830000103, 0.370000005),CFrame = CFrame.new(-72.7899017, 38.1950417, -48.8900833, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.429992676, -0.244987488, -0.16998291, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.75999999, 0.200000003),CFrame = CFrame.new(-72.0949097, 37.5600357, -48.375103, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.0849876404, -0.879993439, 0.525009155, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.44000006, 0.330000043),CFrame = CFrame.new(-72.9098892, 37.6700363, -48.9050369, -0.499999851, 0, 0.866026402, 0, 1, 0, -0.866026402, 0, -0.499999851),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, -0.499999851, 0, -0.866026402, 0, 1, 0, 0.866026402, 0, -0.499999851),C1 = CFrame.new(0.444946289, -0.769992828, -0.289970398, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.75999999, 0.200000003),CFrame = CFrame.new(-72.5549164, 37.4500351, -48.395092, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.0649986267, -0.989994049, 0.0650024414, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob2,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-73.0349274, 38.3200264, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.120002747, -0.415008545, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob2,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.8649216, 38.1700325, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.269996643, -0.245002747, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob2,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.5949249, 38.0600548, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.379974365, 0.0249938965, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob2,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.7449265, 38.08004, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.359989166, -0.125007629, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.450000018, 1.62, 0.470000088),CFrame = CFrame.new(-72.6399384, 38.0000381, -48.4299431, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.0301475525, -0.439990997, -0.0200195313, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob2,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.4149246, 38.1100464, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.329982758, 0.204994202, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob2,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.1749268, 38.3800545, -48.0951042, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.36498642, -0.0599746704, 0.444992065, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(-73.1049042, 36.4900436, -48.1551018, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.304988861, -1.9499855, -0.484985352, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob2,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.2449265, 38.2400436, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.199985504, 0.374992371, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob2,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.349999994, 0.200000003),CFrame = CFrame.new(-72.8149261, 38.6250267, -47.9651031, 0.059391059, -0.163175851, 0.984808326, -0.336823851, 0.925417364, 0.173648059, -0.939692974, -0.342019916, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.059391059, -0.336823851, -0.939692974, -0.163175851, 0.925417364, -0.342019916, 0.984808326, 0.173648059, 0),C1 = CFrame.new(-0.494987488, 0.184997559, -0.195007324, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob2,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.62, 0.220000088),CFrame = CFrame.new(-72.3549347, 36.4400444, -48.5549431, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.0948524475, -1.99998474, 0.264984131, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob2,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.349999994, 0.200000003),CFrame = CFrame.new(-72.3349228, 38.6230392, -47.9951057, 0.0593911298, 0.183489531, 0.981231213, -0.336824954, 0.929004073, -0.153336063, -0.939694643, -0.321394831, 0.116978109),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main2,C0 = CFrame.new(0, 0, 0, 0.0593911298, -0.336824954, -0.939694643, 0.183489531, 0.929004073, -0.321394831, 0.981231213, -0.153336063, 0.116978109),C1 = CFrame.new(-0.464984894, 0.183010101, 0.284996033, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
moter2 = New("Weld",Main2,"mot",{Part0 = RootPart,Part1 = Main2,})
pet2 = true	
elseif pet1 == true and pet2 == true and pet3 == false then
Blob3 = New("Model",Character,"Blob",{})
Main3 = New("Part",Blob3,"Main3",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.25, 1.44000006, 1.43000007),CFrame = CFrame.new(-72.6199188, 34.9100151, -48.4600906, 0, 0, 1, 0, 1, -0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Main3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
moter3 = New("Weld",Main3,"mot",{Part0 = RootPart,Part1 = Main3,})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.389999986, 1.44000006, 0.200000003),CFrame = CFrame.new(-72.0649261, 34.5200348, -48.2801018, 0.499999851, 0, 0.866026402, 0, 1, 0, -0.866026402, 0, 0.499999851),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0.499999851, 0, -0.866026402, 0, 1, 0, 0.866026402, 0, 0.499999851),C1 = CFrame.new(-0.179988861, -0.389980316, 0.554992676, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.360000014, 1.25999999, 0.370000124),CFrame = CFrame.new(-73.1099396, 34.630024, -48.2550125, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.205078125, -0.27999115, -0.490020752, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.74000001, 0.200000003),CFrame = CFrame.new(-73.1049042, 34.2000275, -48.1551018, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.304988861, -0.70998764, -0.484985352, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.389999986, 0.830000103, 0.370000005),CFrame = CFrame.new(-72.7899017, 34.6650276, -48.8900833, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.429992676, -0.244987488, -0.16998291, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.75999999, 0.200000003),CFrame = CFrame.new(-72.0949097, 34.0300179, -48.375103, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.0849876404, -0.879997253, 0.525009155, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.44000006, 0.330000043),CFrame = CFrame.new(-72.9098892, 34.1400223, -48.9050369, -0.499999851, 0, 0.866026402, 0, 1, 0, -0.866026402, 0, -0.499999851),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, -0.499999851, 0, -0.866026402, 0, 1, 0, 0.866026402, 0, -0.499999851),C1 = CFrame.new(0.444946289, -0.769992828, -0.289970398, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.75999999, 0.200000003),CFrame = CFrame.new(-72.5549164, 33.9200058, -48.395092, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.0649986267, -0.990009308, 0.0650024414, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob3,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-73.0349274, 34.7900085, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.120006561, -0.415008545, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob3,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.8649216, 34.640007, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.270008087, -0.245002747, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob3,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.5949249, 34.5300293, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.379985809, 0.0249938965, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob3,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.7449265, 34.5500107, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.360004425, -0.125007629, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.450000018, 1.62, 0.470000088),CFrame = CFrame.new(-72.6399384, 34.4700203, -48.4299431, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.0301475525, -0.439994812, -0.0200195313, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob3,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.4149246, 34.5800171, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.329998016, 0.204994202, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob3,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.1749268, 34.8500328, -48.0951042, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.36498642, -0.0599822998, 0.444992065, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.5, 0.200000003),CFrame = CFrame.new(-73.1049042, 32.9600258, -48.1551018, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.304988861, -1.94998932, -0.484985352, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob3,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.2449265, 34.7100258, -48.0351028, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.424987793, -0.199989319, 0.374992371, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob3,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.349999994, 0.200000003),CFrame = CFrame.new(-72.8149261, 35.095005, -47.9651031, 0.059391059, -0.163175851, 0.984808326, -0.336823851, 0.925417364, 0.173648059, -0.939692974, -0.342019916, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0.059391059, -0.336823851, -0.939692974, -0.163175851, 0.925417364, -0.342019916, 0.984808326, 0.173648059, 0),C1 = CFrame.new(-0.494987488, 0.184989929, -0.195007324, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
Sphere = New("Part",Blob3,"Sphere",{BrickColor = BrickColor.new("Bright violet"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.62, 0.220000088),CFrame = CFrame.new(-72.3549347, 32.9100304, -48.5549431, 0, 0, 1, 0, 1, 0, -1, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.419608, 0.196078, 0.486275),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Sphere,"mot",{Part0 = Sphere,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(0.0948524475, -1.99998474, 0.264984131, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
white = New("Part",Blob3,"white",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.349999994, 0.200000003),CFrame = CFrame.new(-72.3349228, 35.0930138, -47.9951057, 0.0593911298, 0.183489531, 0.981231213, -0.336824954, 0.929004073, -0.153336063, -0.939694643, -0.321394831, 0.116978109),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("SpecialMesh",white,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",white,"mot",{Part0 = white,Part1 = Main3,C0 = CFrame.new(0, 0, 0, 0.0593911298, -0.336824954, -0.939694643, 0.183489531, 0.929004073, -0.321394831, 0.981231213, -0.153336063, 0.116978109),C1 = CFrame.new(-0.464984894, 0.182998657, 0.284996033, 0, 0, -1, 0, 1, 0, 1, 0, 0),})

pet3 = true
end
	attack = false
end

function Remove()
if pet1 == true then	
Effects.Sphere.Create(BrickColor.new("Plum"), Main1.CFrame, 1, 1, 1, .5, .5, .5, 0.04)
Blob1:Remove()
end
if pet2 == true then	
Effects.Sphere.Create(BrickColor.new("Plum"), Main2.CFrame, 1, 1, 1, .5, .5, .5, 0.04)
Blob2:Remove()	
end
if pet3 == true then	
Effects.Sphere.Create(BrickColor.new("Plum"), Main3.CFrame, 1, 1, 1, .5, .5, .5, 0.04)	
Blob3:Remove()
end
pet1 = false
pet2 = false
pet3 = false
end

--v dooven

function Kicky()
	attack = true
	CFuncs.Sound.Create("541909867", Torso, 1, 1)
	KickyHit = LeftLeg.Touched:connect(function(who_tf_did_you_hit)
		if who_tf_did_you_hit.Parent.Name ~= "Base" then
			HitPart = who_tf_did_you_hit.Parent:FindFirstChild("Torso")
			HitPart2 = who_tf_did_you_hit.Parent:FindFirstChild("UpperTorso")
			HitHumanoid = who_tf_did_you_hit.Parent:FindFirstChild("Humanoid")
			if HitPart then
				CFuncs.Sound.Create("541909983", HitPart, 1.05, 1.05)
			end
			if HitPart2 then
				CFuncs.Sound.Create("541909983", HitPart2, 1.05, 1.05)
			end
			if HitHumanoid then
				MagnitudeDamage(LeftLeg, 2, 7, 12, 1, "Normal", "", 1)
				MagnitudeDamage(RightLeg, 2, 7, 12, 1, "Normal", "", 1)
				--HitHumanoid:TakeDamage(math.random(500, 1000) / 100)
			end
			wait(1)
		end
	end)
	for i = 0, 1, 0.1 do
		swait()
	PlayAnimationFromTable({
         CFrame.new(0.40526396, 0.0169513971, 0.187530264, -0.313355327, 0.310338736, -0.897497654, -0.756498933, 0.489720076, 0.433463544, 0.574042976, 0.814783275, 0.0813141614) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.00682294369, 1.51228654, -0.0713720024, 0.479012877, -0.372790068, 0.794716716, 4.67896461e-06, 0.905342162, 0.424683571, -0.877810657, -0.203425378, 0.43367216) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.330322206, 0.389174014, -0.682259917, -0.144331515, 0.939254761, 0.311399192, -0.98875773, -0.124458969, -0.0828757137, -0.0390846431, -0.31986165, 0.94666028) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.16195273, 0.28790167, 0.750266492, 0.40399605, 0.901343465, 0.156101227, -0.597077608, 0.389112025, -0.701491714, -0.693027377, 0.190194592, 0.695373297) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.27621162, -1.4038974, -0.265293539, 0.148384452, -0.95709008, 0.248948976, 0.948983252, 0.208629847, 0.236472979, -0.278259009, 0.201161399, 0.93920958) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.47020769, -1.33852017, -0.156540334, 0.495247245, 0.765504241, 0.410772204, -0.630034029, 0.642032027, -0.43686679, -0.598153889, -0.0424444601, 0.800259531) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	KickyHit:disconnect()
	attack = false
end 
--v Injectionner
function BOYKAAAA()
	attack = true
	CFuncs.Sound.Create("541909867", Torso, 1, 1)
	BOYKAAAAHit = LeftLeg.Touched:connect(function(who_tf_did_you_hit)
		if who_tf_did_you_hit.Parent.Name ~= "Base" then
			HitPart = who_tf_did_you_hit.Parent:FindFirstChild("Torso")
			HitPart2 = who_tf_did_you_hit.Parent:FindFirstChild("UpperTorso")
			HitHumanoid = who_tf_did_you_hit.Parent:FindFirstChild("Humanoid")
			if HitPart then
				CFuncs.Sound.Create("541909983", HitPart, 1.05, 1.05)
			end
			if HitPart2 then
				CFuncs.Sound.Create("541909983", HitPart2, 1.05, 1.05)
			end
			if HitHumanoid then
				MagnitudeDamage(LeftLeg, 2, 7, 12, 1, "Normal", "", 1)
				MagnitudeDamage(RightLeg, 2, 7, 12, 1, "Normal", "", 1)
				--HitHumanoid:TakeDamage(math.random(500, 1000) / 100)
			end
			wait(1)
		end
	end)
	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity=RootPart.CFrame.lookVector*35
		PlayAnimationFromTable({
         CFrame.new(4.30308447e-08, -0.700000882, -5.36441803e-07, 1.00000238, 4.108648e-08, -2.92618097e-07, -6.14724556e-08, 0.939692974, 0.342020333, -2.89023546e-07, -0.342020154, 0.939695299) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.11758709e-08, 1.41816163, 0.196914852, 0.9925493, -6.14724556e-08, 0.121863753, 0.0416799113, 0.939692974, -0.339470983, -0.114515126, 0.342020333, 0.932691455) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.299988329, 0.470191002, -0.999463379, 0.342016935, 0.93969667, 1.95566827e-06, 2.71201134e-06, 1.21444464e-06, -1.00000024, -0.939697504, 0.34201622, -1.60932541e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.49999094, -0.187940046, -0.0684037358, 1.00000215, -4.29053898e-07, 2.07937228e-06, -2.46214796e-07, 0.939694583, 0.342017412, -2.62994172e-06, -0.342018992, 0.939696193) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.4999955, -1.66622698, 0.776985824, 1.00000215, -7.83637972e-07, 1.97326563e-06, -2.46201864e-07, 0.866024256, 0.500002801, -2.62994263e-06, -0.500004411, 0.866025686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499997288, -0.982183516, -1.10241282, 1.00000286, -1.0350206e-08, -3.54912174e-07, 5.14367571e-08, 0.984808087, -0.173648417, -3.5131751e-07, 0.173648104, 0.984810948) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity=RootPart.CFrame.lookVector*50
		PlayAnimationFromTable({
         CFrame.new(0.057091713, 0.135582566, 0.0443314537, 1, 0, 0, 0, 0.927682936, 0.373360515, 0, -0.373360515, 0.927682936) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0186543614, 1.43893313, 0.202606112, 0.998511374, -0.0402879454, 0.0367714167, 0.0506920666, 0.934284866, -0.35288769, -0.0201378576, 0.354226351, 0.934936166) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.68912137, 0.196010083, 0.102462336, 0.924492478, -0.349139601, -0.153020516, 0.353632063, 0.935375035, 0.00231105089, 0.142324686, -0.0562494993, 0.988214195) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.56000602, 0.0381356478, -0.46972397, 0.992696524, 0.12063881, 1.04991102e-07, -0.0919796303, 0.756870151, -0.647050858, -0.0780595317, 0.642325222, 0.762438655) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.612647414, -1.47144675, -0.556731939, 0.992708802, -0.100837603, -0.06603802, 0.111820064, 0.974958718, 0.192196012, 0.045003742, -0.198179156, 0.979125738) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.537494659, -1.65600026, 0.729900599, 0.991710365, 0.0555263385, 0.115877263, -0.119201362, 0.734256029, 0.668316305, -0.0479744226, -0.676588774, 0.734788299) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
--             v changed time (Salvo)
	for i = 0, 2, 0.1 do
		swait()
		Torso.Velocity=RootPart.CFrame.lookVector*70
		PlayAnimationFromTable({
         CFrame.new(0, -0, 0, 0.642781496, -0.766049683, -3.12808822e-07, 0.766049683, 0.642781556, 7.50513607e-08, 1.42001966e-07, -3.27823869e-07, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0+i*1000), 0), 
         CFrame.new(0.0589628965, 1.48549497, -0.200005725, 0.342010021, -1.26040527e-06, 0.939696372, 1.36627648e-07, 1.00000024, 1.32718878e-06, -0.939696372, -4.17231831e-07, 0.342010081) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.456179023, 0.56618154, -1.02581036, 0.342003882, 0.907679439, 0.243210539, 0.939698756, -0.330352515, -0.0885091797, 7.1999084e-06, 0.25881505, -0.965927064) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.608400941, 0.703632832, 0.900031447, 0.499993861, -0.778390169, -0.379624903, 0.866029024, 0.449390858, 0.219184101, -1.06939497e-05, -0.438356787, 0.898801267) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.57971871, -1.415923, -9.86601094e-08, 4.40059966e-06, -0.86602062, -0.500008225, -4.23191659e-06, 0.500008285, -0.866020679, 1.00000012, 5.94103585e-06, -1.46540526e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.7249614, -1.05580914, -0.600024045, 0.556665421, 0.82977283, 0.0400093794, -0.663418889, 0.473019123, -0.579765916, -0.499999136, 0.296192586, 0.813800275) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		CFuncs.Sound.Create("199145095", RootPart, 1, 1.2)
	end
	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity=RootPart.CFrame.lookVector*50
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.642766833, -0.766061604, -1.87754631e-06, 0.766062379, 0.642767549, -1.28149986e-06, -2.5331974e-06, -3.22313099e-07, 0.999996662) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0589868128, 1.48555756, -0.200002283, 0.341969252, 2.25474796e-05, 0.939711154, -1.10798337e-05, 1.00000012, -1.89002603e-05, -0.939709663, -3.65659389e-06, 0.341963291) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.45614472, 0.566188216, -1.02580297, 0.342018545, 0.907675982, 0.243202209, 0.93969363, -0.33036688, -0.0885095075, 6.33299351e-06, 0.258801788, -0.965926886) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.608350575, 0.703668118, 0.900029778, 0.500003874, -0.778391302, -0.379609793, 0.866023958, 0.449403495, 0.219179437, -1.16229057e-05, -0.438336134, 0.898807406) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.57973671, -1.41598916, -7.29920794e-06, 6.51776791e-05, -0.866014957, -0.500018179, 7.81257859e-06, 0.500017345, -0.866015792, 0.999996543, 5.70416451e-05, 4.15742397e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.72507429, -1.05586803, -0.600011408, 0.556633115, 0.829794526, 0.0400061607, -0.663449109, 0.472999275, -0.579748034, -0.499995589, 0.296159923, 0.81381011) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
		CFuncs.Sound.Create("199145095", RootPart, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity=RootPart.CFrame.lookVector*35
		PlayAnimationFromTable({
         CFrame.new(0, -0, 0, 0.642774582, -0.766055584, -8.94069672e-08, 0.766055226, 0.642774642, 5.06639481e-07, -3.57627869e-07, -3.79806806e-07, 0.999999821) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0589947999, 1.48555517, -0.199999601, 0.694235921, 0.323769867, 0.642812788, -0.422654301, 0.906291962, -1.86566649e-05, -0.582583547, -0.27167055, 0.766023099) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.55620587, 0.566173196, 0.879425406, 0.342042625, -0.907675028, -0.243172556, 0.93968457, 0.330392301, 0.0885108635, 3.29315662e-06, -0.258779824, 0.965936303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.98674369, 1.08673441, -0.844527662, 0.500017405, 0.545052052, 0.672982395, 0.866015494, -0.314693868, -0.388570398, -7.76350498e-06, 0.777110636, -0.629370749) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.472010255, -1.63873601, 1.10147309, 0.577492774, -0.339663088, 0.74238205, -0.6277771, 0.396581441, 0.669790685, -0.521917999, -0.852849901, 0.0157904029) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.12803674, -0.477380514, -0.944762468, 0.5566414, 0.314433694, 0.768948436, -0.663449824, 0.7253263, 0.183675006, -0.49998486, -0.612399697, 0.612357438) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		Torso.Velocity=RootPart.CFrame.lookVector*0
	PlayAnimationFromTable({
         CFrame.new(-0, -0, 0, 1, 0, 0, 0, 0.866026103, 0.499998897, 0, -0.499998897, 0.866026103) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.6461097, -0.0311346352, 1, 0, 0, 0, 0.956312776, -0.292375326, 0, 0.292375326, 0.956312776) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.6299994, -1.10268593e-06, 1.37090683e-06, 0.729592562, -0.324828357, -0.601815224, 0.0773431957, 0.913544297, -0.399318516, 0.679494858, 0.244793519, 0.691638052) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.83000851, -1.63912773e-06, 4.05311584e-06, 0.725096703, 0.401919127, 0.559192479, -0.175310329, 0.892996013, -0.414517671, -0.665959179, 0.202533126, 0.717968881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.499997586, -1.73204744, -0.999996066, 0.951055408, 0, -0.309021354, -0.154510245, 0.866026103, -0.475526929, 0.267620414, 0.499998897, 0.823639274) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.829980016, -2.23204684, -0.133965611, 0.963289499, 0.173642531, -0.204749718, -0.183938086, 0.982409537, -0.0322215855, 0.195553094, 0.0686998963, 0.978284121) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	}, .3, false)
	end
	BOYKAAAAHit:disconnect()
	attack = false
end
--v Salvo
function Frontflip()
attack = true
Humanoid.Jump = true
Torso.Velocity = Vector3.new(0, 120, 0)
	CFuncs.Sound.Create("541909867", Torso, 1, 1.3)
	for i = 0, .3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -4.54383881e-28, 0, -4.54383881e-28, 0.999988317, -2.12296717e-42, 0, -2.12296717e-42, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-60), 0, 0), 
         CFrame.new(3.7945778e-26, 1.4590404, -0.447229177, 1, 2.34260134e-26, 8.68378084e-27, -2.18609134e-26, 0.731817484, 0.681493163, 9.6935228e-27, -0.681497157, 0.731821775) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.0088923, 0.143907636, -0.778464913, 0.948227882, 0.312512338, 0.0565682463, -0.153942272, 0.60806638, -0.778810263, -0.277786702, 0.729785562, 0.624698043) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.10431612, -0.0306248814, -0.506222963, 0.90385884, -0.422551394, -0.0670242757, 0.307654262, 0.750797868, -0.584500194, 0.297305524, 0.507688701, 0.80861783) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540317595, -0.711926877, -0.714166045, 0.980744839, -0.170371115, -0.095465295, 0.149652734, 0.969689906, -0.193117216, 0.125474036, 0.175113052, 0.97652036) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.57800889, -0.743035674, -0.62212503, 0.978115499, 0.175883621, 0.111153781, -0.142733991, 0.955918789, -0.256582707, -0.151383549, 0.235103428, 0.960109174) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, .3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -4.54383881e-28, 0, -4.54383881e-28, 0.999988317, -2.12296717e-42, 0, -2.12296717e-42, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-180), 0, 0), 
         CFrame.new(3.7945778e-26, 1.4590404, -0.447229177, 1, 2.34260134e-26, 8.68378084e-27, -2.18609134e-26, 0.731817484, 0.681493163, 9.6935228e-27, -0.681497157, 0.731821775) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.0088923, 0.143907636, -0.778464913, 0.948227882, 0.312512338, 0.0565682463, -0.153942272, 0.60806638, -0.778810263, -0.277786702, 0.729785562, 0.624698043) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.10431612, -0.0306248814, -0.506222963, 0.90385884, -0.422551394, -0.0670242757, 0.307654262, 0.750797868, -0.584500194, 0.297305524, 0.507688701, 0.80861783) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540317595, -0.711926877, -0.714166045, 0.980744839, -0.170371115, -0.095465295, 0.149652734, 0.969689906, -0.193117216, 0.125474036, 0.175113052, 0.97652036) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.57800889, -0.743035674, -0.62212503, 0.978115499, 0.175883621, 0.111153781, -0.142733991, 0.955918789, -0.256582707, -0.151383549, 0.235103428, 0.960109174) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, .3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -4.54383881e-28, 0, -4.54383881e-28, 0.999988317, -2.12296717e-42, 0, -2.12296717e-42, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-300), 0, 0), 
         CFrame.new(3.7945778e-26, 1.4590404, -0.447229177, 1, 2.34260134e-26, 8.68378084e-27, -2.18609134e-26, 0.731817484, 0.681493163, 9.6935228e-27, -0.681497157, 0.731821775) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.0088923, 0.143907636, -0.778464913, 0.948227882, 0.312512338, 0.0565682463, -0.153942272, 0.60806638, -0.778810263, -0.277786702, 0.729785562, 0.624698043) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.10431612, -0.0306248814, -0.506222963, 0.90385884, -0.422551394, -0.0670242757, 0.307654262, 0.750797868, -0.584500194, 0.297305524, 0.507688701, 0.80861783) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540317595, -0.711926877, -0.714166045, 0.980744839, -0.170371115, -0.095465295, 0.149652734, 0.969689906, -0.193117216, 0.125474036, 0.175113052, 0.97652036) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.57800889, -0.743035674, -0.62212503, 0.978115499, 0.175883621, 0.111153781, -0.142733991, 0.955918789, -0.256582707, -0.151383549, 0.235103428, 0.960109174) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, .3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -4.54383881e-28, 0, -4.54383881e-28, 0.999988317, -2.12296717e-42, 0, -2.12296717e-42, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(3.7945778e-26, 1.4590404, -0.447229177, 1, 2.34260134e-26, 8.68378084e-27, -2.18609134e-26, 0.731817484, 0.681493163, 9.6935228e-27, -0.681497157, 0.731821775) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.0088923, 0.143907636, -0.778464913, 0.948227882, 0.312512338, 0.0565682463, -0.153942272, 0.60806638, -0.778810263, -0.277786702, 0.729785562, 0.624698043) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.10431612, -0.0306248814, -0.506222963, 0.90385884, -0.422551394, -0.0670242757, 0.307654262, 0.750797868, -0.584500194, 0.297305524, 0.507688701, 0.80861783) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540317595, -0.711926877, -0.714166045, 0.980744839, -0.170371115, -0.095465295, 0.149652734, 0.969689906, -0.193117216, 0.125474036, 0.175113052, 0.97652036) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.57800889, -0.743035674, -0.62212503, 0.978115499, 0.175883621, 0.111153781, -0.142733991, 0.955918789, -0.256582707, -0.151383549, 0.235103428, 0.960109174) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(8.39392634e-22, 0.167788208, -0.169136971, 1, 3.2685432e-21, -3.12065256e-21, -4.7224864e-22, 0.762353361, 0.647152066, 4.49431016e-21, -0.647155821, 0.762357831) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.38458478, 0.186259151, 1, 0, 0, 0, 0.93384546, -0.357676953, 0, 0.357676864, 0.933845341) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.78518748, 0.280075192, 0.141510308, 0.751685441, -0.651390314, -0.103285149, 0.659531593, 0.742404699, 0.117732495, -1.02818012e-05, -0.156617403, 0.987658262) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.70720494, 0.439989626, 0.230698124, 0.64607811, 0.736660302, 0.199788988, -0.763272762, 0.623558044, 0.169089794, -1.82390213e-05, -0.261738569, 0.965138972) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.585624158, -1.91989779, 0.243160218, 0.997585356, -0.0673768446, -0.0168470051, 0.0694511458, 0.967789173, 0.241993368, -3.98606062e-07, -0.242579132, 0.970131755) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.563238561, -1.9582243, -0.237484276, 0.997761369, 0.0669779181, -5.44837405e-07, -0.0661603361, 0.985565305, -0.155828834, -0.0104370546, 0.155484378, 0.987784147) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	CFuncs.Sound.Create("541909867", Torso, 1, 1.4)
	Humanoid.Jump = true -- nu work pls
    Torso.Velocity = Vector3.new(0, 160, 0)
    Torso.Velocity = RootPart.CFrame.lookVector * 90
	for i = 0, .2, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -4.54383881e-28, 0, -4.54383881e-28, 0.999988317, -2.12296717e-42, 0, -2.12296717e-42, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-180), 0, 0), 
         CFrame.new(3.7945778e-26, 1.4590404, -0.447229177, 1, 2.34260134e-26, 8.68378084e-27, -2.18609134e-26, 0.731817484, 0.681493163, 9.6935228e-27, -0.681497157, 0.731821775) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.0088923, 0.143907636, -0.778464913, 0.948227882, 0.312512338, 0.0565682463, -0.153942272, 0.60806638, -0.778810263, -0.277786702, 0.729785562, 0.624698043) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.10431612, -0.0306248814, -0.506222963, 0.90385884, -0.422551394, -0.0670242757, 0.307654262, 0.750797868, -0.584500194, 0.297305524, 0.507688701, 0.80861783) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540317595, -0.711926877, -0.714166045, 0.980744839, -0.170371115, -0.095465295, 0.149652734, 0.969689906, -0.193117216, 0.125474036, 0.175113052, 0.97652036) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.57800889, -0.743035674, -0.62212503, 0.978115499, 0.175883621, 0.111153781, -0.142733991, 0.955918789, -0.256582707, -0.151383549, 0.235103428, 0.960109174) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, .2, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -4.54383881e-28, 0, -4.54383881e-28, 0.999988317, -2.12296717e-42, 0, -2.12296717e-42, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-300), 0, 0), 
         CFrame.new(3.7945778e-26, 1.4590404, -0.447229177, 1, 2.34260134e-26, 8.68378084e-27, -2.18609134e-26, 0.731817484, 0.681493163, 9.6935228e-27, -0.681497157, 0.731821775) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.0088923, 0.143907636, -0.778464913, 0.948227882, 0.312512338, 0.0565682463, -0.153942272, 0.60806638, -0.778810263, -0.277786702, 0.729785562, 0.624698043) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.10431612, -0.0306248814, -0.506222963, 0.90385884, -0.422551394, -0.0670242757, 0.307654262, 0.750797868, -0.584500194, 0.297305524, 0.507688701, 0.80861783) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540317595, -0.711926877, -0.714166045, 0.980744839, -0.170371115, -0.095465295, 0.149652734, 0.969689906, -0.193117216, 0.125474036, 0.175113052, 0.97652036) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.57800889, -0.743035674, -0.62212503, 0.978115499, 0.175883621, 0.111153781, -0.142733991, 0.955918789, -0.256582707, -0.151383549, 0.235103428, 0.960109174) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, .2, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -4.54383881e-28, 0, -4.54383881e-28, 0.999988317, -2.12296717e-42, 0, -2.12296717e-42, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(3.7945778e-26, 1.4590404, -0.447229177, 1, 2.34260134e-26, 8.68378084e-27, -2.18609134e-26, 0.731817484, 0.681493163, 9.6935228e-27, -0.681497157, 0.731821775) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.0088923, 0.143907636, -0.778464913, 0.948227882, 0.312512338, 0.0565682463, -0.153942272, 0.60806638, -0.778810263, -0.277786702, 0.729785562, 0.624698043) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.10431612, -0.0306248814, -0.506222963, 0.90385884, -0.422551394, -0.0670242757, 0.307654262, 0.750797868, -0.584500194, 0.297305524, 0.507688701, 0.80861783) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540317595, -0.711926877, -0.714166045, 0.980744839, -0.170371115, -0.095465295, 0.149652734, 0.969689906, -0.193117216, 0.125474036, 0.175113052, 0.97652036) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.57800889, -0.743035674, -0.62212503, 0.978115499, 0.175883621, 0.111153781, -0.142733991, 0.955918789, -0.256582707, -0.151383549, 0.235103428, 0.960109174) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-1.24873273e-21, -0.272115737, 0.249254271, 1, 3.57404588e-21, -2.76550874e-21, -4.72250508e-22, 0.691264629, 0.722601652, 4.49431016e-21, -0.722601652, 0.691264629) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.53670609, -0.163231075, 1, 0, 0, 0, 0.921029031, 0.389495552, 0, -0.389495343, 0.921033025) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.54327178, 1.17010641, 0.171792254, -0.890211761, -0.400492817, -0.217091203, 0.403805852, -0.914323032, 0.0308946669, -0.210864484, -0.0601599514, 0.975662291) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.4137466, 1.16042209, 0.158302546, -0.929909348, 0.217056334, 0.296909481, -0.202251852, -0.976052403, 0.0801000297, 0.307185382, 0.0144352317, 0.951540172) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.576444566, -1.97383451, 0.164842561, 0.995378852, -0.0960258543, -2.19708269e-07, 0.0954132825, 0.989028513, 0.112777621, -0.0108293518, -0.112256467, 0.993620515) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.591717541, -1.85659456, 0.0494369045, 0.995116591, 0.0986551195, 0.00319480756, -0.0986533612, 0.992991209, 0.0650856495, 0.00324861333, -0.0650829673, 0.997874677) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
    local hitfloor
    while hitfloor == nil do
      swait()
      hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 6, Character)
    end
Humanoid.WalkSpeed = 0
MagnitudeDamage(RootPart, 15, 99, 99, 5, "Knockdown", "", 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=199145477", RootPart, 1, 1)	
Effects.Sphere.Create(BrickColor.new("White"), RootPart.CFrame, 1, 1, 1, 6.5, 6.5, 6.5, 0.07)
Effects.Wave.Create(BrickColor.new("White"), RootPart.CFrame, 1, 1, 1, 1.2, .5, 1.2, 0.07)
	for i = 0, 2, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-3.71013022e-22, -2.50122261, -0.180270284, 1, 4.51748859e-21, 1.18927711e-22, -4.72250508e-22, 0.0782930404, 0.99693048, 4.49431016e-21, -0.99693048, 0.0782930404) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0338878632, 1.42670929, -0.0948420689, 1, 0, 0, 0, 0.993703842, 0.112026446, 0, -0.112026446, 0.993703842) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.57641649, 1.25043094, -0.122265041, -0.916119099, -0.398210049, 0.0464164354, 0.400857717, -0.911649525, 0.0905994326, 0.00623790734, 0.10160625, 0.994805157) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.43014622, 1.1271013, -0.0354469009, -0.963312328, 0.255184919, 0.0831291378, -0.238745585, -0.956279218, 0.168911561, 0.122598328, 0.142867833, 0.982119501) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.576443911, -1.97383142, 0.164841354, 0.99537909, -0.0960235968, -1.06541188e-06, 0.0954111218, 0.989028931, 0.11277768, -0.010828265, -0.112256646, 0.993620336) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.591717243, -1.85659468, 0.0494378805, 0.995116889, 0.0986522436, 0.00319652027, -0.0986506268, 0.992991567, 0.0650845766, 0.00324662216, -0.065082103, 0.997874796) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
	end
Humanoid.WalkSpeed = 17
attack = false
end
--v Salvo
function intro()
	attack = true
	Humanoid.JumpPower = 0
	Humanoid.WalkSpeed = 0
	Humanoid.MaxHealth = math.huge
for _,v in pairs(Character:children()) do
if v:IsA("Accessory") then
v.Handle.Transparency = 1
end
end
for _,v in pairs(FHead:children()) do
if v:IsA("Part") then
v.Transparency = 1
end
end
Head.Transparency = 1
Head.face.Transparency = 1
Torso.Transparency = 1
RightArm.Transparency = 1
LeftArm.Transparency = 1
RightLeg.Transparency = 1
LeftLeg.Transparency = 1
RootPart.Anchored = true
wait(1)
local fake = Instance.new("Part", Torso)
fake.Size = Vector3.new(.2,.2,.2)
fake.Transparency = 1
fake.Anchored = true
fake.Material = "Neon"
fake.CanCollide = false
fake.BrickColor = BrickColor.new("Mulberry")
fake.CFrame = Torso.CFrame * CFrame.new(0,-3,0)
fake1 = Instance.new("CylinderMesh", fake)
local val = 5
while wait() and fake and fake.Transparency >= 0 do
	fake.Transparency  =fake.Transparency - 0.02
	val = val - 0.1
	fake1.Scale = fake1.Scale + Vector3.new(val,0,val)
end
--insert anim here
	for i = 0, 0.1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -2.5286026, -1.37800324, 1, 0, -0, 0, 0.00363200158, -0.999993503, 0, 0.999993503, 0.00363200135) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49999607, -3.57662884e-06, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.50000381, 0, 0, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5, 0, 0, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5, -1.99996138, 4.29200099e-06, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99996138, 4.29200099e-06, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, 1, false)
	end
RightArm.Transparency = 0
	for i = 0, 1.5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49998999, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.65149188, -2.06901217, -0.833026528, 0.982437074, -0.186635837, 5.49633455e-07, -0.182175472, -0.958949745, -0.217344731, 0.0405648462, 0.213526115, -0.976100385) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5, -1.99999285, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99999285, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .2, false)
	end
	for i = 0, 2.5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49998999, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.60798919, -2.45860457, -1.52974463, 0.98243016, -0.0411874987, -0.182037771, -0.18217735, 0.00037036743, -0.983266354, 0.0405655839, 0.999151051, -0.00713955564) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5, -1.99999285, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99999285, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .2, false)
	end
	for i = 0, 0.1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -2.5286026, -1.37800324, 1, 0, -0, 0, 0.00363200158, -0.999993503, 0, 0.999993503, 0.00363200135) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49999607, -3.57662884e-06, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.50000381, 0, 0, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5, 0, 0, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5, -1.99996138, 4.29200099e-06, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99996138, 4.29200099e-06, 1, 0, -0, 0, 1.00000024, -2.32830644e-10, -0, -2.32830644e-10, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, 1, false)
	end
	LeftArm.Transparency = 0
		for i = 0, 1.5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49998903, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.60798764, -2.45860243, -1.52974236, 0.98243016, -0.0411874987, -0.182037771, -0.18217735, 0.00037036743, -0.983266354, 0.0405655839, 0.999151051, -0.00713955564) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.44158089, -1.59027624, -0.89741987, 0.99214071, 0.125127167, -5.75973161e-07, 0.124708839, -0.988824189, -0.0816976205, -0.0102231605, 0.0810554698, -0.996657193) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5, -1.99999201, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99999201, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .2, false)
		end
	for i = 0, 2.5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49998903, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.60798764, -2.45860243, -1.52974236, 0.98243016, -0.0411874987, -0.182037771, -0.18217735, 0.00037036743, -0.983266354, 0.0405655839, 0.999151051, -0.00713955564) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.42455316, -2.4283061, -1.6328423, 0.984726787, 0.121689118, 0.124518521, 0.12571463, -0.00216957508, -0.992069006, -0.120453231, 0.99256891, -0.017434625) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5, -1.99999201, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99999201, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .2, false)
	end
	for i = 0, 0.1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.00366234244, -4.40093422, 0.287633479, 0.99999994, -0.000186988196, 0.000273971935, 0.000124305967, 0.977027774, 0.213112041, -0.000307527574, -0.213111997, 0.977027893) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.00499584666, 1.53845465, -0.0544969626, 1.00000012, 0.000179116614, -0.000279201951, -0.000187003272, 0.999593675, -0.0285090804, 0.00027398215, 0.0285091996, 0.999593556) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.61354864, 3.02001262, -1.20607686, 0.982400537, -0.0414489508, -0.182129562, -0.186783597, -0.212562457, -0.959129453, 0.00104099885, 0.976268053, -0.216563493) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.41907096, 3.07688713, -1.2947489, 0.984794676, 0.12199109, 0.123683237, 0.148703814, -0.223868951, -0.963208079, -0.0898139924, 0.966954589, -0.238605514) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.501030326, -1.63825631, -0.00444316957, 0.99999994, 5.09317033e-11, 2.91038305e-11, 5.09317033e-11, 1, 0, 2.91038305e-11, 0, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.495635211, -1.92414272, -0.116936341, 1.00000048, 0.000174710527, -0.000281971501, -0.000187003301, 0.99902302, -0.0442020744, 0.000273973565, 0.0442019999, 0.999022543) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, 1, false)
	end
	Torso.Transparency = 0
	Head.Transparency = 0
	LeftLeg.Transparency = 0
	RightLeg.Transparency = 0
for _,v in pairs(Character:children()) do
if v:IsA("Accessory") then
v.Handle.Transparency = 0
end
end
for _,v in pairs(FHead:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
end
	for i = 0, 2.5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.00395292509, -2.35704303, 0.166865706, 1.00000012, -0.000330531853, 2.80119129e-05, 0.00012431416, 0.451713324, 0.892163277, -0.000307541806, -0.892163336, 0.451713234) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.00548323756, 1.50826371, -0.0949471891, 1.00000024, 0.000330836687, 2.4615947e-05, -0.00033056704, 0.98742038, 0.158119231, 2.80048698e-05, -0.158119053, 0.987420321) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.5964433, 1.13013196, -0.484287649, 0.94223541, -0.281113118, -0.182129309, -0.333693087, -0.834891975, -0.437734723, -0.0290071815, 0.473227501, -0.880464375) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.43721521, 1.41705549, -0.407720447, 0.992133677, 0.0265998412, 0.122324571, 0.0703548715, -0.92672044, -0.36910674, 0.103542477, 0.374809206, -0.921301842) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.501026213, -0.813848436, -1.50931501, 1.00000012, 1.0986696e-08, -1.20780896e-08, -1.63272489e-08, 0.631467223, -0.775402904, -1.16415322e-09, 0.775402844, 0.631467164) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.495252579, -0.84132725, -1.56702411, 1.0000006, 0.000174720975, -0.000281984016, -0.000330542534, 0.596575916, -0.802557051, 2.80012318e-05, 0.802557349, 0.596575379) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
	end
	for i = 0, 3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.000142331352, 0.124146298, -0.0338094831, 1.00000012, 2.23964234e-05, -5.82319335e-05, -2.46888012e-05, 0.999212801, -0.0396697968, 5.72975841e-05, 0.0396698005, 0.999212921) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.00537362648, 1.40871274, 0.00508881733, 1.00000012, 0.000179095339, -0.000276938488, -0.000186917692, 0.999593556, -0.0285092965, 0.000271719939, 0.0285093412, 0.999593496) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.577245, 0.0419780016, 0.126043797, 0.992386639, -0.105244942, -0.0639718175, 0.1095604, 0.991639376, 0.0681746081, 0.0562619418, -0.0746643394, 0.995620489) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.62176228, 0.0552483313, 0.0681045502, 0.986452579, 0.150544897, 0.0651750043, -0.148706108, 0.988356233, -0.032228291, -0.0692679211, 0.0220997371, 0.997353375) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.501014769, -1.97458971, -0.0630755275, 1.00000012, -4.21277946e-09, 5.00585884e-09, 4.71118256e-09, 0.996225357, -0.0868086517, -4.71482053e-09, 0.0868086368, 0.996225476) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.552414954, -1.93864262, -0.0193982944, 0.997162282, 0.0752827153, -0.000278166262, -0.0752214491, 0.996187449, -0.044184871, -0.00304925116, 0.0440803915, 0.999023378) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
	end
	--LeftLeg.Transparency = 0
	--RightLeg.Transparency = 0
	Head.Transparency = 0
	Torso.Transparency = 0
	
--insert anim here
	attack = false
	Humanoid.JumpPower = 55
	Humanoid.WalkSpeed = 16
	Humanoid.MaxHealth = 1000
Head.Transparency = 0
Head.face.Transparency = 0
Torso.Transparency = 0
RightArm.Transparency = 0
LeftArm.Transparency = 0
RightLeg.Transparency = 0
LeftLeg.Transparency = 0
RootPart.Anchored = false
while wait() and fake and fake.Transparency <= 1 do
	fake.Transparency  =fake.Transparency + 0.02
end
fake:Remove()
end
Mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attackone()
	end
end)

Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'e' then
		BOYKAAAA()
	elseif attack == false and k == 'q' then
		Sweet_Pet()
	elseif attack == false and k == 'r' then	
		Remove()	
	elseif attack == false and k == 'f' then		
		Frontflip()	
	elseif attack == false and k == 'z' then		
         Kicky()
	end
end)
coroutine.wrap(function()
intro()
end)()
while true do
	swait()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				PlayAnimationFromTable({
         CFrame.new(0.0570936203, 0.135582209, 0.0443344191, 1, 0, 0, 0, 0.927682936, 0.373360515, 0, -0.373360515, 0.927682936) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0186521336, 1.43892324, 0.202596694, 0.998511374, -0.0402879454, 0.0367714167, 0.0506920666, 0.934284866, -0.35288769, -0.0201378576, 0.354226351, 0.934936166) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.68910885, 0.196012244, 0.102458462, 0.924492478, -0.349139601, -0.153020516, 0.353632063, 0.935375035, 0.00231105089, 0.142324686, -0.0562494993, 0.988214195) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5600059, 0.038134709, -0.469721049, 0.992696524, 0.12063881, 1.04991102e-07, -0.0919796303, 0.756870151, -0.647050858, -0.0780595317, 0.642325222, 0.762438655) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.612647831, -1.47136939, -0.556701124, 0.992708802, -0.100837603, -0.06603802, 0.111820064, 0.974958718, 0.192196012, 0.045003742, -0.198179156, 0.979125738) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.537496328, -1.65592182, 0.72992909, 0.991710365, 0.0555263385, 0.115877263, -0.119201362, 0.734256029, 0.668316305, -0.0479744226, -0.676588774, 0.734788299) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		 }, .3, false)
         if pet1 == true then
         moter1.C0 = clerp(moter1.C0, CFrame.new(-0.243331149, 4.25724459, 2.66689038, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0, 0+ .3 * math.cos(sine/45)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
         if pet2 == true then
         moter2.C0 = clerp(moter2.C0, CFrame.new(-2.12825108, 2.54331326, 2.56931949, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0, 0- .2 * math.cos(sine/35)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
         if pet3 == true then
         moter3.C0 = clerp(moter3.C0, CFrame.new(2.07104087, 2.37510967, 2.70228124, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0 , 0+ .5 * math.cos(sine/30)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
	end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				PlayAnimationFromTable({
         CFrame.new(0.0570936203, 0.135582209, 0.0443344191, 1, 0, 0, 0, 0.927682936, 0.373360515, 0, -0.373360515, 0.927682936) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0186521336, 1.43892324, 0.202596694, 0.998511374, -0.0402879454, 0.0367714167, 0.0506920666, 0.934284866, -0.35288769, -0.0201378576, 0.354226351, 0.934936166) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.68910885, 0.196012244, 0.102458462, 0.924492478, -0.349139601, -0.153020516, 0.353632063, 0.935375035, 0.00231105089, 0.142324686, -0.0562494993, 0.988214195) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5600059, 0.038134709, -0.469721049, 0.992696524, 0.12063881, 1.04991102e-07, -0.0919796303, 0.756870151, -0.647050858, -0.0780595317, 0.642325222, 0.762438655) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.612647831, -1.47136939, -0.556701124, 0.992708802, -0.100837603, -0.06603802, 0.111820064, 0.974958718, 0.192196012, 0.045003742, -0.198179156, 0.979125738) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.537496328, -1.65592182, 0.72992909, 0.991710365, 0.0555263385, 0.115877263, -0.119201362, 0.734256029, 0.668316305, -0.0479744226, -0.676588774, 0.734788299) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		 }, .3, false)
         if pet1 == true then
         moter1.C0 = clerp(moter1.C0, CFrame.new(-0.243331149, 4.25724459, 2.66689038, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0, 0+ .3 * math.cos(sine/45)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
         if pet2 == true then
         moter2.C0 = clerp(moter2.C0, CFrame.new(-2.12825108, 2.54331326, 2.56931949, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0, 0- .2 * math.cos(sine/35)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
         if pet3 == true then
         moter3.C0 = clerp(moter3.C0, CFrame.new(2.07104087, 2.37510967, 2.70228124, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0 , 0+ .5 * math.cos(sine/30)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
	end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
		PlayAnimationFromTable({
         CFrame.new(-0.0101588946, -1.22813508e-05, -0.0140685709, 0.967943728, -0.0126207247, -0.250846118, 5.19937657e-07, 0.998744249, -0.0502572432, 0.251172453, 0.0486411043, 0.966736495) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.064690277, 1.50060236, -0.0260605514, 0.965713382, 0.069217667, 0.250218093, -0.105701372, 0.985138714, 0.135441661, -0.237113073, -0.157251269, 0.958685935)  * CFrame.new(0, 0, 0- .04 * math.cos((sine) / 50)) * CFrame.Angles(math.rad(0 - 6 * math.cos((sine) / 50)), 0, 0),
         CFrame.new(1.50402832, 0.000267970841, 0.0048783645, 0.994622767, -0.0970794335, -0.0361072123, 0.100044444, 0.990715921, 0.0921325237, 0.0268399417, -0.0952562392, 0.995105505) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.4712013, 0.0830698684, 0.258137286, 0.832628012, 0.319949001, 0.452067196, -0.297459781, 0.946875811, -0.122277722, -0.467169315, -0.0326604545, 0.883572817) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.539323032, -1.99888957, 0.0727772787, 0.998838663, -0.0307417475, -0.0371391475, 0.0331390649, 0.997296274, 0.0657040626, 0.0350315422, -0.0668643638, 0.997161508) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.559483767, -2.00450611, -0.0388417467, 0.999184966, 0.0376727544, 0.0145921558, -0.0375132784, 0.999243796, -0.0109508969, -0.0149809271, 0.0103899837, 0.999848485) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
         if pet1 == true then
         moter1.C0 = clerp(moter1.C0, CFrame.new(-0.243331149, 4.25724459, 2.66689038, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0, 0+ .3 * math.cos(sine/45)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
         if pet2 == true then
         moter2.C0 = clerp(moter2.C0, CFrame.new(-2.12825108, 2.54331326, 2.56931949, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0, 0- .2 * math.cos(sine/35)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
         if pet3 == true then
         moter3.C0 = clerp(moter3.C0, CFrame.new(2.07104087, 2.37510967, 2.70228124, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0 , 0+ .5 * math.cos(sine/30)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
	end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
        PlayAnimationFromTable({
        CFrame.new(0, -0.0193441566, -0.137761548, 1, 0, 0, 0, 0.961308897, 0.275472969, 0, -0.275472969, 0.961308897) * CFrame.new(0, 0- .1 * math.cos((sine) / 2), 0) * CFrame.Angles(0, 0, 0), 
        CFrame.new(0, 1.44159341, 0.0451771915, 1, 0, 0, 0, 0.98646307, -0.163984656, 0, 0.163984656, 0.98646307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        CFrame.new(1.63363111, 0.0754526258, -2.72151652e-007, 0.985570133, -0.16926825, 1.56980732e-007, 0.16926825, 0.985570133, 2.38418579e-007, -1.86264515e-007, -1.49011612e-007, 1.00000024) * CFrame.new(0, 0, 0+ 0.5 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0- 20 * math.cos((sine) / 4)),  0, 0), 
        CFrame.new(-1.61827064, 0.111134544, 1.51569429e-006, 0.978242338, 0.207465827, 7.76345075e-007, -0.207465842, 0.978242397, -2.41398811e-006, -1.25542283e-006, 2.20537186e-006, 1.00000012) * CFrame.new(0, 0, 0- 0.5 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0+ 20 * math.cos((sine) / 4)), 0, 0), 
        CFrame.new(0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 + 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 - 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)),
        CFrame.new(-0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 - 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 + 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)), 
        }, .3, false)
         if pet1 == true then
         moter1.C0 = clerp(moter1.C0, CFrame.new(-0.243331149, 4.25724459, 2.66689038, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0, 0+ .3 * math.cos(sine/45)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
         if pet2 == true then
         moter2.C0 = clerp(moter2.C0, CFrame.new(-2.12825108, 2.54331326, 2.56931949, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0, 0- .2 * math.cos(sine/35)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
         end
         if pet3 == true then
         moter3.C0 = clerp(moter3.C0, CFrame.new(2.07104087, 2.37510967, 2.70228124, 0.999438405, 0.0324867927, -0.00824363437, 0.00755845988, 0.0211575516, 0.999747574, 0.0326529965, -0.999248326, 0.0209001042) * CFrame.new(0, 0 , 0+ .5 * math.cos(sine/30)) * CFrame.Angles(math.rad(90), math.rad(-90), 0), 0.3)
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
					if Thing[2] == "Shoot" then
						local Look = Thing[1]
						local move = 30
						if Thing[8] == 3 then
							move = 10
						end
						local hit, pos = rayCast(Thing[4], Thing[1], move, m)
						if Thing[10] ~= nil then
							da = pos
							cf2 = CFrame.new(Thing[4], Thing[10].Position)
							cfa = CFrame.new(Thing[4], pos)
							tehCF = cfa:lerp(cf2, 0.2)
							Thing[1] = tehCF.lookVector
						end
						local mag = (Thing[4] - pos).magnitude
						Effects["Head"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
						if Thing[8] == 2 then
							Effects["Ring"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
						end
						Thing[4] = Thing[4] + Look * move
						Thing[3] = Thing[3] - 1
						if 2 < Thing[5] then
							Thing[5] = Thing[5] - 0.3
							Thing[6] = Thing[6] - 0.3
						end
						if hit ~= nil then
							Thing[3] = 0
							if Thing[8] == 1 or Thing[8] == 3 then
								Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
							else
								if Thing[8] == 2 then
									Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
									if (hit.Parent:findFirstChild("Humanoid")) ~= nil or (hit.Parent.Parent:findFirstChild("Humanoid")) ~= nil then
										ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
										ref.Anchored = true
										ref.CFrame = CFrame.new(pos)
										CFuncs["Sound"].Create("161006093", ref, 1, 1.2)
										game:GetService("Debris"):AddItem(ref, 0.2)
										Effects["Block"].Create(Torso.BrickColor, CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
										Effects["Ring"].Create(BrickColor.new("Bright yellow"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
										MagnitudeDamage(ref, 15, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", "", 1)
									end
								end
							end
							ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
							ref.Anchored = true
							ref.CFrame = CFrame.new(pos)
							Effects["Sphere"].Create(Torso.BrickColor, CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
							game:GetService("Debris"):AddItem(ref, 1)
						end
						if Thing[3] <= 0 then
							table.remove(Effects, e)
						end
					end
					do
						do
							if Thing[2] == "FireWave" then
								if Thing[3] <= Thing[4] then
									Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
									Thing[3] = Thing[3] + 1
									Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
								else
									Part.Parent = nil
									table.remove(Effects, e)
								end
							end
							if Thing[2] ~= "Shoot" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
								if Thing[1].Transparency <= 1 then
									if Thing[2] == "Block1" then
										Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
										Mesh = Thing[7]
										Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
										Thing[1].Transparency = Thing[1].Transparency + Thing[3]
									else
										if Thing[2] == "Block2" then
											Thing[1].CFrame = Thing[1].CFrame
											Mesh = Thing[7]
											Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
											Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										else
											if Thing[2] == "Fire" then
												Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
												Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											else
												if Thing[2] == "Cylinder" then
													Mesh = Thing[7]
													Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
													Thing[1].Transparency = Thing[1].Transparency + Thing[3]
												else
													if Thing[2] == "Blood" then
														Mesh = Thing[7]
														Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
														Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
													else
														if Thing[2] == "Elec" then
															Mesh = Thing[10]
															Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														else
															if Thing[2] == "Disappear" then
																Thing[1].Transparency = Thing[1].Transparency + Thing[3]
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
		end
	end
end