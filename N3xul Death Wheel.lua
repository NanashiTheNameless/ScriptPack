--[["Niak niak"
N3xul by Salvo_Starly.
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
local doe = 0
local value = 0
local N3x = false
local Create = LoadLibrary("RbxUtility").Create
Humanoid.JumpPower = 0
Humanoid.WalkSpeed = 22
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
	["Part"] = {
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
	
	["Mesh"] = {
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
	
	["Mesh"] = {
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
	
	["Weld"] = {
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

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
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
			return fp
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

Handle = New("Part",m,"Handle",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.699999988),CFrame = CFrame.new(-34.8798256, 3.31016231, 9.30002022, 0, 1, 0, 0.500005305, 0, 0.866033554, 0.866033554, 0, -0.500005305),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
moter = New("Weld",Handle,"mot",{Part0 = RootPart,Part1 = Handle,})
Hitbox = New("Part",m,"Hitbox",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(5, 0.400000006, 5),CFrame = CFrame.new(-17.6798229, 5.28994846, 11.4285469, 0, 1, 0, 0, 0, 1.00002098, 1.00002098, 0, 0),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
mot = New("Weld",Hitbox,"mot",{Part0 = Hitbox,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, 1.00000095, 1, 0, 0, 0, 1.00000095, 0),C1 = CFrame.new(-0.0250005722, 0, -0.0433020592, 0, 0.500004888, 0.866034091, 1, 0, 0, 0, 0.866034091, -0.500004888),})

Spike = New("Part",m,"Spike",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 0.700000048),CFrame = CFrame.new(-34.8798256, 3.51014757, 6.34985542, 1, 0, 0, 0, 1.00001442, 1.49011612e-07, 0, -1.49011612e-07, 1.00001442),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike,"mot",{Part0 = Spike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.00000465, -1.19262666e-07, 0, 1.19262666e-07, 1.00000465),C1 = CFrame.new(-2.45490026, 0, 1.64825988, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.300000042),CFrame = CFrame.new(-34.8798256, 4.32226419, 9.42439651, 1, 0, 0, 0, 0.500007093, -0.866038024, 0, 0.866038024, 0.500007093),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(1, 0.5, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.500002205, 0.866029501, 0, -0.866029501, 0.500002205),C1 = CFrame.new(0.613758087, 0, 0.814309597, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.300000042),CFrame = CFrame.new(-34.8798256, 2.33656216, 9.18515015, 1, 0, 0, 0, -0.500006735, 0.866038144, 0, -0.866038144, -0.500006735),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(1, 0.5, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.500001848, -0.86602962, 0, 0.86602962, -0.500001848),C1 = CFrame.new(-0.586275101, 0, -0.785719395, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike = New("Part",m,"Spike",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.700000048, 0.400000006),CFrame = CFrame.new(-34.8798256, 0.35999918, 9.50000191, 1, 0, 0, 0, -1.00001442, -1.49011612e-07, 0, 1.49011612e-07, -1.00001442),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike,"mot",{Part0 = Spike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1.00000465, 1.19262666e-07, 0, -1.19262666e-07, -1.00000465),C1 = CFrame.new(-1.30188084, 0, -2.65488076, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.97403526, 8.65943718, -1, 6.56385482e-14, 3.28193757e-14, 4.86902321e-14, 0.258821815, 0.965939879, 5.49085178e-14, 0.965939879, -0.258821815),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 0.600000024, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 4.86897543e-14, 5.49079825e-14, 6.56385482e-14, 0.258819252, 0.965930462, 3.28193757e-14, 0.965930462, -0.258819252),C1 = CFrame.new(-0.222822189, 0, 0.895213842, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.66381645, 9.95211601, -1, 0, 0, 0, -0.258819044, -0.965940595, 0, -0.965940595, 0.258819044),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 0.600000024, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.25881651, -0.965931177, 0, -0.965931177, 0.25881651),C1 = CFrame.new(0.241556168, 0, -0.88579154, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike = New("Part",m,"Spike",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 0.700000048),CFrame = CFrame.new(-34.8798256, 0.359994173, 9.09999847, 1, 0, 0, 0, -1.49011612e-07, 1.00001442, 0, -1.00001442, -1.49011612e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike,"mot",{Part0 = Spike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1.19262666e-07, -1.00000465, 0, 1.00000465, -1.19262666e-07),C1 = CFrame.new(-1.6482935, 0, -2.45488477, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike = New("Part",m,"Spike",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 0.700000048),CFrame = CFrame.new(-34.8798256, 3.11013174, 12.2501574, 1, 0, 0, 0, -1.00001442, -1.49011612e-07, 0, 1.49011612e-07, -1.00001442),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike,"mot",{Part0 = Spike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1.00000465, 1.19262666e-07, 0, -1.19262666e-07, -1.00000465),C1 = CFrame.new(2.45485401, 0, -1.64828563, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.96526432, 9.9608984, -1, 0, 0, 0, -0.965940893, 0.258818179, 0, 0.258818179, 0.965940893),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 0.600000024, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.965931416, 0.258815646, 0, 0.258815646, 0.965931416),C1 = CFrame.new(0.899879456, 0, 0.236893415, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.699999988),CFrame = CFrame.new(-34.8798256, 2.22914028, 10.0686007, 0, 1, 0, -0.258819044, 0, -0.965940595, -0.965940595, 0, 0.258819044),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",Spike1,"Mesh",{Scale = Vector3.new(0.600000024, 0.5, 1),})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.25881651, -0.965931177, 1, 0, 0, 0, -0.965931177, 0.25881651),C1 = CFrame.new(0.125097275, 0, -1.32047009, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circle = New("Part",m,"Circle",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.300000012, 0.200000003, 1.39999998),CFrame = CFrame.new(-34.8798256, 2.78193283, 9.36204624, 0, 1, 0, 0.866037905, 0, -0.500007093, -0.500007093, 0, -0.866037905),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circle,"Mesh",{})
mot = New("Weld",Circle,"mot",{Part0 = Circle,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.866029441, -0.500002205, 1, 0, 0, 0, -0.500002205, -0.866029441),C1 = CFrame.new(-0.210396767, 0, -0.48846817, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-34.8698273, 1.71859038, 10.1243496, 1, 0, 0, 0, 0.1736494, 0.984822094, 0, -0.984822094, 0.1736494),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 0.600000024, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.173647642, -0.984812438, 0, 0.984812438, 0.173647642),C1 = CFrame.new(-0.0818958282, 0.00999832153, -1.79048896, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.300000042),CFrame = CFrame.new(-34.8798256, 3.20979095, 10.2976379, 1, 0, 0, 0, -0.866038978, -0.500005245, 0, 0.500005245, -0.866038978),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(1, 0.5, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.866030514, 0.500000358, 0, -0.500000358, -0.866030514),C1 = CFrame.new(0.813768387, 0, -0.585727692, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike = New("Part",m,"Spike",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.700000048, 0.400000006),CFrame = CFrame.new(-34.8798256, 3.11012197, 6.34986496, 1, 0, 0, 0, -1.49011612e-07, 1.00001442, 0, -1.00001442, -1.49011612e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike,"mot",{Part0 = Spike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1.19262666e-07, -1.00000465, 0, 1.00000465, -1.19262666e-07),C1 = CFrame.new(-2.65490341, 0, 1.30182648, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circle = New("Part",m,"Circle",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.300000012, 0.200000003, 1.39999998),CFrame = CFrame.new(-34.8798256, 3.46874952, 9.8023243, 0, 1, 0, 0.500007451, 0, 0.866037786, 0.866037846, 0, -0.500007451),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circle,"Mesh",{})
mot = New("Weld",Circle,"mot",{Part0 = Circle,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.500002503, 0.866029322, 1, 0, 0, 0, 0.866029322, -0.500002563),C1 = CFrame.new(0.514296532, 0, -0.113810539, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.67258549, 8.65067768, -1, 0, 0, 0, 0.965940118, -0.258821189, 0, -0.258821189, -0.965940118),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 0.600000024, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.965930641, -0.258818597, 0, -0.258818597, -0.965930641),C1 = CFrame.new(-0.881127357, 0, -0.227483749, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.800000012),CFrame = CFrame.new(-34.8798256, 3.66075945, 10.0555763, 1, 0, 0, 0, 0.500005245, -0.866038978, 0, 0.866038978, 0.500005245),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.500000358, 0.866030514, 0, -0.866030514, 0.500000358),C1 = CFrame.new(0.829621315, 0, -0.0741517544, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circle = New("Part",m,"Circle",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.300000012, 0.200000003, 1.39999998),CFrame = CFrame.new(-34.8798256, 3.81244087, 9.1413765, 0, 1, 0, 0.866037905, 0, -0.500007093, -0.500007093, 0, -0.866037905),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circle,"Mesh",{})
mot = New("Weld",Circle,"mot",{Part0 = Circle,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.866029441, -0.500002205, 1, 0, 0, 0, -0.500002205, -0.866029441),C1 = CFrame.new(0.11374855, 0, 0.514302969, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike = New("Part",m,"Spike",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.700000048, 0.400000006),CFrame = CFrame.new(-34.8798256, 3.51015282, 12.250165, 1, 0, 0, 0, 1.49011612e-07, -1.00001442, 0, 1.00001442, 1.49011612e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike,"mot",{Part0 = Spike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.19262666e-07, 1.00000465, 0, -1.00000465, 1.19262666e-07),C1 = CFrame.new(2.65486908, 0, -1.30186415, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circle = New("Part",m,"Circle",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.300000012, 0.200000003, 1.60000002),CFrame = CFrame.new(-34.8798256, 2.13135052, 10.3373613, 0, 1, 0, 0.258822232, 0, 0.96593976, 0.96593976, 0, -0.258822232),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circle,"Mesh",{})
mot = New("Weld",Circle,"mot",{Part0 = Circle,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.258819699, 0.965930343, 1, 0, 0, 0, 0.965930343, -0.258819699),C1 = CFrame.new(0.308954239, 0, -1.53953671, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.800000012),CFrame = CFrame.new(-34.8798256, 2.57862568, 9.63611507, 1, 0, 0, 0, -0.866037965, -0.500006974, 0, 0.500006974, -0.866037965),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.866029501, 0.500002086, 0, -0.500002086, -0.866029501),C1 = CFrame.new(-0.0747013092, 0, -0.801568985, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike = New("Part",m,"Spike",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 0.700000048),CFrame = CFrame.new(-34.8798256, 6.26027679, 9.50000191, 1, 0, 0, 0, 1.49011612e-07, -1.00001442, 0, 1.00001442, 1.49011612e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike,"mot",{Part0 = Spike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.19262666e-07, 1.00000465, 0, -1.00000465, 1.19262666e-07),C1 = CFrame.new(1.64823151, 0, 2.45485854, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circle = New("Part",m,"Circle",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.300000012, 0.200000003, 1.5),CFrame = CFrame.new(-34.8798256, 2.25983787, 8.07292938, 0, 1, 0, 0.965940118, 0, -0.258821189, -0.258821189, 0, -0.965940118),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circle,"Mesh",{})
mot = New("Weld",Circle,"mot",{Part0 = Circle,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.965930641, -0.258818597, 1, 0, 0, 0, -0.258818597, -0.965930641),C1 = CFrame.new(-1.58783913, 0, -0.296058416, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.699999988),CFrame = CFrame.new(-34.8798256, 4.08174133, 10.3955889, 0, 1, 0, -0.965940893, 0, 0.258818179, 0.258818179, 0, 0.965940893),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",Spike1,"Mesh",{Scale = Vector3.new(0.600000024, 0.5, 1),})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965931416, 0.258815646, 1, 0, 0, 0, 0.258815646, 0.965931416),C1 = CFrame.new(1.33456707, 0, 0.120420694, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circle = New("Part",m,"Circle",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.300000012, 0.200000003, 1.5),CFrame = CFrame.new(-34.8798256, 4.53719711, 8.24970627, 0, 1, 0, 0.258822232, 0, 0.96593976, 0.96593976, 0, -0.258822232),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circle,"Mesh",{})
mot = New("Weld",Circle,"mot",{Part0 = Circle,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.258819699, 0.965930343, 1, 0, 0, 0, 0.965930343, -0.258819699),C1 = CFrame.new(-0.296077728, 0, 1.58778524, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-34.8798256, 2.50035405, 7.70545006, 1, 0, 0, 0, 0.984822094, -0.1736494, 0, 0.1736494, 0.984822094),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 0.600000024, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.984812438, 0.173647642, 0, -0.173647642, 0.984812438),C1 = CFrame.new(-1.78582525, 0, 0.0959706306, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.699999988),CFrame = CFrame.new(-34.8798256, 4.40870857, 8.54296207, 1.19626364e-22, 1, -3.0440045e-28, 0.258821994, -3.09616325e-23, 0.96593982, 0.96593982, -1.15551941e-22, -0.258821994),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",Spike1,"Mesh",{Scale = Vector3.new(0.600000024, 0.5, 1),})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.19626364e-22, 0.258819431, 0.965930402, 1, -3.09613327e-23, -1.15550818e-22, -3.0440045e-28, 0.965930402, -0.258819431),C1 = CFrame.new(-0.106356621, 0, 1.32988524, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-34.8698273, 4.12749481, 10.9061289, 1, 0, 0, 0, -0.984822094, 0.1736494, 0, -0.1736494, -0.984822094),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 0.600000024, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.984812438, -0.173647642, 0, 0.173647642, -0.984812438),C1 = CFrame.new(1.79957962, 0.00999832153, -0.0952234268, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.300000042),CFrame = CFrame.new(-34.8798256, 3.4490273, 8.31192493, 1, 0, 0, 0, 0.866038978, 0.500005245, 0, -0.500005245, 0.866038978),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(1, 0.5, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.866030514, -0.500000358, 0, 0.500000358, 0.866030514),C1 = CFrame.new(-0.78627491, 0, 0.614302635, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.800000012),CFrame = CFrame.new(-34.8798256, 2.99807978, 8.55398464, 1, 0, 0, 0, -0.500005245, 0.866038978, 0, -0.866038978, -0.500005245),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -0.500000358, -0.866030514, 0, 0.866030514, -0.500000358),C1 = CFrame.new(-0.802119255, 0, 0.102745771, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.800000012),CFrame = CFrame.new(-34.8798256, 4.08019829, 8.97343826, 1, 0, 0, 0, 0.866037965, 0.500006974, 0, -0.500006974, 0.866037965),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.866029501, -0.500002086, 0, 0.500002086, 0.866029501),C1 = CFrame.new(0.102189064, 0, 0.830153704, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circle = New("Part",m,"Circle",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.300000012, 0.200000003, 1.39999998),CFrame = CFrame.new(-34.8798256, 3.24808335, 8.77180004, 0, 1, 0, 0.500007451, 0, 0.866037786, 0.866037846, 0, -0.500007451),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circle,"Mesh",{})
mot = New("Weld",Circle,"mot",{Part0 = Circle,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.500002503, 0.866029322, 1, 0, 0, 0, 0.866029322, -0.500002563),C1 = CFrame.new(-0.48848629, 0, 0.210346222, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circle = New("Part",m,"Circle",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.300000012, 0.200000003, 1.60000002),CFrame = CFrame.new(-34.8798256, 4.34748268, 10.4787979, 0, 1, 0, 0.965940118, 0, -0.258821189, -0.258821189, 0, -0.965940118),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circle,"Mesh",{})
mot = New("Weld",Circle,"mot",{Part0 = Circle,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.965930641, -0.258818597, 1, 0, 0, 0, -0.258818597, -0.965930641),C1 = CFrame.new(1.53949642, 0, 0.308953285, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike = New("Part",m,"Spike",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.700000048, 0.400000006),CFrame = CFrame.new(-34.8798256, 6.26027679, 9.0999918, 1, 0, 0, 0, 1.00001442, 1.57952309e-06, 0, -1.57952309e-06, 1.00001442),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("SpecialMesh",Spike,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike,"mot",{Part0 = Spike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.00000465, -1.56468184e-06, 0, 1.59448427e-06, 1.00000465),C1 = CFrame.new(1.30181599, 0, 2.65486217, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.699999988),CFrame = CFrame.new(-34.8798256, 2.55611181, 8.21598434, 0, 1, 0, 0.965940237, 0, -0.258820355, -0.258820355, 0, -0.965940237),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",Spike1,"Mesh",{Scale = Vector3.new(0.600000024, 0.5, 1),})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.96593082, -0.258817822, 1, 0, 0, 0, -0.258817822, -0.96593082),C1 = CFrame.new(-1.31581497, 0, -0.111007452, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Spike1 = New("Part",m,"Spike1",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-34.8798256, 4.91925144, 8.48720932, 1, -1.20395112e-14, -5.68909476e-14, -5.81181289e-14, -0.173655808, -0.984820902, 1.97732049e-15, 0.984820902, -0.173655808),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Spike1,"Mesh",{Scale = Vector3.new(0.5, 0.600000024, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Spike1,"mot",{Part0 = Spike1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -5.81175665e-14, 1.97730016e-15, -1.20395112e-14, -0.173654094, 0.984811306, -5.68909476e-14, -0.984811306, -0.173654094),C1 = CFrame.new(0.100629807, 0, 1.79990029, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 5.04258776, 7.56753063, 0, 1, 0, 0.707117558, 0, 0.707116425, 0.707116425, 0, -0.707117558),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.707110584, 0.707109511, 1, 0, 0, 0, 0.707109511, -0.707110584),C1 = CFrame.new(-0.634160042, 0, 2.36654663, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 1.57765603, 11.0324755, 0, 1, 0, 0.707117558, 0, 0.707116425, 0.707116425, 0, -0.707117558),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.707110584, 0.707109511, 1, 0, 0, 0, 0.707109511, -0.707110584),C1 = CFrame.new(0.63408947, 0, -2.36659932, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 1.57765102, 7.56753016, 0, 1, 0, -0.707116425, 0, 0.707117438, 0.707117438, 0, 0.707116425),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707109511, 0.707110465, 1, 0, 0, 0, 0.707110465, 0.707109511),C1 = CFrame.new(-2.36661339, 0, -0.634146452, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 5.04259396, 11.0324745, 0, 1, 0, -0.707116425, 0, 0.707117438, 0.707117438, 0, 0.707116425),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707109511, 0.707110465, 1, 0, 0, 0, 0.707110465, 0.707109511),C1 = CFrame.new(2.36654282, 0, 0.634094954, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 3.31011677, 11.750083, 0, 1, 0, -1.00001454, 0, 8.34465027e-07, 8.34465027e-07, 0, 1.00001454),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -1.00000465, 8.19620425e-07, 1, 0, 0, 0, 8.19620425e-07, 1.00000465),C1 = CFrame.new(2.12177277, 0, -1.22506022, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 0.860047102, 9.30000496, 0, 1, 0, 8.34465027e-07, 0, 1.00001454, 1.00001454, 0, -8.34465027e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 8.19620425e-07, 1.00000465, 1, 0, 0, 0, 1.00000465, -8.19620425e-07),C1 = CFrame.new(-1.22505951, 0, -2.12183332, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 5.76019382, 9.29999924, 0, 1, 0, 8.34465027e-07, 0, 1.00001454, 1.00001454, 0, -8.34465027e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 8.19620425e-07, 1.00000465, 1, 0, 0, 0, 1.00000465, -8.19620425e-07),C1 = CFrame.new(1.22498703, 0, 2.12177873, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 3.31011009, 6.84990978, 0, 1, 0, -1.00001454, 0, 8.34465027e-07, 8.34465027e-07, 0, 1.00001454),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -1.00000465, 8.19620425e-07, 1, 0, 0, 0, 8.19620425e-07, 1.00000465),C1 = CFrame.new(-2.12186289, 0, 1.22499919, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 5.67671108, 9.93412209, 0, 1, 0, -0.258821845, 0, 0.96593982, 0.96593982, 0, 0.258821845),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.258819312, 0.965930402, 1, 0, 0, 0, 0.965930402, 0.258819312),C1 = CFrame.new(1.73240662, 0, 1.73242259, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 0.943523645, 8.66586494, 0, 1, 0, -0.258821845, 0, 0.96593982, 0.96593982, 0, 0.258821845),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.258819312, 0.965930402, 1, 0, 0, 0, 0.965930402, 0.258819312),C1 = CFrame.new(-1.73249769, 0, -1.73247385, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 3.94424105, 6.93339062, 0, 1, 0, -0.96593982, 0, -0.258821845, -0.258821845, 0, 0.96593982),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965930402, -0.258819312, 1, 0, 0, 0, -0.258819312, 0.965930402),C1 = CFrame.new(-1.73250437, 0, 1.73242736, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 2.67599082, 11.6666012, 0, 1, 0, -0.96593982, 0, -0.258821845, -0.258821845, 0, 0.96593982),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965930402, -0.258819312, 1, 0, 0, 0, -0.258819312, 0.965930402),C1 = CFrame.new(1.73241615, 0, -1.73248339, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 4.53515816, 11.4218397, 0, 1, 0, -0.866037488, 0, 0.500008047, 0.500008047, 0, 0.866037488),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.866028965, 0.500003099, 1, 0, 0, 0, 0.500003099, 0.866028965),C1 = CFrame.new(2.45002365, 0, -3.33786011e-05, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 2.08507919, 7.17816067, 0, 1, 0, -0.866037488, 0, 0.500008047, 0.500008047, 0, 0.866037488),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.866028965, 0.500003099, 1, 0, 0, 0, 0.500003099, 0.866028965),C1 = CFrame.new(-2.45010185, 0, -2.22921371e-05, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 5.43195915, 8.07494736, 0, 1, 0, 0.500007927, 0, 0.866037428, 0.866037428, 0, -0.500007927),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.50000304, 0.866028965, 1, 0, 0, 0, 0.866028965, -0.50000304),C1 = CFrame.new(-4.48226929e-05, 0, 2.45004249, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 1.18828678, 10.5250454, 0, 1, 0, 0.500007927, 0, 0.866037428, 0.866037428, 0, -0.500007927),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.50000304, 0.866028965, 1, 0, 0, 0, 0.866028965, -0.50000304),C1 = CFrame.new(-3.6239624e-05, 0, -2.45008683, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 4.53515816, 7.17816114, 0, 1, 0, -0.866038203, 0, -0.500006557, -0.500006557, 0, 0.866038203),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.866029739, -0.500001669, 1, 0, 0, 0, -0.500001669, 0.866029739),C1 = CFrame.new(-1.22507286, 0, 2.12178731, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 2.08508778, 11.4218321, 0, 1, 0, -0.866038203, 0, -0.500006557, -0.500006557, 0, 0.866038203),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.866029739, -0.500001669, 1, 0, 0, 0, -0.500001669, 0.866029739),C1 = CFrame.new(1.22499275, 0, -2.12183166, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 1.18828511, 8.0749588, 0, 1, 0, -0.500006557, 0, 0.866038203, 0.866038203, 0, 0.500006557),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500001669, 0.866029739, 1, 0, 0, 0, 0.866029739, 0.500001669),C1 = CFrame.new(-2.12185287, 0, -1.22505593, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 5.43195534, 10.5250378, 0, 1, 0, -0.500006557, 0, 0.866038203, 0.866038203, 0, 0.500006557),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500001669, 0.866029739, 1, 0, 0, 0, 0.866029739, 0.500001669),C1 = CFrame.new(2.12177277, 0, 1.22500539, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 5.67672205, 8.66587257, 0, 1, 0, 0.258823276, 0, 0.965939462, 0.965939462, 0, -0.258823276),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.258820713, 0.965930045, 1, 0, 0, 0, 0.965930045, -0.258820713),C1 = CFrame.new(0.634086609, 0, 2.36655164, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 0.943528414, 9.93412971, 0, 1, 0, 0.258823276, 0, 0.965939462, 0.965939462, 0, -0.258823276),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.258820713, 0.965930045, 1, 0, 0, 0, 0.965930045, -0.258820713),C1 = CFrame.new(-0.634157181, 0, -2.36659646, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 2.67599082, 6.93339872, 0, 1, 0, -0.965939462, 0, 0.258823276, 0.258823276, 0, 0.965939462),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965930045, 0.258820713, 1, 0, 0, 0, 0.258820713, 0.965930045),C1 = CFrame.new(-2.36661673, 0, 0.634097099, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
Circlez = New("Part",m,"Circlez",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.400000006),CFrame = CFrame.new(-34.8798256, 3.94425631, 11.6666031, 0, 1, 0, -0.965939462, 0, 0.258823276, 0.258823276, 0, 0.965939462),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
Mesh = New("BlockMesh",Circlez,"Mesh",{})
mot = New("Weld",Circlez,"mot",{Part0 = Circlez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965930045, 0.258820713, 1, 0, 0, 0, 0.258820713, 0.965930045),C1 = CFrame.new(2.36654472, 0, -0.634145021, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 0.860047102, 9.30000496, 0, 1, 0, 8.34465027e-07, 0, 1.00001454, 1.00001454, 0, -8.34465027e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 8.19620425e-07, 1.00000465, 1, 0, 0, 0, 1.00000465, -8.19620425e-07),C1 = CFrame.new(-1.22505951, 0, -2.12183332, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NSpike = New("Part",m,"NSpike",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 0.700000048),CFrame = CFrame.new(-34.8798256, 3.500144, 6.32985973, 1, 0, 0, 0, 1.00001442, 1.49011612e-07, 0, -1.49011612e-07, 1.00001442),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",NSpike,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",NSpike,"mot",{Part0 = NSpike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.00000465, -1.19262666e-07, 0, 1.19262666e-07, 1.00000465),C1 = CFrame.new(-2.47721863, 0, 1.64959455, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NSpike = New("Part",m,"NSpike",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 0.700000048),CFrame = CFrame.new(-34.8798256, 0.349988937, 9.09999752, 1, 0, 0, 0, -1.49011612e-07, 1.00001442, 0, -1.00001442, -1.49011612e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",NSpike,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",NSpike,"mot",{Part0 = NSpike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1.19262666e-07, -1.00000465, 0, 1.00000465, -1.19262666e-07),C1 = CFrame.new(-1.65329647, 0, -2.46354938, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NSpike = New("Part",m,"NSpike",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 0.700000048),CFrame = CFrame.new(-34.8798256, 3.12012815, 12.2501583, 1, 0, 0, 0, -1.00001442, -1.49011612e-07, 0, 1.49011612e-07, -1.00001442),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",NSpike,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",NSpike,"mot",{Part0 = NSpike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1.00000465, 1.19262666e-07, 0, -1.19262666e-07, -1.00000465),C1 = CFrame.new(2.45985222, 0, -1.63962865, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NSpike = New("Part",m,"NSpike",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.700000048, 0.400000006),CFrame = CFrame.new(-34.8798256, 6.2602644, 9.08999157, 1, 0, 0, 0, 1.00001442, 1.57952309e-06, 0, -1.57952309e-06, 1.00001442),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",NSpike,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",NSpike,"mot",{Part0 = NSpike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.00000465, -1.56468184e-06, 0, 1.59448427e-06, 1.00000465),C1 = CFrame.new(1.29314995, 0, 2.65985131, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NSpike = New("Part",m,"NSpike",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.700000048, 0.400000006),CFrame = CFrame.new(-34.8798256, 3.11012292, 6.33986282, 1, 0, 0, 0, -1.49011612e-07, 1.00001442, 0, -1.00001442, -1.49011612e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",NSpike,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",NSpike,"mot",{Part0 = NSpike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1.19262666e-07, -1.00000465, 0, 1.00000465, -1.19262666e-07),C1 = CFrame.new(-2.66356468, 0, 1.30682826, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.76019382, 9.29999924, 0, 1, 0, 8.34465027e-07, 0, 1.00001454, 1.00001454, 0, -8.34465027e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 8.19620425e-07, 1.00000465, 1, 0, 0, 0, 1.00000465, -8.19620425e-07),C1 = CFrame.new(1.22498703, 0, 2.12177873, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NSpike = New("Part",m,"NSpike",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.700000048, 0.400000006),CFrame = CFrame.new(-34.8798256, 0.350001097, 9.50000191, 1, 0, 0, 0, -1.00001442, -1.49011612e-07, 0, 1.49011612e-07, -1.00001442),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",NSpike,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",NSpike,"mot",{Part0 = NSpike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1.00000465, 1.19262666e-07, 0, -1.19262666e-07, -1.00000465),C1 = CFrame.new(-1.30688, 0, -2.66353917, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NSpike = New("Part",m,"NSpike",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.700000048, 0.400000006),CFrame = CFrame.new(-34.8798256, 3.520154, 12.250164, 1, 0, 0, 0, 1.49011612e-07, -1.00001442, 0, 1.00001442, 1.49011612e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",NSpike,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",NSpike,"mot",{Part0 = NSpike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.19262666e-07, 1.00000465, 0, -1.00000465, 1.19262666e-07),C1 = CFrame.new(2.65986919, 0, -1.29320288, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NSpike = New("Part",m,"NSpike",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.400000006, 0.700000048),CFrame = CFrame.new(-34.8798256, 6.27028179, 9.50000191, 1, 0, 0, 0, 1.49011612e-07, -1.00001442, 0, 1.00001442, 1.49011612e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",NSpike,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",NSpike,"mot",{Part0 = NSpike,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.19262666e-07, 1.00000465, 0, -1.00000465, 1.19262666e-07),C1 = CFrame.new(1.65323448, 0, 2.46352315, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.31011581, 6.84992123, 0, 1, 0, -1.00001359, 0, 0, 0, 0, 1.00001359),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -1.00000381, 0, 1, 0, 0, 0, 0, 1.00000381),C1 = CFrame.new(-2.12185001, 0, 1.22499824, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.31011677, 11.750083, 0, 1, 0, -1.00001359, 0, 0, 0, 0, 1.00001359),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -1.00000381, 0, 1, 0, 0, 0, 0, 1.00000381),C1 = CFrame.new(2.12177277, 0, -1.22506022, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 1.57765198, 7.56753826, 0, 1, 0, -0.707115412, 0, 0.707117438, 0.707117438, 0, 0.707115412),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707108498, 0.707110524, 1, 0, 0, 0, 0.707110524, 0.707108498),C1 = CFrame.new(-2.36660576, 0, -0.63414979, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.04258823, 11.0324707, 0, 1, 0, -0.707115412, 0, 0.707117438, 0.707117438, 0, 0.707115412),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707108498, 0.707110524, 1, 0, 0, 0, 0.707110524, 0.707108498),C1 = CFrame.new(2.36653614, 0, 0.634092093, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.04258633, 7.56753063, 0, 1, 0, -0.707116425, 0, -0.707116425, -0.707116425, 0, 0.707116425),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707109511, -0.707109511, 1, 0, 0, 0, -0.707109511, 0.707109511),C1 = CFrame.new(-0.634160995, 0, 2.3665452, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 1.57766104, 11.0324745, 0, 1, 0, -0.707116425, 0, -0.707116425, -0.707116425, 0, 0.707116425),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707109511, -0.707109511, 1, 0, 0, 0, -0.707109511, 0.707109511),C1 = CFrame.new(0.634091377, 0, -2.36659455, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 0.943533659, 8.66587353, 0, 1, 0, -0.258821249, 0, 0.965939283, 0.965939283, 0, 0.258821249),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.258818775, 0.965929806, 1, 0, 0, 0, 0.965929806, 0.258818775),C1 = CFrame.new(-1.73248529, 0, -1.73246956, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.67671299, 9.93412781, 0, 1, 0, -0.258821249, 0, 0.965939283, 0.965939283, 0, 0.258821249),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.258818775, 0.965929806, 1, 0, 0, 0, 0.965929806, 0.258818775),C1 = CFrame.new(1.73241234, 0, 1.73242164, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.94424391, 6.93340635, 0, 1, 0, -0.965938985, 0, -0.258822441, -0.258822441, 0, 0.965938985),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965929508, -0.258819968, 1, 0, 0, 0, -0.258819968, 0.965929508),C1 = CFrame.new(-1.73248911, 0, 1.73242164, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.67599726, 11.6666012, 0, 1, 0, -0.965938985, 0, -0.258822441, -0.258822441, 0, 0.965938985),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965929508, -0.258819968, 1, 0, 0, 0, -0.258819968, 0.965929508),C1 = CFrame.new(1.73241901, 0, -1.73247743, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 1.18829703, 10.5250454, 0, 1, 0, -0.500007033, 0, -0.86603725, -0.86603725, 0, 0.500007033),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500002146, -0.866028726, 1, 0, 0, 0, -0.866028726, 0.500002146),C1 = CFrame.new(-3.05175781e-05, 0, -2.45007825, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 4.53515816, 11.4218359, 0, 1, 0, -0.866036654, 0, 0.500007749, 0.500007749, 0, 0.866036654),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.86602819, 0.500002861, 1, 0, 0, 0, 0.500002861, 0.86602819),C1 = CFrame.new(2.45002079, 0, -3.14712524e-05, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.08508086, 7.17816877, 0, 1, 0, -0.866036654, 0, 0.500007749, 0.500007749, 0, 0.866036654),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.86602819, 0.500002861, 1, 0, 0, 0, 0.500002861, 0.86602819),C1 = CFrame.new(-2.45009422, 0, -2.46763229e-05, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.43194628, 8.0749588, 0, 1, 0, -0.500007033, 0, -0.86603725, -0.86603725, 0, 0.500007033),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500002146, -0.866028726, 1, 0, 0, 0, -0.866028726, 0.500002146),C1 = CFrame.new(-4.10079956e-05, 0, 2.4500258, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 0.943533897, 9.93412971, 0, 1, 0, 0.258823454, 0, 0.965938747, 0.965938747, 0, -0.258823454),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.258820891, 0.96592927, 1, 0, 0, 0, 0.96592927, -0.258820891),C1 = CFrame.new(-0.63415432, 0, -2.36659169, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.67671299, 8.66587162, 0, 1, 0, 0.258823454, 0, 0.965938747, 0.965938747, 0, -0.258823454),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.258820891, 0.96592927, 1, 0, 0, 0, 0.96592927, -0.258820891),C1 = CFrame.new(0.634081841, 0, 2.36654401, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.67599058, 6.93340683, 0, 1, 0, -0.965938926, 0, 0.258822501, 0.258822501, 0, 0.965938926),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965929508, 0.258819968, 1, 0, 0, 0, 0.258819968, 0.965929508),C1 = CFrame.new(-2.36661005, 0, 0.634093046, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.94424391, 11.6666012, 0, 1, 0, -0.965938926, 0, 0.258822501, 0.258822501, 0, 0.965938926),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965929508, 0.258819968, 1, 0, 0, 0, 0.258819968, 0.965929508),C1 = CFrame.new(2.36653709, 0, -0.634154797, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.08508897, 11.4218359, 0, 1, 0, -0.86603719, 0, -0.500007033, -0.500007033, 0, 0.86603719),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.866028726, -0.500002146, 1, 0, 0, 0, -0.500002146, 0.866028726),C1 = CFrame.new(1.22499657, 0, -2.12183261, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.4319458, 10.5250378, 0, 1, 0, -0.500007033, 0, 0.86603719, 0.86603719, 0, 0.500007033),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500002146, 0.866028726, 1, 0, 0, 0, 0.866028726, 0.500002146),C1 = CFrame.new(2.121768, 0, 1.22499681, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 1.1882894, 8.07496738, 0, 1, 0, -0.500007033, 0, 0.86603719, 0.86603719, 0, 0.500007033),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500002146, 0.866028726, 1, 0, 0, 0, 0.866028726, 0.500002146),C1 = CFrame.new(-2.12184334, 0, -1.22505641, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez2 = New("Part",m,"NCirclez2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 4.53515816, 7.17816925, 0, 1, 0, -0.86603719, 0, -0.500007033, -0.500007033, 0, 0.86603719),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez2,"Mesh",{Scale = Vector3.new(1, 0.200000003, 2.00999999),})
mot = New("Weld",NCirclez2,"mot",{Part0 = NCirclez2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.866028726, -0.500002146, 1, 0, 0, 0, -0.500002146, 0.866028726),C1 = CFrame.new(-1.22506618, 0, 2.12178326, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 0.860047102, 9.30000496, 0, 1, 0, 8.34465027e-07, 0, 1.00001454, 1.00001454, 0, -8.34465027e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 8.19620425e-07, 1.00000465, 1, 0, 0, 0, 1.00000465, -8.19620425e-07),C1 = CFrame.new(-1.22505951, 0, -2.12183332, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.76019382, 9.29999924, 0, 1, 0, 8.34465027e-07, 0, 1.00001454, 1.00001454, 0, -8.34465027e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 8.19620425e-07, 1.00000465, 1, 0, 0, 0, 1.00000465, -8.19620425e-07),C1 = CFrame.new(1.22498703, 0, 2.12177873, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.31011581, 6.84992123, 0, 1, 0, -1.00001359, 0, 0, 0, 0, 1.00001359),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -1.00000381, 0, 1, 0, 0, 0, 0, 1.00000381),C1 = CFrame.new(-2.12185001, 0, 1.22499824, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.31011677, 11.750083, 0, 1, 0, -1.00001359, 0, 0, 0, 0, 1.00001359),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -1.00000381, 0, 1, 0, 0, 0, 0, 1.00000381),C1 = CFrame.new(2.12177277, 0, -1.22506022, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 1.57766104, 11.0324745, 0, 1, 0, -0.707116425, 0, -0.707116425, -0.707116425, 0, 0.707116425),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707109511, -0.707109511, 1, 0, 0, 0, -0.707109511, 0.707109511),C1 = CFrame.new(0.634091377, 0, -2.36659455, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.04258823, 11.0324707, 0, 1, 0, -0.707115412, 0, 0.707117438, 0.707117438, 0, 0.707115412),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707108498, 0.707110524, 1, 0, 0, 0, 0.707110524, 0.707108498),C1 = CFrame.new(2.36653614, 0, 0.634092093, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 1.57765198, 7.56753826, 0, 1, 0, -0.707115412, 0, 0.707117438, 0.707117438, 0, 0.707115412),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707108498, 0.707110524, 1, 0, 0, 0, 0.707110524, 0.707108498),C1 = CFrame.new(-2.36660576, 0, -0.63414979, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.04258633, 7.56753063, 0, 1, 0, -0.707116425, 0, -0.707116425, -0.707116425, 0, 0.707116425),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.707109511, -0.707109511, 1, 0, 0, 0, -0.707109511, 0.707109511),C1 = CFrame.new(-0.634160995, 0, 2.3665452, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.43194628, 8.0749588, 0, 1, 0, -0.500007033, 0, -0.86603725, -0.86603725, 0, 0.500007033),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500002146, -0.866028726, 1, 0, 0, 0, -0.866028726, 0.500002146),C1 = CFrame.new(-4.10079956e-05, 0, 2.4500258, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 0.943533659, 8.66587353, 0, 1, 0, -0.258821249, 0, 0.965939283, 0.965939283, 0, 0.258821249),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.258818775, 0.965929806, 1, 0, 0, 0, 0.965929806, 0.258818775),C1 = CFrame.new(-1.73248529, 0, -1.73246956, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.67671299, 9.93412781, 0, 1, 0, -0.258821249, 0, 0.965939283, 0.965939283, 0, 0.258821249),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.258818775, 0.965929806, 1, 0, 0, 0, 0.965929806, 0.258818775),C1 = CFrame.new(1.73241234, 0, 1.73242164, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 1.18829703, 10.5250454, 0, 1, 0, -0.500007033, 0, -0.86603725, -0.86603725, 0, 0.500007033),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500002146, -0.866028726, 1, 0, 0, 0, -0.866028726, 0.500002146),C1 = CFrame.new(-3.05175781e-05, 0, -2.45007825, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 4.53515816, 11.4218359, 0, 1, 0, -0.866036654, 0, 0.500007749, 0.500007749, 0, 0.866036654),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.86602819, 0.500002861, 1, 0, 0, 0, 0.500002861, 0.86602819),C1 = CFrame.new(2.45002079, 0, -3.14712524e-05, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.08508086, 7.17816877, 0, 1, 0, -0.866036654, 0, 0.500007749, 0.500007749, 0, 0.866036654),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.86602819, 0.500002861, 1, 0, 0, 0, 0.500002861, 0.86602819),C1 = CFrame.new(-2.45009422, 0, -2.46763229e-05, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.94424391, 6.93340635, 0, 1, 0, -0.965938985, 0, -0.258822441, -0.258822441, 0, 0.965938985),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965929508, -0.258819968, 1, 0, 0, 0, -0.258819968, 0.965929508),C1 = CFrame.new(-1.73248911, 0, 1.73242164, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.67599726, 11.6666012, 0, 1, 0, -0.965938985, 0, -0.258822441, -0.258822441, 0, 0.965938985),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965929508, -0.258819968, 1, 0, 0, 0, -0.258819968, 0.965929508),C1 = CFrame.new(1.73241901, 0, -1.73247743, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 0.943533897, 9.93412971, 0, 1, 0, 0.258823454, 0, 0.965938747, 0.965938747, 0, -0.258823454),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.258820891, 0.96592927, 1, 0, 0, 0, 0.96592927, -0.258820891),C1 = CFrame.new(-0.63415432, 0, -2.36659169, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 1.1882894, 8.07496738, 0, 1, 0, -0.500007033, 0, 0.86603719, 0.86603719, 0, 0.500007033),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500002146, 0.866028726, 1, 0, 0, 0, 0.866028726, 0.500002146),C1 = CFrame.new(-2.12184334, 0, -1.22505641, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 4.53515816, 7.17816925, 0, 1, 0, -0.86603719, 0, -0.500007033, -0.500007033, 0, 0.86603719),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.866028726, -0.500002146, 1, 0, 0, 0, -0.500002146, 0.866028726),C1 = CFrame.new(-1.22506618, 0, 2.12178326, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.67671299, 8.66587162, 0, 1, 0, 0.258823454, 0, 0.965938747, 0.965938747, 0, -0.258823454),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0.258820891, 0.96592927, 1, 0, 0, 0, 0.96592927, -0.258820891),C1 = CFrame.new(0.634081841, 0, 2.36654401, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 3.94424391, 11.6666012, 0, 1, 0, -0.965938926, 0, 0.258822501, 0.258822501, 0, 0.965938926),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965929508, 0.258819968, 1, 0, 0, 0, 0.258819968, 0.965929508),C1 = CFrame.new(2.36653709, 0, -0.634154797, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.67599058, 6.93340683, 0, 1, 0, -0.965938926, 0, 0.258822501, 0.258822501, 0, 0.965938926),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.965929508, 0.258819968, 1, 0, 0, 0, 0.258819968, 0.965929508),C1 = CFrame.new(-2.36661005, 0, 0.634093046, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 2.08508897, 11.4218359, 0, 1, 0, -0.86603719, 0, -0.500007033, -0.500007033, 0, 0.86603719),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.866028726, -0.500002146, 1, 0, 0, 0, -0.500002146, 0.866028726),C1 = CFrame.new(1.22499657, 0, -2.12183261, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
NCirclez = New("Part",m,"NCirclez",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.699999988, 0.400000006, 0.200000003),CFrame = CFrame.new(-34.8798256, 5.4319458, 10.5250378, 0, 1, 0, -0.500007033, 0, 0.86603719, 0.86603719, 0, 0.500007033),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("BlockMesh",NCirclez,"Mesh",{Scale = Vector3.new(0.939999998, 1.00999999, 0.400000006),})
mot = New("Weld",NCirclez,"mot",{Part0 = NCirclez,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, -0.500002146, 0.866028726, 1, 0, 0, 0, 0.866028726, 0.500002146),C1 = CFrame.new(2.121768, 0, 1.22499681, 0, 0.500000477, 0.866025209, 1, 0, 0, 0, 0.866025209, -0.500000477),})
for _,v in pairs(m:children()) do
if v:IsA("Part") then
v.CanCollide = false
end
end
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
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil or h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then

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
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really red").Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really red").Color)
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
				if hit == hit.Parent:findFirstChild("Torso") then
				vp.Parent = hit.Parent.Torso
				elseif hit == hit.Parent:findFirstChild("UpperTorso") then
				vp.Parent = hit.Parent.UpperYorso
				end
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
			}
			    if hit == hit.Parent:findFirstChild("Torso") then
				bp.Parent = hit.Parent.Torso
				bp.position = hit.Parent.Torso.Position
				elseif hit == hit.Parent:findFirstChild("UpperTorso") then
				bp.Parent = hit.Parent.UpperYorso
				bp.position = hit.Parent.UpperYorso.Position
				end
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),				
			}
			    if hit == hit.Parent:findFirstChild("Torso") then
				BodPos.Parent = hit.Parent.Torso
				BodPos.position = hit.Parent.Torso.Position
				elseif hit == hit.Parent:findFirstChild("UpperTorso") then
				BodPos.Parent = hit.Parent.UpperYorso	
				BodPos.position = hit.Parent.Torso.Position			
				end
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			    if hit == hit.Parent:findFirstChild("Torso") then
				BodGy.Parent = hit.Parent.Torso
				BodGy.cframe = hit.Parent.Torso.CFrame
				hit.Parent.Torso.Anchored = true
				elseif hit == hit.Parent:findFirstChild("UpperTorso") then
				BodGy.Parent = hit.Parent.UpperYorso
				BodGy.cframe = hit.Parent.UpperYorso.CFrame	
				hit.Parent.UpperTorso.Anchored = true			
				end
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
			local heady = c:findFirstChild("UpperTorso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
					Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, "rbxassetid://" .. HitSound, HitPitch)
				end
				elseif heady ~= nil then
				local targ = heady.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
					Damage(heady, heady, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, "rbxassetid://" .. HitSound, HitPitch)
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
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local con = Hitbox.Touched:connect(function(hit) 
		Damage(Hitbox, hit, 15, 20, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149186", 1) 
	end)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0247611944, 0.395599604, 0.0614117533, 0.999999762, -8.29032787e-10, 7.40431316e-09, -1.19500548e-21, 0.99379009, 0.111270897, -7.4505806e-09, -0.111270867, 0.993789852) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.03574791e-14, 1.51392162, 0.0322225429, 0.999999762, 6.8278716e-15, 1.0658141e-14, -6.66133815e-15, 0.999800324, -0.020144701, -1.0658141e-14, 0.0201447532, 0.999800086) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.60279191, 0.868783593, 0.538308918, -0.518517137, -0.659889758, 0.543769836, -0.234152421, -0.502049327, -0.832536578, 0.822381794, -0.559009671, 0.105806865) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.67177606, 0.150433719, 2.42363035e-06, 0.959645748, 0.281210065, -1.96716968e-07, -0.281210154, 0.959646165, -5.5283308e-06, -1.3973289e-06, 5.47825903e-06, 0.999999464) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520074844, -1.08606076, -0.234062612, 0.998314202, -0.0580326766, -7.03613807e-07, 0.0562185496, 0.967103302, 0.248093575, -0.0143968463, -0.2476753, 0.968735516) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499999762, -1.99266648, 0.315881968, 0.999999523, 0, -4.4408921e-16, 0, 0.957916379, 0.287047207, 0, -0.287046999, 0.957915962) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(5.54231071, 4.06374073, 2.81215429, 0.574745774, -0.318629563, -0.753752351, 0.55404377, 0.829379797, 0.0718662962, 0.602248251, -0.458916634, 0.653217196) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 15), 0), 0.3)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=199145095", RootPart, 1, 1)
	for i = 0, .1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0247611944, 0.395598143, 0.0614119172, 0.999999762, -8.29032787e-10, 7.40431316e-09, -1.19500548e-21, 0.99379009, 0.111270897, -7.4505806e-09, -0.111270867, 0.993789852) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.03575002e-14, 1.51392162, 0.0322244503, 0.999999762, 6.8278716e-15, 1.0658141e-14, -6.66133815e-15, 0.999800324, -0.020144701, -1.0658141e-14, 0.0201447532, 0.999800086) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.10011482, 0.708091974, -0.322557241, 0.339084744, -0.915282845, 0.217436597, 0.288635552, -0.118763849, -0.950044513, 0.895382881, 0.384905636, 0.22391212) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.6717757, 0.15043509, 4.33098558e-06, 0.959645748, 0.281210065, -1.96716968e-07, -0.281210154, 0.959646165, -5.5283308e-06, -1.3973289e-06, 5.47825903e-06, 0.999999464) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520072758, -1.08605731, -0.234060526, 0.998314202, -0.0580326766, -7.03613807e-07, 0.0562185496, 0.967103302, 0.248093575, -0.0143968463, -0.2476753, 0.968735516) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499999762, -1.99266195, 0.315883577, 0.999999523, 0, -4.4408921e-16, 0, 0.957916379, 0.287047207, 0, -0.287046999, 0.957915962) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(6.83724022, 2.01833153, -2.47121024, 0.648828268, -0.289196938, -0.703838944, 0.366921872, 0.929230988, -0.043564409, 0.666627347, -0.229987398, 0.70902288) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 15), 0), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0247611944, 0.395596266, 0.0614121258, 0.999999762, -8.29032787e-10, 7.40431316e-09, -1.19500548e-21, 0.99379009, 0.111270897, -7.4505806e-09, -0.111270867, 0.993789852) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.04592958e-14, 1.55167508, -0.229172319, 0.999999762, -2.88657986e-15, 3.64153152e-14, -1.17128529e-14, 0.917395175, 0.397977769, -3.46389584e-14, -0.39797768, 0.917394996) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.718009889, 0.505484223, -1.09626853, 0.670046806, 0.733065605, 0.116839856, 0.0408146195, 0.120778717, -0.991840065, -0.741195679, 0.669348001, 0.0510075539) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.67177618, 0.150433272, 5.28464898e-06, 0.959645748, 0.281210065, -1.96716968e-07, -0.281210154, 0.959646165, -5.5283308e-06, -1.3973289e-06, 5.47825903e-06, 0.999999464) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520072699, -1.08605576, -0.234061927, 0.998314202, -0.0580326766, -7.03613807e-07, 0.0562185496, 0.967103302, 0.248093575, -0.0143968463, -0.2476753, 0.968735516) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499999762, -1.99266088, 0.315881282, 0.999999523, 0, -4.4408921e-16, 0, 0.957916379, 0.287047207, 0, -0.287046999, 0.957915962) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(-1.69986296, 0.246855974, -5.41825294, 0.694845855, -0.0881403461, -0.713738203, 0.118121654, 0.992972016, -0.0076283589, 0.709393084, -0.0790075138, 0.700372756) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 15), 0), 0.3)
	end
	attack = false
	con:Disconnect()
