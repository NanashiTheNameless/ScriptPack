--[[
If you use this, you'll cry. I warned you.
F u r r y .   b y   . . . . . .
]]--
wait(1 / 30)
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
local oml = false
local Equipped = false
local hide = false
local Gender = 1 --Triggered
local Create = LoadLibrary("RbxUtility").Create
Character.Humanoid.MaxHealth = math.huge
Character.Humanoid.Health = math.huge


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
	
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

Knot = New("Model",Torso,"Knot",{})
Balls = New("Part",Knot,"Balls",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.633225322, 0.627756178, 0.566908002),CFrame = CFrame.new(-52.1883163, -1.24416244, -63.7315178, -1.86264515e-08, 1.37835741e-07, -1.00000465, 0.867121458, 0.498098791, 8.55898676e-08, 0.498106003, -0.867134094, 1.49011612e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Balls,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Balls,"mot",{Part0 = Balls,Part1 = Torso,C0 = CFrame.new(0, 0, 0, 3.25050031e-08, 0.867120624, 0.498098314, 8.14983423e-08, 0.498098284, -0.867120624, -1, 6.877994e-08, -5.44782139e-08),C1 = CFrame.new(0.259296417, -1.06132448, -0.283123016, 0.998320162, -5.58793545e-09, 0.0579784103, -9.50342383e-09, 1.00000048, -5.96046448e-08, -0.0579781681, 2.98023224e-08, 0.998325586),})
Balls = New("Part",Knot,"Balls",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.633225322, 0.627756178, 0.566908002),CFrame = CFrame.new(-52.6285896, -1.24417102, -63.7314873, -1.86264515e-08, 1.37835741e-07, -1.00000465, 0.867121458, 0.498098791, 8.55898676e-08, 0.498106003, -0.867134094, 1.49011612e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Balls,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Balls,"mot",{Part0 = Balls,Part1 = Torso,C0 = CFrame.new(0, 0, 0, 3.25050031e-08, 0.867120624, 0.498098314, 8.14983423e-08, 0.498098284, -0.867120624, -1, 6.877994e-08, -5.44782139e-08),C1 = CFrame.new(-0.180233002, -1.06133306, -0.257568359, 0.998320162, -5.58793545e-09, 0.0579784103, -9.50342383e-09, 1.00000048, -5.96046448e-08, -0.0579781681, 2.98023224e-08, 0.998325586),})
Ball = New("Part",Knot,"Ball",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.04999995, 1.13, 1.7299999),CFrame = CFrame.new(-52.3997879, -1.0845747, -63.8579521, -1.00000465, 2.79396772e-08, 7.4505806e-09, 5.19574472e-09, -0.940444589, -0.339950144, 1.41561031e-07, -0.339955002, 0.940458119),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Ball,"Mesh",{Scale = Vector3.new(0.5, 0.5, 4),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Ball,"mot",{Part0 = Ball,Part1 = Torso,C0 = CFrame.new(0, 0, 0, -1, -1.16141035e-08, 7.06187109e-08, -1.30844056e-08, -0.940443635, -0.339949787, 7.03611249e-08, -0.339949816, 0.940443575),C1 = CFrame.new(0.040851593, -0.901736856, -0.397083282, 0.998320162, -5.58793545e-09, 0.0579784103, -9.50342383e-09, 1.00000048, -5.96046448e-08, -0.0579781681, 2.98023224e-08, 0.998325586),})
faic = New ("Decal",Head,"Face",{Texture = "rbxassetid://648887959",Face = "Front",Transparency = 1})
stick = New("Model",Torso,"stick",{})
Handle = New("Part",stick,"Handle",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-52.3997879, -1.08457458, -63.8579559, -1, -5.30103321e-08, 1.31363009e-07, 5.19570165e-09, -0.940442502, -0.339954078, 1.41560349e-07, -0.339954227, 0.940441906),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Handle,"Mesh",{Scale = Vector3.new(0.5, 0.5, 4),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
moter = New("Motor",Handle,"mot",{Part0 = Handle,Part1 = Torso,})
Shaft = New("Part",stick,"Shaft",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,Elasticity = 0,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.573660076, 0.665826976, 0.403559536),CFrame = CFrame.new(-52.4063644, -0.797297835, -65.0149155, 1, -5.57705562e-08, 9.69817435e-08, -7.4781866e-08, 0.311523914, 0.950238943, -8.32074534e-08, -0.950238168, 0.311524123),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("CylinderMesh",Shaft,"Mesh",{})
mot = New("Weld",Shaft,"mot",{Part0 = Shaft,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -7.47818589e-08, -8.32074605e-08, -5.57705739e-08, 0.311523944, -0.950238287, 9.69817009e-08, 0.950238287, 0.311523944),C1 = CFrame.new(0.00657653809, 0.123146057, -1.18571472, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Cylinder = New("Part",stick,"Cylinder",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,Elasticity = 0,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.573660076, 0.415210366, 0.403559536),CFrame = CFrame.new(-52.4063644, -0.965925634, -64.2144547, 1, 7.3793359e-08, 1.3644194e-07, -1.43263932e-07, 0.102112412, 0.994773507, 5.94751839e-08, -0.994772792, 0.10211274),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("CylinderMesh",Cylinder,"Mesh",{})
mot = New("Weld",Cylinder,"mot",{Part0 = Cylinder,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -1.43263918e-07, 5.94751874e-08, 7.37933519e-08, 0.102112539, -0.994772911, 1.36441898e-07, 0.994772911, 0.102112532),C1 = CFrame.new(0.00657653809, 0.00961112976, -0.375602722, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Cylinder = New("Part",stick,"Cylinder",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,Elasticity = 0,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.573660076, 0.415210366, 0.403559536),CFrame = CFrame.new(-52.4063644, -0.918055773, -64.5597687, 1, 7.37502148e-08, 1.13674943e-07, -1.25118021e-07, 0.180468008, 0.983581424, 5.20245607e-08, -0.983580709, 0.180468321),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("CylinderMesh",Cylinder,"Mesh",{})
mot = New("Weld",Cylinder,"mot",{Part0 = Cylinder,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -1.25118007e-07, 5.20245713e-08, 7.37501793e-08, 0.180468112, -0.983580828, 1.13674901e-07, 0.983580887, 0.180468127),C1 = CFrame.new(0.00657653809, 0.0819835663, -0.716625214, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Part = New("Part",stick,"Part",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.481908262, 0.792339683, 0.447224796),CFrame = CFrame.new(-52.4131393, -0.86076045, -64.75383, 1.42925757e-07, -1.52338089e-08, -1, 0.96649313, 0.256694794, 1.34226198e-07, 0.256695062, -0.966492474, 5.14116891e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.42925714e-07, 0.966492593, 0.256694853, -1.52338142e-08, 0.256694853, -0.966492593, -1, 1.3422617e-07, 5.1411682e-08),C1 = CFrame.new(0.0133514404, 0.0940723419, -0.918605804, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Part = New("Part",stick,"Part",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.562752306, 0.557891905, 0.503815591),CFrame = CFrame.new(-52.5141983, -1.0237819, -64.2095795, 3.25050387e-08, 8.14983707e-08, -1, 0.86712122, 0.498098373, 6.87799115e-08, 0.498098493, -0.867120445, -5.44782068e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 3.25050031e-08, 0.867120624, 0.498098314, 8.14983423e-08, 0.498098284, -0.867120624, -1, 6.877994e-08, -5.44782139e-08),C1 = CFrame.new(0.1144104, 0.0623626709, -0.351345062, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Part = New("Part",stick,"Part",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.473823845, 0.962112188, 0.463393569),CFrame = CFrame.new(-52.413147, -0.835066676, -64.8348236, 1.43280616e-07, -1.497272e-08, -1, 0.966491163, 0.256700933, 1.34635897e-07, 0.256701052, -0.966490805, 5.1251277e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.43280616e-07, 0.966490924, 0.256700963, -1.49727306e-08, 0.256700933, -0.966490865, -1, 1.34635883e-07, 5.12512806e-08),C1 = CFrame.new(0.0133590698, 0.097442627, -1.00350952, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Part = New("Part",stick,"Part",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.562752306, 0.557891846, 0.503815591),CFrame = CFrame.new(-52.2927055, -1.02378476, -64.2095566, 3.25050387e-08, 8.14983565e-08, -1, 0.86712122, 0.498098373, 6.87799044e-08, 0.498098493, -0.867120445, -5.44782068e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 3.25050031e-08, 0.867120624, 0.498098314, 8.14983352e-08, 0.498098284, -0.867120624, -1, 6.87799329e-08, -5.44782139e-08),C1 = CFrame.new(-0.107082367, 0.0623588562, -0.351325989, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Cylinder = New("Part",stick,"Cylinder",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,Elasticity = 0,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.573660076, 0.415210366, 0.403559506),CFrame = CFrame.new(-52.4063721, -0.977289438, -63.8654633, 1, 9.72142828e-08, 1.97462327e-07, -1.97246152e-07, -0.00221836567, 0.999998152, 9.7652034e-08, -0.999997556, -0.00221797824),BackSurface = Enum.SurfaceType.Weld,BottomSurface = Enum.SurfaceType.Weld,FrontSurface = Enum.SurfaceType.Weld,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,TopSurface = Enum.SurfaceType.Weld,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("CylinderMesh",Cylinder,"Mesh",{})
mot = New("Weld",Cylinder,"mot",{Part0 = Cylinder,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -1.97246123e-07, 9.76520553e-08, 9.721429e-08, -0.00221819268, -0.999997616, 1.97462271e-07, 0.999997616, -0.00221819268),C1 = CFrame.new(0.00658416748, -0.0983428955, -0.0435333252, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Hed = New("Part",stick,"Head",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.238436058, 0.452947468, 0.292766362),CFrame = CFrame.new(-52.3955574, -0.661489904, -65.3399582, 1.43709585e-07, -2.71950729e-09, -1, 0.940443993, 0.339950383, 1.34226198e-07, 0.339950591, -0.940443277, 5.14116891e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",Hed,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Hed,"mot",{Part0 = Hed,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.43709542e-07, 0.940443456, 0.339950383, -2.71951617e-09, 0.339950383, -0.940443456, -1, 1.3422617e-07, 5.1411682e-08),C1 = CFrame.new(-0.00423049927, 0.105926514, -1.53757095, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Hed = New("Part",stick,"Head",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.447249889, 0.236385569, 0.458311498),CFrame = CFrame.new(-52.4117279, -0.707950115, -65.3098984, 1.45332379e-07, -3.30588534e-09, -1, 0.940443039, 0.339952856, 1.35552881e-07, 0.339953035, -0.940442324, 5.25151336e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",Hed,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Hed,"mot",{Part0 = Hed,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.45332336e-07, 0.940442502, 0.339952856, -3.30589245e-09, 0.339952856, -0.940442502, -1, 1.35552852e-07, 5.25151371e-08),C1 = CFrame.new(0.0119400024, 0.139400482, -1.49350357, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Hed = New("Part",stick,"Head",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.432461828, 0.420609802, 0.405948073),CFrame = CFrame.new(-52.4117355, -0.706424892, -65.3218307, 1.43469521e-07, -7.03121827e-09, -1, 0.940444231, 0.339950025, 1.32534737e-07, 0.339950174, -0.940443397, 5.53849375e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",Hed,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Hed,"mot",{Part0 = Hed,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1.43469492e-07, 0.940443575, 0.339949965, -7.03122316e-09, 0.339949995, -0.940443516, -1, 1.32534709e-07, 5.53849269e-08),C1 = CFrame.new(0.0119476318, 0.142023087, -1.50524521, -1, 5.19572074e-09, 1.41560378e-07, -5.30103073e-08, -0.940442145, -0.339954108, 1.31363024e-07, -0.339954078, 0.940442026),})
Tail = New("Part",Torso,"Tail",{CanCollide = false,BrickColor = BrickColor.new("Pearl"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-9.66550397e-06, -1.50999641, 1.50000012, 1.00000012, 6.0107559e-06, 1.68714465e-08, -6.01354986e-06, 1, -5.98845418e-11, -1.6657026e-08, 2.29050556e-10, 1.00000024),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.905882, 0.905882, 0.92549),})
Mesh = New("SpecialMesh",Tail,"Mesh",{MeshId = "rbxassetid://791316026",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Tail,"mot",{Part0 = Tail,Part1 = Torso,C0 = CFrame.new(0, 0, 0, 1.00000012, -6.01354986e-06, -1.6657026e-08, 6.0107559e-06, 1, 2.29050556e-10, 1.68714482e-08, -5.98845418e-11, 1.00000024),C1 = CFrame.new(-9.62266495e-06, -1.52713847, 1.50000012, 1, 3.34760534e-22, 2.85593913e-08, -3.34760534e-22, 1, 3.61317985e-22, -2.85593913e-08, -3.61317985e-22, 1),})
Hair = New("Part",Head,"Hair",{CanCollide = false,BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.99999928, 1.79999995, 2.00000024),CFrame = CFrame.new(-0.107289195, 1.59000361, 0.123101406, 1, -7.87137555e-09, 0, 7.87137555e-09, 1, 4.14441839e-16, 0, -4.14441839e-16, 1),CanCollide = false,Locked = true,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Hair,"Mesh",{MeshId = "http://www.roblox.com/asset/?id=76056263",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Hair,"mot",{Part0 = Hair,Part1 = Head,C0 = CFrame.new(0, 0, 0, 1, 7.87137555e-09, -1.40367928e-22, -7.87137555e-09, 1, -4.14441839e-16, 1.37105691e-22, 4.14441839e-16, 1),C1 = CFrame.new(-0.107289195, 0.100000024, 0.123101406, 1, 3.34760534e-22, 2.85593913e-08, -3.34760534e-22, 1, 3.61317985e-22, -2.85593913e-08, -3.61317985e-22, 1),})
Hai = New("Part",Head,"Hai",{BrickColor = BrickColor.new("Institutional white"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(34.0999985, 2.82998228, 4.67002439, 1, -2.36356074e-14, 5.68434189e-13, -1.52967916e-14, 1, -6.85453415e-07, -3.41060513e-13, 6.85453415e-07, 1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Hai,"Mesh",{MeshId = "http://www.roblox.com/asset/?id=29713297",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Hai,"mot",{Part0 = Hai,Part1 = Head,C0 = CFrame.new(0, 0, 0, 1, 0, -4.69846384e-13, 0, 1, 6.85453415e-07, 4.69846384e-13, -6.85453415e-07, 1),C1 = CFrame.new(0, -0.670003653, 0.100008488, 1, -4.89879199e-07, 1.83657846e-06, 4.89866977e-07, 1, 6.64606296e-06, -1.83658165e-06, -6.64606205e-06, 1),})


Ear = New("Part",Head,"Ear",{CanCollide = false,BrickColor = BrickColor.new("Institutional white"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.25000024, 1.12999988, 1.1400001),CFrame = CFrame.new(-0.0324185491, 2.25540423, -0.0468983799, 0.999999583, 0.000551767822, 1.78813934e-07, -0.000551768171, 1.00000012, 6.41149311e-09, -2.98023224e-07, -6.60850841e-09, 1.00000012),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Ear,"Mesh",{Scale = Vector3.new(0.5, 0.5, 0.5),MeshId = "http://www.roblox.com/asset/?id=361948302",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Ear,"mot",{Part0 = Ear,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0.999999583, -0.000551768171, -2.98023224e-07, 0.000551767822, 1.00000012, -6.60850841e-09, 1.78813934e-07, 6.41149311e-09, 1.00000012),C1 = CFrame.new(-0.0324185491, 0.765400648, -0.0468983799, 1, 3.34760534e-22, 2.85593913e-08, -3.34760534e-22, 1, 3.61317985e-22, -2.85593913e-08, -3.61317985e-22, 1),})
Ear1 = New("Part",Head,"Ear1",{BrickColor = BrickColor.new("Mauve"),Size = Vector3.new(1.25000024, 1.12999988, 1.1400001),CFrame = CFrame.new(-0.0324185491, 2.25659275, 0.128099546, 0.999999583, 0.000551767822, 2.07373333e-07, -0.000549707911, 0.99631691, -0.0857504234, -4.76397254e-05, 0.0857504234, 0.99631691),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.878431, 0.698039, 0.815686),})
Mesh = New("SpecialMesh",Ear1,"Mesh",{Scale = Vector3.new(0.45, 0.5, 0.5),MeshId = "http://www.roblox.com/asset/?id=361948302",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Ear1,"mot",{Part0 = Ear1,Part1 = Head,C0 = CFrame.new(0, .1, .04, 0.999999583, -0.000549707853, -4.76397254e-05, 0.000551767822, 0.996316791, 0.0857504085, 2.07373333e-07, -0.0857504085, 0.996316791),C1 = CFrame.new(-0.0324185491, 0.770545959, 0.0128805935, 1, 2.00669642e-22, -3.61391696e-21, 1.09964345e-22, 0.996316671, 0.0857504085, 3.61781335e-21, -0.0857504085, 0.996316671),})

C11 = New("Part",LeftArm,"C1",{CanCollide = false,BrickColor = BrickColor.new("Pastel light blue"),Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(0.300000012, 0.800000012, 2),CFrame = CFrame.new(9.60000038, -1.60000706, 11.3599987, -1.43024124e-07, 1.0000093, -5.42291332e-07, -1.51331847e-07, -3.99267464e-07, -1.00000703, -1.00000548, -1.43023485e-07, 2.23470124e-07),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh11 = New("SpecialMesh",C11,"Mesh",{MeshId = "http://www.roblox.com/asset/?id=10681506",TextureId = "http://www.roblox.com/asset/?id=10681501",MeshType = Enum.MeshType.FileMesh,})
moter11 = New("Weld",C11,"mot",{Part0 = LeftArm,Part1 = C11,})--C0 = CFrame.new(0, 0, 0, -5.21534275e-07, 6.73523664e-06, -1, 1, -8.34451669e-07, -5.2153905e-07, -8.34455193e-07, -1, -6.73523618e-06),C1 = CFrame.new(1.1920929e-07, -1.70000935, -0.440010071, 1.00000238, -4.33996348e-07, 1.93715437e-07, 4.1536984e-07, 1.00000048, 6.82473183e-06, 3.53902919e-07, -6.88433647e-06, 1.00000775),})
C22 = New("Part",RightArm,"C2",{CanCollide = false,BrickColor = BrickColor.new("Pastel light blue"),Reflectance = 0.40000000596046,FormFactor = Enum.FormFactor.Plate,Size = Vector3.new(0.300000012, 0.800000012, 2),CFrame = CFrame.new(9.60000038, -1.60000706, 11.3599987, -1.43024124e-07, 1.0000093, -5.42291332e-07, -1.51331847e-07, -3.99267464e-07, -1.00000703, -1.00000548, -1.43023485e-07, 2.23470124e-07),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh22 = New("SpecialMesh",C22,"Mesh",{MeshId = "http://www.roblox.com/asset/?id=10681506",TextureId = "http://www.roblox.com/asset/?id=10681501",MeshType = Enum.MeshType.FileMesh,})
moter22 = New("Weld",C22,"mot",{Part0 = RightArm,Part1 = C22,})--C0 = CFrame.new(0, 0, 0, -5.21534275e-07, 6.73523664e-06, -1, 1, -8.34451669e-07, -5.2153905e-07, -8.34455193e-07, -1, -6.73523618e-06),C1 = CFrame.new(1.1920929e-07, -1.70000935, -0.440010071, 1.00000238, -4.33996348e-07, 1.93715437e-07, 4.1536984e-07, 1.00000048, 6.82473183e-06, 3.53902919e-07, -6.88433647e-06, 1.00000775),})
moter11.C0 = CFrame.new(-5.05206827e-08, -1.14691529e-05, -0.0400012247, -1.26287864e-06, 1.00000238, -3.81837765e-07, -2.99360181e-08, -4.00461374e-07, -1.00000048, -1.00000775, -7.15255965e-07, 8.94929144e-08)
moter22.C0 = CFrame.new(-5.05206827e-08, -1.14691529e-05, -0.0400012247, -1.26287864e-06, 1.00000238, -3.81837765e-07, -2.99360181e-08, -4.00461374e-07, -1.00000048, -1.00000775, -7.15255965e-07, 8.94929144e-08)
Mesh11.Scale = Vector3.new(1,1,.2)
Mesh22.Scale = Vector3.new(1,1,.2)

Milk = New("Model",Torso,"Milk",{})
LeftTip = New("Part",Milk,"Left Bump Tip",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(2, 2.00000024, 2.00000024),CFrame = CFrame.new(40.114666, 0.400974065, -1.34042966, -0.0136929303, 0.0188778769, -0.999728203, 0.00231057359, -0.999818683, -0.0189112332, -0.99990356, -0.00256889523, 0.0136468112),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",LeftTip,"Mesh",{Scale = Vector3.new(0.199999928, 0.199999928, 0.199999928),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",LeftTip,"mot",{Part0 = LeftTip,Part1 = Torso,C0 = CFrame.new(0, 0, 0, -0.0136929303, 0.00231057359, -0.99990356, 0.0188778769, -0.999818683, -0.00256889523, -0.999728203, -0.0189112332, 0.0136468112),C1 = CFrame.new(-0.685337067, 0.400954008, -0.810440779, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
Big = New("Part",Milk,"Bigga",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1.00000012, 1.00000012),CFrame = CFrame.new(40.2831955, 0.405953944, -0.919200182, -0.999724925, 0.018915711, 0.013881512, -0.0189493317, -0.999817967, -0.00229446031, 0.0138355643, -0.00255687325, 0.999901175),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Big,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Big,"mot",{Part0 = Big,Part1 = Torso,C0 = CFrame.new(0, 0, 0, -0.999724925, -0.0189493317, 0.0138355643, 0.018915711, -0.999817967, -0.00255687325, 0.013881512, -0.00229446031, 0.999901175),C1 = CFrame.new(-0.516807556, 0.405936778, -0.389211595, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
Big = New("Part",Milk,"Bigga",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1.00000012, 1.00000012),CFrame = CFrame.new(41.2824554, 0.42572841, -0.948771834, -0.999722004, 0.0190666858, 0.0138863847, -0.0191003699, -0.999815047, -0.00229704427, 0.0138400048, -0.00256163999, 0.999901056),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Big,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Big,"mot",{Part0 = Big,Part1 = Torso,C0 = CFrame.new(0, 0, 0, -0.999722004, -0.0191003699, 0.0138400048, 0.0190666858, -0.999815047, -0.00256163999, 0.0138863847, -0.00229704427, 0.999901056),C1 = CFrame.new(0.482452393, 0.425711542, -0.418784678, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
LeftTip = New("Part",Milk,"Left Bump Tip",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(2, 2.00000024, 2.00000024),CFrame = CFrame.new(41.3635826, 0.425968498, -1.38403642, -0.0136998966, 0.0190271325, -0.999725401, 0.0023103063, -0.999815822, -0.0190605167, -0.9999035, -0.00257079722, 0.0136533827),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",LeftTip,"Mesh",{Scale = Vector3.new(0.199999928, 0.199999928, 0.199999928),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",LeftTip,"mot",{Part0 = LeftTip,Part1 = Torso,C0 = CFrame.new(0, 0, 0, -0.0136998966, 0.0023103063, -0.9999035, 0.0190271325, -0.999815822, -0.00257079722, -0.999725401, -0.0190605167, 0.0136533827),C1 = CFrame.new(0.563579559, 0.425948739, -0.854049325, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
LeftTip2 = New("Part",Milk,"Left Bump Tip2",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1.00000012, 1.00000012),CFrame = CFrame.new(40.0788956, 0.411017627, -1.47115374, -0.0136929303, 0.0188778769, -0.999728203, 0.00231057359, -0.999818683, -0.0189112332, -0.99990356, -0.00256889523, 0.0136468112),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",LeftTip2,"Mesh",{Scale = Vector3.new(0.199999928, 0.199999928, 0.199999928),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",LeftTip2,"mot",{Part0 = LeftTip2,Part1 = Torso,C0 = CFrame.new(0, 0, 0, -0.0136929303, 0.00231057359, -0.99990356, 0.0188778769, -0.999818683, -0.00256889523, -0.999728203, -0.0189112332, 0.0136468112),C1 = CFrame.new(-0.721107483, 0.410996675, -0.94116497, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
LeftTip2 = New("Part",Milk,"Left Bump Tip2",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1.00000012, 1.00000012),CFrame = CFrame.new(41.3674202, 0.437439501, -1.51978374, -0.0136998966, 0.0190271325, -0.999725401, 0.0023103063, -0.999815822, -0.0190605167, -0.9999035, -0.00257079722, 0.0136533827),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",LeftTip2,"Mesh",{Scale = Vector3.new(0.199999928, 0.199999928, 0.199999928),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",LeftTip2,"mot",{Part0 = LeftTip2,Part1 = Torso,C0 = CFrame.new(0, 0, 0, -0.0136998966, 0.0023103063, -0.9999035, 0.0190271325, -0.999815822, -0.00257079722, -0.999725401, -0.0190605167, 0.0136533827),C1 = CFrame.new(0.567417145, 0.437418818, -0.989796638, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
Biggi = New("Model",Torso,"Biggi",{})
Big = New("Part",Biggi,"Big",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(40.4152794, -1.12894881, -0.274417549, 0.999920189, 0.00907055568, -0.00880296342, -0.00933101866, 0.999506056, -0.0300123841, 0.00852638669, 0.0300921276, 0.999510765),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Big,"Mesh",{Scale = Vector3.new(1.29999995, 1.29999995, 1.29999995),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Big,"mot",{Part0 = Big,Part1 = Torso,C0 = CFrame.new(0, 0, 0, 0.999920189, -0.00933101866, 0.00852638669, 0.00907055568, 0.999506056, 0.0300921276, -0.00880296342, -0.0300123841, 0.999510765),C1 = CFrame.new(-0.384723663, -1.12896168, 0.2555812, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
Big = New("Part",Biggi,"Big",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Shape = Enum.PartType.Ball,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(41.1935043, -1.13351357, -0.261145979, 0.999920249, 0.00906764995, -0.00879980437, -0.00932799838, 0.999506176, -0.0300100688, 0.00852333754, 0.0300897602, 0.999510884),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Big,"Mesh",{Scale = Vector3.new(1.29999995, 1.29999995, 1.29999995),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Big,"mot",{Part0 = Big,Part1 = Torso,C0 = CFrame.new(0, 0, 0, 0.999920249, -0.00932799838, 0.00852333754, 0.00906764995, 0.999506176, 0.0300897602, -0.00879980437, -0.0300100688, 0.999510884),C1 = CFrame.new(0.393501282, -1.13352585, 0.268851787, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
Skin = New("Part",Biggi,"Skin",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(40.8188591, -1.02169108, -0.559848845, 0.00901293196, -0.999920666, -0.00880302396, 0.999506652, 0.00927339587, -0.0300097354, 0.0300889891, -0.0085282037, 0.999510884),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("SpecialMesh",Skin,"Mesh",{Scale = Vector3.new(0.899999976, 0.400000006, 0.899999976),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Skin,"mot",{Part0 = Skin,Part1 = Torso,C0 = CFrame.new(0, 0, 0, 0.00901293196, 0.999506652, 0.0300889891, -0.999920666, 0.00927339587, -0.0085282037, -0.00880302396, -0.0300097354, 0.999510884),C1 = CFrame.new(0.0188560486, -1.02170563, -0.0298513174, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
Vg = New("Part",Biggi,"Vg",{BrickColor = BrickColor.new("Medium red"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(40.8188591, -1.02169108, -0.559848845, 0.00901293196, -0.999920666, -0.00880302396, 0.999506652, 0.00927339587, -0.0300097354, 0.0300889891, -0.0085282037, 0.999510884),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.854902, 0.52549, 0.478431),})
Mesh = New("SpecialMesh",Vg,"Mesh",{Scale = Vector3.new(0.910000026, 0.300000012, 0.910000026),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Vg,"mot",{Part0 = Vg,Part1 = Torso,C0 = CFrame.new(0, 0, 0, 0.00901293196, 0.999506652, 0.0300889891, -0.999920666, 0.00927339587, -0.0085282037, -0.00880302396, -0.0300097354, 0.999510884),C1 = CFrame.new(0.0188560486, -1.02170563, -0.0298513174, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})
Vg2 = New("Part",Biggi,"Vg2",{BrickColor = BrickColor.new("Dusty Rose"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(40.8190117, -1.04118991, -0.559915602, 0.00901293196, -0.999920666, -0.00880302396, 0.999506652, 0.00927339587, -0.0300097354, 0.0300889891, -0.0085282037, 0.999510884),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.639216, 0.294118, 0.294118),})
Mesh = New("SpecialMesh",Vg2,"Mesh",{Scale = Vector3.new(0.910000026, 0.300000012, 0.910000026),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Vg2,"mot",{Part0 = Vg2,Part1 = Torso,C0 = CFrame.new(0, 0, 0, 0.00901293196, 0.999506652, 0.0300889891, -0.999920666, 0.00927339587, -0.0085282037, -0.00880302396, -0.0300097354, 0.999510884),C1 = CFrame.new(0.0190086365, -1.04120445, -0.0299179554, 1, -4.71251241e-07, 1.28895817e-06, 4.712426e-07, 1, 6.70561803e-06, -1.28896136e-06, -6.70561758e-06, 1),})



for _,v in pairs(stick:children()) do
if v:IsA("Part") then
v.CanCollide = false
v.Transparency = 1
end
for _,v in pairs(Knot:children()) do
if v:IsA("Part") then
v.CanCollide = false
v.Transparency = 1
end
for _,v in pairs(Milk:children()) do
if v:IsA("Part") then
v.CanCollide = false
v.Transparency = 1
end
for _,v in pairs(Biggi:children()) do
if v:IsA("Part") then
v.CanCollide = false
v.Transparency = 1
end
end
end
end
end
for _,v in pairs(Character:children()) do
if v:IsA("Shirt") then
v.ShirtTemplate = "rbxassetid://768236558"
elseif v:IsA("Pants") then
v.PantsTemplate = "rbxassetid://784173314"
elseif v:IsA("ShirtGraphic") then
v:Remove()
wait(.1)
Torso.roblox:Remove()
elseif v:IsA("Accessory") then
v:Remove()
end
end
Hai.Transparency = 1


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
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("White").Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("White").Color)
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
warn'Press "F" to grow claws.'
warn'Press "U" to Change Genders.'
warn'Press "P" to end your life, I dare you.'
Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
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
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
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
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
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
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
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
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
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
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
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
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(.2,.2,.2))
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
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new(.2,.2,.2))
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
    local con = C22.Touched:connect(function(hit) Damage(C22, hit, 10, 30, math.random(1, 3), "Normal", RootPart, 0.2, "rbxassetid://199149186", 1) end)
	for i = 0, .7, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0606015213, -8.59571264e-06, 0.047188092, 0.692369759, -4.71251354e-07, -0.721542954, 5.16467117e-06, 1, 4.30273849e-06, 0.721542954, -6.70561758e-06, 0.692369759) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(3.46451998e-06, 1.49999845, 1.31353736e-05, 0.716132462, 0.033826679, 0.697144389, 5.75320813e-09, 0.998825073, -0.048464749, -0.697964728, 0.0347071849, 0.715290844) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.9813143, 0.945750177, -0.489478946, 0.407302022, -0.814350605, -0.413446903, -0.911511719, -0.334203005, -0.239697412, 0.0570225567, 0.474490941, -0.878411531) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.60450649, 0.121351957, 0.0540003777, 0.97513783, 0.221227318, 0.0128459036, -0.221227109, 0.968498468, 0.114320949, 0.0128496885, -0.114320531, 0.993360817) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.499993294, -1.99998808, -1.41225646e-05, 0.995873392, -0.0907549858, 2.05636024e-06, 0.0907549933, 0.995873272, -1.77829349e-06, -1.87754631e-06, 1.9595027e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.579068184, -1.9913553, -1.26227069e-05, 0.994092047, 0.108541012, -7.30156898e-06, -0.108540997, 0.994092047, 5.65620041e-07, 7.27176666e-06, 2.30967999e-07, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=338586299", Character, 1, 1.2)
	for i = 0, .7, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0330471657, -0.237029687, -0.0910832584, 0.859100997, -0.342716694, 0.380133271, 0.261056364, 0.932259798, 0.250510514, -0.440234423, -0.115976483, 0.890367031) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.154894546, 1.53070056, 0.0517572761, 0.849730134, 0.316177666, -0.421889484, -0.244260654, 0.945248127, 0.216432795, 0.467221558, -0.0808584243, 0.880435169) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.440804392, 0.418828189, -0.673669577, 0.371680558, 0.885258377, -0.279591084, -0.895259976, 0.421490341, 0.144414783, 0.245689303, 0.196630582, 0.9491961) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.44148815, 0.308930486, 0.459791839, 0.726797223, 0.397434771, 0.560188711, -0.473253071, 0.880858779, -0.0109336004, -0.497792542, -0.257164478, 0.828292966) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.359283566, -1.97145414, 0.220806152, 0.992013574, 0.123949811, 0.0233626962, -0.126132488, 0.974834919, 0.183814943, 8.97049904e-06, -0.185293719, 0.98268342) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.973547101, -1.79018593, -0.317437261, 0.890470803, 0.424213171, -0.164635375, -0.455039889, 0.830158472, -0.322143197, 1.58846378e-05, 0.361774832, 0.932265878) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	attack = false
	con:Disconnect()
end
function attacktwo()
	attack = true
    local con = C11.Touched:connect(function(hit) Damage(C11, hit, 10, 30, math.random(1, 3), "Normal", RootPart, 0.2, "rbxassetid://199149186", 1) end)
	for i = 0, .7, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.140013129, 1.15028834, -0.139077231, 0.976166964, -2.97461582e-07, 0.217020869, -0.0588159561, 0.96257478, 0.264557391, -0.208898902, -0.271016508, 0.939633608) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.136644349, 1.49592447, 0.00814438611, 0.950684667, -0.0326927975, -0.308431387, 0.0466248691, 0.998193026, 0.037907362, 0.306634724, -0.0504185259, 0.950490892) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.75085986, 0.225138903, 0.151841566, 0.889081538, -0.405967325, -0.211482063, 0.41388002, 0.91030091, -0.00746756792, 0.195543826, -0.0808888823, 0.977353454) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.31836319, 1.51231134, -0.147675753, 0.441764921, 0.11077556, 0.890265584, 0.503728032, -0.851780772, -0.143971518, 0.74236238, 0.512053132, -0.43208757) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.485871285, -1.8443017, 0.269553244, 0.957024038, -0.00452195853, -0.289973617, 0.0826711282, 0.962645769, 0.257834435, 0.277975947, -0.270726204, 0.92164886) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.642223477, -2.0255394, -2.9007555e-05, 0.989608228, 0.143790826, 4.76837158e-07, -0.143790796, 0.989608049, -1.78813934e-06, -7.00354576e-07, 1.66893005e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=338586299", Character, 1, 1.5)
	for i = 0, .7, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0301967859, -0.557449818, -1.60259032, 0.892956376, -7.14608063e-07, -0.450143188, 0.155565232, 0.938385963, 0.308595896, 0.422407746, -0.34558928, 0.837937891) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0966097116, 1.5874722, -0.207805574, 0.906798661, -0.243112549, 0.344415247, 9.0803951e-07, 0.816971719, 0.576680779, -0.421575397, -0.522927403, 0.740830958) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.84282458, 0.431977034, 0.278029382, 0.882433951, -0.470418483, 0.00408798456, 0.377637476, 0.713519216, 0.59015286, -0.280535668, -0.519227147, 0.807281375) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.14144957, 0.344472617, -0.887840688, 0.747710049, -0.327306539, -0.577754378, -0.389363438, 0.488693416, -0.780752897, 0.537890315, 0.808733225, 0.237959728) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.534732759, -1.66061532, -0.923508644, 0.998847604, -0.0471193641, 0.00913083553, 0.0303613245, 0.472968459, -0.880556405, 0.0371726155, 0.879818618, 0.473854065) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.98147136, -1.82694876, 0.729841888, 0.930664301, 0.365876347, -2.77161598e-06, -0.268250078, 0.682344496, 0.680036902, 0.248810351, -0.632884741, 0.733180225) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	attack = false
	con:Disconnect()
end
function attackthree()
	attack = true
    local con = C22.Touched:connect(function(hit) Damage(C22, hit, 10, 30, math.random(1, 3), "Normal", RootPart, 0.2, "rbxassetid://199149186", 1) end)
	for i = 0, .7, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.232035652, -0.202466756, -0.227696061, 0.904346347, -1.21953212e-06, -0.426799476, 0.16201812, 0.925146818, 0.343297958, 0.394851685, -0.379609495, 0.836653411) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.164939925, 1.52845573, -0.00217118859, 0.959616601, 0.140060276, 0.243965715, -0.111486524, 0.985579193, -0.127297342, -0.25827688, 0.0949577093, 0.961392879) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.80917919, 0.378867447, -0.783995152, 0.645021796, -0.750430346, -0.144226521, -0.208367825, 0.00886591524, -0.978010476, 0.735207438, 0.660890222, -0.15064685) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.64966977, 0.132555231, 0.203681588, 0.958413064, 0.251991093, 0.133958608, -0.266760468, 0.957831144, 0.106762946, -0.101406455, -0.138057888, 0.98521924) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.590951681, -2.00295663, -0.366462231, 0.997446179, -0.0683585256, 0.0206646025, 0.071413666, 0.954783499, -0.288598537, -2.02655792e-06, 0.289337337, 0.957230687) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.670767665, -2.02610278, 0.390102655, 0.966319799, 0.209311098, 0.149715468, -0.246806607, 0.918547988, 0.308797926, -0.0728859603, -0.335348397, 0.939270616) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=338586299", Character, 1, 1.25)
	for i = 0, .7, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.18282941, -0.346345127, -0.436333656, 0.374779642, -0.278908581, 0.88416636, 0.122897096, 0.96020633, 0.250801504, -0.918932259, 0.0146660535, 0.394142747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.18691963, 1.49518335, 0.0441068262, 0.43501541, 0.203309909, -0.877169788, -0.286846757, 0.954711497, 0.0790263414, 0.853510857, 0.217235625, 0.473632842) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.86148262, 0.313910842, -0.560928762, 0.439158857, -0.882508397, -0.168281898, -0.217655554, 0.0772199482, -0.972966194, 0.871645391, 0.463914156, -0.158171013) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53925681, 0.280807942, 0.37630102, 0.844287276, 0.35125944, 0.404717207, -0.441089958, 0.884396613, 0.152585372, -0.304333448, -0.30734247, 0.901621759) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.504559994, -2.0008626, -0.393755436, 0.953281641, -0.0658618808, -0.294821888, -0.0230342019, 0.957255244, -0.28832674, 0.301209748, 0.281646878, 0.911015153) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.7550354, -1.9530164, 0.478949279, 0.952030599, 0.249918103, 0.176576704, -0.302999318, 0.850559831, 0.429817796, -0.0427682102, -0.462697834, 0.885492444) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	attack = false
	con:Disconnect()
end
function attackfour()
	attack = true
    local con1 = C11.Touched:connect(function(hit) Damage(C11, hit, 10, 30, math.random(1, 3), "Normal", RootPart, 0.2, "rbxassetid://199149186", 1) end)
    local con2 = C22.Touched:connect(function(hit) Damage(C22, hit, 10, 30, math.random(1, 3), "Normal", RootPart, 0.2, "rbxassetid://199149186", 1) end)
	for i = 0, .7, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.17574206, -0.342794091, -0.190148115, 0.920200825, -2.75541851e-07, 0.391447455, -0.091368176, 0.972379208, 0.214786097, -0.380634904, -0.233411923, 0.894784451) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0262524411, 1.51327002, -0.0557422042, 0.904740274, 0.0591621771, -0.421836793, 1.36904418e-07, 0.990308225, 0.13889049, 0.425965101, -0.125659451, 0.895971537) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70674515, 0.205184966, 0.375862956, 0.937461734, -0.329001486, -0.113682598, 0.331251144, 0.742851973, 0.581759095, -0.106950313, -0.583034337, 0.805377245) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.334704429, 0.26624316, -0.722534776, 0.315534383, -0.94374001, 0.0989605784, 0.904588878, 0.267653525, -0.331784129, 0.28663069, 0.194207907, 0.938150406) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.634036779, -2.02830362, 0.380024642, 0.957564771, -0.226978257, -0.177625328, 0.270291567, 0.921156824, 0.280022293, 0.100061804, -0.31615001, 0.943417668) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.500000477, -1.89102769, -0.397321403, 1.00000012, -6.10016286e-08, -4.7981739e-06, -1.17719173e-06, 0.964384317, -0.264511943, 4.44054604e-06, 0.264512092, 0.964383841) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=338586299", Character, 1, 1.4)
for i = 1,2 do
	for i = 0, .1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 1, -1.49697962e-14, 6.92352842e-11, -1.49697962e-14, 1, 0, 6.92352842e-11, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), 0), 
         CFrame.new(-2.20582863e-14, 1.49998391, 5.7220459e-06, 1, -1.49697962e-14, 6.92352842e-11, -1.49697962e-14, 1, 0, 6.92352842e-11, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.98666239, 0.315398604, 0.216551766, 0.112981506, -0.975611567, -0.188195258, 0.993361294, 0.115036801, 1.216089e-06, 0.0216481928, -0.186946005, 0.98213172) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.99731374, 0.550365925, -0.187040567, 0.0578464754, 0.976071835, 0.209613308, 0.998275101, -0.0586651638, -0.00231513684, 0.0100372592, 0.209385693, -0.977781594) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.508322775, -1.999596, 1.2067229e-08, 0.99889338, -0.047047846, -2.51519623e-08, 0.047047846, 0.99889338, -4.09272616e-10, 2.52107384e-08, -8.10359779e-10, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.529292762, -1.99786401, 1.89632453e-06, 0.997388124, 0.0722311437, -2.51740175e-08, -0.0722311586, 0.997387946, 1.16870069e-09, 2.52617838e-08, 6.56655175e-10, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, .1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 1, -1.49697962e-14, 6.92352842e-11, -1.49697962e-14, 1, 0, 6.92352842e-11, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(180), 0), 
         CFrame.new(-2.20582863e-14, 1.49998391, 5.7220459e-06, 1, -1.49697962e-14, 6.92352842e-11, -1.49697962e-14, 1, 0, 6.92352842e-11, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.98666239, 0.315398604, 0.216551766, 0.112981506, -0.975611567, -0.188195258, 0.993361294, 0.115036801, 1.216089e-06, 0.0216481928, -0.186946005, 0.98213172) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.99731374, 0.550365925, -0.187040567, 0.0578464754, 0.976071835, 0.209613308, 0.998275101, -0.0586651638, -0.00231513684, 0.0100372592, 0.209385693, -0.977781594) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.508322775, -1.999596, 1.2067229e-08, 0.99889338, -0.047047846, -2.51519623e-08, 0.047047846, 0.99889338, -4.09272616e-10, 2.52107384e-08, -8.10359779e-10, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.529292762, -1.99786401, 1.89632453e-06, 0.997388124, 0.0722311437, -2.51740175e-08, -0.0722311586, 0.997387946, 1.16870069e-09, 2.52617838e-08, 6.56655175e-10, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, .1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 1, -1.49697962e-14, 6.92352842e-11, -1.49697962e-14, 1, 0, 6.92352842e-11, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(270), 0), 
         CFrame.new(-2.20582863e-14, 1.49998391, 5.7220459e-06, 1, -1.49697962e-14, 6.92352842e-11, -1.49697962e-14, 1, 0, 6.92352842e-11, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.98666239, 0.315398604, 0.216551766, 0.112981506, -0.975611567, -0.188195258, 0.993361294, 0.115036801, 1.216089e-06, 0.0216481928, -0.186946005, 0.98213172) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.99731374, 0.550365925, -0.187040567, 0.0578464754, 0.976071835, 0.209613308, 0.998275101, -0.0586651638, -0.00231513684, 0.0100372592, 0.209385693, -0.977781594) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.508322775, -1.999596, 1.2067229e-08, 0.99889338, -0.047047846, -2.51519623e-08, 0.047047846, 0.99889338, -4.09272616e-10, 2.52107384e-08, -8.10359779e-10, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.529292762, -1.99786401, 1.89632453e-06, 0.997388124, 0.0722311437, -2.51740175e-08, -0.0722311586, 0.997387946, 1.16870069e-09, 2.52617838e-08, 6.56655175e-10, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0, .1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 1, -1.49697962e-14, 6.92352842e-11, -1.49697962e-14, 1, 0, 6.92352842e-11, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-2.20582863e-14, 1.49998391, 5.7220459e-06, 1, -1.49697962e-14, 6.92352842e-11, -1.49697962e-14, 1, 0, 6.92352842e-11, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.98666239, 0.315398604, 0.216551766, 0.112981506, -0.975611567, -0.188195258, 0.993361294, 0.115036801, 1.216089e-06, 0.0216481928, -0.186946005, 0.98213172) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.99731374, 0.550365925, -0.187040567, 0.0578464754, 0.976071835, 0.209613308, 0.998275101, -0.0586651638, -0.00231513684, 0.0100372592, 0.209385693, -0.977781594) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.508322775, -1.999596, 1.2067229e-08, 0.99889338, -0.047047846, -2.51519623e-08, 0.047047846, 0.99889338, -4.09272616e-10, 2.52107384e-08, -8.10359779e-10, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.529292762, -1.99786401, 1.89632453e-06, 0.997388124, 0.0722311437, -2.51740175e-08, -0.0722311586, 0.997387946, 1.16870069e-09, 2.52617838e-08, 6.56655175e-10, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	
end
	attack = false
	con1:Disconnect()
	con2:Disconnect()
end
function OwO()
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(2.08243716e-22, 0.62206769, -2.24764243e-22, 1, 1.03190221e-29, 0, 1.03190221e-29, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(6.4861192e-09, 1.36683416, 0.227109581, 1, 1.49036339e-12, 4.35562697e-12, 1.51080103e-13, 0.935175717, -0.354184359, -4.60609328e-12, 0.35418424, 0.935175836) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70641637, 0.0127002373, 0.54719913, 0.542533636, -0.709094524, -0.450380147, 0.840034187, 0.457965881, 0.290877908, -1.17910099e-06, -0.536145747, 0.84412539) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.6883806, 0.0112262331, 0.618939877, 0.473756313, 0.750443995, 0.460856676, -0.880656064, 0.403703928, 0.24792774, 6.21672734e-06, -0.523313522, 0.852140248) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.90841645, -1.77424979, 0.471511364, 0.913802743, -0.406158388, -1.75069817e-06, 0.339723825, 0.764331281, 0.548074365, -0.222603679, -0.500832438, 0.836429656) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.970850766, -1.61642981, 0.453591704, 0.896655679, 0.44272849, 1.92037623e-06, -0.327061266, 0.662392616, 0.673993349, 0.29839474, -0.604340672, 0.738737464) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0408512428, -0.90174067, -0.397101641, -0.998320162, -0.0197100546, 0.054525461, 1.46991201e-08, -0.940442979, -0.339954287, 0.0579783097, -0.339385033, 0.938867211) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
if Gender == 1 then
for _,v in pairs(stick:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
for _,v in pairs(Knot:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
end
end
Effects.Sphere.Create(BrickColor.new("White"), Handle.CFrame * CFrame.new(0,0,-1), 3, 3, 8, 1, 1, 1, 0.06)
elseif Gender == 2 then
	hide = true
faic.Texture = "rbxassetid://732914906"
for _,v in pairs(Milk:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
for _,v in pairs(Biggi:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
end
end	
Effects.Sphere.Create(BrickColor.new("White"), Torso.CFrame, 22, 22, 22, 1.5, 1.5, 1.5, 0.06)
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=138079095", Torso, 2, 1)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(2.08243716e-22, 0.62206769, -2.24764243e-22, 1, 1.03190221e-29, 0, 1.03190221e-29, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(6.4861192e-09, 1.36683416, 0.227109581, 1, 1.49036339e-12, 4.35562697e-12, 1.51080103e-13, 0.935175717, -0.354184359, -4.60609328e-12, 0.35418424, 0.935175836) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70641637, 0.0127002373, 0.54719913, 0.542533636, -0.709094524, -0.450380147, 0.840034187, 0.457965881, 0.290877908, -1.17910099e-06, -0.536145747, 0.84412539) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.6883806, 0.0112262331, 0.618939877, 0.473756313, 0.750443995, 0.460856676, -0.880656064, 0.403703928, 0.24792774, 6.21672734e-06, -0.523313522, 0.852140248) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.90841645, -1.77424979, 0.471511364, 0.913802743, -0.406158388, -1.75069817e-06, 0.339723825, 0.764331281, 0.548074365, -0.222603679, -0.500832438, 0.836429656) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.970850766, -1.61642981, 0.453591704, 0.896655679, 0.44272849, 1.92037623e-06, -0.327061266, 0.662392616, 0.673993349, 0.29839474, -0.604340672, 0.738737464) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0408512428, -0.90174067, -0.397101641, -0.998320162, -0.0197100546, 0.054525461, 1.46991201e-08, -0.940442979, -0.339954287, 0.0579783097, -0.339385033, 0.938867211) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	oml = true
	attack = false
end

function UwU()
if Gender == 1 then
	for _,v in pairs(stick:children()) do
	if v:IsA("Part") then
	v.Transparency = 1
	end
	for _,v in pairs(Knot:children()) do
	if v:IsA("Part") then
	v.Transparency = 1
	end
	end
	end
Effects.Sphere.Create(BrickColor.new("White"), Handle.CFrame * CFrame.new(0,0,-1), 3, 3, 8, 1, 1, 1, 0.06)
elseif Gender == 2 then
faic.Texture = "rbxassetid://648887959"
for _,v in pairs(Milk:children()) do
if v:IsA("Part") then
v.Transparency = 1
end
for _,v in pairs(Biggi:children()) do
if v:IsA("Part") then
v.Transparency = 1
end
end
end	
Effects.Sphere.Create(BrickColor.new("White"), Torso.CFrame, 22, 22, 22, 1.5, 1.5, 1.5, 0.06)
end	
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=138079095", Torso, 2, .6)
	oml = false	
	hide = false
end
--actually by salvo
function Grow()
	attack = true
	Humanoid.WalkSpeed = 0
    Humanoid.JumpPower = 0
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-5.6577778e-09, -0.00392680988, -0.198105693, 1, -5.29157118e-09, 2.80648909e-08, -3.34760534e-22, 0.982685208, 0.18528305, -2.85593913e-08, -0.18528305, 0.982685208) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.26266997e-08, 1.52277625, -0.163223594, 1, 1.42978038e-08, -2.47125982e-08, -5.28448041e-09, 0.943306684, 0.331924766, 2.80573129e-08, -0.331924766, 0.943306684) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.490343928, 0.278095335, -0.790618181, 0.724845827, 0.688916683, -3.80237339e-06, -0.186327398, 0.196040958, -0.962731123, -0.663245916, 0.697826624, 0.270466357) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.481237471, 0.365119755, -0.831543922, 0.648722172, -0.752285182, 0.115017526, 0.344078034, 0.155126661, -0.926038623, 0.678801835, 0.640317917, 0.359476686) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.546899438, -1.99324632, -0.174225628, 0.99424541, -0.107128516, -2.85594073e-08, 0.105273597, 0.977030277, -0.18528305, 0.0198491253, 0.184216827, 0.982685208) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.550071537, -1.99389076, -0.174347132, 0.996171296, 0.0874145105, -2.85592883e-08, -0.0859009549, 0.978922784, -0.18528305, -0.0161963999, 0.18457365, 0.982685208) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0408525541, -0.901734233, -0.397096395, -0.998317897, -0.0197079033, 0.0545260981, -2.46241689e-06, -0.940440714, -0.339957833, 0.0579784214, -0.339386046, 0.938858747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	Mesh11.Scale = Vector3.new(1,1,1)
	Mesh22.Scale = Vector3.new(1,1,1)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(6.01834493e-09, -0.0939313993, 0.210730866, 1, 7.05971015e-09, 2.76730798e-08, -3.34760534e-22, 0.968966007, -0.247193992, -2.85593913e-08, 0.247193992, 0.968966007) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-8.65353211e-09, 1.48832738, -0.0671491772, 1, -4.66643479e-09, -2.81626011e-08, 7.06216774e-09, 0.996326268, 0.0856779814, 2.7659123e-08, -0.0856783837, 0.996326327) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.98675203, 0.430103719, -0.476831913, 0.508383155, -0.860967517, 0.0169099998, 0.301277757, 0.159433961, -0.940114379, 0.806708336, 0.483031273, 0.340444207) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.94409096, 0.359792918, -0.486533344, 0.589730501, 0.805205226, 0.062150456, -0.180265188, 0.206259295, -0.961749256, -0.787224531, 0.555969298, 0.266787827) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.546900928, -1.89410532, 0.265726566, 0.99424541, -0.107128516, -2.85594073e-08, 0.103803895, 0.963389993, 0.247193992, -0.026481498, -0.245771497, 0.968966007) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.550071657, -1.8947413, 0.265888691, 0.996171296, 0.0874145105, -2.85592883e-08, -0.0847016796, 0.965256095, 0.247193992, 0.0216083694, -0.24624756, 0.968966007) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0408529006, -0.90173918, -0.397100806, -0.998317897, -0.0197093375, 0.0545257293, -1.07940286e-06, -0.940440238, -0.339959234, 0.057978563, -0.339387476, 0.938858151) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		moter11.C0 = clerp(moter11.C0, CFrame.new(4.35009667e-07, -1.70000923, -0.440009385, -7.15253861e-07, 1.00000238, -4.00462142e-07, -8.94920049e-08, -4.19085779e-07, -1.00000048, -1.00000775, -1.67634425e-07, 1.49047537e-07) * CFrame.new(0, 0, -0.2) * CFrame.Angles(0, 0, 0), 0.2)
		moter22.C0 = clerp(moter22.C0, CFrame.new(6.73430179e-07, -1.70000923, -0.440007478, -7.15253861e-07, 1.00000238, -4.00462142e-07, -8.94920049e-08, -4.19085779e-07, -1.00000048, -1.00000775, -1.67634425e-07, 1.49047537e-07) * CFrame.new(0, 0, -0.2) * CFrame.Angles(0, 0, 0), 0.2)
	end
	Equipped = true
	attack = false
	Humanoid.WalkSpeed = 16
    Humanoid.JumpPower = 50