end
function attacktwo()
	attack = true
	local con = Hitbox.Touched:connect(function(hit) 
		Damage(Hitbox, hit, 15, 20, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149186", 1) 
	end)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0247611944, 0.39560315, 0.0614113547, 0.999999762, -8.29032787e-10, 7.40431316e-09, -1.19500548e-21, 0.99379009, 0.111270897, -7.4505806e-09, -0.111270867, 0.993789852) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.68204226e-16, 1.51587749, -0.0656896234, 0.999999523, -1.11022302e-16, 0, 0, 0.995222509, 0.0976322517, 0, -0.0976320878, 0.995222092) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.56885242, 1.35940528, 0.107976064, 0.953258991, -0.26212126, 0.150297329, -0.263772905, -0.964540958, -0.00920015574, 0.147379458, -0.0308742989, -0.98859781) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.67177784, 0.150434703, 2.42363558e-06, 0.959645748, 0.281210065, -1.96716968e-07, -0.281210154, 0.959646165, -5.5283308e-06, -1.3973289e-06, 5.47825903e-06, 0.999999464) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520072937, -1.08606005, -0.234059811, 0.998314202, -0.0580326766, -7.03613807e-07, 0.0562185496, 0.967103302, 0.248093575, -0.0143968463, -0.2476753, 0.968735516) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499999762, -1.99266672, 0.315883011, 0.999999523, 0, -4.4408921e-16, 0, 0.957916379, 0.287047207, 0, -0.287046999, 0.957915962) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(-0.0100110481, 6.92017365, 0.269746065, 6.55651093e-06, -0.999999344, 3.18512321e-06, 0.49998796, 6.03909393e-06, 0.866032362, -0.866031826, -4.06801701e-06, 0.499987662) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 15), 0), 0.3)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=199145095", RootPart, 1, 1.25)
	for i = 0, .1, 0.1 do	
		moter.C0 = clerp(moter.C0, CFrame.new(-0.00998020824, 4.83337784, -3.82615471, 6.55651093e-06, -0.999999344, 3.18512321e-06, 0.49998796, 6.03909393e-06, 0.866032362, -0.866031826, -4.06801701e-06, 0.499987662) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 15), 0), 0.3)
	end
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0247611944, 0.39560315, 0.0614113547, 0.999999762, -8.29032787e-10, 7.40431316e-09, -1.19500548e-21, 0.99379009, 0.111270897, -7.4505806e-09, -0.111270867, 0.993789852) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(4.14477616e-15, 1.55280709, -0.17542538, 0.999999762, 2.88657986e-15, -8.8817842e-16, -2.72004641e-15, 0.951519728, 0.307593107, 1.33226763e-15, -0.307592988, 0.951519608) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.18234992, 0.0166931748, -0.446400583, 0.9432199, 0.187122002, -0.274446726, -0.315012991, 0.765998185, -0.560369015, 0.105368309, 0.615005612, 0.781450629) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.67177784, 0.150434703, 2.42363558e-06, 0.959645748, 0.281210065, -1.96716968e-07, -0.281210154, 0.959646165, -5.5283308e-06, -1.3973289e-06, 5.47825903e-06, 0.999999464) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520072937, -1.08606005, -0.234059811, 0.998314202, -0.0580326766, -7.03613807e-07, 0.0562185496, 0.967103302, 0.248093575, -0.0143968463, -0.2476753, 0.968735516) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499999762, -1.99266672, 0.315883011, 0.999999523, 0, -4.4408921e-16, 0, 0.957916379, 0.287047207, 0, -0.287046999, 0.957915962) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(-0.0099725714, 0.347075582, -4.85451031, 6.55651093e-06, -0.999999344, 3.18512321e-06, 0.49998796, 6.03909393e-06, 0.866032362, -0.866031826, -4.06801701e-06, 0.499987662) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 15), 0), 0.3)
	end
	attack = false
	con:Disconnect()	