end
function UnGrow()
	attack = true	
	Humanoid.WalkSpeed = 0
    Humanoid.JumpPower = 0
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1.00000477, -1.86243341e-08, 5.47623017e-07, -1.86243341e-08, 1.00000095, -5.95550773e-08, 5.47623017e-07, -5.95550773e-08, 1.0000155) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-2.79363199e-08, 1.49999166, -8.93320333e-08, 1.00000477, -1.86243341e-08, 5.47623017e-07, -1.86243341e-08, 1.00000095, -5.95550773e-08, 5.47623017e-07, -5.95550773e-08, 1.0000155) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.673668444, 0.435290158, -0.722788334, 0.536786079, 0.841084778, -0.066647701, -0.232388347, 0.0714491755, -0.969995618, -0.811090291, 0.536171436, 0.233812392) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.389240593, 0.378996342, -0.70100826, 0.349858046, -0.925079823, -0.147754461, 6.53874986e-06, 0.157724127, -0.98748368, 0.936810493, 0.345479339, 0.0551873632) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.595964193, -1.99206531, 8.59767169e-07, 0.996594489, -0.0825358629, -5.49104527e-07, 0.0825356916, 0.996592581, 4.39727046e-08, 1.08443464e-06, -1.93659162e-07, 1.00000775) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.588883758, -1.99149966, 1.5298541e-06, 0.995464504, 0.0951597467, -5.45821536e-07, -0.0951595977, 0.995462537, 7.42143129e-08, 1.10121368e-06, -2.91106517e-08, 1.00000775) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.040852055, -0.901741803, -0.397103637, -0.998320282, -0.0197103322, 0.0545254387, 2.76922378e-08, -0.940441012, -0.339958638, 0.0579783879, -0.339389205, 0.93886584) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		moter11.C0 = clerp(moter11.C0, CFrame.new(-5.05206827e-08, -1.14691529e-05, -0.0400012247, -1.26287864e-06, 1.00000238, -3.81837765e-07, -2.99360181e-08, -4.00461374e-07, -1.00000048, -1.00000775, -7.15255965e-07, 8.94929144e-08) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.1)
		moter22.C0 = clerp(moter22.C0, CFrame.new(-5.05192261e-08, -7.65444656e-06, -0.0400012247, -1.26287864e-06, 1.00000238, -3.81837765e-07, -2.99360181e-08, -4.00461374e-07, -1.00000048, -1.00000775, -7.15255965e-07, 8.94929144e-08) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.1)
	end
	Equipped = false
	attack = false	
	Mesh11.Scale = Vector3.new(1,1,.2)
	Mesh22.Scale = Vector3.new(1,1,.2)
	Humanoid.WalkSpeed = 16
    Humanoid.JumpPower = 50
end
local sit = false
function Sit()
attack = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
	sit = true
    repeat
		swait()
		PlayAnimationFromTable({
         CFrame.new(1.69604743e-06, -1.43528199, 0.728862047, 1, 5.52296115e-07, 1.27839633e-06, 5.27113002e-07, 0.699577332, -0.714556873, -1.28898409e-06, 0.714556873, 0.699577332) * CFrame.new(0, -.5, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-4.64081381e-07, 1.52580237, -0.285273314, 1, -1.42799067e-07, -5.2899793e-07, 3.78271409e-07, 0.878382623, 0.477957785, 3.96411906e-07, -0.477957785, 0.878382623) * CFrame.new(0, 0, 0 - .05 * math.cos(sine/40)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/40)), 0, 0), 
         CFrame.new(1.46778834, 0.0767632127, 0.523110628, 0.996532857, -0.0830259472, 0.00537879812, 0.0582044311, 0.74188441, 0.667996943, -0.0594515167, -0.665367842, 0.744144678) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.61392498, 0.0173828304, 0.494288146, 0.983467758, 0.179145977, -0.0264174361, -0.113512687, 0.723559499, 0.680864573, 0.141088739, -0.666609645, 0.731932819) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.612561047, -1.79201007, -0.711896241, 0.990771592, -0.135542244, -2.35092532e-08, 0.0971279591, 0.709976196, -0.697496295, 0.0945401117, 0.69105953, 0.716589153) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.615904689, -1.886204, -0.599608064, 0.991551578, 0.129713446, 6.62386412e-08, -0.0986734331, 0.754276872, -0.649099469, -0.0841969773, 0.643615603, 0.760703564) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
	until attack == false