end
function attackthree()
	attack = true
	local con = Hitbox.Touched:connect(function(hit) 
		Damage(Hitbox, hit, 15, 20, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149186", 1) 
	end)
	moter.Part0 = Torso
	for i = 1,2 do
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=199145095", RootPart, 1, 1.1)
	for i = 0, 1.5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.00769102061, 5.94347, 0.111671507, -0.000619999948, -0.999995768, -0.00285095745, 0.999999881, -0.000619806291, -6.87673237e-05, 6.69999936e-05, -0.00285099936, 0.999996006) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 18), 0), 
         CFrame.new(-3.81460882e-06, 1.51588571, -0.0656834096, 1.00000012, 5.82076609e-11, 7.27595761e-12, 5.82076609e-11, 0.995222807, 0.0976300314, 1.47792889e-12, -0.0976300389, 0.995222867) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.91323066, 0.557871044, 1.84733858e-06, -0.0400272459, -0.999198735, -4.43312956e-07, 0.999198675, -0.0400272422, -1.79116614e-06, 1.7718412e-06, -5.14657586e-07, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-2.0011692, 0.367786586, 4.40213944e-06, 0.0874899179, 0.996165752, -1.020475e-06, -0.996165693, 0.0874898955, -7.14836642e-06, -7.03264959e-06, 1.64197991e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.610739172, -1.8573885, 0.353014052, 0.998314798, -0.0580324233, -7.3784031e-07, 0.0562183075, 0.967103839, 0.248091936, -0.0143966628, -0.247673839, 0.968736589) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.514956951, -1.99168193, 0.315591782, 0.997732282, 0.0673074946, -9.25181666e-07, -0.0644749701, 0.955748498, 0.287032813, 0.0193203408, -0.286381692, 0.957921028) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(-6.5103631, -0.139183253, 0.0864479542, 0.499878854, 0.000624308188, 0.866095185, -0.0723953694, 0.996531665, 0.0410656519, -0.863064647, -0.0832300186, 0.498189658) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 15), 0), 0.3)
	end
	end
	moter.Part0 = RootPart
	attack = false
	con:Disconnect()	