end
function Sit2()
attack = true	
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
	sit = true
	repeat
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.0790518373, -1.28211284, -0.364974797, 1, -9.19981517e-07, 1.01839339e-06, 4.712426e-07, 0.927110493, 0.374788225, -1.28896136e-06, -0.374788225, 0.927110493) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0790522769, 1.41239452, 0.0392460488, 1, 9.46696446e-07, -9.93475055e-07, -9.19947979e-07, 0.999646187, 0.0265871882, 1.01829437e-06, -0.0265878141, 0.999649346) * CFrame.new(0, 0, 0 - .05 * math.cos(sine/40)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/40)), 0, 0), 
         CFrame.new(1.09309757, 0.19830294, -0.861271143, 0.76847899, 0.336144269, 0.544469535, 0.239813626, 0.637579441, -0.732107878, -0.593236446, 0.693180799, 0.409354448) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.881041527, 0.313548326, -0.857817411, 0.679015219, -0.402120054, -0.614196837, -0.27513656, 0.636264682, -0.720740676, 0.68061614, 0.658381879, 0.321395457) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.735003531, -0.977018833, -1.17779481, 0.989697278, -0.143176422, -4.26077889e-07, -0.0562922768, -0.389113575, -0.919468403, 0.131646067, 0.909995139, -0.393164426) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.620305955, -0.990102291, -1.11360347, 0.980935276, 0.194335416, -1.13580725e-07, 0.0785024986, -0.396252751, -0.914779246, -0.177774101, 0.897339165, -0.403954059) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.023572728, -0.897642493, -0.694501638, -0.998318791, -0.0538648441, 0.0214428138, -4.82425094e-07, -0.36984843, -0.92909205, 0.0579760745, -0.927529037, 0.369226247) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	until attack == false
end
function Lay()
attack = true	
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
	sit = true
	repeat
swait()
		PlayAnimationFromTable({
         CFrame.new(6.97562655e-07, -2.49086237, 0.514491558, 1, 2.49022128e-06, 1.06515031e-07, 1.49009182e-07, -0.0170706473, -0.999854326, -2.48803985e-06, 0.999854326, -0.0170706473) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-3.81469727e-06, 1.54988444, -0.488658965, 1, 0, 0, 0, 0.760723472, 0.649079561, 0, -0.649079561, 0.760723472) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.978226185, 1.41540897, -0.0241625831, -0.921600401, 0.388083637, -0.00662594242, -0.388083637, -0.921040535, 0.0327988714, 0.00662594289, 0.0327988714, 0.999440074) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.629825056, 1.48883736, -0.0254204087, -0.868431687, -0.495736629, 0.00846395083, 0.495736569, -0.867887318, 0.0318913534, -0.00846395455, 0.0318913534, 0.999455571) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.607347906, -1.98621023, 7.49884975e-06, 0.991857767, -0.127426982, 1.05466569e-08, 0.127428085, 0.991847992, -5.77419996e-08, 3.02679837e-09, -5.21540642e-08, 1.00000489) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.638346255, -1.97656441, 5.13180066e-06, 0.985966563, 0.166942507, -4.22199964e-09, -0.166942507, 0.985966861, 7.63684511e-08, 1.72294676e-08, -6.33299351e-08, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0436509028, -0.893161714, -0.348786354, -0.998317599, -0.0170024987, 0.0554260015, -1.64471567e-06, -0.956021428, -0.293299288, 0.0579751432, -0.292805821, 0.954413235) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	until attack == false