end
function N3xy_Saw()
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.137931556, 0.395607829, 0.00834273547, 0.938806534, -0.0383267738, 0.342305869, -6.77565026e-22, 0.99379009, 0.111271158, -0.344444811, -0.104462095, 0.932976663) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0362863913, 1.50892043, 0.0237983987, 0.925071418, -0.0613906533, -0.374799401, 0.0370833129, 0.996736109, -0.0717329085, 0.377978414, 0.0524592921, 0.924328625) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.56098926, 0.0719422549, 1.40516795e-06, 0.981725693, -0.190301389, -3.4570694e-06, 0.190301403, 0.981725752, 2.89361924e-06, 2.86102295e-06, -3.51667404e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-2.0290966, 0.598032176, 0.154399544, -0.12235336, 0.99005264, 0.0694645345, -0.992486954, -0.122051507, -0.00858841836, -2.4786219e-05, -0.0699933767, 0.997547686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.53684926, -1.08471763, -0.228560537, 0.947472453, -0.00304228067, -0.319823891, 0.0763792396, 0.973177195, 0.217015892, 0.310584217, -0.230044141, 0.922290623) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.701872647, -1.92240238, 0.301058829, 0.937067807, 0.137104467, -0.321114004, -0.0474750251, 0.961174607, 0.271846056, 0.345916092, -0.239493132, 0.907189608) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(-6.47915268, 1.98922193, 1.50078607, 0.804076374, 0.276369572, -0.526386261, -0.335363388, 0.941921949, -0.0177408606, 0.490911543, 0.190795571, 0.850061178) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 3), 0), 0.3)
	end
	local con = Hitbox.Touched:connect(function(hit) 
		Damage(Hitbox, hit, 8, 15, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149186", 1) 
	end)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=199145095", RootPart, 1, 1.1)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=248088589", RootPart, 1.2, .9)
	N3x = true