end
function ChangeGender()
if Gender == 1 then
Gender = 2
faic.Transparency = 0
Head.face.Transparency = 1
Hair.Transparency = 1
Hai.Transparency = 0	
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=138079095", Torso, 2, 1)
Effects.Sphere.Create(BrickColor.new("White"), Torso.CFrame, 22, 22, 22, 1.5, 1.5, 1.5, 0.06)
elseif Gender == 2 then
Gender = 1
faic.Transparency = 1
Head.face.Transparency = 0
Hair.Transparency = 0
Hai.Transparency = 1	
	CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=138079095", Torso, 2, 1)
Effects.Sphere.Create(BrickColor.new("White"), Torso.CFrame, 22, 22, 22, 1.5, 1.5, 1.5, 0.06)

	end
end

Mouse.Button1Down:connect(function()
	if attack == false and Equipped == true and attacktype == 1 then
		attacktype = 2
		attackone()
elseif attack == false and Equipped == true and attacktype == 2 then
		attacktype = 3
		attacktwo()
elseif attack == false and Equipped == true and attacktype == 3 then
		attacktype = 4
		attackthree()
elseif attack == false and Equipped == true and attacktype == 4 then
		attacktype = 1
		attackfour()
		
	end
end)

Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'p' and oml == false and Equipped == false then
	OwO()
elseif attack == false and k == 'p' and oml == true and Equipped == false then
	UwU()
elseif attack == false and k == 'f' and oml == false and Equipped == false then
	Grow()
elseif attack == false and k == 'f' and oml == false and Equipped == true then
	UnGrow()
elseif attack == false and k == 'z' and sit == false and Equipped == false then
	Sit()
elseif attack == false and k == 'x' and sit == false and Equipped == false then
	Sit2()
elseif attack == false and k == 'c' and sit == false and Equipped == false then
	Lay()
elseif attack == false and k == 'u' and oml == false then
	ChangeGender()
elseif attack == false and k == 'u' and oml == true and hide == true then
hide = false
elseif attack == false and k == 'u' and oml == true and hide == false then
hide = true
elseif sit == true and k == 'w' then
	attack = false
	sit = false
	Humanoid.WalkSpeed = 16
    Humanoid.JumpPower = 50
	end
end)

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
         CFrame.new(1.01370845e-09, -0.0579841509, 0.0354947485, 1, 2.14186824e-09, 2.84789614e-08, -3.34760534e-22, 0.99718374, -0.0749969855, -2.85593913e-08, 0.0749969855, 0.99718374) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.46643245, 0.137852728, 1, 0, 0, 0, 0.971624672, -0.236527592, 0, 0.236527592, 0.971624672) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.888026, 0.217234477, 0.113624901, 0.3044478, -0.950029612, -0.0689616352, 0.952528179, 0.303649008, 0.022039257, 2.21282244e-06, -0.0723977461, 0.997377992) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.95959938, 0.259861857, 0.0286621489, 0.246233836, 0.968699038, 0.03164839, -0.968770504, 0.245001525, 0.0382811762, 0.0293290913, -0.0400860459, 0.998765767) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.600038111, -1.9639281, 0.227336437, 0.995967388, -0.0898117349, -6.67547972e-09, 0.0877366737, 0.972947001, 0.213738203, -0.0191962589, -0.212874219, 0.976895988) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.555179954, -1.95935965, 0.232443243, 0.997332275, 0.0730128586, -2.22644871e-08, -0.0707116276, 0.965898633, 0.24908483, 0.0181863643, -0.248419806, 0.968483329) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0408530682, -0.901739359, -0.397098035, -0.998317897, -0.0197112467, 0.0545246378, 1.19302422e-06, -0.940440774, -0.339957625, 0.057978183, -0.339385748, 0.938858747) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
		PlayAnimationFromTable({
         CFrame.new(1.2011262e-09, -0.0521957316, 0.0420571342, 1, -5.1775908e-09, 2.8086145e-08, -3.34760534e-22, 0.983429372, 0.181292042, -2.85593913e-08, -0.181292057, 0.983429372) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.47546494, 0.010504663, 1, 0, 0, 0, 0.997287989, 0.0736272484, 0, -0.0736272633, 0.997287989) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.9516561, 0.720944285, 0.106900819, -0.203118429, -0.976722777, -0.0689622685, 0.978505135, -0.20504424, 0.0220260769, -0.0356537104, -0.0630059987, 0.997376323) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.93297589, 0.80569613, 0.00690014288, -0.271988571, 0.961781144, 0.0316498391, -0.961229265, -0.273091227, 0.0382755399, 0.0454564095, -0.0200120937, 0.998765826) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.599394143, -1.94108737, 0.298547417, 0.995958805, -0.0894052088, -0.00852916483, 0.0877354667, 0.94824487, 0.30518049, -0.0191969611, -0.304695427, 0.952257156) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.554453075, -1.92698359, 0.318446726, 0.997330904, 0.0725850239, 0.0079038851, -0.0707127452, 0.933255136, 0.35218358, 0.0181868859, -0.351802438, 0.935897708) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0408500209, -0.901736438, -0.39710471, -0.998317897, -0.0197122935, 0.0545241795, 2.06474215e-06, -0.940439284, -0.339962095, 0.0579781048, -0.339390099, 0.938857377) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
		if hide == false then
		PlayAnimationFromTable({
         CFrame.new(-0, -0, -0, 1, 1.03190221e-29, 0, 1.03190221e-29, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.54783905e-29, 1.49998617, 0, 1, 1.03190221e-29, 0, 1.03190221e-29, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0 - .05 * math.cos(sine/40)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/40)), 0, 0), 
         CFrame.new(1.57029903, 0.0172165185, -1.15576862e-12, 0.995367944, -0.0961480886, 6.02184969e-13, 0.0961474329, 0.995368361, 1.40908444e-13, -7.46069873e-13, -8.65973959e-14, 1) * CFrame.new(0- .05 * math.cos(sine/40), 0- .05 * math.cos(sine/40),0) * CFrame.Angles(0, 0, math.rad(0 - 4 * math.cos(sine/40))), 
         CFrame.new(-1.52293086, 0.0375656337, 1.65236206e-14, 0.995637357, 0.0933040306, 3.19744231e-14, -0.0933040306, 0.995637357, -1.77948345e-15, -1.0658141e-14, -3.10862447e-15, 1) * CFrame.new(0+ .05 * math.cos(sine/40), 0- .05 * math.cos(sine/40),0) * CFrame.Angles(0, 0, math.rad(0 + 4 * math.cos(sine/40))), 
         CFrame.new(0.547257543, -1.99702907, -4.61344965e-14, 0.998036981, -0.0626251176, 1.20792265e-13, 0.0626251176, 0.998036981, 1.08825785e-14, -1.26121336e-13, -3.44169138e-15, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.573433399, -1.9928602, 6.8055926e-14, 0.995312989, 0.096706368, 1.75859327e-13, -0.0967063606, 0.995312989, -1.67173201e-14, -1.77635684e-13, -4.4408921e-16, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.040851742, -0.901734829, -0.397101343, -0.998320162, -0.0197100546, 0.054525461, 1.46991201e-08, -0.940442979, -0.339954287, 0.0579783097, -0.339385033, 0.938867211) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		else
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 1, -2.5243549e-29, 2.66246708e-44, -2.5243549e-29, 1, 5.04870979e-29, 2.1019477e-44, 5.04870979e-29, 1) * CFrame.new(0, 0- 0.06 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-3.78654649e-29, 1.49998605, 0.00317455269, 1, -2.5243549e-29, 1.23259516e-31, -2.5243549e-29, 0.999984622, -0.00554055534, 2.85870381e-32, 0.00554055534, 0.999984622) * CFrame.new(0, 0, 0 + .05 * math.cos(sine/40)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/40)), 0, 0),
         CFrame.new(0.228972659, 0.397032291, -0.798773289, 0.551704168, 0.833213151, 0.0371271409, -0.0397270136, 0.0707170293, -0.996705115, -0.833093286, 0.54841131, 0.0721159503) * CFrame.new(0, 0+ 0.03 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.536018014, -0.208522171, -0.676588058, 0.402905941, -0.594119728, -0.696195781, 0.0290909968, 0.768597841, -0.639070511, 0.914778888, 0.237232298, 0.326956213) * CFrame.new(0, 0+ 0.03 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.547258139, -1.99702907, -4.54093211e-14, 0.9980371, -0.0626251474, 1.23232384e-13, 0.0626251474, 0.9980371, 1.10316876e-14, -1.23681352e-13, -3.29258859e-15, 1) * CFrame.new(0, 0+ 0.06 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.573435128, -1.99286008, 6.7840407e-14, 0.995312929, 0.0967064127, 1.76353276e-13, -0.0967064127, 0.995312929, -1.67030052e-14, -1.77141979e-13, -4.29773506e-16, 1) * CFrame.new(0, 0+ 0.06 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		end
		end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
		PlayAnimationFromTable({		
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0- .08 * math.cos((sine) / 2), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0595112406, 1.55331731, -0.0425721854, 0.999631822, -0.0248252042, -0.010953242, 0.0262294486, 0.987443328, 0.155781403, 0.00694842171, -0.156010598, 0.987731278) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.54809988, 0.041232653, 1.35168499e-08, 0.996376455, -0.0850530341, -3.41060513e-13, 0.0850530341, 0.996376455, 4.47034836e-07, 2.78823862e-08, 3.26637689e-07, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 4)), 0, 0), 
         CFrame.new(-1.53598976, 0.0413191095, -1.86092848e-06, 0.995650649, 0.0931596532, -2.61508148e-07, -0.0931649953, 0.995651186, -1.00695124e-05, -7.49969331e-07, 1.08217946e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 4)), 0, 0), 
         CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 4)), 0, 0), 
         CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 4)), 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0408512428, -0.90174067, -0.397101641, -0.998320162, -0.0197100546, 0.054525461, 1.46991201e-08, -0.940442979, -0.339954287, 0.0579783097, -0.339385033, 0.938867211) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
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
										ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new(.2,.2,.2))
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
							ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new(.2,.2,.2))
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
-- I hate you. ~Someone