while N3x == true do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0214186162, 0.277443081, 0.00464951992, 0.67465806, 0.0821333528, -0.733546674, 0.185470015, 0.943043292, 0.27617076, 0.714449048, -0.322371721, 0.620998502) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0238638818, 1.51567161, -0.0341850966, 0.717614353, 0.00556445308, 0.696418583, 0.0806082934, 0.992583871, -0.0909924507, -0.691760182, 0.121434592, 0.711843908) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.8163296, 0.242457017, 0.183517694, 0.880944848, -0.467268437, -0.0748110414, 0.473219097, 0.869866431, 0.139271826, -1.81794167e-06, -0.158092976, 0.987424374) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.84985387, 0.725304842, -0.93970865, -0.186417878, 0.59939599, -0.77844274, -0.979000211, -0.179869071, 0.0959484279, -0.0825066492, 0.77998203, 0.620339394) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.536842346, -1.08471298, -0.228559569, 0.999983311, -0.0030502528, 0.00495830178, 0.00182783604, 0.97317642, 0.230054021, -0.0055270493, -0.230041206, 0.973165393) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.530440271, -1.93428946, 0.232037365, 0.925719976, -0.00586517155, 0.378164083, -0.0643104091, 0.982877851, 0.172671542, -0.372701854, -0.184165448, 0.909492493) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(-0.33060503, -0.102687478, -7.5675416, 0.883653164, -0.0242217965, -0.467514902, 0.00151341502, 0.998803377, -0.0488871336, 0.468139559, 0.0424917415, 0.882632375) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 15), 0), 0.3)
end
	attack = false
	con:Disconnect()
end
function RunnyN3xul()
	attack = true
ref1 = New("Part",EffectModel,"ref1",{BrickColor = BrickColor.new("Crimson"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-25.2282906, 0.65063858, 51.0955696, 0.999617279, 0.0276308171, -1.34855509e-06, 1.35600567e-06, 2.40824875e-07, 1.00000322, 0.0276307911, -0.999618232, 1.99303031e-07),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.592157, 0, 0),})
mot = New("Motor",ref1,"mot",{Part0 = ref1,Part1 = RootPart,C0 = CFrame.new(0, 0, 0, 0.999617279, 1.35600567e-06, 0.0276307911, 0.0276308171, 2.40824875e-07, -0.999618232, -1.34855509e-06, 1.00000322, 1.99303031e-07) * CFrame.Angles(math.rad(90),math.rad(90),0),C1 = CFrame.new(0.225543976, -2.01487637, -6.64178467, 4.49431016e-21, 4.72249953e-22, 1, -6.79974573e-22, 1, -4.72249953e-22, -1, -6.79974573e-22, 4.49431016e-21),})
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0493162647, 0.40752393, 0.296459764, 0.580539167, -0.120346881, -0.805289388, 2.79497685e-22, 0.989016652, -0.147804111, 0.81423229, 0.0858060792, 0.57416296) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0941738263, 1.39222717, 0.00244647637, 0.509387791, 0.16690433, 0.844196141, -0.0840166807, 0.985969841, -0.144238502, -0.856425941, 0.00254678354, 0.516263783) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.60131347, 1.28604746, 0.233699635, 0.967095971, -0.250174224, 0.0462991297, -0.252064943, -0.917419672, 0.307905376, -0.0345553756, -0.309443176, -0.950290263) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.59715331, 0.0995924324, -8.13858514e-06, 0.97523284, 0.221180916, 5.36441803e-07, -0.221180946, 0.97523284, -4.88013029e-06, -1.63912773e-06, 4.65009362e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520076454, -1.0860585, -0.23406744, 0.989986897, -0.0698032156, 0.122692943, 0.0237699151, 0.939202189, 0.34253943, -0.139143348, -0.33619231, 0.931461334) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.557118177, -2.00454879, 0.276234031, 0.976874053, 1.49011612e-08, 0.213816643, -0.061375089, 0.957918942, 0.280406177, -0.204819977, -0.287044615, 0.935766935) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(-0.0203268975, 6.82764769, 2.2530992, 0.0239289794, -0.999609053, -0.0138149541, 0.499993742, 2.12338861e-07, 0.866029084, -0.865690768, -0.0276305638, 0.499798357) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(doe * 3), 0), 0.3)
	end
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=199145095", RootPart, 1, .9)
	for i = 0, .8, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0225765258, 0.23228699, -0.334326148, 0.588111222, 0.11954008, 0.799897134, -0.160759062, 0.986560464, -0.029240407, -0.792642295, -0.111394085, 0.599424422) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0347382501, 1.49774599, -0.145196021, 0.470139116, 0.102452934, -0.876625776, 0.0593141988, 0.98732686, 0.14720121, 0.880596995, -0.121201418, 0.458103895) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.71571183, 0.0881288946, -0.274225712, 0.610230148, -0.722737253, -0.324453712, 0.352403462, 0.614435911, -0.70589, 0.709528744, 0.316416562, 0.629642606) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.78274977, 0.187874556, 0.195820957, 0.396853328, 0.915079713, 0.0716791451, -0.887796462, 0.362843752, 0.283129245, 0.233077228, -0.175997198, 0.956400275) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520066977, -1.08606005, -0.234083831, 0.931684017, -0.069801107, -0.356500953, 0.181819201, 0.939201355, 0.291277885, 0.314494461, -0.336197734, 0.887729883) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.558486938, -1.98228264, 0.350583166, 0.999846101, 2.39908695e-06, -0.0175518394, 0.00503505766, 0.957922876, 0.286997318, 0.0168139338, -0.287042111, 0.957770646) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.22553885, -2.01487708, -6.64166641, 0.0239289794, -0.999609053, -0.0138149541, 0.499993742, 2.12338861e-07, 0.866029084, -0.865690768, -0.0276305638, 0.499798357) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
N3x = true 
CFuncs.Sound.Create("http://www.roblox.com/asset/?id=199145477", Handle, 1, 1)
	local con = Hitbox.Touched:connect(function(hit) 
		Damage(Hitbox, hit, 15, 30, math.random(1, 5), "Snare", RootPart, 0.2, "rbxassetid://199149186", 1) 
	end)
coroutine.wrap(function()
ref = New("Part",EffectModel,"Circle",{Transparency = 1,Anchored = true,CFrame = ref1.CFrame * CFrame.Angles(math.rad(90),0,math.rad(90))})
moter.Part0 = ref
Effects.Wave.Create(BrickColor.new("White"), ref.CFrame * CFrame.Angles(math.rad(90),0,0), 1, .5, 1, .8, 0.6, .8, 0.05)
	CFuncs.Sound.Create("http://www.roblox.com/asset/?id=248088589", Handle, 1.2, 1.3)
	value = 0
	for i = 0, 6, 0.1 do
	swait()
	value = value + .05
	ref.CFrame = ref.CFrame * CFrame.new(value,0,0)	
	Handle.CFrame = ref.CFrame * CFrame.Angles(0, math.rad(doe * 15), 0)
	moter.C0 = clerp(moter.C0, CFrame.Angles(0, math.rad(doe * 15), 0), 0.3)
	end
	N3x = false
	con:Disconnect()
	moter.Part0 = RootPart
end)()
while N3x == true do
	swait()
PlayAnimationFromTable({
         CFrame.new(4.42224468e-22, 0.406974763, -0.0556323677, 1, 9.69404787e-22, -4.41385312e-21, -4.7224864e-22, 0.993784308, 0.111270368, 4.49431016e-21, -0.111271016, 0.99379009) * CFrame.new(0, 0 + .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.51588464, -0.0656869709, 1, 0, 0, 0, 0.995220363, 0.0976320952, 0, -0.0976320952, 0.995220363) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.56099975, 0.0719469488, 1.9177819e-06, 0.981725574, -0.190302119, 2.42222971e-08, 0.190302104, 0.981725693, -6.55651093e-07, 1.00582838e-07, 6.40749931e-07, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.67177844, 0.150434136, 2.41926455e-06, 0.959646225, 0.281210154, -1.96089672e-07, -0.281210095, 0.959646285, -5.59538603e-06, -1.38394535e-06, 5.42402267e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520075798, -1.086061, -0.234063938, 0.998314738, -0.058032658, -7.00135729e-07, 0.0562185124, 0.967103481, 0.248093307, -0.0143968407, -0.24767524, 0.968736172) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99266708, 0.315881819, 1, 0, 0, 0, 0.957918644, 0.287047386, 0, -0.287047386, 0.957918644) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
end
	ref:Remove()
	ref1:Remove()
	attack = false
end
Mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype = 2 
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype = 3 
		attacktwo()
	elseif attack == false and attacktype == 3 then
		attacktype = 1 
		attackthree()
	end
end)

Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'z' then
	N3xy_Saw()
	elseif attack == false and k == 'x' then
	RunnyN3xul()
	end
end)
Mouse.KeyUp:connect(function(k)
	k = k:lower()
	if attack == true and k == 'z' then
	N3x = false
	end
end)
	warn'"Niak niak" - N3xul 2k17'
while true do
	swait()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	while 1 do
		swait()
		if doe <= 360 then
			doe = doe + 2
		else
			doe = 0
		end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				PlayAnimationFromTable({
         CFrame.new(1.9972492e-21, 0.113661945, -0.432451636, 1, 2.49027328e-21, -3.77099282e-21, -4.7224864e-22, 0.887478054, 0.460837424, 4.49431016e-21, -0.460840106, 0.887483239) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.4947052, 0.062059015, 1, 0, 0, 0, 0.986512363, -0.163722664, 0, 0.163716733, 0.98650825) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.55467427, 0.10457363, 0.42051965, 0.981725395, -0.172917932, -0.0794669464, 0.190303147, 0.892039657, 0.409950525, -2.5331974e-07, -0.417586893, 0.90863508) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.6915586, 0.0829171836, 0.630138516, 0.95964843, 0.245055869, 0.137923256, -0.28120321, 0.836300015, 0.470666647, -5.69969416e-06, -0.490458935, 0.871464372) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520076096, -1.08606339, -0.234059066, 0.998314619, -0.0580340028, -2.00776839e-07, 0.0562196746, 0.967103362, 0.248093963, -0.0143976882, -0.247675776, 0.968736053) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99266136, 0.31588462, 1, 0, 0, 0, 0.957916617, 0.287047267, 0, -0.287047267, 0.957916617) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0285198689, 2.14997911, 1.8797493, 0.866025448, 4.49431016e-21, -0.499999881, 0.49999696, -6.79970585e-22, 0.866020381, 3.55219951e-21, -1, -2.83602973e-21) * CFrame.new(0+.2 * math.cos(sine/40), 0, 0+ .4 * math.cos(sine/40)) * CFrame.Angles(0, math.rad(doe * 3), 0), 0.3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				PlayAnimationFromTable({
         CFrame.new(1.9972492e-21, 0.113661945, -0.432451636, 1, 2.49027328e-21, -3.77099282e-21, -4.7224864e-22, 0.887478054, 0.460837424, 4.49431016e-21, -0.460840106, 0.887483239) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.4947052, 0.062059015, 1, 0, 0, 0, 0.986512363, -0.163722664, 0, 0.163716733, 0.98650825) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.55467427, 0.10457363, 0.42051965, 0.981725395, -0.172917932, -0.0794669464, 0.190303147, 0.892039657, 0.409950525, -2.5331974e-07, -0.417586893, 0.90863508) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.6915586, 0.0829171836, 0.630138516, 0.95964843, 0.245055869, 0.137923256, -0.28120321, 0.836300015, 0.470666647, -5.69969416e-06, -0.490458935, 0.871464372) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520076096, -1.08606339, -0.234059066, 0.998314619, -0.0580340028, -2.00776839e-07, 0.0562196746, 0.967103362, 0.248093963, -0.0143976882, -0.247675776, 0.968736053) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99266136, 0.31588462, 1, 0, 0, 0, 0.957916617, 0.287047267, 0, -0.287047267, 0.957916617) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0285198689, 2.14997911, 1.8797493, 0.866025448, 4.49431016e-21, -0.499999881, 0.49999696, -6.79970585e-22, 0.866020381, 3.55219951e-21, -1, -2.83602973e-21) * CFrame.new(0+.2 * math.cos(sine/40), 0, 0+ .4 * math.cos(sine/40)) * CFrame.Angles(0, math.rad(doe * 3), 0), 0.3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				PlayAnimationFromTable({
         CFrame.new(4.42224468e-22, 0.406974763, -0.0556323677, 1, 9.69404787e-22, -4.41385312e-21, -4.7224864e-22, 0.993784308, 0.111270368, 4.49431016e-21, -0.111271016, 0.99379009) * CFrame.new(0, 0 + .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.51588464, -0.0656869709, 1, 0, 0, 0, 0.995220363, 0.0976320952, 0, -0.0976320952, 0.995220363) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.56099975, 0.0719469488, 1.9177819e-06, 0.981725574, -0.190302119, 2.42222971e-08, 0.190302104, 0.981725693, -6.55651093e-07, 1.00582838e-07, 6.40749931e-07, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.67177844, 0.150434136, 2.41926455e-06, 0.959646225, 0.281210154, -1.96089672e-07, -0.281210095, 0.959646285, -5.59538603e-06, -1.38394535e-06, 5.42402267e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520075798, -1.086061, -0.234063938, 0.998314738, -0.058032658, -7.00135729e-07, 0.0562185124, 0.967103481, 0.248093307, -0.0143968407, -0.24767524, 0.968736172) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99266708, 0.315881819, 1, 0, 0, 0, 0.957918644, 0.287047386, 0, -0.287047386, 0.957918644) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0285198689, 2.14997911, 1.8797493, 0.866025448, 4.49431016e-21, -0.499999881, 0.49999696, -6.79970585e-22, 0.866020381, 3.55219951e-21, -1, -2.83602973e-21) * CFrame.new(0+.2 * math.cos(sine/40), 0, 0+ .4 * math.cos(sine/40)) * CFrame.Angles(0, math.rad(doe * 3), 0), 0.3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				PlayAnimationFromTable({
         CFrame.new(1.9972492e-21, 0.113661945, -0.432451636, 1, 2.49027328e-21, -3.77099282e-21, -4.7224864e-22, 0.887478054, 0.460837424, 4.49431016e-21, -0.460840106, 0.887483239) * CFrame.new(0, 0+ .2 * math.cos(sine/30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.4947052, 0.062059015, 1, 0, 0, 0, 0.986512363, -0.163722664, 0, 0.163716733, 0.98650825) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.55467427, 0.10457363, 0.42051965, 0.981725395, -0.172917932, -0.0794669464, 0.190303147, 0.892039657, 0.409950525, -2.5331974e-07, -0.417586893, 0.90863508) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.6915586, 0.0829171836, 0.630138516, 0.95964843, 0.245055869, 0.137923256, -0.28120321, 0.836300015, 0.470666647, -5.69969416e-06, -0.490458935, 0.871464372) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.520076096, -1.08606339, -0.234059066, 0.998314619, -0.0580340028, -2.00776839e-07, 0.0562196746, 0.967103362, 0.248093963, -0.0143976882, -0.247675776, 0.968736053) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.5, -1.99266136, 0.31588462, 1, 0, 0, 0, 0.957916617, 0.287047267, 0, -0.287047267, 0.957916617) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0285198689, 2.14997911, 1.8797493, 0.866025448, 4.49431016e-21, -0.499999881, 0.49999696, -6.79970585e-22, 0.866020381, 3.55219951e-21, -1, -2.83602973e-21) * CFrame.new(0+.2 * math.cos(sine/40), 0, 0+ .4 * math.cos(sine/40)) * CFrame.Angles(0, math.rad(doe * 3), 0), 0.3)
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
		end
	end
	end
	end