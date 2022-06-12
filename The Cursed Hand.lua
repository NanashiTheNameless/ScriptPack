--[[Terror
---[[
             A
          A     A
         A   C   A
          A     A
             A
Dear loggers, if you log this, just say at least I made this.
--]]
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
script.Parent = Player.PlayerGui
script.Name = math.random(100, 100000)..[[ ]]..math.random(100000, 1000000000)
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
local hobb = 0
local rest = 0
local looprevive = false
local mode = false
local revive = false
local Create = LoadLibrary("RbxUtility").Create
--192892790
local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://608726256"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 1
sick:Play()
local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}
Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newWeld = function(part0, part1, c0, c1)
	local w = Create('Weld'){
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

local RW = newWeld(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newWeld(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newWeld(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newWeld(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
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
--remove these lines if u want it purple--------
if Part.BrickColor == BrickColor.new("Mulberry") then
Part.BrickColor = BrickColor.new("Crimson")
end
if Part.BrickColor == BrickColor.new("Royal purple") then
Part.BrickColor = BrickColor.new("Bright red")
end
if Part.BrickColor == BrickColor.new("Alder") or Part.BrickColor == BrickColor.new("Dark indigo") then
Part.BrickColor = BrickColor.new("Really red")
end
------------------------------------------------
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

--
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
if Object:IsA("BasePart") then
Object.CanCollide = false
Object.Anchored = false
end
	return Object
end


Model = New("Model",Character,"Model",{})






W3d = New("Part",Model,"W3d",{BrickColor = BrickColor.new("Pastel brown"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-45.8999138, 3.90000486, -17.719944, -1, 0, 0, 0, 1, 0, 0, 0, -1),LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,Color = Color3.new(1, 0.8, 0.6),})
motr=Instance.new("Weld", W3d)
motr.Part0 = RootPart
motr.Part1 = W3d
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-43.5627708, -0.527272701, -16.763485, -0.353563875, 0.353564322, 0.86601764, 0.704096556, -0.508921504, 0.495231897, 0.615831017, 0.784855664, -0.069007121),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.353551924, 0.704116821, 0.615808904, 0.353553027, -0.508905053, 0.78486675, 0.866026163, 0.495212287, -0.0690182671),C1 = CFrame.new(-2.33669662, -4.42667389, -0.956436157, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-46.9684677, 5.74980545, -17.7297401, 2.11411384e-006, -0.500016153, -0.866017044, -0.00296068634, 0.866015851, -0.500015497, 0.999999821, 0.0025652044, -0.0014785839),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.499999881, 0.866021812, 0.00254091783, -0.866025507, -0.499997735, -0.0014669993),C1 = CFrame.new(1.06888199, 1.85041738, 0.00999069214, -1, -2.98023224e-008, 2.60770321e-008, 2.98023224e-008, 1, 7.07805157e-008, 2.60770321e-008, -7.07805157e-008, -0.99999994),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-49.4748611, 7.26095104, -17.2560501, 0.500008345, -0.500008643, -0.70709604, -0.397622943, 0.592796087, -0.700354755, 0.769346595, 0.631340504, 0.0975879356),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0.499999046, -0.397610068, 0.769355118, -0.499998659, 0.59281975, 0.631320894, -0.707108498, -0.700336397, 0.0976048186),C1 = CFrame.new(3.5752449, 3.36161518, -0.463651657, -1, -2.98023224e-008, 3.7252903e-008, 0, 1.00000012, 1.34110451e-007, 7.07805157e-008, -1.2665987e-007, -1),})
FingerTop = New("Part",Model,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-42.5310898, 7.18954229, -17.476017, -0.4999924, 0.499989778, -0.707120717, -0.397638202, 0.592815518, 0.700329721, 0.769349396, 0.631337166, -0.0975880176),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.500000775, -0.39760682, 0.769355655, 0.499998838, 0.592820764, 0.631319702, -0.707107067, 0.700337291, -0.0976078883),C1 = CFrame.new(-3.36851883, 3.29007363, -0.243701935, -1.00000012, -8.94069672e-008, -7.4505806e-009, 8.94069672e-008, 1.00000024, 2.98023224e-008, 5.96046448e-008, -6.70552254e-008, -1.00000012),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-43.7007256, 5.97806978, -17.8193092, -5.52110805e-007, 0.707094669, -0.707120299, 0.138006955, 0.700356483, 0.700330734, 0.990435541, -0.0975873396, -0.0975841805),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, 0.707107008, 0.700338006, -0.0976040289, -0.70710665, 0.700338244, -0.0976040587),C1 = CFrame.new(-2.19886398, 2.07861829, 0.0995597839, -1.00000012, -5.96046448e-008, 8.94069672e-008, 2.98023224e-008, 1.00000024, -6.70552254e-008, 1.71363354e-007, 2.98023224e-008, -1.00000012),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-43.6924438, 5.97760868, -17.8226585, -0.707120717, 0.707094908, 6.94325763e-007, 0.700330734, 0.700357139, -0.138008326, -0.0975849852, -0.097588487, -0.990435481),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.707106948, 0.700337946, -0.0976049826, 0.707106769, 0.700338125, -0.0976050124, -5.26831645e-009, -0.138034299, -0.990427434),C1 = CFrame.new(-2.20714569, 2.07815671, 0.102907181, -1.00000048, -3.27825546e-007, 2.75671482e-007, 1.78813934e-007, 1.00000083, -1.1920929e-007, 3.7252903e-007, 5.21540642e-008, -1.00000024),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-43.6905251, 5.97398853, -17.8187504, -8.42193003e-007, 0.707095563, -0.707120597, 0.138007015, 0.700357556, 0.70033133, 0.990435898, -0.0975876898, -0.0975839794),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, 0.707107008, 0.700338006, -0.0976040289, -0.70710665, 0.700338244, -0.0976040587),C1 = CFrame.new(-2.20906448, 2.0745368, 0.0989990234, -1.00000095, -4.17232513e-007, 4.32133675e-007, 3.57627869e-007, 1.00000143, -1.71363354e-007, 5.58793545e-007, 9.68575478e-008, -1.00000048),})
FingerBottem = New("Part",Model,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-43.4052277, 6.25940609, -17.8585224, -1.00852344e-006, 0.707095921, -0.707120597, 0.13800703, 0.700358093, 0.700331628, 0.990436137, -0.0975879133, -0.0975839049),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, 0.707107008, 0.700338006, -0.0976040289, -0.70710665, 0.700338244, -0.0976040587),C1 = CFrame.new(-2.49436569, 2.35994673, 0.138778687, -1.00000119, -6.55651093e-007, 6.33299351e-007, 5.36441803e-007, 1.00000203, -2.38418579e-007, 7.67409801e-007, 1.71363354e-007, -1.00000072),})
Claw = New("Part",Model,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-42.0461273, 7.68310261, -16.8906517, -0.499990582, -0.707120895, 0.499993771, -0.592813015, 0.70033145, 0.397643626, -0.631340444, -0.097583726, -0.769348025),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.499999046, -0.592817068, -0.63132304, -0.707106888, 0.700338066, -0.0976038799, 0.500000834, 0.397611022, -0.76935339),C1 = CFrame.new(-3.85348892, 3.78363895, -0.829051971, -1.00000131, -7.74860382e-007, 6.48200512e-007, 5.96046448e-007, 1.00000215, -2.4586916e-007, 7.82310963e-007, 1.78813934e-007, -1.00000072),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-43.694458, 5.97515869, -17.8189259, -2.25171834e-006, 0.707098901, -0.707121551, 0.138007164, 0.700361967, 0.700333714, 0.990437508, -0.0975893661, -0.0975833088),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, 0.707107008, 0.700338006, -0.0976040289, -0.70710665, 0.700338244, -0.0976040587),C1 = CFrame.new(-2.20513153, 2.07570672, 0.0991744995, -1.00000393, -1.96695328e-006, 2.07126141e-006, 1.75833702e-006, 1.0000062, -6.78002834e-007, 2.22027302e-006, 5.81145287e-007, -1.00000215),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-42.3675652, 7.37887764, -17.2725048, -0.499989569, 0.499989986, -0.707122386, -0.397640169, 0.592815518, 0.70032829, 0.769349992, 0.631336749, -0.0975854322),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.500002146, -0.397608101, 0.769354165, 0.499998719, 0.592818797, 0.631321788, -0.707106173, 0.700338304, -0.0976071283),C1 = CFrame.new(-3.53204727, 3.47941089, -0.447208405, -1, 3.15902889e-006, -3.66565837e-006, 3.15902548e-006, 1, 9.9090505e-007, 3.66566155e-006, 9.90893227e-007, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-42.3711052, 7.38023281, -17.2741432, -0.49999252, 0.499991119, -0.707123101, -0.397642761, 0.59281832, 0.700330317, 0.769352078, 0.631336749, -0.097584866),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.500002146, -0.397608101, 0.769354165, 0.499998719, 0.592818797, 0.631321788, -0.707106173, 0.700338304, -0.0976071283),C1 = CFrame.new(-3.52850723, 3.48076558, -0.445569992, -1.0000025, 1.81794167e-006, -2.20537186e-006, 4.41074371e-006, 1.00000405, 5.28991222e-007, 5.11854887e-006, 1.43051147e-006, -1.00000155),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-42.3768005, 7.38353539, -17.2762299, -0.49999544, 0.499992192, -0.707123756, -0.397645414, 0.592821121, 0.700332403, 0.769354284, 0.631336808, -0.0975843221),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.500002146, -0.397608101, 0.769354165, 0.499998719, 0.592818797, 0.631321788, -0.707106173, 0.700338304, -0.0976071283),C1 = CFrame.new(-3.52281189, 3.48406863, -0.443483353, -1.00000501, 4.76837158e-007, -7.22706318e-007, 5.66244125e-006, 1.00000823, 8.19563866e-008, 6.54906034e-006, 1.87009573e-006, -1.00000322),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-42.3717918, 7.38247108, -17.274332, -0.707125247, 0.499992967, 0.499982744, 0.700326085, 0.592817903, 0.397640616, -0.0975811481, 0.631332278, -0.769354165),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.707105935, 0.70033896, -0.0976049826, 0.500001192, 0.592818379, 0.631320298, 0.500000179, 0.397607654, -0.769355595),C1 = CFrame.new(-3.52782059, 3.48300409, -0.445381165, -1, 6.9737107e-006, -8.03164949e-006, 6.97369114e-006, 1, 2.33944638e-006, 8.03166586e-006, 2.33939022e-006, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-48.1598091, 5.84572172, -17.8008995, 5.30588522e-006, -0.707127273, -0.70709151, 0.138009489, 0.700327218, -0.700365126, 0.990436614, -0.0975796282, 0.0975959599),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, -0.707107008, 0.700338006, -0.0976040289, -0.70710665, -0.700338244, 0.0976040587),C1 = CFrame.new(2.26021957, 1.94635296, 0.081155777, -1.00000274, 5.7220459e-006, -6.63101673e-006, 8.22544098e-006, 1.00000417, 1.93715096e-006, 9.43988562e-006, 2.74181366e-006, -1.00000155),})
Claw = New("Part",Model,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.7233391, 7.63774967, -16.8843365, 0.500011206, -0.70709455, -0.500018716, -0.592795551, -0.700368524, 0.397620201, -0.63134712, 0.0975982994, -0.769343734),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0.499999106, -0.592818141, -0.631322205, -0.707106948, -0.700337946, 0.0976049826, -0.500000834, 0.39760986, -0.769354105),C1 = CFrame.new(3.82371902, 3.7384274, -0.835353851, -1.00000536, 4.55975533e-006, -5.23030758e-006, 9.38773155e-006, 1.00000834, 1.52736902e-006, 1.08331442e-005, 3.15904617e-006, -1.00000298),})
FingerBottem = New("Part",Model,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-48.4468727, 6.13230991, -17.8407955, 1.02015847e-005, -0.7071293, -0.70708555, 0.138010487, 0.70032239, -0.700363755, 0.990434945, -0.0975780338, 0.097598359),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, -0.707107008, 0.700338006, -0.0976040289, -0.70710665, -0.700338244, 0.0976040587),C1 = CFrame.new(2.54727936, 2.23294425, 0.121059418, -1, 1.06691887e-005, -1.22635192e-005, 1.0669145e-005, 1, 3.53157111e-006, 1.22635565e-005, 3.53144037e-006, -1),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-48.1587181, 5.84976196, -17.8014297, 1.02008653e-005, -0.707129419, -0.70708555, 0.138010472, 0.700322449, -0.700363696, 0.990434885, -0.0975780487, 0.0975983515),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, -0.707107008, 0.700338006, -0.0976040289, -0.70710665, -0.700338244, 0.0976040587),C1 = CFrame.new(2.25912857, 1.95039296, 0.0816860199, -1.00000012, 1.07288361e-005, -1.22711062e-005, 1.06394291e-005, 1, 3.51667404e-006, 1.22487545e-005, 3.54647636e-006, -0.99999994),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-48.1628532, 5.84740448, -17.8045082, -0.707086086, -0.707129538, -1.02053527e-005, -0.700363338, 0.700322628, -0.138011783, 0.0975992605, -0.0975790471, -0.990434587),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.707106948, -0.700337946, 0.0976049826, -0.707106769, 0.700338125, -0.0976050124, 5.26831645e-009, -0.138034299, -0.990427434),C1 = CFrame.new(2.2632637, 1.94803572, 0.0847644806, -1.00000048, 1.0818243e-005, -1.2293458e-005, 1.05500221e-005, 1, 3.4943223e-006, 1.22264028e-005, 3.56137753e-006, -0.999999821),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-48.1628609, 5.83967447, -17.8000221, 1.02221557e-005, -0.707130015, -0.707086027, 0.138010442, 0.700322688, -0.700363815, 0.990434647, -0.0975781009, 0.0975983515),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, -0.707107008, 0.700338006, -0.0976040289, -0.70710665, -0.700338244, 0.0976040587),C1 = CFrame.new(2.26327133, 1.94030571, 0.0802783966, -1.00000083, 1.07884407e-005, -1.23009086e-005, 1.05500221e-005, 1.00000024, 3.4570694e-006, 1.22115016e-005, 3.61353159e-006, -0.999999702),})
FingerTop = New("Part",Model,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-49.3153687, 7.0681076, -17.4590855, 0.500022769, -0.500010908, -0.707085848, -0.397615194, 0.592790008, -0.70036447, 0.769341707, 0.631344557, 0.097596392),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0.499999046, -0.397610068, 0.769355118, -0.500001729, 0.59281677, 0.631321371, -0.707106352, -0.70033896, 0.0976020992),C1 = CFrame.new(3.41575623, 3.16876435, -0.260622025, -1.00000107, 1.090765e-005, -1.23307109e-005, 1.04606152e-005, 1.00000024, 3.44216824e-006, 1.21966004e-005, 3.64333391e-006, -0.999999583),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-49.4782448, 7.2568903, -17.256752, -0.707087636, -0.500008166, -0.500023127, -0.700362623, 0.592791975, 0.39761591, 0.0975983366, 0.631345093, -0.76934129),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.707108021, -0.700336993, 0.0976039991, -0.499998957, 0.592818618, 0.631321788, -0.499999434, 0.397610754, -0.769354522),C1 = CFrame.new(3.57862854, 3.35755515, -0.462949753, -1.00000119, 1.07884407e-005, -1.23381615e-005, 1.05500221e-005, 1.00000036, 3.40491533e-006, 1.22338533e-005, 3.63588333e-006, -0.999999821),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-49.4797096, 7.25177002, -17.2578106, 0.500024259, -0.500009179, -0.707089722, -0.397615761, 0.592793405, -0.700362325, 0.769341707, 0.631343663, 0.0975991189),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0.499999046, -0.397610068, 0.769355118, -0.499998659, 0.59281975, 0.631320894, -0.707108498, -0.700336397, 0.0976048186),C1 = CFrame.new(3.58009338, 3.3524344, -0.461891174, -1.0000037, 1.10268593e-005, -1.2435019e-005, 1.02818012e-005, 1.00000095, 3.19629908e-006, 1.19954348e-005, 3.90410423e-006, -0.999999344),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-49.4762535, 7.25768757, -17.2570343, 0.50002569, -0.500010431, -0.707091331, -0.397616386, 0.592793703, -0.700362742, 0.769341469, 0.631343067, 0.0975991562),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0.499999046, -0.397610068, 0.769355118, -0.499998659, 0.59281975, 0.631320894, -0.707108498, -0.700336397, 0.0976048186),C1 = CFrame.new(3.57663727, 3.35835218, -0.462667465, -1.0000062, 1.12652779e-005, -1.26510859e-005, 1.01029873e-005, 1.00000167, 2.87592411e-006, 1.18538737e-005, 4.17232513e-006, -0.999998808),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-44.4891891, 0.978224754, -17.7153168, 1.06555899e-005, 0.500031948, 0.866017878, 0.138009846, -0.857729793, 0.495242804, 0.990433097, 0.119514406, -0.0690175369),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, 0.499999821, -0.857735693, 0.119540073, 0.866025507, 0.495213598, -0.0690164492),C1 = CFrame.new(-1.41030884, -2.9211905, -0.00456428528, -1.00000858, 1.14440918e-005, -1.28298998e-005, 9.89437103e-006, 1.00000238, 2.55554914e-006, 1.16825104e-005, 4.50760126e-006, -0.999998271),})
Claw = New("Part",Model,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-43.4054718, -0.840126991, -16.2956963, -0.353578418, 0.8660115, 0.353564948, 0.508913517, 0.495241046, -0.70409584, -0.784854591, -0.0690190643, -0.615831077),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.353553176, 0.508904219, -0.784867346, 0.866025507, 0.495213479, -0.0690178275, 0.353553385, -0.704116583, -0.615808249),C1 = CFrame.new(-2.49398804, -4.73951721, -1.42423058, -1, 9.56649728e-006, -1.15780313e-005, 9.5664418e-006, 1, 4.76104515e-006, 1.15780767e-005, 4.76093419e-006, -1),})
FingerBottem = New("Part",Model,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-44.2867393, 0.627879858, -17.6665001, 9.80359346e-006, 0.500027359, 0.866013348, 0.138011485, -0.857728243, 0.495241195, 0.99043411, 0.119515151, -0.0690176487),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, 0.499999821, -0.857735693, 0.119540073, 0.866025507, 0.495213598, -0.0690164492),C1 = CFrame.new(-1.61275101, -3.27153659, -0.0533924103, -1.00000238, 9.86456871e-006, -1.17495656e-005, 9.29832458e-006, 1.00000048, 4.47779894e-006, 1.14142895e-005, 5.06639481e-006, -0.999999404),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-44.4912415, 0.974675179, -17.714819, 9.8788305e-006, 0.500028849, 0.866015136, 0.138011321, -0.857729018, 0.495241135, 0.990433514, 0.119515374, -0.0690175593),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, 0.499999821, -0.857735693, 0.119540073, 0.866025507, 0.495213598, -0.0690164492),C1 = CFrame.new(-1.40825653, -2.92473984, -0.00506401062, -1.00000465, 1.02818012e-005, -1.18836761e-005, 8.88109207e-006, 1.00000107, 4.2244792e-006, 1.12205744e-005, 5.28991222e-006, -0.999998808),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-44.4867363, 0.97496891, -17.7182655, 0.866016567, 0.500031114, -1.07791639e-005, 0.495241553, -0.857729137, -0.138012707, -0.0690190718, 0.119516537, -0.99043268),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0.86602515, 0.495214105, -0.0690180138, 0.500000536, -0.857735097, 0.119541019, -7.73483976e-007, -0.138034567, -0.990427434),C1 = CFrame.new(-1.41276169, -2.92444658, -0.00161743164, -1.00000703, 1.06990337e-005, -1.20699406e-005, 8.40425491e-006, 1.00000167, 3.93390656e-006, 1.10715628e-005, 5.54323196e-006, -0.999998212),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-44.4845772, 0.983336687, -17.7160225, 1.00933012e-005, 0.500031888, 0.866018832, 0.138010934, -0.857730389, 0.495241046, 0.990432262, 0.119515799, -0.0690174326),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.138032958, 0.990427613, 0.499999821, -0.857735693, 0.119540073, 0.866025507, 0.495213598, -0.0690164492),C1 = CFrame.new(-1.41492081, -2.91607881, -0.00385856628, -1.00000942, 1.10268593e-005, -1.2204051e-005, 8.13603401e-006, 1.00000215, 3.68058681e-006, 1.09001994e-005, 5.76674938e-006, -0.999997616),})
FingerTop = New("Part",Model,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-43.6740112, -0.361080647, -17.0165825, -0.353563607, 0.353577822, 0.866012275, 0.704096317, -0.508914232, 0.495239645, 0.615831375, 0.784854412, -0.0690192431),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.353552818, 0.704115629, 0.615809679, 0.353554159, -0.508905232, 0.784866214, 0.866025329, 0.495213747, -0.069018133),C1 = CFrame.new(-2.22546005, -4.26048756, -0.703334808, -1, 7.74857654e-006, -1.07286633e-005, 7.74851196e-006, 1, 5.99037276e-006, 1.07287096e-005, 5.99028954e-006, -1),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-43.5578575, -0.523730755, -16.7652798, 0.866015077, 0.35357666, 0.353564352, 0.495238096, -0.508914828, -0.704097688, -0.069018051, 0.784855008, -0.615829587),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0.866026282, 0.495212168, -0.0690170228, 0.353551924, -0.508905232, 0.784867167, 0.353552639, -0.704116702, -0.615808547),C1 = CFrame.new(-2.34160995, -4.42313194, -0.954639435, -1.00000238, 8.01682472e-006, -1.08778477e-005, 7.48038292e-006, 1.00000048, 5.7220459e-006, 1.0535121e-005, 6.25103712e-006, -0.999999344),})
Handle2 = New("Part",Model,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-43.555191, -0.519627094, -16.7676182, -0.353564531, 0.353578836, 0.866016686, 0.704098105, -0.508915186, 0.495238185, 0.615829289, 0.784854233, -0.0690192729),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.353551924, 0.704116821, 0.615808904, 0.353553027, -0.508905053, 0.78486675, 0.866026163, 0.495212287, -0.0690182671),C1 = CFrame.new(-2.34427643, -4.41902876, -0.952301025, -1.00000453, 8.31484795e-006, -1.10343099e-005, 7.15255737e-006, 1.00000095, 5.4910779e-006, 1.04308128e-005, 6.47455454e-006, -0.999998689),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-43.5600204, -0.524017811, -16.765398, -0.353565454, 0.353579879, 0.866018534, 0.704098582, -0.508915722, 0.495238304, 0.615828753, 0.784853756, -0.0690192133),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -0.353551924, 0.704116821, 0.615808904, 0.353553027, -0.508905053, 0.78486675, 0.866026163, 0.495212287, -0.0690182671),C1 = CFrame.new(-2.33944702, -4.423419, -0.954521179, -1.00000679, 8.58306885e-006, -1.11684203e-005, 6.85453415e-006, 1.00000167, 5.2973628e-006, 1.03265047e-005, 6.64591789e-006, -0.999997973),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.68406868),CFrame = CFrame.new(-45.8577995, 2.09525537, -17.7473774, -1.34463171e-005, 1.00001001, 2.72000416e-005, 0.00295660039, 2.49450222e-005, -1.00000179, -0.999997139, -1.23142408e-005, -0.00295492099),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.0029349993, -0.999995768, 1, 0, 0, 0, -0.999995768, -0.0029349993),C1 = CFrame.new(-0.0417175293, -1.80413985, 0.0275287628, -1.00000918, 8.85128975e-006, -1.1280179e-005, 6.58631325e-006, 1.00000238, 5.16325235e-006, 1.02296472e-005, 6.82473183e-006, -0.999997258),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-45.2789841, 1.68435311, -17.7418442, 1.21943385e-005, 0.258842975, 0.965920389, -0.00295373099, -0.965919018, 0.258842587, 0.999999881, -0.00285621919, 0.000752773252),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.258818954, -0.96592176, -0.00283402577, 0.965925932, 0.258817822, 0.000759374525),C1 = CFrame.new(-0.62052536, -2.21505117, 0.021982193, -1, 6.28828866e-006, -1.00357729e-005, 6.28821817e-006, 1, 7.0259689e-006, 1.00358175e-005, 7.02590569e-006, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-43.6382713, 3.82252765, -17.7355537, -1.23371119e-005, 1.00000322, 2.49978966e-005, 0.00295397872, 2.4319037e-005, -1.00000012, -0.999999344, -1.20087689e-005, -0.00295349536),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 1, 0, 0, 0, -0.999995768, -0.00293399929),C1 = CFrame.new(-2.26127625, -0.0769147873, 0.015745163, -1.00000238, 6.64591789e-006, -1.01774931e-005, 5.96046448e-006, 1.00000072, 6.78002834e-006, 9.92417336e-006, 7.2568655e-006, -0.999999464),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-43.7107925, 3.25826311, -17.7372112, 1.24721864e-005, 0.965937972, 0.258795083, -0.00295423414, -0.258795172, 0.965933144, 0.999998868, -0.000775818422, 0.00284952484),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.965926111, -0.258817017, -0.000759372197, 0.25881815, 0.965921938, 0.00283402647),C1 = CFrame.new(-2.18874359, -0.641175747, 0.0173892975, -1.00000465, 6.97374344e-006, -1.03116035e-005, 5.60283661e-006, 1.00000143, 6.5267086e-006, 9.7900629e-006, 7.5250864e-006, -0.999998987),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-43.7144089, 4.39733887, -17.7338448, -1.2599723e-005, 0.965926707, 0.258845866, 0.0029544665, 0.258842289, -0.965921044, -0.999998391, 0.000752937049, -0.00285536121),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.965925872, 0.258817971, 0.000759374932, 0.258819103, -0.9659217, -0.00283402577),C1 = CFrame.new(-2.18515015, 0.497895956, 0.0140533447, -1.00000691, 7.27176666e-006, -1.04382634e-005, 5.30481339e-006, 1.00000191, 6.2957406e-006, 9.65595245e-006, 7.80820847e-006, -0.99999851),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-43.9330788, 2.72092104, -17.7387962, 1.27572393e-005, 0.866046906, 0.499982804, -0.00295472937, -0.499981165, 0.86603868, 0.999997973, -0.00148635136, 0.00255128019),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.866025269, -0.499998182, -0.00146700058, 0.500000298, 0.866021514, 0.00254091714),C1 = CFrame.new(-1.96644974, -1.17851186, 0.0189590454, -1.00000918, 7.62939453e-006, -1.05947256e-005, 4.97698784e-006, 1.00000262, 6.03497028e-006, 9.49203968e-006, 8.09878111e-006, -0.999998093),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-44.2905464, 5.39607239, -17.7308922, -1.15485936e-005, 0.707090139, 0.707124591, 0.00295239734, 0.707123578, -0.707089186, -0.999999881, 0.00207954366, -0.00209577242),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.707105756, 0.707104743, 0.00207465375, 0.707107782, -0.707102776, -0.00207464793),C1 = CFrame.new(-1.60903168, 1.49663591, 0.0111274719, -1, 4.58958266e-006, -9.39503389e-006, 4.58950399e-006, 1, 8.35960054e-006, 9.39507208e-006, 8.3595578e-006, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-45.8626633, 1.6111412, -17.7420483, -1.17210702e-005, 2.32711591e-005, -1.00000322, 0.00295268907, -0.99999994, -2.2530874e-005, -0.999999344, -0.00295212446, 1.13084589e-005),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0, -0.999995768, -0.00293399929, -1, 0, 0),C1 = CFrame.new(-0.0368461609, -2.28825188, 0.0221862793, -1.00000238, 4.91738319e-006, -9.56654549e-006, 4.17232513e-006, 1.00000048, 8.06897879e-006, 9.22381878e-006, 8.62777233e-006, -0.999999464),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-47.7811623, 2.72197032, -17.7387447, -1.1848696e-005, -0.866018236, -0.500023484, 0.00295292214, -0.500019908, 0.8660146, -0.999998868, -0.00146627415, 0.00256196293),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.866025269, -0.499998182, -0.00146700058, -0.500000298, 0.866021514, 0.00254091714),C1 = CFrame.new(1.88162994, -1.17739177, 0.0189170837, -1.00000465, 5.24520874e-006, -9.69320536e-006, 3.87430191e-006, 1.00000119, 7.83801079e-006, 9.06735659e-006, 8.88854265e-006, -0.999998987),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-48.0035324, 3.25930095, -17.7371597, -1.19538799e-005, -0.96592766, -0.258843303, 0.00295314007, -0.258839697, 0.965921581, -0.999998391, -0.000753343804, 0.00285392534),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.965926111, -0.258817017, -0.000759372197, -0.25881815, 0.965921938, 0.00283402647),C1 = CFrame.new(2.10399246, -0.640059233, 0.0173454285, -1.00000715, 5.54323196e-006, -9.79751348e-006, 3.63588333e-006, 1.00000179, 7.62194395e-006, 8.88854265e-006, 9.08970833e-006, -0.99999851),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-46.9716568, 1.9075315, -17.7411613, -1.20815912e-005, -0.499984086, -0.866046607, 0.00295335031, -0.866037965, 0.499982029, -0.999997854, -0.0025505987, 0.00148508733),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.499999881, -0.866021812, -0.00254091783, -0.866025507, 0.499997735, 0.0014669993),C1 = CFrame.new(1.07213974, -1.99184251, 0.0213088989, -1.00000954, 5.90085983e-006, -9.92417336e-006, 3.33786011e-006, 1.00000238, 7.41332769e-006, 8.73953104e-006, 9.32067633e-006, -0.999997973),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-46.4353218, 1.68546963, -17.7418175, -1.07690948e-005, -0.25879851, -0.96593231, 0.00295117544, -0.965930939, 0.258798122, -0.999999881, -0.00284784334, 0.000774159445),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.258818954, -0.96592176, -0.00283402577, -0.965925932, 0.258817822, 0.000759374525),C1 = CFrame.new(0.535812378, -2.21391344, 0.0219573975, -1, 3.01008095e-006, -8.62018987e-006, 3.00999841e-006, 1, 9.58147393e-006, 8.62021807e-006, 9.58144665e-006, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-47.4274139, 2.26056981, -17.7401123, -1.09192042e-005, -0.707093835, -0.70712465, 0.00295143039, -0.707121789, 0.707091808, -0.999999404, -0.00207919232, 0.00209404668),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.707106769, -0.707103789, -0.00207465095, -0.707106829, 0.707103729, 0.00207465072),C1 = CFrame.new(1.52789307, -1.63879728, 0.0202713013, -1.00000262, 3.33786011e-006, -8.76933336e-006, 2.74181366e-006, 1.0000006, 9.32812691e-006, 8.41915607e-006, 9.82731581e-006, -0.999999523),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-48.0761757, 3.82357526, -17.7354946, 1.10546298e-005, -1.00000584, 2.21406335e-005, -0.00295168511, -2.08619585e-005, -1.00000048, 0.999998808, 1.03250286e-005, -0.00295067742),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -1, 0, 0, 0, -0.999995768, -0.00293399929),C1 = CFrame.new(2.1766243, -0.0757856369, 0.0156955719, -1.00000501, 3.78489494e-006, -8.90344381e-006, 2.50339508e-006, 1.00000107, 9.07480717e-006, 8.24034214e-006, 1.0073185e-005, -0.999998927),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-48.0000801, 4.39839649, -17.7338047, 1.11822519e-005, -0.965939581, -0.258799493, -0.0029519177, 0.258799523, -0.96593225, 0.999998331, 0.000773409789, -0.00284726033),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.965925872, 0.258817971, 0.000759374932, -0.258819103, -0.9659217, -0.00283402577),C1 = CFrame.new(2.10051727, 0.499032021, 0.0140209198, -1.00000727, 4.11272049e-006, -9.03010368e-006, 2.14576721e-006, 1.00000167, 8.84383917e-006, 8.04662704e-006, 1.03339553e-005, -0.999998391),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-47.777813, 4.93573189, -17.7322197, 1.13470433e-005, -0.866045713, -0.499985814, -0.00295217289, 0.499983639, -0.866036832, 0.999997914, 0.0014837411, -0.00254994794),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.866025269, 0.499998182, 0.00146700058, -0.500000298, -0.866021514, -0.00254091714),C1 = CFrame.new(1.87824249, 1.03636146, 0.0124511719, -1.00000966, 4.41074371e-006, -9.19401646e-006, 1.93715096e-006, 1.00000226, 8.59051943e-006, 7.89761543e-006, 1.05574727e-005, -0.999997973),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-47.4240341, 5.39717007, -17.7308693, 9.9080853e-006, -0.707121491, -0.707093298, -0.0029499759, 0.707092285, -0.707120478, 0.99999994, 0.00209290977, -0.00207898207),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.707106769, 0.707103789, 0.00207465095, -0.707106829, -0.707103729, -0.00207465072),C1 = CFrame.new(1.52445221, 1.49779153, 0.0111122131, -1, 1.57958789e-006, -7.76339584e-006, 1.57950421e-006, 1, 1.07809965e-005, 7.76341221e-006, 1.07809847e-005, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.720072329),CFrame = CFrame.new(-45.8580971, 5.60223389, -17.7370338, -1.00657289e-005, 1.00000322, 2.02957654e-005, 0.00295125321, 1.96995989e-005, -1.00000012, -0.999999464, -9.69920256e-006, -0.00295074796),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.0029349993, -0.999995768, 1, 0, 0, 0, -0.999995768, -0.0029349993),C1 = CFrame.new(-0.0414848328, 1.70282531, 0.0172786713, -1.00000238, 1.93715096e-006, -7.91996717e-006, 1.34110451e-006, 1.0000006, 1.05053186e-005, 7.61449337e-006, 1.10045075e-005, -0.999999523),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-45.2829018, 5.97121954, -17.7292004, -1.01931591e-005, 0.258800507, 0.965936601, 0.00295049371, 0.965931654, -0.258800417, -0.999998987, 0.00284649269, -0.000772625324),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.258818954, 0.96592176, 0.00283402577, 0.965925932, -0.258817822, -0.000759374525),C1 = CFrame.new(-0.616687775, 2.07179952, 0.00945281982, -1.00000465, 2.20537186e-006, -8.04662704e-006, 9.83476639e-007, 1.00000131, 1.02669001e-005, 7.4878335e-006, 1.1280179e-005, -0.999999046),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-43.478302, 3.63275337, -17.7388229, -1.00000787, -2.20701331e-005, 7.47434888e-006, -1.90738247e-005, 0.709194005, -0.705021501, 9.44590829e-006, -0.705020368, -0.709190905),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.709178209, -0.705029249, 0, -0.705029249, -0.709178209),C1 = CFrame.new(-2.42124176, -0.266691208, 0.0190105438, -1.00000703, 2.5331974e-006, -8.17328691e-006, 7.15255737e-007, 1.00000191, 1.0073185e-005, 7.36117363e-006, 1.1511147e-005, -0.999998569),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-43.4809799, 4.03283119, -17.7353916, -1.00001013, -2.24024316e-005, 7.60508829e-006, -1.8716235e-005, 0.709194422, -0.70502162, 9.3043609e-006, -0.70502013, -0.709190309),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.709178209, -0.705029249, 0, -0.705029249, -0.709178209),C1 = CFrame.new(-2.41857147, 0.133384943, 0.0155887604, -1.0000093, 2.86102295e-006, -8.31484795e-006, 3.57627869e-007, 1.00000238, 9.85711813e-006, 7.2196126e-006, 1.17644668e-005, -0.999997973),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-48.2368507, 3.63311195, -17.7387714, -1.00000083, -1.94647782e-005, 6.54433461e-006, -1.83882312e-005, 0.709191322, -0.705021441, 9.08075071e-006, -0.705021679, -0.70919162),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.709178209, -0.705029249, 0, -0.705029249, -0.709178209),C1 = CFrame.new(2.33730316, -0.266245365, 0.0189685822, -1, 2.98856833e-008, -6.99601424e-006, 2.98019778e-008, 1, 1.19507195e-005, 6.99601424e-006, 1.19507195e-005, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-48.2395782, 4.03320122, -17.7353439, -1.0000031, -1.97706886e-005, 6.65923062e-006, -1.80008356e-005, 0.709191859, -0.705021679, 8.88713112e-006, -0.705021381, -0.709190965),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.709178209, -0.705029249, 0, -0.705029249, -0.709178209),C1 = CFrame.new(2.34002304, 0.133842468, 0.0155506134, -1.00000226, 3.27825546e-007, -7.13020563e-006, -3.57627869e-007, 1.0000006, 1.17123127e-005, 6.80238008e-006, 1.2204051e-005, -0.999999344),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-45.6623268, 6.2115097, -17.7293949, 1.90161372e-005, -0.707117319, 0.707103908, -1.0000006, 0.0020722514, 0.00209728698, -0.00294732978, -0.707099497, -0.707111895),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.999995768, -0.00293299928, -0.707106769, 0.00207394385, -0.707103789, 0.707106829, 0.00207394361, -0.707103729),C1 = CFrame.new(-0.237266541, 2.31209588, 0.00965499878, -1.00000453, 6.55651093e-007, -7.2941184e-006, -6.55651093e-007, 1.00000107, 1.14515424e-005, 6.69807196e-006, 1.24201179e-005, -0.999998629),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-46.0627785, 1.45024729, -17.74119, 1.93732503e-005, -0.707119107, 0.707105458, -1.00000119, 0.00207260554, 0.0020972616, -0.00294708973, -0.70709914, -0.707111418),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.999995768, -0.00293299928, -0.707106769, 0.00207394385, -0.707103789, 0.707106829, 0.00207394361, -0.707103729),C1 = CFrame.new(0.163272858, -2.4491415, 0.0213241577, -1.00000691, 1.01327896e-006, -7.47293234e-006, -9.23871994e-007, 1.00000167, 1.12205744e-005, 6.59376383e-006, 1.26585364e-005, -0.999998093),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-45.6626968, 1.45295334, -17.7434292, 1.97006975e-005, -0.707120836, 0.707107067, -1.00000191, 0.00207295991, 0.00209723692, -0.0029468569, -0.707098842, -0.707110882),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.999995768, -0.00293299928, -0.707106769, 0.00207394385, -0.707103789, 0.707106829, 0.00207394361, -0.707103729),C1 = CFrame.new(-0.236808777, -2.44644308, 0.0235614777, -1.0000093, 1.34110451e-006, -7.60704279e-006, -1.1920929e-006, 1.00000238, 1.09896064e-005, 6.44475222e-006, 1.28895044e-005, -0.999997437),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-46.062439, 6.20879078, -17.7271519, 1.68734969e-005, -0.707113326, 0.707101464, -0.999999583, 0.00207163813, 0.00209549349, -0.00294660358, -0.707100749, -0.707112551),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.999995768, -0.00293299928, -0.707106769, 0.00207394385, -0.707103789, 0.707106829, 0.00207394361, -0.707103729),C1 = CFrame.new(0.162845612, 2.30938411, 0.00741386414, -1, -1.49001664e-006, -6.25843586e-006, -1.49009884e-006, 1, 1.31502466e-005, 6.2584154e-006, 1.31502557e-005, -1),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.464898169, 0.815031886),CFrame = CFrame.new(-45.7422905, 4.79963303, -17.7418842, -8.55136659e-006, -0.965933621, 0.258802414, 0.00294686155, 0.258802146, 0.965930521, -0.999999285, 0.000770478102, 0.00284384307),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293299928, -0.999995768, -0.965926111, 0.258817017, 0.000759113347, 0.25881815, 0.965921938, 0.00283306045),C1 = CFrame.new(-0.157276154, 0.900225163, 0.0221061707, -1.00000226, -1.22189522e-006, -6.41494989e-006, -1.81794167e-006, 1.0000006, 1.2896955e-005, 6.10202551e-006, 1.33961439e-005, -0.999999344),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-46.9651833, 2.68211508, -17.7388992, -8.71617522e-006, -0.499987543, -0.866039038, 0.00294814631, -0.86603421, 0.499986172, -0.999998868, -0.00254820217, 0.00148051197),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.499999881, -0.866021812, -0.00254091783, -0.866025507, 0.499997735, 0.0014669993),C1 = CFrame.new(1.06565475, -1.21726179, 0.0190677643, -1.00000477, -9.23871994e-007, -6.57886267e-006, -2.11596489e-006, 1.00000119, 1.2613833e-005, 5.97536564e-006, 1.36867166e-005, -0.999998927),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-45.8594933, 6.04670525, -17.7289886, 8.84379915e-006, -1.77661786e-005, -1.00000787, -0.00294834934, 1.00000131, -1.59743322e-005, 0.999998391, 0.00294683152, 7.91116508e-006),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, 0.999995768, 0.00293399929, -1, 0, 0),C1 = CFrame.new(-0.040096283, 2.14729524, 0.00924491882, -1.00000703, -5.96046448e-007, -6.70552254e-006, -2.38418579e-006, 1.00000179, 1.24126673e-005, 5.82635403e-006, 1.39176846e-005, -0.99999845),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-44.7429352, 1.90649354, -17.7411957, 8.98641338e-006, 0.500020683, 0.866025209, -0.00294859684, -0.866019368, 0.500014305, 0.999997854, -0.00255574379, 0.00146657904),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.499999881, -0.866021812, -0.00254091783, 0.866025507, 0.499997735, 0.0014669993),C1 = CFrame.new(-1.15657806, -1.99292135, 0.0213394165, -1.0000093, -2.38418579e-007, -6.84708357e-006, -2.74181366e-006, 1.00000238, 1.21667981e-005, 5.69224358e-006, 1.41188502e-005, -0.999997914),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-44.7465782, 5.7491703, -17.7298717, -7.6292381e-006, 0.499987125, 0.866033852, 0.0029463477, 0.86603272, -0.49998647, -0.99999994, 0.0025478173, -0.00147973909),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.499999881, 0.866021812, 0.00254091783, 0.866025507, -0.499997735, -0.0014669993),C1 = CFrame.new(-1.15300751, 1.84974098, 0.0101184845, -1, -3.15893021e-006, -5.49851029e-006, -3.15900934e-006, 1, 1.44093801e-005, 5.49846436e-006, 1.44093965e-005, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-43.9370308, 4.93472099, -17.7322826, -7.7643308e-006, 0.866020322, 0.500015378, 0.00294658798, 0.500013411, -0.866017878, -0.999999583, 0.00146662048, -0.00255509769),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.866025269, 0.499998182, 0.00146700058, 0.500000298, -0.866021514, -0.00254091714),C1 = CFrame.new(-1.96253967, 1.03528023, 0.0125045776, -1.00000238, -2.83122063e-006, -5.63263893e-006, -3.36766243e-006, 1.00000072, 1.41710043e-005, 5.33461571e-006, 1.46627426e-005, -0.999999642),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-44.2872238, 2.25955677, -17.7401562, 7.92175797e-006, 0.707120955, 0.70710057, -0.00294682034, -0.707097769, 0.707116663, 0.999999106, -0.00208819052, 0.00207785005),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.707105756, -0.707104743, -0.00207465375, 0.707107782, 0.707102776, 0.00207464793),C1 = CFrame.new(-1.61229706, -1.63986802, 0.0203075409, -1.00000477, -2.50339508e-006, -5.78910112e-006, -3.60608101e-006, 1.00000119, 1.39400363e-005, 5.222857e-006, 1.49160624e-005, -0.999999166),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-46.4320488, 5.97236204, -17.7292042, 8.10136225e-006, -0.258836597, -0.965929508, -0.00294708996, 0.965923309, -0.25883317, 0.999998689, 0.00284706336, -0.000755495217),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.258818954, 0.96592176, 0.00283402577, -0.965925932, -0.258817822, -0.000759374525),C1 = CFrame.new(0.532459259, 2.072963, 0.00946044922, -1.00000715, -2.23517418e-006, -5.96791506e-006, -3.87430191e-006, 1.00000167, 1.36718154e-005, 5.03659248e-006, 1.51619315e-005, -0.999998748),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-47.5485115, 4.2796669, -17.743187, 8.23635037e-006, -0.866042554, -0.499991298, -0.00294731534, 0.499988973, -0.866033852, 0.999998271, 0.00147867657, -0.00254725548),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.866025269, 0.499998182, 0.00146700058, -0.500000298, -0.866021514, -0.00254091714),C1 = CFrame.new(1.64895248, 0.380294323, 0.023399353, -1.00000966, -1.93715096e-006, -6.10202551e-006, -4.20212746e-006, 1.00000226, 1.3448298e-005, 4.85777855e-006, 1.54227018e-005, -0.999998331),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-46.3604393, 5.1906352, -17.7405186, 6.85045507e-006, -0.258832574, -0.96592319, -0.00294510368, 0.965921879, -0.258832157, 0.99999994, 0.00284651062, -0.000755671179),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.258818954, 0.96592176, 0.00283402577, -0.965925932, -0.258817822, -0.000759374525),C1 = CFrame.new(0.460865021, 1.29123759, 0.0207538605, -1, -4.5000229e-006, -4.7236822e-006, -4.50009702e-006, 1, 1.56536153e-005, 4.72361171e-006, 1.56536371e-005, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-47.7375793, 3.81533623, -17.7445583, 7.00786768e-006, -0.965932727, -0.258806199, -0.00294537353, 0.25880605, -0.965929627, 0.999999464, 0.000768603175, -0.00284273527),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.965925872, 0.258817971, 0.000759374932, -0.258819103, -0.9659217, -0.00283402577),C1 = CFrame.new(1.83802795, -0.084031105, 0.0247592926, -1.00000238, -4.17232513e-006, -4.88013029e-006, -4.85777855e-006, 1.00000072, 1.53854489e-005, 4.57465649e-006, 1.59516931e-005, -0.999999523),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-44.1660423, 4.27781248, -17.7409782, -7.13549252e-006, 0.866022944, 0.500015736, 0.00294560636, 0.500012159, -0.866019309, -0.999998987, 0.00146662816, -0.00255329325),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.866025269, 0.499998182, 0.00146700058, 0.500000298, -0.866021514, -0.00254091714),C1 = CFrame.new(-1.73351288, 0.378377914, 0.0211830139, -1.00000489, -3.84449959e-006, -5.00679016e-006, -5.12599945e-006, 1.00000131, 1.51544809e-005, 4.42564487e-006, 1.6219914e-005, -0.999999046),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-45.3541718, 5.1887455, -17.7382793, -7.2703051e-006, 0.258806735, 0.965937495, 0.00294583896, 0.965930641, -0.258806795, -0.999998569, 0.00284226495, -0.000768160506),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.258818954, 0.96592176, 0.00283402577, 0.965925932, -0.258817822, -0.000759374525),C1 = CFrame.new(-0.545402527, 1.28932953, 0.0185108185, -1.00000715, -3.60608101e-006, -5.14090061e-006, -5.42402267e-006, 1.00000191, 1.49235129e-005, 4.26918268e-006, 1.65179372e-005, -0.999998629),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-43.9770012, 3.81348538, -17.742342, -7.46481101e-006, 0.96593225, 0.258835346, 0.00294612395, 0.258830816, -0.965924799, -0.999998152, 0.000755981309, -0.00284528849),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.965926111, 0.258817017, 0.000759372197, 0.25881815, -0.965921938, -0.00283402647),C1 = CFrame.new(-1.92254639, -0.0859508514, 0.0225353241, -1.00000954, -3.33786011e-006, -5.33461571e-006, -5.75184822e-006, 1.0000025, 1.46403909e-005, 4.10526991e-006, 1.67489052e-005, -0.999998212),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-44.4765396, 4.68044567, -17.7397842, -6.04880279e-006, 0.707098603, 0.707116187, 0.00294378493, 0.707115233, -0.70709765, -0.99999994, 0.00207731756, -0.00208581844),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.707106769, 0.707103789, 0.00207465095, 0.707106829, -0.707103729, -0.00207465072),C1 = CFrame.new(-1.42302322, 0.781015396, 0.0200004578, -1, -6.01993042e-006, -3.92651145e-006, -6.01999727e-006, 1, 1.69723589e-005, 3.92640914e-006, 1.69723826e-005, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-44.7492523, 2.68029428, -17.7366695, 6.21362506e-006, 0.500012457, 0.866021872, -0.00294404733, -0.866019666, 0.500010431, 0.999999464, -0.00255207415, 0.00146667124),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.499999881, -0.866021812, -0.00254091783, 0.866025507, 0.499997735, 0.0014669993),C1 = CFrame.new(-1.15027618, -1.21912336, 0.016834259, -1.00000226, -5.69224358e-006, -4.09036875e-006, -6.28829002e-006, 1.00000072, 1.67116523e-005, 3.77744436e-006, 1.72555447e-005, -0.999999523),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-44.0336761, 3.39430809, -17.7345734, 6.34870139e-006, 0.866036534, 0.499991775, -0.00294430251, -0.499990582, 0.866031766, 0.999999046, -0.00147658191, 0.00254604104),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.866025269, -0.499998182, -0.00146700058, 0.500000298, 0.866021514, 0.00254091714),C1 = CFrame.new(-1.8658638, -0.505125523, 0.014755249, -1.00000465, -5.36441803e-006, -4.2244792e-006, -6.64591789e-006, 1.00000131, 1.64583325e-005, 3.65078449e-006, 1.75237656e-005, -0.999999106),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-44.8815765, 4.9918232, -17.7388649, -6.52856761e-006, 0.499992311, 0.866039097, 0.00294457958, 0.866032362, -0.499990642, -0.999998569, 0.00254588458, -0.0014763436),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.499999881, 0.866021812, 0.00254091783, 0.866025507, -0.499997735, -0.0014669993),C1 = CFrame.new(-1.01799393, 1.09239936, 0.0190906525, -1.00000715, -5.00679016e-006, -4.40329313e-006, -6.94394112e-006, 1.00000179, 1.61826611e-005, 3.52412462e-006, 1.77770853e-005, -0.999998629),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-45.2217751, 2.48335314, -17.7372475, 6.70080817e-006, 0.258834839, 0.965932429, -0.00294485688, -0.965924859, 0.25883016, 0.999998093, -0.00284389569, 0.00075642817),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.258818954, -0.96592176, -0.00283402577, 0.965925932, 0.258817822, 0.000759374525),C1 = CFrame.new(-0.677749634, -1.41605496, 0.0174064636, -1.00000954, -4.70876694e-006, -4.57465649e-006, -7.21216202e-006, 1.00000238, 1.59069896e-005, 3.31550837e-006, 1.7978251e-005, -0.999998152),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-44.3441772, 2.99167085, -17.735754, 5.27695875e-006, 0.707115054, 0.707099736, -0.00294258539, -0.707098782, 0.7071141, 0.99999994, -0.00208442775, 0.00207701162),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.707106769, -0.707103789, -0.00207465095, 0.707106829, 0.707103729, 0.00207465072),C1 = CFrame.new(-1.55535507, -0.907755375, 0.0159263611, -1, -7.53984023e-006, -3.15914576e-006, -7.53989752e-006, 1, 1.81719006e-005, 3.15900843e-006, 1.81719224e-005, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-47.2379875, 4.68233061, -17.7420177, 5.44191153e-006, -0.707116902, -0.707101107, -0.00294285524, 0.707099438, -0.707114398, 0.999999404, 0.00208416837, -0.00207696296),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.707106769, 0.707103789, 0.00207465095, -0.707106829, -0.707103729, -0.00207465072),C1 = CFrame.new(1.33842087, 0.782950878, 0.0222396851, -1.00000226, -7.15255737e-006, -3.32295895e-006, -7.77840614e-006, 1.00000072, 1.79037452e-005, 3.01003456e-006, 1.83880329e-005, -0.999999464),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-47.6808357, 3.39619112, -17.7368011, -5.56953592e-006, -0.866024137, -0.500012994, 0.00294308015, -0.500009537, 0.866020679, -0.999998927, -0.00146675308, 0.00255042501),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.866025269, -0.499998182, -0.00146700058, -0.500000298, 0.866021514, 0.00254091714),C1 = CFrame.new(1.78129196, -0.503175497, 0.0169906616, -1.00000453, -6.82473183e-006, -3.44961882e-006, -8.07642937e-006, 1.00000119, 1.76802278e-005, 2.88337469e-006, 1.86413527e-005, -0.999998987),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-46.4927292, 2.48526549, -17.7394867, -5.70452357e-006, -0.258809507, -0.965936542, 0.00294334232, -0.965929687, 0.258809566, -0.99999845, -0.00284039159, 0.000766054203),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.258818954, -0.96592176, -0.00283402577, -0.965925932, 0.258817822, 0.000759374525),C1 = CFrame.new(0.593204498, -1.41411948, 0.0196495056, -1.00000691, -6.5267086e-006, -3.58372927e-006, -8.40425491e-006, 1.00000167, 1.74194574e-005, 2.71946192e-006, 1.88723207e-005, -0.99999851),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-46.8330154, 4.99372959, -17.7411098, 5.86195165e-006, -0.500015497, -0.86602819, -0.00294360495, 0.866022229, -0.50000906, 0.999998033, 0.00254984386, -0.00146678567),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.499999881, 0.866021812, 0.00254091783, -0.866025507, -0.499997735, -0.0014669993),C1 = CFrame.new(0.933441162, 1.09434128, 0.0213394165, -1.0000093, -6.19888306e-006, -3.74019146e-006, -8.73208046e-006, 1.00000226, 1.71586871e-005, 2.56299973e-006, 1.91256404e-005, -0.999998093),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.809181273),CFrame = CFrame.new(-45.851902, 2.42002773, -17.739687, -4.50511834e-006, 9.31513387e-006, -1.00000083, 0.00294137839, -0.999999583, -9.29846919e-006, -0.99999994, -0.0029413749, 4.4765693e-006),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0, -0.999995768, -0.00293399929, -1, 0, 0),C1 = CFrame.new(-0.0476226807, -1.47936869, 0.0198459625, -1, -9.05975503e-006, -2.39178462e-006, -9.05980141e-006, 1, 1.93788928e-005, 2.39160863e-006, 1.93789128e-005, -1),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-47.370369, 2.99357724, -17.7379951, -4.66984693e-006, -0.707101226, -0.707116842, 0.00294163334, -0.707114339, 0.707099497, -0.999999464, -0.00207664492, 0.00208275905),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.707105756, -0.707104743, -0.00207465375, -0.707107782, 0.707102776, 0.00207464793),C1 = CFrame.new(1.47083282, -0.905793428, 0.0181732178, -1.00000238, -8.73208046e-006, -2.55554914e-006, -9.29832458e-006, 1.00000072, 1.91256404e-005, 2.24262476e-006, 1.96099281e-005, -0.999999523),})
Handle1 = New("Part",Model,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-45.8541946, 5.25593805, -17.7403431, 4.79747268e-006, -9.96980179e-006, -1.00000548, -0.00294188806, 1.00000072, -8.70239455e-006, 0.999998987, 0.00294091017, 4.20095012e-006),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, 0.999995768, 0.00293399929, -1, 0, 0),C1 = CFrame.new(-0.0453834534, 1.3565309, 0.0205783844, -1.00000465, -8.40425491e-006, -2.68220901e-006, -9.65595245e-006, 1.00000119, 1.88723207e-005, 2.11596489e-006, 1.98408961e-005, -0.999999046),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 2.79028964, 0.212871432),CFrame = CFrame.new(-45.2293739, 3.81017351, -17.7448273, 4.96235043e-006, 1.0297159e-005, 1.00000775, -0.00294215069, -1.00000131, 8.4044068e-006, 0.99999845, -0.00294065522, -4.03704917e-006),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, -0.999995768, -0.00293399929, 1, 0, 0),C1 = CFrame.new(-0.670173645, -0.0892398357, 0.0250225067, -1.00000691, -8.07642937e-006, -2.84612179e-006, -9.95397568e-006, 1.00000179, 1.86115503e-005, 1.95205212e-006, 2.00942159e-005, -0.99999851),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 2.48425794, 0.4401443),CFrame = CFrame.new(-46.6670609, 3.79981136, -17.744854, 5.12722772e-006, 1.06245125e-005, 1.00001001, -0.00294239819, -1.00000191, 8.07661854e-006, 0.999997914, -0.00294042262, -3.90295145e-006),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, -0.999995768, -0.00293399929, 1, 0, 0),C1 = CFrame.new(0.76750946, -0.0995755196, 0.0250511169, -1.00000918, -7.74860382e-006, -3.01003456e-006, -1.02818012e-005, 1.00000238, 1.83656812e-005, 1.81794167e-006, 2.03251839e-005, -0.999997973),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 2.69442987, 0.200000003),CFrame = CFrame.new(-45.1927185, 3.91507912, -17.7452011, 3.73319426e-006, 0.258826673, 0.96592474, -0.002940231, -0.965923429, 0.258826286, 0.99999994, -0.00284100161, 0.00075740373),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.949597955, 1, 0.598558366),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.258818954, -0.96592176, -0.00283402577, 0.965925932, 0.258817822, 0.000759374525),C1 = CFrame.new(-0.706832886, 0.0156645775, 0.0253982544, -1, -1.06094712e-005, -1.62442564e-006, -1.06095049e-005, 1, 2.05262786e-005, 1.62420793e-006, 2.05262932e-005, -1),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.672369778, 0.402790427),CFrame = CFrame.new(-45.8915749, 3.88134837, -17.7662239, 1.00000334, -8.12470716e-006, 3.89050092e-006, 7.39103007e-006, 1.00000024, -0.0029394934, -3.56022792e-006, 0.00293898024, 0.999999464),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.810083568, 1, 1),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999995768, 0.00293299928, 0, -0.00293299928, 0.999995768),C1 = CFrame.new(-0.00797653198, -0.0180537701, 0.0464229584, -1.0000025, -1.02519989e-005, -1.78068876e-006, -1.09672546e-005, 1.00000072, 2.02655792e-005, 1.47521496e-006, 2.07722187e-005, -0.999999523),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.674169421, 0.200000003, 0.409091085),CFrame = CFrame.new(-45.9095802, 3.88247228, -17.7666702, 1.0000056, -8.39254608e-006, 4.02540172e-006, 7.06324136e-006, 1.00000095, -0.00293974881, -3.40377846e-006, 0.00293871062, 0.999998987),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.591811061, 1),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999995768, 0.00293299928, 0, -0.00293299928, 0.999995768),C1 = CFrame.new(0.0100288391, -0.016929388, 0.046869278, -1.00000477, -9.983778e-006, -1.91479921e-006, -1.12950802e-005, 1.00000143, 2.00122595e-005, 1.31875277e-006, 2.10404396e-005, -0.999999046),})
Sphere = New("Part",Model,"Sphere",{BrickColor = BrickColor.new("Maroon"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.666068554, 0.66606915, 0.396039784),CFrame = CFrame.new(-45.9095917, 3.88215971, -17.7659988, 1.00000787, -8.74972557e-006, 4.18291529e-006, 6.76525451e-006, 1.00000155, -0.00293998909, -3.26968029e-006, 0.00293844845, 0.99999851),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.458824, 0, 0),})
Mesh = New("SpecialMesh",Sphere,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Sphere,"mot",{Part0 = Sphere,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999995768, 0.00293299928, 0, -0.00293299928, 0.999995768),C1 = CFrame.new(0.0100402832, -0.0172419548, 0.0461978912, -1.00000703, -9.62615013e-006, -2.07126141e-006, -1.15931034e-005, 1.00000203, 1.97738409e-005, 1.18464231e-006, 2.13012099e-005, -0.999998569),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 3.01036239, 0.200000003),CFrame = CFrame.new(-45.9092293, 4.5581665, -17.7433109, 4.31791204e-006, -1.00001013, 9.04736135e-006, -0.0029412366, -6.46726858e-006, -1.00000215, 0.999997914, 3.13558212e-006, -0.00293915602),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.949597955, 1, 0.598558366),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -1, 0, 0, 0, -0.999995768, -0.00293399929),C1 = CFrame.new(0.00966644287, 0.658762693, 0.0235271454, -1.0000093, -9.32812691e-006, -2.20537186e-006, -1.18911266e-005, 1.00000262, 1.95279717e-005, 1.05053186e-006, 2.15917826e-005, -0.999997973),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 3.49326277, 0.200000003),CFrame = CFrame.new(-45.881546, 3.25408554, -17.7471428, 3.02087619e-006, -1.00000083, 6.22004654e-006, -0.0029389346, -6.19901311e-006, -0.999999583, 0.99999994, 3.00144802e-006, -0.00293893111),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.949597955, 1, 0.598558366),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -1, 0, 0, 0, -0.999995768, -0.00293399929),C1 = CFrame.new(-0.017993927, -0.64531374, 0.0273246765, -1, -1.21591866e-005, -9.16676072e-007, -1.21592066e-005, 1, 2.18226724e-005, 9.16410841e-007, 2.18226833e-005, -1),})
Neon = New("Part",Model,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 2.65842581, 0.200000003),CFrame = CFrame.new(-46.608139, 3.92606139, -17.7451687, 3.19295009e-006, -0.258813441, 0.96593082, -0.00293922657, -0.965927601, -0.258813292, 0.999999404, -0.00283778994, -0.000763367105),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.949597955, 1, 0.598558366),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.258818954, -0.96592176, -0.00283402577, 0.965925932, -0.258817822, -0.000759374525),C1 = CFrame.new(0.708587646, 0.0266728401, 0.0253696442, -1.00000238, -1.1831522e-005, -1.08778477e-006, -1.24871731e-005, 1.0000006, 2.15321779e-005, 7.97212124e-007, 2.20835209e-005, -0.999999464),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-46.4439316, 3.89778209, -17.7445793, 3.32066202e-006, -6.90448405e-006, -1.0000056, -0.00293945917, 1.00000072, -5.57309977e-006, 0.999998927, 0.00293844379, 2.69601037e-006),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, 0.999995768, 0.00293399929, -1, 0, 0),C1 = CFrame.new(0.544380188, -0.00160932541, 0.0247802734, -1.00000477, -1.14738941e-005, -1.21444464e-006, -1.27851963e-005, 1.00000119, 2.13012099e-005, 6.10947609e-007, 2.23070383e-005, -0.999998987),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.227273509, 0.64986527),CFrame = CFrame.new(-46.3457031, 4.59667253, -17.7425289, 3.42584735e-006, 0.866028607, -0.50001055, -0.00293968455, 0.500005543, 0.866023719, 0.99999845, 0.00146692223, 0.0025458606),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.866025269, 0.499998182, 0.00146700058, -0.500000298, 0.866021514, 0.00254091714),C1 = CFrame.new(0.446140289, 0.697276831, 0.0227470398, -1.00000715, -1.11758709e-005, -1.31875277e-006, -1.30534172e-005, 1.00000179, 2.10776925e-005, 4.54485416e-007, 2.2508204e-005, -0.99999851),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.359587193, 0.776778042),CFrame = CFrame.new(-46.3615227, 3.1381588, -17.746809, -3.54593317e-006, 0.866038024, -0.499998987, 0.0029398948, -0.49999696, -0.866029382, -0.999997854, -0.00147109048, -0.00254321983),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.866025269, -0.499998182, -0.00146700058, -0.500000298, -0.866021514, -0.00254091714),C1 = CFrame.new(0.461986542, -0.761231184, 0.0269889832, -1.00000954, -1.08778477e-005, -1.43796206e-006, -1.33514404e-005, 1.00000238, 2.08690763e-005, 3.05473804e-007, 2.27093697e-005, -0.999997914),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-46.4255219, 3.7592504, -17.7449837, -2.25667054e-006, 0.258823782, -0.965925515, 0.00293783192, -0.965924203, -0.258823395, -0.99999994, -0.00283830473, -0.000758200418),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.258818954, -0.96592176, -0.00283402577, -0.965925932, -0.258817822, -0.000759374525),C1 = CFrame.new(0.525974274, -0.140140772, 0.0251808167, -1, -1.3619494e-005, -1.56772515e-007, -1.36194976e-005, 1, 2.2925371e-005, 1.56460302e-007, 2.2925371e-005, -1),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.32133323, 0.969847441),CFrame = CFrame.new(-46.2373581, 2.96848035, -17.7473106, -2.3988855e-006, 0.965930581, -0.258814067, 0.00293807941, -0.258813918, -0.965927482, -0.999999404, -0.000762283977, -0.00283692335),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.965926111, -0.258817017, -0.000759372197, -0.25881815, -0.965921938, -0.00283402647),C1 = CFrame.new(0.33782196, -0.930911303, 0.0274848938, -1.00000238, -1.32918358e-005, -2.98023224e-007, -1.39474869e-005, 1.00000072, 2.26795673e-005, -2.23517418e-008, 2.3201108e-005, -0.999999464),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.27272746),CFrame = CFrame.new(-46.455101, 4.21952581, -17.7436371, 2.53387361e-006, 0.499998033, -0.866033018, -0.00293833413, 0.86602819, 0.499996722, 0.999998927, 0.00254279235, 0.00147031713),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.499999881, 0.866021812, 0.00254091783, -0.866025507, 0.499997735, 0.0014669993),C1 = CFrame.new(0.555541992, 0.320133448, 0.0238456726, -1.00000477, -1.29938126e-005, -4.32133675e-007, -1.42455101e-005, 1.00000119, 2.24262476e-005, -1.49011612e-007, 2.34693289e-005, -0.999998987),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-46.4251328, 4.04001236, -17.7441711, 2.66132292e-006, 0.258815527, -0.965935171, -0.00293856696, 0.965928197, 0.258815557, 0.999998391, 0.00283651077, 0.000761882868),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.258818954, 0.96592176, 0.00283402577, -0.965925932, 0.258817822, 0.000759374525),C1 = CFrame.new(0.525577545, 0.140620232, 0.0243740082, -1.00000715, -1.27255917e-005, -5.58793545e-007, -1.4513731e-005, 1.00000179, 2.21952796e-005, -3.05473804e-007, 2.37002969e-005, -0.99999845),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.594959855),CFrame = CFrame.new(-46.4663277, 3.33458328, -17.7462406, -2.81866323e-006, 0.707118332, -0.707109928, 0.00293882936, -0.707105637, -0.707110584, -0.999997973, -0.00207779091, -0.0020754952),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.707106769, -0.707103789, -0.00207465095, -0.707106829, -0.707103729, -0.00207465072),C1 = CFrame.new(0.56678772, -0.564805508, 0.0264263153, -1.00000954, -1.24275684e-005, -7.15255737e-007, -1.48713589e-005, 1.00000238, 2.19345093e-005, -4.61935997e-007, 2.39312649e-005, -0.999998033),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.490999401),CFrame = CFrame.new(-46.4291496, 4.42793417, -17.7430325, 1.44014109e-006, 0.7071051, -0.70710969, -0.00293661002, 0.707108736, 0.707104146, 0.99999994, 0.00207548379, 0.00207750523),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.707106769, 0.707103789, 0.00207465095, -0.707106829, 0.707103729, 0.00207465072),C1 = CFrame.new(0.529586792, 0.528540373, 0.0232467651, -1, -1.51394161e-005, 6.55277802e-007, -1.51393997e-005, 1, 2.41472735e-005, -6.55643248e-007, 2.41472608e-005, -1),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.319983095, 0.793429732),CFrame = CFrame.new(-46.2135048, 4.74577284, -17.7421036, 1.58211833e-006, 0.965928018, -0.258823305, -0.00293686474, 0.258821905, 0.965925217, 0.999999464, 0.000758703332, 0.00283661042),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.965925872, 0.258817971, 0.000759374932, -0.258819103, 0.9659217, 0.00283402577),C1 = CFrame.new(0.313938141, 0.846374035, 0.0223255157, -1.00000226, -1.48713589e-005, 5.14090061e-007, -1.54674053e-005, 1.0000006, 2.3894012e-005, -7.67409801e-007, 2.44304538e-005, -0.999999523),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.207921505, 0.556705952),CFrame = CFrame.new(-46.5648575, 3.48498225, -17.7458038, -1.70229202e-006, 0.50000602, -0.866028428, 0.00293707498, -0.866024792, -0.500002444, -0.999998987, -0.00254325639, -0.00146696554),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, 0.499999881, -0.866021812, -0.00254091783, -0.866025507, -0.499997735, -0.0014669993),C1 = CFrame.new(0.665313721, -0.414405346, 0.0259933472, -1.00000477, -1.45435333e-005, 3.94880772e-007, -1.57952309e-005, 1.00000119, 2.36853957e-005, -8.86619091e-007, 2.47433782e-005, -0.999999046),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.41404286, 0.792079568),CFrame = CFrame.new(-46.0316162, 4.79806328, -17.7419472, -1.85208955e-006, -1.00000799, -4.10738085e-006, 0.00293631549, -2.29483226e-006, 1.00000143, -0.99999851, 1.09422149e-006, 0.00293476786),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293299928, -0.999995768, -1, 0, 0, 0, 0.999995768, 0.00293299928),C1 = CFrame.new(0.132049561, 0.898661137, 0.0221710205, -1.00000715, -1.42753124e-005, 2.4586916e-007, -1.60634518e-005, 1.00000191, 2.34469771e-005, -9.90927219e-007, 2.49817967e-005, -0.999998569),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.462647855, 0.985598981),CFrame = CFrame.new(-45.5415916, 2.96346474, -17.7473431, 2.016792e-006, -0.866032064, 0.500009298, -0.00293657067, -0.50000298, -0.866025984, 0.999997973, -0.00146642688, -0.00254185894),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293299928, 0.999995768, -0.866025269, -0.499998182, -0.00146650057, 0.500000298, -0.866021514, -0.00254005101),C1 = CFrame.new(-0.357940674, -0.935939789, 0.0275154114, -1.00000954, -1.40070915e-005, 8.19563866e-008, -1.6450882e-005, 1.0000025, 2.31936574e-005, -1.11758709e-006, 2.52202153e-005, -0.999998033),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.303331375, 0.847885191),CFrame = CFrame.new(-45.5065842, 4.74082375, -17.7421169, -7.9480094e-007, -0.866026819, 0.499999285, 0.00293429871, 0.499998689, 0.866025627, -0.99999994, 0.00146783167, 0.00254077907),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293299928, -0.999995768, -0.866025269, 0.499998182, 0.00146650057, 0.500000298, 0.866021514, 0.00254005101),C1 = CFrame.new(-0.392982483, 0.841412067, 0.0223369598, -1, -1.67189355e-005, 1.29595992e-006, -1.67189028e-005, 1, 2.54585739e-005, -1.29638556e-006, 2.5458552e-005, -1),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.258326709, 0.398740053),CFrame = CFrame.new(-45.4453735, 4.43478251, -17.7430153, -9.51788138e-007, -0.707110465, 0.707107663, 0.00293556042, 0.707105935, 0.707107663, -0.999999404, 0.00207582372, 0.00207496085),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.707106769, 0.707103789, 0.00207465095, 0.707106829, 0.707103729, 0.00207465072),C1 = CFrame.new(-0.454185486, 0.535370827, 0.0232276917, -1.00000238, -1.63912773e-005, 1.13993883e-006, -1.71065331e-005, 1.00000048, 2.51978636e-005, -1.47521496e-006, 2.57045031e-005, -0.999999464),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.212421924, 0.401890427),CFrame = CFrame.new(-45.3089066, 3.52397156, -17.7457008, 1.08703841e-006, -0.500000656, 0.866031528, -0.0029358156, -0.866026521, -0.499999344, 0.999998868, -0.00254138862, -0.00146778603),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.499999881, -0.866021812, -0.00254091783, 0.866025507, -0.499997735, -0.0014669993),C1 = CFrame.new(-0.590637207, -0.375439167, 0.025888443, -1.00000477, -1.60038471e-005, 1.00582838e-006, -1.7374754e-005, 1.00000107, 2.49445438e-005, -1.63912773e-006, 2.59503722e-005, -0.999998927),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-45.3799744, 3.76150775, -17.7449989, 1.21457549e-006, -0.258818448, 0.965934515, -0.0029360482, -0.965927243, -0.258818597, 0.999998391, -0.00283446163, -0.000759829767),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.258818954, -0.96592176, -0.00283402577, 0.965925932, -0.258817822, -0.000759374525),C1 = CFrame.new(-0.519573212, -0.137902737, 0.0251922607, -1.00000727, -1.57058239e-005, 8.7916851e-007, -1.77025795e-005, 1.00000167, 2.47135758e-005, -1.75833702e-006, 2.62111425e-005, -0.99999845),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.422143668, 0.483798653),CFrame = CFrame.new(-45.4736862, 3.28098631, -17.7464142, 1.37936581e-006, -0.707112193, 0.707116425, -0.00293630292, -0.7071082, -0.707107663, 0.999997914, -0.00207475782, -0.00207493524),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.707106769, -0.707103789, -0.00207465095, 0.707106829, -0.707103729, -0.00207465072),C1 = CFrame.new(-0.425853729, -0.618420601, 0.0265960693, -1.00000978, -1.54078007e-005, 7.15255737e-007, -1.80006027e-005, 1.00000215, 2.44602561e-005, -1.9595027e-006, 2.64719129e-005, -0.999997973),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 2.15257359, 0.846084595),CFrame = CFrame.new(-44.9485931, 3.78167272, -17.744936, 4.59522198e-010, 8.96133372e-008, 1.00000083, -0.0029340093, -0.999999464, 5.97107359e-008, 0.999999821, -0.00293400628, 9.48148227e-010),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, -0.999995768, -0.00293399929, 1, 0, 0),C1 = CFrame.new(-0.950954437, -0.117745638, 0.0251293182, -1, -1.82984604e-005, 2.08564757e-006, -1.8298404e-005, 1, 2.67475443e-005, -2.0861371e-006, 2.67475061e-005, -1),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.57066298, 0.995499909),CFrame = CFrame.new(-46.9116974, 3.71618819, -17.7451305, 4.59749572e-010, 8.96133301e-008, 1.00000083, -0.00293401023, -0.999999702, 5.97125549e-008, 1, -0.00293400674, 9.48148227e-010),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, -0.999995768, -0.00293399929, 1, 0, 0),C1 = CFrame.new(1.01214981, -0.183193922, 0.0253257751, -1, -1.82984622e-005, 2.08564779e-006, -1.8298404e-005, 1.00000012, 2.67473515e-005, -2.0861371e-006, 2.67473515e-005, -1.00000012),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.01260495, 1.2839787),CFrame = CFrame.new(-44.7242393, 3.6621809, -17.745285, 4.59749572e-010, 8.96115111e-008, 1.00000083, -0.00293401117, -0.99999994, 5.97125549e-008, 1.00000024, -0.00293400744, 9.483756e-010),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, -0.999995768, -0.00293399929, 1, 0, 0),C1 = CFrame.new(-1.17530823, -0.237241268, 0.0254745483, -1, -1.82984677e-005, 2.08564825e-006, -1.8298404e-005, 1.00000036, 2.67471187e-005, -2.08613733e-006, 2.67473515e-005, -1.00000036),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.01260495, 0.923942685),CFrame = CFrame.new(-44.6139832, 4.07930279, -17.7440662, 4.59522198e-010, -0.866025925, 0.500000775, -0.0029340121, -0.500000417, -0.866025269, 1.00000048, -0.00146700582, -0.00254092435),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.866025269, -0.499998182, -0.00146700058, 0.500000298, -0.866021514, -0.00254091714),C1 = CFrame.new(-1.28557205, 0.179877043, 0.0242671967, -1, -1.82984713e-005, 2.08564893e-006, -1.8298404e-005, 1.0000006, 2.67468859e-005, -2.08613756e-006, 2.67473515e-005, -1.0000006),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.01260495, 0.923942685),CFrame = CFrame.new(-47.0352287, 4.08651876, -17.7440434, 6.73253453e-010, -0.500000238, 0.866026223, -0.00293401279, -0.866025746, -0.49999994, 1.00000072, -0.00254092668, -0.00146700302),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.499999881, -0.866021812, -0.00254091783, 0.866025507, -0.499997735, -0.0014669993),C1 = CFrame.new(1.13567352, 0.187137604, 0.0242500305, -1, -1.83284301e-005, 2.08534766e-006, -1.82688236e-005, 1.00000072, 2.67464202e-005, -2.0863954e-006, 2.67475843e-005, -1.00000083),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.535555363, 1.32268262),CFrame = CFrame.new(-47.0878906, 3.62296343, -17.7454033, 4.4110493e-010, 5.96582055e-008, 1.00000083, -0.00293401396, -1.00000048, 1.1909529e-007, 1.00000095, -0.00293400954, 8.58790372e-010),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, -0.999995768, -0.00293399929, 1, 0, 0),C1 = CFrame.new(1.18834305, -0.27641511, 0.0255966187, -1, -1.83284319e-005, 2.08558049e-006, -1.82390213e-005, 1.00000095, 2.67459545e-005, -2.08604615e-006, 2.67473515e-005, -1.00000107),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.31953299, 0.491899252),CFrame = CFrame.new(-45.0175133, 4.9122715, -17.7416191, 4.41332304e-010, -0.258819103, 0.965926766, -0.00293401489, -0.965926647, -0.258818984, 1.00000119, -0.00283403695, -0.00075937662),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.258818954, -0.96592176, -0.00283402577, 0.965925932, -0.258817822, -0.000759374525),C1 = CFrame.new(-0.88205719, 1.01285028, 0.0218429565, -1, -1.83284355e-005, 2.08558072e-006, -1.82390213e-005, 1.00000119, 2.67457217e-005, -2.08604615e-006, 2.67471187e-005, -1.00000131),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.31953299, 0.491899252),CFrame = CFrame.new(-46.8536949, 4.70655823, -17.742218, 4.99994712e-010, 0.500000417, 0.866026342, -0.00293401582, -0.866026282, 0.500000417, 1.00000143, -0.00254092808, 0.00146700628),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0.499999881, -0.866021812, -0.00254091783, 0.866025507, 0.499997735, 0.0014669993),C1 = CFrame.new(0.954128265, 0.807171345, 0.0224399567, -1.00000012, -1.83284319e-005, 2.08552251e-006, -1.82390213e-005, 1.00000143, 2.67454889e-005, -2.08610436e-006, 2.6746653e-005, -1.00000155),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.31953299, 0.300179988),CFrame = CFrame.new(-46.4828606, 4.99951553, -17.7413654, 7.91487764e-010, 5.96730203e-008, 1.00000107, -0.00293301675, -1.00000119, 8.92965915e-008, 1.00000167, -0.00293301255, 1.2066721e-009),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293299928, 0.999995768, 0, -0.999995768, -0.00293299928, 1, 0, 0),C1 = CFrame.new(0.5832901, 1.10012054, 0.0215950012, -1.00000024, -1.83284301e-005, 2.08523147e-006, -1.82688236e-005, 1.00000167, 2.6745256e-005, -2.0863954e-006, 2.6746653e-005, -1.00000179),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.325833619, 1.17821801),CFrame = CFrame.new(-47.0673218, 3.01346016, -17.7471867, 7.91487764e-010, -0.520610511, 0.853795588, -0.00293401768, -0.853795886, -0.520610631, 1.00000191, -0.00250504538, -0.00152747543),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, -0.520609975, -0.853790998, -0.00250503281, 0.853794634, -0.52060771, -0.00152746914),C1 = CFrame.new(1.16778564, -0.885916471, 0.0273647308, -1.00000024, -1.83284337e-005, 2.08523193e-006, -1.82688236e-005, 1.00000191, 2.67450232e-005, -2.0863954e-006, 2.6746653e-005, -1.00000203),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.31953299, 0.300179988),CFrame = CFrame.new(-46.4828644, 2.60304928, -17.7483959, 7.63293428e-010, -2.97303107e-008, 1.00000107, -0.00293301838, -1.00000155, 5.94942726e-008, 1.00000215, -0.00293301395, 1.20598997e-009),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293299928, 0.999995768, 0, -0.999995768, -0.00293299928, 1, 0, 0),C1 = CFrame.new(0.583335876, -1.29633641, 0.0285606384, -1.00000024, -1.84178389e-005, 2.08499841e-006, -1.82986259e-005, 1.00000203, 2.67447904e-005, -2.0863954e-006, 2.6746653e-005, -1.00000226),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.325833619, 1.17821801),CFrame = CFrame.new(-44.7909927, 2.92676973, -17.747448, 7.63520802e-010, 0.479103506, 0.877759695, -0.00293501932, -0.877760231, 0.479103863, 1.00000238, -0.00257623428, 0.0014061752),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.0029349993, 0.999995768, 0.479102999, -0.877754986, -0.00257622125, 0.877758741, 0.479100913, 0.00140616682),C1 = CFrame.new(-1.10853958, -0.972648382, 0.0276184082, -1.00000024, -1.84178425e-005, 2.08499887e-006, -1.82986259e-005, 1.00000226, 2.67445575e-005, -2.0863954e-006, 2.6746653e-005, -1.0000025),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.535555363, 0.200000003),CFrame = CFrame.new(-44.0244217, 3.63614631, -17.7453651, 8.51514415e-010, 8.2655216e-011, 1.00000119, -0.00293402048, -1.00000203, 2.96955935e-008, 1.00000262, -0.00293401559, 9.72022463e-010),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 0.704319298),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, -0.999995768, -0.00293399929, 1, 0, 0),C1 = CFrame.new(-1.87512207, -0.263288498, 0.0255527496, -1.00000036, -1.83880347e-005, 2.08499864e-006, -1.83284283e-005, 1.0000025, 2.67440919e-005, -2.08616257e-006, 2.67464202e-005, -1.00000274),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.30513069),CFrame = CFrame.new(-45.3412476, 4.23981905, -17.7435913, -8.51741788e-010, -0.500000477, 0.866026521, 0.00293402141, 0.866027474, 0.500001013, -1.00000286, 0.00254093227, 0.00146700873),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.879840851, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.499999881, 0.866021812, 0.00254091783, 0.866025507, 0.499997735, 0.0014669993),C1 = CFrame.new(-0.558311462, 0.340405941, 0.0237979889, -1.00000036, -1.83880402e-005, 2.0849991e-006, -1.83284283e-005, 1.00000274, 2.67438591e-005, -2.08616257e-006, 2.67464202e-005, -1.00000298),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-45.3795357, 4.04225731, -17.744173, -1.17302079e-009, -0.258819312, 0.965927243, 0.00293402234, 0.965928316, 0.25881955, -1.0000031, 0.0028340423, 0.000759380287),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, 0.00293399929, -0.999995768, -0.258818954, 0.96592176, 0.00283402577, 0.965925932, 0.258817822, 0.000759374525),C1 = CFrame.new(-0.520019531, 0.142845869, 0.0243740082, -1.00000048, -1.83582324e-005, 2.08476581e-006, -1.83880329e-005, 1.00000298, 2.67436262e-005, -2.08639563e-006, 2.67464202e-005, -1.00000322),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.363187611, 0.982448757),CFrame = CFrame.new(-45.7493286, 2.91565895, -17.7474766, 1.2316832e-009, -0.96592766, 0.258818567, -0.00293302326, -0.258818805, -0.965928733, 1.00000334, -0.000759119226, -0.00283307768),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293299928, 0.999995768, -0.965926111, -0.258817017, -0.000759113347, 0.25881815, -0.965921938, -0.00283306045),C1 = CFrame.new(-0.150203705, -0.983741522, 0.0276489258, -1.00000072, -1.83582342e-005, 2.0847076e-006, -1.84029341e-005, 1.00000322, 2.67433934e-005, -2.08639563e-006, 2.67464202e-005, -1.00000346),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.492800981, 0.942844689),CFrame = CFrame.new(-46.0714722, 2.93029332, -17.7474289, 1.23236532e-009, -1.00000167, 2.98979721e-008, -0.00293302396, 2.99035996e-008, -1.00000286, 1.00000358, -1.14414433e-009, -0.00293301814),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293299928, 0.999995768, -1, 0, 0, 0, -0.999995768, -0.00293299928),C1 = CFrame.new(0.17193985, -0.969101191, 0.0276031494, -1.00000083, -1.83582342e-005, 2.0847076e-006, -1.83880329e-005, 1.00000334, 2.67429277e-005, -2.08633742e-006, 2.6746653e-005, -1.0000037),})
Eye2 = New("Part",Model,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-45.3610802, 3.90369511, -17.7445793, 1.23259269e-009, 2.98995246e-008, 1.00000167, -0.0029340249, -1.0000031, -2.99035996e-008, 1.00000381, -0.00293401885, 1.14437171e-009),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d,C0 = CFrame.new(0, 0, 0, 0, -0.00293399929, 0.999995768, 0, -0.999995768, -0.00293399929, 1, 0, 0),C1 = CFrame.new(-0.538471222, 0.00428390503, 0.0247764587, -1.00000083, -1.83582379e-005, 2.08470783e-006, -1.83880329e-005, 1.00000358, 2.67426949e-005, -2.08633764e-006, 2.6746653e-005, -1.00000393),})
Hitbox = New("Part",Eye2,"Hitbox",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.225023165, 4.50000048, 4.42007256),CFrame = CFrame.new(-45.8067703, 2.15377712, 2.25294924, 0, 1, 0, 0.000304999994, 0, -1, -1, 0, -0.000304999994),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Hitbox,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Hitbox,"mot",{Part0 = Hitbox,Part1 = Sphere,C0 = CFrame.new(0, 0, 0, 0, 0.000304999994, -1, 1, 0, 0, 0, -1, -0.000304999994),C1 = CFrame.new(0.101303101, -0.0297417641, 0.0238523483, 1, 0, 0, 0, 1, 0.000303000008, 0, -0.000303000008, 1),})

local RuinedHand1 = New("Model",Character,"RuinedHand1",{})
local W3d1 = New("Part",RuinedHand1,"W3d1",{CanCollide = false, Transparency = 1,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-34.6890411, 9.78299999, -60.2759666, -1.00000072, -5.96046448e-008, -9.68575478e-008, 2.98023224e-008, 0.999997973, 0.00350391865, -1.49011612e-007, 0.00350413471, -0.999998927),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local real1 = New("Part",RuinedHand1,"a",{CanCollide = false, Transparency = 1,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-34.6890411, 9.78299999, -60.2759666, -1.00000072, -5.96046448e-008, -9.68575478e-008, 2.98023224e-008, 0.999997973, 0.00350391865, -1.49011612e-007, 0.00350413471, -0.999998927),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})

local RuinedHand2 = New("Model",Character,"RuinedHand2",{})
local W3d2 = New("Part",RuinedHand2,"W3d2",{CanCollide = false, Transparency = 1,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-43.8889885, 9.78300476, -60.2759781, -1.00000072, 5.96046448e-008, 9.68575478e-008, -2.98023224e-008, 0.999997973, 0.00350391865, 1.49011612e-007, 0.00350413471, -0.999998927),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local real2 = New("Part",RuinedHand2,"a",{CanCollide = false, Transparency = 1,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-34.6890411, 9.78299999, -60.2759666, -1.00000072, -5.96046448e-008, -9.68575478e-008, 2.98023224e-008, 0.999997973, 0.00350391865, -1.49011612e-007, 0.00350413471, -0.999998927),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})

local RuinedHand3 = New("Model",Character,"RuinedHand3",{})
local W3d3 = New("Part",RuinedHand3,"W3d3",{CanCollide = false, Transparency = 1,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.289032, 14.572999, -59.4759789, -1.00000012, 2.98023224e-008, -5.21540642e-008, -2.98023579e-008, 0.999994993, 0.00350406417, -5.96047158e-008, 0.00350397523, -0.999995232),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local vr1 = New("Weld",real1,"mot",{Part0 = RootPart,Part1 = real1,})
local vr2 = New("Weld",real2,"mot",{Part0 = RootPart,Part1 = real2,})
local moter1 = New("Weld",W3d1,"mot",{Part0 = RootPart,Part1 = W3d1,})
local moter2 = New("Weld",W3d2,"mot",{Part0 = RootPart,Part1 = W3d2,})
local moter3 = New("Weld",W3d3,"mot",{Part0 = RootPart,Part1 = W3d3,})

for _,v in pairs(Model:children()) do
if v:IsA("Part") then
v.CanCollide = false
end
end
--
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

function Armor() -- Don't like how the armor shows up at first while the character is invisible
LeftArmHandle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","LeftArmHandle",Vector3.new(1.0117017, 2.02340055, 1.01170254))
LeftArmHandleWeld=CFuncs.Weld.Create(m,Character["Left Arm"],LeftArmHandle,CFrame.new(0.015, 0, 0),CFrame.new(0, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.500605762, 0.582337081))
PartWeld=CFuncs.Weld.Create(m,LeftArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.438323975, -0.114891961, -0.0029296875, 1, 3.53828436e-005, -0.000341972976, 3.41876548e-005, -0.999999881, 0.000266408344, -0.000347743538, -0.00026641952, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Mulberry","Part",Vector3.new(0.25541088, 0.398441344, 0.480172575))
PartWeld=CFuncs.Weld.Create(m,LeftArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.458751678, -0.114888698, -0.00293731689, 1, 3.53828436e-005, -0.000341972976, 3.41876548e-005, -0.999999881, 0.000266408344, -0.000347743538, -0.00026641952, -1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0020904541, -0.448642731, -0.605269909, 5.94371049e-005, 1.85106055e-005, 1, -1, 0.000147737563, 5.36547304e-005, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.308547974, -0.448638916, -0.605277181, 5.94371049e-005, 1.85106055e-005, 1, -1, 0.000147737563, 5.36547304e-005, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.133708954, -0.431167603, -0.605293989, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.155349731, -0.448631287, -0.605272412, 5.94371049e-005, 1.85106055e-005, 1, -1, 0.000147737563, 5.36547304e-005, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.287002563, -0.431282043, -0.605283678, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.326065063, -0.431236267, -0.605268002, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.479263306, -0.431190491, -0.605278552, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.172805786, -0.431243896, -0.605256319, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.437179565, -0.448581696, -0.60526216, 5.94371049e-005, 1.85106055e-005, 1, -1, 0.000147737563, 5.36547304e-005, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0195350647, -0.431289673, -0.605306566, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.461807251, -0.448627472, -0.605276942, 5.94371049e-005, 1.85106055e-005, 1, -1, 0.000147737563, 5.36547304e-005, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.304367065, -0.448646545, -0.60526371, 5.94371049e-005, 1.85106055e-005, 1, -1, 0.000147737563, 5.36547304e-005, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.151168823, -0.448638916, -0.605267644, 5.94371049e-005, 1.85106055e-005, 1, -1, 0.000147737563, 5.36547304e-005, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.440177917, -0.431221008, -0.605271757, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.469100952, 0.41683197, -0.605265558, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.172821045, 0.416717529, -0.605305016, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.702371776, -0.00820922852, -0.545623779, 0.000128935877, 0.999999881, -5.33314487e-005, -0.000211441074, -5.3304273e-005, -1, -1, 0.000127643332, 0.000205654549))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.702369869, -0.0348815918, -0.512863159, 0.000128555926, 0.999999881, -5.28843921e-005, -1, 0.000127263353, 0.000189371844, 0.000195158253, 5.28593773e-005, 1))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.498031259, -0.00798797607, 0.475971222, 0.000128935877, 0.999999881, -5.33314487e-005, -0.000211441074, -5.3304273e-005, -1, -1, 0.000127643332, 0.000205654549))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.28698349, 0.416732788, -0.605268598, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.133693695, 0.416854858, -0.605279148, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0195579529, 0.416725159, -0.605292082, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.326019287, 0.416725159, -0.60531503, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.498088717, -0.0349082947, -0.512939453, 0.000128555926, 0.999999881, -5.28843921e-005, -1, 0.000127263353, 0.000189371844, 0.000195158253, 5.28593773e-005, 1))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.498029083, -0.00820159912, -0.545642853, 0.000128935877, 0.999999881, -5.33314487e-005, -0.000211441074, -5.3304273e-005, -1, -1, 0.000127643332, 0.000205654549))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.440158844, 0.416740417, -0.605256677, 1, -0.000147737563, -3.67819157e-005, 4.25642866e-005, 1.8513103e-005, 1, -0.00014903261, -0.999999881, 1.85194458e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.702377617, -0.00806427002, 0.475990295, 0.000128935877, 0.999999881, -5.33314487e-005, -0.000211441074, -5.3304273e-005, -1, -1, 0.000127643332, 0.000205654549))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.702378154, -0.0347557068, 0.508743286, 0.000128555926, 0.999999881, -5.28843921e-005, -1, 0.000127263353, 0.000189371844, 0.000195158253, 5.28593773e-005, 1))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,LeftArmHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.498033345, -0.0347824097, 0.508605957, 0.000128555926, 0.999999881, -5.28843921e-005, -1, 0.000127263353, 0.000189371844, 0.000195158253, 5.28593773e-005, 1))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 5, 0.300000012))
Sphere=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Sphere",Vector3.new(0.20432879, 0.20432891, 0.204328775))
SphereWeld=CFuncs.Weld.Create(m,LeftArmHandle,Sphere,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.476074219, 0.702378571, 0.513114929, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("SpecialMesh",Sphere,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 0.300000012))
Sphere=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Sphere",Vector3.new(0.20432879, 0.20432891, 0.204328775))
SphereWeld=CFuncs.Weld.Create(m,LeftArmHandle,Sphere,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.476043701, 0.702355623, -0.508605957, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("SpecialMesh",Sphere,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 0.300000012))
Sphere=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Sphere",Vector3.new(0.20432879, 0.20432891, 0.204328775))
SphereWeld=CFuncs.Weld.Create(m,LeftArmHandle,Sphere,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.545562744, 0.702369809, -0.508575439, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("SpecialMesh",Sphere,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 0.300000012))
Sphere=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Sphere",Vector3.new(0.20432879, 0.20432891, 0.204328775))
SphereWeld=CFuncs.Weld.Create(m,LeftArmHandle,Sphere,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.545597076, 0.4980883, -0.508575439, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("SpecialMesh",Sphere,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 0.300000012))
Sphere=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Sphere",Vector3.new(0.20432879, 0.20432891, 0.204328775))
SphereWeld=CFuncs.Weld.Create(m,LeftArmHandle,Sphere,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.545532227, 0.70239538, 0.513031006, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("SpecialMesh",Sphere,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 0.300000012))
Sphere=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Sphere",Vector3.new(0.20432879, 0.20432891, 0.204328775))
SphereWeld=CFuncs.Weld.Create(m,LeftArmHandle,Sphere,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.545562744, 0.498053908, 0.513145447, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("SpecialMesh",Sphere,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 0.300000012))
Sphere=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Sphere",Vector3.new(0.20432879, 0.20432891, 0.204328775))
SphereWeld=CFuncs.Weld.Create(m,LeftArmHandle,Sphere,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.476013184, 0.498069584, -0.508598328, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("SpecialMesh",Sphere,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 0.300000012))
Sphere=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Sphere",Vector3.new(0.20432879, 0.20432891, 0.204328775))
SphereWeld=CFuncs.Weld.Create(m,LeftArmHandle,Sphere,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.476043701, 0.498034835, 0.513122559, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("SpecialMesh",Sphere,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.300000012, 0.300000012))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","BlockPart",Vector3.new(1.03186011, 1.61419833, 1.03186023))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0296173096, -0.206890911, -0.00724029541, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","BlockPart",Vector3.new(1.1340245, 0.38822481, 1.23618889))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0806465149, -0.615587652, -0.0072555542, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
BlockPart=CFuncs.Part.Create(m,Enum.Material.Fabric,0,0,"Really black","BlockPart",Vector3.new(1.08294213, 0.20432891, 1.1340245))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0552101135, -0.31925866, -0.00730133057, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615546405, 0.610099792, -0.40265274, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 0.5))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615591347, -0.585273743, -0.402488708, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 0.5))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.674284816))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0996056497, -0.488204956, -0.0449676514, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1.5))
BlockPart=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615568459, 0.610153198, -0.0348625183, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 0.5))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.674284816))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0995882899, -0.525165558, -0.00215911865, 0.000130933797, 0.999999881, -3.73575203e-005, -1, 0.000129640088, 0.00019478357, 0.000200568087, 3.73313524e-005, 1))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1.53999996))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.61554879, -0.595466614, 0.00614929199, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615568757, 0.630607605, 0.00597000122, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615555465, -0.627300262, -0.00736236572, 0.000130933797, 0.999999881, -3.73575203e-005, -1, 0.000129640088, 0.000193783562, 0.000199568065, 3.73314797e-005, 1))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1.21000004))
BlockPart=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark stone grey","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.615548491, -0.585220337, -0.034702301, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 0.5))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.418873847, 0.245194674, 1.03186023))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.276817322, 0.722777784, -0.00722503662, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
BlockPart=CFuncs.Part.Create(m,Enum.Material.WoodPlanks,0,0,"Royal purple","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.674284816))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0996034965, -0.498390198, -0.0143318176, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1.5))
BlockPart=CFuncs.Part.Create(m,Enum.Material.WoodPlanks,0,0,"Royal purple","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.674284816))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0995925367, 0.464801788, 0.00168609619, 0.000130933797, 0.999999881, -3.73575203e-005, -1, 0.000129640088, 0.00019478357, 0.000200568087, 3.73313524e-005, 1))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1.56700003))
BlockPart=CFuncs.Part.Create(m,Enum.Material.WoodPlanks,0,0,"Royal purple","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.674284816))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0995789021, 0.495742798, -0.0451889038, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1.5))
BlockPart=CFuncs.Part.Create(m,Enum.Material.WoodPlanks,0,0,"Royal purple","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.674284816))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0995293558, -0.526256561, 0.000831604004, 0.000130933797, 0.999999881, -3.73575203e-005, -1, 0.000129640088, 0.00019478357, 0.000200568087, 3.73313524e-005, 1))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1.55700004))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.20432879, 0.20432891, 1.03186023))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.118488312, 0.79431659, -0.00726318359, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.674284816))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.099578917, 0.4947052, -0.0451889038, 0.000130933797, 0.999999881, -3.73575203e-005, -0.000216438566, -3.73293005e-005, -1, -1, 0.000129640073, 0.000210654034))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1.5))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.623202682, 0.439307153, 1.03186023))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.233989716, 0.819848657, -0.00727844238, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(0.429090351, 0.20432891, 0.674284816))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0995963886, 0.463737488, -0.00240325928, 0.000130933797, 0.999999881, -3.73575203e-005, -1, 0.000129640088, 0.00019478357, 0.000200568087, 3.73313524e-005, 1))
CFuncs.Mesh.Create("BlockMesh",BlockPart,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1.54999995))
BlockPart=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","BlockPart",Vector3.new(1.03288174, 0.245194659, 1.03288198))
BlockPartWeld=CFuncs.Weld.Create(m,LeftArmHandle,BlockPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0296516418, 0.620620668, -0.00731658936, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,LeftArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.517189026, -0.730190277, -0.575263977, 0.000245539792, -0.000146586797, -1, 0.719249189, -0.694751203, 0.000282603694, -0.694752395, -0.719250023, -6.91713649e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,LeftArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504592896, -0.857043505, 0.359676361, 0.000245539792, -0.000146586797, -1, -0.0698879734, -0.997554898, 0.00012866543, -0.997554898, 0.0698866397, -0.000260949659))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,LeftArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504562378, -0.936662674, -0.0744056702, 0.000245539792, -0.000146586797, -1, 0.275509149, -0.961298108, 0.000210155704, -0.961298525, -0.27551043, -0.000201206683))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,LeftArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.517227173, -0.936897278, -0.0741348267, 0.000245539792, -0.000146586797, -1, 0.275509149, -0.961298108, 0.000210155704, -0.961298525, -0.27551043, -0.000201206683))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,LeftArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.51713562, -0.857171297, 0.36000824, 0.000245539792, -0.000146586797, -1, -0.0698879734, -0.997554898, 0.00012866543, -0.997554898, 0.0698866397, -0.000260949659))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,LeftArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.517173767, -0.739536285, 0.587677002, 0.000245539792, -0.000146586797, -1, -0.242048025, -0.970264554, 8.13978186e-005, -0.970264316, 0.242046624, -0.000279327651))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,LeftArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504562378, -0.739466667, 0.587333679, 0.000245539792, -0.000146586797, -1, -0.242048025, -0.970264554, 8.13978186e-005, -0.970264316, 0.242046624, -0.000279327651))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,LeftArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50453949, -0.729885101, -0.575344086, 0.000245539792, -0.000146586797, -1, 0.719249189, -0.694751203, 0.000282603694, -0.694752395, -0.719250023, -6.91713649e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
RightArmHandle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","RightArmHandle",Vector3.new(1.0117017, 2.02340055, 1.01170254))
RightArmHandleWeld=CFuncs.Weld.Create(m,Character["Right Arm"],RightArmHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000328063965, 0.000292792916, 0.000274658203, 1, 6.48181754e-007, 2.88981391e-006, 6.48181754e-007, 0.999999881, -4.58399541e-010, 2.88981391e-006, -4.58399541e-010, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504295349, 0.0224113464, -0.154676437, 0.000263542519, -0.000128559201, -1, 0.970265985, -0.24203977, 0.00029243101, -0.242041096, -0.970266283, 5.95508573e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.349999994, 0.400000006))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.326925993))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.496276855, -0.176352754, -0.129585266, 1.00000012, -0.000117368945, -0.000372461276, -0.000118621472, -0.999999881, 9.2011076e-005, -0.000378251745, -9.19664453e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.20432891, 0.367791742))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388278961, -0.196606636, 0.320396423, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388439178, -0.378845215, 0.167448044, -1, 0.000147737563, 3.67819157e-005, -7.9684818e-005, -0.258836746, -0.965921104, -0.000132944187, -0.965921104, 0.258836895))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388267517, -0.19661504, -0.0985488892, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.38829422, -0.000816345215, -0.0369873047, -1, 0.000147737563, 3.67819157e-005, 6.32018055e-005, 0.642772079, -0.766057611, -0.000141528857, -0.766057432, -0.642772198))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.285402298, -0.295471191, -0.432151794, 0.500171542, 0.865926921, -0.000232767779, 0.865926564, -0.50017041, -0.000295688864, -0.000378248165, -5.36642074e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.349999994, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.20432891, 0.224761635))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388191223, 0.0322570801, -0.148422241, -1, 0.000147737563, 3.67819157e-005, 0.000141528857, 0.766057014, 0.642772675, 6.32018782e-005, 0.642772555, -0.766057074))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388195038, -0.23739624, -0.326156616, -1, 0.000147737563, 3.67819157e-005, 8.68119532e-005, 0.766031206, -0.642803371, -0.000128410262, -0.642803311, -0.766031444))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.349999994, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388202667, -0.153205872, -0.273921967, -1, 0.000147737563, 3.67819157e-005, 3.76535245e-005, 0.499982685, -0.866035581, -0.000150358697, -0.866035402, -0.499982744))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.349999994, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.03186011, 0.776449621, 1.03186023))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -0.625537932, 0.00699615479, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.224761769, 0.296276659))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388275146, -0.186428398, -0.338600159, -1, 0.000147737563, 3.67819157e-005, 0.000149032334, 0.999999881, -2.23378756e-005, -4.25648541e-005, -2.23315201e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388282776, -0.0581741333, -0.0940246582, -1, 0.000147737563, 3.67819157e-005, 0.000141528857, 0.766057014, 0.642772675, 6.32018782e-005, 0.642772555, -0.766057074))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.20432891, 0.316709578))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.388214111, 0.119171143, -0.0602874756, -1, 0.000147737563, 3.67819157e-005, -6.77998178e-005, -0.173666015, -0.98480463, -0.000139387237, -0.984804511, 0.17366603))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.227526337, -0.459342957, -0.405273438, -0.000203925607, -0.99999994, 5.83409928e-005, -1.00000012, 0.000202648298, 0.000364783366, -0.000370574882, -5.82661487e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.216838658, 0.216838822, 0.776449323))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.495471954, 0.432418823, 0.166039735, 1, 0.000219255715, -0.00039579341, -0.00040155524, -8.14841624e-005, -1, -0.000217994995, 0.999999881, -8.13983061e-005))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.800000012, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.173473358, 0.437576294, -0.299474716, 0.939617872, 0.342227578, -0.000403211976, -0.0004070047, -7.65974837e-005, -1, -0.342226416, 0.939617038, 6.53370662e-005))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0261306763, 0.437713623, -0.229450226, 0.866131127, -0.49981609, -0.00030468902, -0.000408853055, -8.88829672e-005, -1, 0.499817163, 0.866131425, -0.000278447667))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.245258331, 0.437797546, -0.0368394852, 0.984769821, 0.173865423, -0.000411116838, -0.000409536355, -7.77006935e-005, -1, -0.173864245, 0.984769404, -6.31882904e-006))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.161447525, 0.175319672, -0.405158997, -0.499822646, 0.866127074, 0.000139049152, 0.866128087, 0.499823779, -0.000350035174, -0.000378454744, -5.45206749e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.184986115, -0.398830414, -0.405380249, 0.7659145, -0.642941415, -0.00024379525, -0.642942488, -0.765915334, 0.000285808288, -0.000376264245, -6.21579675e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.238075256, -0.0317344666, -0.405128479, -0.499822646, 0.866127074, 0.000139049152, 0.866128087, 0.499823779, -0.000350035174, -0.000378454744, -5.45206749e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.20432891, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0851974487, 0.296497345, -0.405174255, 0.500171542, 0.865926921, -0.000235747983, 0.865926564, -0.50017041, -0.000293662306, -0.000377983903, -5.72584322e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 1.17489111, 0.367791772))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.455463409, -0.0221786499, 0.442047179, 1, -0.000117756375, -0.000372785726, -0.000378575787, -8.74835532e-005, -1, 0.000119009223, 0.999999881, -8.75283658e-005))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.572120905, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.496189117, -0.329588413, -0.395172119, 1.00000012, -0.000117368945, -0.000372461276, -0.000118621472, -0.999999881, 9.2011076e-005, -0.000378251745, -9.19664453e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.357575566, 0.204328775))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.496147156, 0.13525632, -0.395133972, 1.00000012, -0.000117368945, -0.000372461276, -0.000118621472, -0.999999881, 9.2011076e-005, -0.000378251745, -9.19664453e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.800000012, 1.10000002))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504524231, 0.468618393, -0.209846497, 0.00030053372, -0.00018155307, -1, -0.484704494, 0.874677181, -0.000307273061, 0.874678075, 0.484705657, 0.000179925206))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.300000012, 0.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504516602, 0.421760559, 0.405538559, 0.000272540521, -0.000140570803, -1, -0.994534075, -0.10441269, -0.000262121524, -0.104411356, 0.994533956, -0.000168863568))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.300000012, 0.300000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504447937, 0.383110046, 0.154088974, 0.000271539786, -0.000144593927, -1, -0.961293817, -0.275526524, -0.000226745877, -0.275525302, 0.961293459, -0.000215407039))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.349999994, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504211426, 0.418453217, 0.430289507, -0.000270541554, 0.000133567024, 1, 0.997555554, -0.0698769838, 0.000284979236, 0.0698783174, 0.997555673, -0.000113932976))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.349999994, 0.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504425049, 0.29598999, -0.320083618, 0.000272540085, -0.000143580837, -1, -0.913495362, 0.406848073, -0.000312660093, 0.406849205, 0.913495779, -1.79274466e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.699999988, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504341125, 0.0844573975, -0.0917243958, 0.000261541747, -0.000133565642, -1, -0.913494468, 0.40685004, -0.000298538478, 0.406851172, 0.913494885, -1.32526311e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.899999976, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504241943, 0.160745621, -0.344959259, -0.000224551739, 7.25848513e-005, 1, 0.55929637, 0.828968465, 6.86519197e-005, -0.82896781, 0.559295177, -0.000231534301))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.600000024, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410995483, -0.470344543, 0.0471916199, -1, 0.000116743155, 3.67826069e-005, 6.2420324e-005, 0.173694044, 0.984799623, 0.00010886728, 0.984799683, -0.173694074))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410968781, -0.0135574341, -0.177940369, 1, -0.000147737563, -3.67819157e-005, 7.2914263e-005, 0.69463259, -0.719364643, 0.000136784278, 0.719364524, 0.694632947))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410972595, -0.109760284, -0.0746383667, 1, -0.000147737563, -3.67819157e-005, 0.000143772035, 0.994518042, -0.104565434, 5.79129264e-005, 0.104565397, 0.994518161))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50453186, 0.549198151, -0.0208511353, 0.000282533205, -0.000185603378, -1, -0.819082558, 0.57367456, -0.00034262886, 0.573675692, 0.819083273, 1.33724207e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.300000012, 0.300000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.483680725, 0.272553444, -0.396469116, 0.000288938085, 0.0521913469, -0.99863714, 0.000111813541, 0.998637021, 0.0521913953, 1, -0.000125445484, 0.000288488518))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.300000012, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410972595, -0.119522095, 0.057723999, 1, -0.000147737563, -3.67819157e-005, 0.000122033991, 0.587812066, 0.808997691, -9.55414725e-005, -0.808997452, 0.587812245))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410968781, 0.103988647, -0.145017624, 1, -0.000147737563, -3.67819157e-005, -3.20669205e-005, 0.0697234422, -0.997566521, 0.000151642118, 0.997566342, 0.0697234422))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410964966, -0.250419617, 0.171031952, -1, 0.000114746399, 3.67826324e-005, -1.53697183e-005, 0.224910572, -0.97437942, -0.000122634956, -0.974379301, -0.224910572))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410957336, -0.0422668457, 0.285446167, -1, 0.000114746399, 3.67826324e-005, -0.000103830207, -0.601848364, -0.798610389, -6.70543523e-005, -0.79861033, 0.601848423))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410961151, -0.0189056396, 0.190279007, 1, -0.000147737563, -3.67819157e-005, 3.20669205e-005, -0.0697234422, 0.997566521, -0.000151642118, -0.997566342, -0.0697234422))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410961151, 0.202838898, -0.0363540649, 1, -0.000147737563, -3.67819157e-005, -0.000147369865, -0.829057157, -0.559163868, 4.80528724e-005, 0.559163809, -0.829057395))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410961151, 0.157485962, -0.132907867, 1, -0.000147737563, -3.67819157e-005, -0.000103596474, -0.438400656, -0.89877975, 0.000115300703, 0.898779631, -0.438400716))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410961151, -0.37702179, -0.0033416748, -1, 0.000114746399, 3.67826324e-005, 2.75017555e-005, 0.544602752, -0.838694274, -0.000120498778, -0.838694036, -0.544602811))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504508972, 0.24685958, -0.461833954, 0.000283539703, -0.000144595819, -1, 0.000129905311, 0.999999881, -0.000144559541, 1, -0.000128574728, 0.000289338117))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.300000012, 0.300000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.41091156, -0.112014771, 0.275939941, 1, -0.000106737025, -3.67828397e-005, -8.56020197e-005, -0.933564425, 0.358409822, -7.84567528e-005, -0.358409703, -0.933564544))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.275843859))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410987854, 0.0453997925, 0.307884216, 1, -0.000111751266, -3.67827379e-005, -0.000113044436, -0.99999994, 4.43603894e-005, -4.25673643e-005, -4.43553618e-005, -1))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410964966, 0.131492615, -0.246994019, 1, -0.000114746399, -3.67826324e-005, -9.44891872e-005, -0.939675748, 0.342066318, -7.96902168e-005, -0.342066258, -0.939675927))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.400000006))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410923004, -0.195152283, 0.304946899, -1, 0.000116743155, 3.67826069e-005, 0.000117783602, 0.766076028, 0.642749846, 4.3264783e-005, 0.642749786, -0.766076267))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410896301, 0.45009613, 0.185099363, -1, 0.000116743155, 3.67826069e-005, 3.84225677e-005, -0.0348523967, 0.99939245, 0.000119450931, 0.99939245, 0.0348524116))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.41091156, -0.412086487, 0.35200882, 1, -0.000115752227, -3.67825705e-005, -8.0032718e-005, -0.342061341, -0.939677656, 9.54284333e-005, 0.939677477, -0.3420614))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410972595, 0.362792969, 0.119937897, -1, 7.3745854e-005, 3.67835273e-005, 6.9411195e-005, 0.406802952, 0.913516104, 5.12315346e-005, 0.913515866, -0.406803012))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.400000006))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410907745, -0.0938911438, 0.183761597, -1, 0.000116743155, 3.67826069e-005, -0.000108874476, -0.984799147, 0.173697144, 6.24205131e-005, 0.173697129, 0.984799147))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.410972595, -0.214584351, -0.18421936, 1, -0.000114746399, -3.67826324e-005, -0.000121785037, -0.866048515, -0.499960005, 2.11590668e-005, 0.499959975, -0.866048634))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410900116, -0.329032898, -0.229385376, -1, 8.67396666e-005, 3.67832727e-005, -5.00770693e-005, -0.087201342, -0.996190786, -8.39964559e-005, -0.996190786, 0.0872013792))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410934448, 0.0279159546, 0.434230804, -1, 0.000116743155, 3.67826069e-005, 9.58899691e-005, 0.500041127, 0.866001785, 8.09386984e-005, 0.866001606, -0.500041246))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410919189, -0.203201294, 0.225597382, -1, 0.000116743155, 3.67826069e-005, -3.7389691e-007, -0.341975003, 0.939709127, 0.000125485472, 0.939709008, 0.341974974))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.410980225, 0.144927979, 0.155738831, -1, 0.000116743155, 3.67826069e-005, 8.03718576e-005, 0.342064261, 0.939676583, 9.63669227e-005, 0.939676464, -0.342064351))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417160034, 0.085773468, -0.189151764, -0.000344439643, -5.15180727e-005, -1, -0.866087675, -0.499893814, 0.000319062994, -0.499892741, 0.866086662, 0.000124674101))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504264832, -0.250984192, -0.259490967, 0.000228549266, -8.85594054e-005, -1, -0.559294462, -0.828969836, -5.76447565e-005, -0.828969181, 0.559293211, -0.000243782881))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417243958, 0.244930267, -0.0811271667, -0.000403443584, -8.0506652e-005, -1, 0.17351748, -0.984830439, 1.0284165e-005, -0.984831035, -0.173518762, 0.000405601342))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.41734314, 0.298152924, -0.0665493011, -0.000344439643, -5.15180727e-005, -1, -0.866087675, -0.499893814, 0.000319062994, -0.499892741, 0.866086662, 0.000124674101))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.699999988, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.51153183, 0.0897979736, -0.158996582, 1, -0.000117741496, -0.000241784524, -0.000250321988, -0.766075134, -0.642750919, -0.000113137648, 0.642750978, -0.766075313))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.5115242, 0.153572083, -0.16759491, 1, -0.000117741496, -0.000241784524, -0.000196534165, -0.939709306, -0.34197405, -0.000191927538, 0.341974109, -0.939709485))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511508942, -0.13369751, 0.106483459, 1, -0.000117741496, -0.000241784524, 2.71728131e-005, 0.939674377, -0.342070103, 0.000273349637, 0.342070013, 0.939674616))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511512756, -0.126716614, -0.0299186707, 1, -0.000117741496, -0.000241784524, -0.000154883761, 0.499955595, -0.866051197, 0.000226875345, 0.866051018, 0.499955624))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511512756, 0.229206085, -0.138748169, 1, -0.000117741496, -0.000241784524, -7.42440752e-005, -0.984798908, 0.173698202, -0.000264480303, -0.173698187, -0.984798968))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511497498, 0.237724304, 0.181190476, 1, -0.000117741496, -0.000241784524, 0.000247569813, 4.74790759e-005, 1, -0.00011903447, -0.999999881, 4.75084635e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.296276689))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511455536, -0.400665283, -0.116775513, 1, -0.000118747324, -0.000239784378, -0.000271812751, -0.342066288, -0.939675927, 2.88048632e-005, 0.939675808, -0.342066348))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511489868, 0.0188293457, 0.251922607, 1, -0.000117741496, -0.000241784524, 0.00022687536, 0.866050601, 0.49995628, 0.000154883688, -0.49995622, 0.86605078))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511554718, 0.0990829468, 0.100013733, 1, -0.000117741496, -0.000241784524, -0.000266168005, -0.642823577, -0.766014159, -6.79542354e-005, 0.766014099, -0.642823696))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.5115242, 0.0646362305, 0.00978851318, 1, -0.000117741496, -0.000241784524, 0.000273349404, 0.342065394, 0.939676285, -2.71807221e-005, -0.939676106, 0.342065483))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511535645, -0.0146827698, 0.00257873535, 1, -0.000117741496, -0.000241784524, -2.71879162e-005, -0.939675093, 0.342068017, -0.000273351383, -0.342067957, -0.939675331))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.491127014, 0.453292847, 0.171007797, 1, -0.000119745702, -0.000241784408, 0.000247569929, 4.84923949e-005, 1, -0.000121038604, -0.999999881, 4.8522259e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511634827, 0.06980896, -0.0550994873, 1, -0.000117741496, -0.000241784524, 0.000196526613, 0.939710021, 0.341971993, 0.000191927742, -0.341972053, 0.939710259))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.511550903, 0.609474182, 0.531238556, -1, 0.000113755435, 0.000240784531, 0.000271043566, 0.342068374, 0.939675152, 2.37680615e-005, 0.939674973, -0.342068434))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511665344, 0.24779892, -0.21282196, 1, -0.000117748947, -0.000241783651, 7.42364064e-005, 0.984798372, -0.173700735, 0.000264478615, 0.17370075, 0.984798431))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.51166153, 0.148300171, -0.0453567505, 1, -0.000117741496, -0.000241784524, -6.79472723e-005, 0.766011059, -0.642827451, 0.000266168063, 0.642827272, 0.766011119))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511680603, 0.618110657, 0.452018738, 1, -0.000115752191, -0.000241784524, -0.00019261126, 0.341972828, -0.939710021, 0.000194656575, 0.939709842, 0.341972768))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511680603, 0.345146179, 0.149419785, 1, -0.000117741496, -0.000241784524, -0.000223140451, 0.173599422, -0.984816372, 0.000160211639, 0.984816313, 0.173599422))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511569977, 0.0109024048, -0.248100281, 1, -0.000117741496, -0.000241784524, 0.000160211508, 0.984816611, 0.173597425, 0.000223140611, -0.17359744, 0.98481673))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511627197, 0.129051208, 0.18813324, 1, -0.000117741496, -0.000241784524, -0.000154883761, 0.499955595, -0.866051197, 0.000226875345, 0.866051018, 0.499955624))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511695862, 0.616630554, 0.334281921, 1, -0.000115752191, -0.000241784524, -6.94746414e-005, 0.766011059, -0.642827451, 0.000264882838, 0.642827272, 0.766011119))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.511581421, -0.0587234497, 0.677345276, -1, 0.000113755435, 0.000240784531, 0.000192356209, -0.341971576, 0.939710438, 0.000192436244, 0.939710259, 0.341971576))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.511631012, 0.463775635, 0.638645172, -1, 0.000113755435, 0.000240784531, 0.000271043566, 0.342068374, 0.939675152, 2.37680615e-005, 0.939674973, -0.342068434))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511676788, -0.0533447266, 0.698778152, 1, -0.000115752191, -0.000241784524, -0.000264133792, -0.173697159, -0.984799087, 7.2277202e-005, 0.984799027, -0.173697159))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.511615753, -0.319847107, 0.672073364, -1, 0.000113755435, 0.000240784531, 7.03688638e-005, -0.766010165, 0.642828584, 0.000262826507, 0.642828465, 0.766010225))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.511600494, 0.313552856, 0.584598541, -1, 0.000113755435, 0.000240784531, 0.000271043566, 0.342068374, 0.939675152, 2.37680615e-005, 0.939674973, -0.342068434))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.51166153, -0.184135437, 0.675708771, 1, -0.000115752191, -0.000241784524, -0.000264133792, -0.173697159, -0.984799087, 7.2277202e-005, 0.984799027, -0.173697159))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.511615753, -0.138504028, 0.683759689, -1, 0.000113755435, 0.000240784531, 0.000222849951, -0.173598513, 0.984816492, 0.000156098875, 0.984816432, 0.173598528))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511665344, 0.0774307251, 0.705162048, 1, -0.000117741496, -0.000241784524, -0.000273349462, -0.342067122, -0.939675629, 2.71805529e-005, 0.93967545, -0.342067212))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.296276689))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511566162, 0.399703979, 0.149036407, 1, -0.000117741496, -0.000241784524, 0.000273351296, 0.342066258, 0.939675927, -2.71806366e-005, -0.939675808, 0.342066348))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.416992188, 0.459632874, 0.00236076862, -0.000396448741, -0.00011150194, -1, 1.00000012, -0.000118754753, -0.000390655739, -0.000120005861, -0.999999881, 0.000111549271))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511650085, 0.416511536, 0.525382996, 1, -0.000115752191, -0.000241784524, -0.00019261126, 0.341972828, -0.939710021, 0.000194656575, 0.939709842, 0.341972768))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.41733551, 0.233234406, 0.0431079865, -0.000389445486, -9.04924964e-005, -1, -0.939651012, 0.342134237, 0.000329551112, 0.342135549, 0.939651072, -0.000216297456))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417289734, -0.156667709, 0.0191993713, -0.000339440623, -5.64659931e-005, -1, 0.34189257, -0.939738572, -6.10124189e-005, -0.939739287, -0.341893673, 0.000332859723))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.511569977, 0.00520896912, 0.39793396, 1, -0.000117748947, -0.000241783651, 7.42364064e-005, 0.984798372, -0.173700735, 0.000264478615, 0.17370075, 0.984798431))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417243958, 0.0805511475, 0.250875473, -0.000396447169, -0.000101518206, -1, -0.939651966, 0.342131168, 0.000332358759, 0.342132419, 0.939652205, -0.000229052181))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417190552, -0.231136322, 0.100609779, -0.000371439994, -5.55074948e-005, -1, -0.984786391, 0.173769146, 0.000350451679, 0.173770443, 0.984786391, -0.000118204414))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.41733551, 0.224536896, -0.0618000031, -0.000389446213, -9.54992574e-005, -1, -0.866084218, -0.499899626, 0.00038002769, -0.499898553, 0.866083205, 0.00010908363))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.430000007, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.417160034, 0.255838394, -0.430774689, 0.000386443135, 7.55024375e-005, 1, -0.499885589, 0.866090715, 0.0001248958, -0.866091669, -0.499886721, 0.000367432192))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.200000003, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.416999817, -0.275058746, 0.355922699, -0.000391443638, -7.84819276e-005, -1, -0.642685592, 0.766129196, 0.000187732905, 0.766130328, 0.642686427, -0.000345908309))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.416999817, -0.283462524, -0.326116562, 0.000390444708, 8.55153776e-005, 1, -0.86596179, 0.500109196, 0.000290337892, -0.500110388, -0.865962446, 0.000266428367))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.417144775, 0.175773621, -0.36309433, 0.000385444175, 8.25061143e-005, 1, 0.17377694, 0.984785199, -0.000147228187, -0.984785259, 0.173775703, 0.000359550351))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.41708374, 0.656784058, 0.361309052, 0.000403443235, 7.64833676e-005, 1, 0.866086483, 0.499895841, -0.000382644823, -0.499894738, 0.866085529, 0.000132548375))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417121887, -0.273510188, -0.377922058, -0.00039144812, -0.000107479427, -1, -0.000125929379, -0.99999994, 0.000107528424, -1.00000012, 0.000124670521, 0.000385655032))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.417114258, 0.527671814, 0.117294312, 0.000399442564, 7.24904676e-005, 1, 0.866086483, 0.499895841, -0.000377183896, -0.499894738, 0.866085529, 0.000134006681))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.417106628, 0.498235762, -0.367706299, 0.000391444686, 8.55152175e-005, 1, 0.000131913781, 0.999999881, -8.55665203e-005, -1, 0.000130660788, 0.000385653751))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.417114258, -0.301620483, -0.465762138, 0.00038944374, 7.94954976e-005, 1, -0.98478663, 0.173767999, 0.000364013307, -0.17376928, -0.98478657, 0.000144955571))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417190552, 0.149868011, -0.202709198, -0.00038744061, -5.95283491e-005, -1, 0.765962422, -0.642884314, -0.000254067825, -0.642885566, -0.765963256, 0.000290961121))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 0.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.417068481, 0.459686279, 0.436964452, 0.000403446611, 9.84773505e-005, 1, 1.00000012, -0.000118754753, -0.000397655182, 0.000120006807, 0.999999881, -9.85254956e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417190552, -0.276691437, 0.103364944, -0.000395444047, -8.25045863e-005, -1, -0.939734519, -0.341907352, 0.000394390052, -0.34190613, 0.939733624, 5.56958839e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417366028, 0.413482666, 0.0416736603, -0.000389445486, -9.04924964e-005, -1, -0.865962803, 0.500107288, 0.000286984112, 0.500108421, 0.865963399, -0.00027023803))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.430000007, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417137146, -0.399623871, -0.145516396, -0.000394444418, -8.34882085e-005, -1, -0.984829068, -0.173529476, 0.000397255935, -0.173528224, 0.984828591, -1.47777164e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417182922, -0.285552979, 0.0272340775, -0.000394444069, -8.25047318e-005, -1, -0.984786272, 0.17377013, 0.000368414272, 0.173771366, 0.984786272, -0.00014878872))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417243958, 0.0754985809, -0.157909393, -0.000396443676, -8.05076852e-005, -1, -0.342140973, -0.939649105, 0.000209311504, -0.939648867, 0.342139602, 0.000339541904))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417175293, -0.338485718, 0.120929718, -0.000390444038, -8.14921077e-005, -1, -0.765962422, 0.642884314, 0.000242248134, 0.642885625, 0.765963197, -0.000309715339))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417236328, -0.0827102661, 0.0710887909, -0.000400449906, -0.000118475073, -1, -0.939652264, 0.342130303, 0.000330318551, 0.342131466, 0.939652503, -0.000246354903))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417289734, 0.123802185, 0.0236358643, -0.00039244676, -9.84789949e-005, -1, -0.642691612, 0.766124129, 0.000173060107, 0.766125202, 0.642692447, -0.000359527301))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417167664, 0.186263442, -0.388122559, -0.00039144812, -0.000107479427, -1, -0.000125929379, -0.99999994, 0.000107528424, -1.00000012, 0.000124670521, 0.000385655032))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417289734, 0.0655403137, -0.000379562378, -0.000396447955, -0.000106495165, -1, -0.939732671, -0.341912329, 0.000403535814, -0.341911107, 0.939731777, 3.34964789e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417243958, -0.113883972, 0.0671386719, -0.000390446512, -9.74958384e-005, -1, -0.341900557, 0.939735591, 3.98970442e-005, 0.939736485, 0.341901779, -0.000394819508))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417358398, 0.214199066, 0.262556076, -0.000389446213, -9.54992574e-005, -1, -0.866084218, -0.499899626, 0.00038002769, -0.499898553, 0.866083205, 0.00010908363))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.430000007, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417411804, 0.384922028, 0.137599945, -0.000392445567, -9.15052951e-005, -1, -0.939733267, -0.341910571, 0.000394649367, -0.341909379, 0.939732552, 4.62137323e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.245194674, 0.25541091))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417381287, 0.203924179, 0.28465271, -0.000391446025, -9.44856729e-005, -1, -0.342136979, -0.939650536, 0.000220734597, -0.939650416, 0.342135727, 0.000330064388))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504364014, 0.209217072, -0.0522956848, 0.000259542023, -0.000131598383, -1, -0.559294462, -0.828969836, -3.93007867e-005, -0.828969181, 0.559293211, -0.000293546414))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.699999988, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504386902, 0.148723602, 0.193184853, 0.000262542424, -0.000129572334, -1, -0.96129477, -0.275523454, -0.000222236151, -0.275522202, 0.961294293, -0.000198487061))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.699999988, 1.29999995))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504257202, -0.134284973, -0.00554275513, 0.000261541747, -0.000133565642, -1, -0.913494468, 0.40685004, -0.000298538478, 0.406851172, 0.913494885, -1.32526311e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.899999976, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50428009, -0.195178986, 0.289588928, 0.000260543893, -0.000120571785, -1, -0.809087217, -0.587689757, -0.000144619378, -0.587688923, 0.809086084, -0.000254069426))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.400000006, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504295349, 0.0224113464, -0.154676437, 0.000263542519, -0.000128559201, -1, 0.970265985, -0.24203977, 0.00029243101, -0.242041096, -0.970266283, 5.95508573e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.349999994, 0.400000006))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504394531, 0.00591659546, 0.084854126, 0.000259542023, -0.000131598383, -1, -0.559294462, -0.828969836, -3.93007867e-005, -0.828969181, 0.559293211, -0.000293546414))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.699999988, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504203796, 0.717723846, 0.156257629, -0.000248541008, 0.000139553944, 1, 0.694746673, 0.719255567, 7.63125136e-005, -0.719254673, 0.694745421, -0.000279876695))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504386902, 0.0999422073, 0.349708557, 0.000261540321, -0.000142595687, -1, 0.275510103, -0.96129775, 0.000210727507, -0.961298227, -0.275511324, -0.000217687237))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.899999976, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504226685, 0.298980713, -0.314445496, -0.000224551972, 7.15715869e-005, 1, 0.898846865, 0.43826443, 0.000175664987, -0.438263148, 0.89884603, -0.000165278834))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.600000024, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504394531, 0.00591659546, 0.084854126, 0.000259542023, -0.000131598383, -1, -0.559294462, -0.828969836, -3.93007867e-005, -0.828969181, 0.559293211, -0.000293546414))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.699999988, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504341125, 0.0844573975, -0.0917243958, 0.000261541747, -0.000133565642, -1, -0.913494468, 0.40685004, -0.000298538478, 0.406851172, 0.913494885, -1.32526311e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.899999976, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.265627563, 0.347358912))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.496185303, -0.033338815, -0.231636047, 1.00000012, -0.000117368945, -0.000372461276, -0.000118621472, -0.999999881, 9.2011076e-005, -0.000378251745, -9.19664453e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.800000012, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.224761769, 0.245194495))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.496154785, 0.0279518738, 0.268928528, 1.00000012, -0.000117368945, -0.000372461276, -0.000118621472, -0.999999881, 9.2011076e-005, -0.000378251745, -9.19664453e-005, -1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.20432879, 0.34735921, 0.418873906))
PartWeld=CFuncs.Weld.Create(m,RightArmHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.496192932, 0.140328363, 0.1820755, 1.00000012, -0.000117368945, -0.000372461276, -0.000118621472, -0.999999881, 9.2011076e-005, -0.000378251745, -9.19664453e-005, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.800000012, 1.10000002))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504501343, 0.496192932, 0.182048798, 0.000278538238, -0.000154578782, -1, -0.997555554, 0.069876954, -0.000294424593, 0.0698782951, 0.997555673, -0.000134334594))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.300000012, 0.300000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504295349, 0.526973724, 0.0621414185, -0.000248541008, 0.000139553944, 1, 0.559296191, 0.828968585, 2.65537165e-005, -0.828967929, 0.559294999, -0.000288876297))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50440979, 0.132255554, 0.0659236908, 0.000260543165, -0.000124565253, -1, -0.913495183, 0.406848371, -0.000293964404, 0.406849533, 0.913495719, -5.43762144e-006))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.400000006, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504180908, 0.371734619, -0.189682007, 0.000231549464, -8.656313e-005, -1, 0.913494408, -0.40685004, 0.000252017577, -0.406851351, -0.913494885, -1.74815414e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504257202, -0.402713776, 0.0517959595, 0.000258544402, -0.000117591262, -1, 0.898846149, 0.438265622, 0.000186049961, 0.43826443, -0.898845375, 0.000221541355))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.300000012, 0.699999988))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50428009, -0.0886383057, 0.0971984863, 0.000259542488, -0.000129571839, -1, -0.913495183, 0.406848371, -0.000295087229, 0.406849504, 0.91349566, -1.04182855e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.699999988, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504249573, 0.213688374, -0.24924469, -0.000226548815, 9.15691489e-005, 1, 0.0698869452, 0.997555017, -7.51097541e-005, -0.997554898, 0.0698856264, -0.000238159919))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504272461, -0.273704529, 0.0105292797, 0.000258541375, -0.000135591763, -1, -0.997555614, 0.0698769987, -0.000273149926, 0.0698783323, 0.997555673, -0.000116791285))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504257202, 0.372005463, 0.267033577, -0.000228548219, 9.45794454e-005, 1, 0.96129477, 0.275523484, 0.000199199072, -0.275522202, 0.961294353, -0.000155482398))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504203796, -0.302482605, -0.169031143, -0.000228548772, 9.15694254e-005, 1, -0.828965902, 0.559297919, -0.000245465635, -0.559299171, -0.828966618, -5.51506855e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504150391, -0.158781052, 0.506530762, -0.000224551128, 7.65783479e-005, 1, -0.55929637, -0.828968465, -6.53411553e-005, 0.82896781, -0.559295177, 0.000233767438))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.600000024, 0.300000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504264832, 0.147003174, -0.495708466, -0.000252541358, 0.000136604111, 1, -0.587679029, 0.809093356, -0.000262336369, -0.809094489, -0.587679863, -0.000128725864))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.504196167, -0.602104187, -0.254190445, -0.000258542714, 0.000127574982, 1, -0.96129477, -0.275523454, -0.000218941539, 0.275522202, -0.961294293, 0.000195465007))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.5, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.50428009, -0.195178986, 0.289588928, 0.000260543893, -0.000120571785, -1, -0.809087217, -0.587689757, -0.000144619378, -0.587688923, 0.809086084, -0.000254069426))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.400000006, 0.800000012))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,RightArmHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504386902, 0.148723602, 0.193184853, 0.000262542424, -0.000129572334, -1, -0.96129477, -0.275523454, -0.000222236151, -0.275522202, 0.961294293, -0.000198487061))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.0500000007, 0.699999988, 1.29999995))
LeftLegHandle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","LeftLegHandle",Vector3.new(1.0117017, 2.02340055, 1.01170254))
LeftLegHandleWeld=CFuncs.Weld.Create(m,Character["Left Leg"],LeftLegHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000335693359, -0.000207066536, 0.000152587891, 1, 6.48181754e-007, 2.88981391e-006, 6.48181754e-007, 0.999999881, -4.58399541e-010, 2.88981391e-006, -4.58399541e-010, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(1.03186011, 2.02285647, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,LeftLegHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0191879272, 0.0484238863, -0.00722503662, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.735583544, 0.234978229, 0.582337022))
BlockWeld=CFuncs.Weld.Create(m,LeftLegHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0192871094, 0.937266469, 0.242759705, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(1.04207659, 0.38822481, 1.04207695))
BlockWeld=CFuncs.Weld.Create(m,LeftLegHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0193328857, 0.866779923, -0.00755310059, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
RightLegHandle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","RightLegHandle",Vector3.new(1.0117017, 2.02340055, 1.01170254))
RightLegHandleWeld=CFuncs.Weld.Create(m,Character["Right Leg"],RightLegHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000335693359, -0.000207066536, 0.000152587891, 1, 6.48181754e-007, 2.88981391e-006, 6.48181754e-007, 0.999999881, -4.58399541e-010, 2.88981391e-006, -4.58399541e-010, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(1.03186011, 2.02285647, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,RightLegHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0191879272, 0.0484238863, -0.00722503662, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Block",Vector3.new(0.735583544, 0.234978229, 0.582337022))
BlockWeld=CFuncs.Weld.Create(m,RightLegHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0192871094, 0.937266469, 0.242759705, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(1.04207659, 0.38822481, 1.04207695))
BlockWeld=CFuncs.Weld.Create(m,RightLegHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0193328857, 0.866779923, -0.00755310059, 1, -0.000117227413, -0.000189372367, 0.000118527452, 0.99999994, -5.28527162e-005, 0.000195158253, 5.28295895e-005, 1))
TorsoHandle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","TorsoHandle",Vector3.new(2.02340341, 2.02340055, 1.01170254))
TorsoHandleWeld=CFuncs.Weld.Create(m,Character["Torso"],TorsoHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.2479248e-005, 0.000236198306, 0.000152587891, 1, 6.4818812e-007, 2.88982847e-006, 6.4818812e-007, 0.999999881, -4.57326621e-010, 2.88982847e-006, -4.57326621e-010, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark indigo","Part",Vector3.new(0.25541088, 0.75601697, 0.633419156))
Part.Shape = "Cylinder"
PartWeld=CFuncs.Weld.Create(m,TorsoHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.43221283, -0.279815674, -0.0484636724, -0.000242504699, 0.00010346956, -1, -1, 8.66204355e-005, 0.000236734166, 8.79392246e-005, 0.999999881, 0.000103448117))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.106277466, 0.437164307, -0.523692966, 1, -0.000147648156, -3.67818939e-005, 4.25642938e-005, 1.86005291e-005, 1, -0.000148943203, -0.999999881, 1.86068664e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Chain=CFuncs.Part.Create(m,Enum.Material.Ice,0,0,"Medium stone grey","Chain",Vector3.new(1.02164352, 1.02164447, 2.04328704))
ChainWeld=CFuncs.Weld.Create(m,TorsoHandle,Chain,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0293579102, 0.0640106201, -1.84176445, 7.15616552e-005, -1.86178404e-005, -1, 0.866100311, 0.49987179, 5.76783059e-005, 0.499870747, -0.866099358, 5.47864438e-005))
CFuncs.Mesh.Create("SpecialMesh",Chain,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=29750668",Vector3.new(0, 0, 0),Vector3.new(1.22597265, 1.02164447, 1.02164352))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(1.03186011, 0.766233265, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0163879395, -1.57710409, -0.778968811, -0.00032053265, 5.74369406e-005, -1, -0.173681721, -0.984802067, -1.89667662e-006, -0.984802067, 0.17368035, 0.000319945102))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(1.23618877, 1.14424181, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.727314, 0.435474396, 0.0424423218, -0.000128910935, -0.939656138, 0.34212032, -1, 0.000150963664, 3.55795091e-005, -9.09497903e-005, -0.342120141, -0.939656258))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.623202622, 0.326926231, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.56653595, -2.16213417, -0.778991699, 0.029844597, 0.171066761, -0.984807372, -0.171098381, -0.969830513, -0.173651263, -0.984802127, 0.173680142, 0.000319354323))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.20432879, 0.899047136, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.098110199, 0.144485474, -0.0379180908, 0.865963578, -0.500106037, -0.000136621151, 0.500107229, 0.865964115, -0.000138875926, 0.000193541375, 5.19355781e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.657678604, 0.528282166, -0.0202674866, 0.5001086, 0.86596328, -0.000128862215, -0.000212473416, -2.94381189e-005, -1, -0.865962803, 0.500107348, 0.00016426653))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.427041054, 0.528305054, -0.141517639, 0.173775822, 0.984785497, -7.54407811e-005, -0.000217549677, -3.92366128e-005, -1, -0.984785318, 0.173774511, 0.000201729519))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.651926041, 0.528335571, -0.153358459, 0.5001086, 0.86596328, -0.000128862215, -0.000212473416, -2.94381189e-005, -1, -0.865962803, 0.500107348, 0.00016426653))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.248695374, 0.528419495, 0.43561554, -0.499885619, 0.866090834, 5.09700003e-005, -0.000208811485, -5.83334549e-005, -1, -0.866091549, -0.499886632, 0.00020500453))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.19166483, 0.528396606, 0.409698486, 0.000130843444, 0.999999881, -5.04387062e-005, -0.000213440624, -5.04108903e-005, -1, -1, 0.000129550681, 0.000207654404))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.172019958, 0.528419495, 0.400695801, -0.34189558, 0.93973738, 2.64931423e-005, -0.000211181527, -4.65366356e-005, -1, -0.939738095, -0.341896743, 0.000208934856))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.5366745, 0.528266907, -0.546220779, 0.965893507, -0.258939236, -0.000170726416, -0.000192740612, -3.80698657e-005, -1, 0.258940369, 0.965893626, -8.51838486e-005))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.295816422, 0.528526306, 0.371753693, -0.34189564, 0.93973738, 1.64795474e-005, -0.000210413418, -5.69129188e-005, -1, -0.939738035, -0.341896802, 0.000211760693))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00170135498, 0.518218994, 0.416286469, -0.17351757, 0.984830379, -1.57270915e-005, -0.000217322668, -5.32405102e-005, -1, -0.984830797, -0.173518866, 0.000217572364))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.400000006, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Royal purple","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.526626587, -0.431297302, 0.38895607, 0.866099358, 0.499873042, -4.30540967e-005, 4.84240591e-005, 1.22418305e-005, 1, 0.499872059, -0.866098642, -1.07134001e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(1.14999998, 1, 1.14999998))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.275513649, 0.528419495, 0.445476532, -0.258691281, 0.965959668, -1.18595199e-006, -0.000211375707, -5.62872483e-005, -1, -0.965960085, -0.258692294, 0.000213158826))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.202257156, 0.528404236, 0.290966034, 0.0872854814, 0.996183395, -6.45678447e-005, -0.000215602195, -4.64299337e-005, -1, -0.996183395, 0.0872841552, 0.000204969037))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.623466492, 0.528297424, -0.57352066, 0.996183932, -0.0872778222, -0.000195688976, -0.000205553661, -3.80696038e-005, -1, 0.0872791559, 0.996183932, -5.53611098e-005))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.363153458, 0.528305054, -0.145610809, 0.422732919, 0.906254828, -0.000115903182, -0.000214092637, -3.07218725e-005, -1, -0.906254411, 0.422731817, 0.000175797133))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0625190735, 0.528297424, 0.0266113281, 0.258942932, 0.965892911, -9.21843312e-005, -0.000217211928, -3.87567088e-005, -1, -0.965892673, 0.25894174, 0.000194184948))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.347141266, 0.52822876, -0.716051102, 0.939734519, 0.341906399, -0.000193244487, -0.000200212031, -3.07962982e-005, -1, -0.341905236, 0.939733922, 3.75364907e-005))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.111335754, 0.528358459, -0.594998002, 1, -0.000121660523, -0.000188783888, -0.000194567634, -3.35973964e-005, -1, 0.000122954501, 0.999999881, -3.36212834e-005))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.131408691, 0.528366089, 0.644223213, -0.965957522, -0.258702487, 0.000185339974, -0.000190528051, -2.65970757e-005, -1, 0.258701473, -0.965956926, -2.21023874e-005))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0805473328, 0.528343201, -0.546169281, 0.866086841, 0.499894798, -0.000183065204, -0.000200309616, -2.9176259e-005, -1, -0.499893695, 0.866086125, 7.19745585e-005))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.540473938, 0.528251648, -0.595039666, 1, -0.000121660523, -0.000188783888, -0.000194567634, -3.35973964e-005, -1, 0.000122954501, 0.999999881, -3.36212834e-005))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283384323, 0.528305054, -0.127037048, 0.5001086, 0.86596334, -0.000127848907, -0.000212065788, -2.85033857e-005, -1, -0.865962803, 0.500107348, 0.000164380996))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.305492401, 0.518074036, -0.594986677, 1, -0.000121660523, -0.000183783821, -0.00018956748, -3.25848741e-005, -1, 0.000122954574, 0.999999881, -3.26081499e-005))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.400000006, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0871238708, 0.528366089, -0.538367748, 0.996183932, -0.0872778222, -0.000184688106, -0.000194249747, -3.50912269e-005, -1, 0.0872791559, 0.996183932, -5.14074964e-005))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.269329071, 0.528312683, -0.122524261, 0.766123056, 0.642694652, -0.000173595123, -0.00020785557, -2.92202603e-005, -1, -0.642693877, 0.766122162, 0.000107486143))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.353628159, 0.528427124, 0.380271912, 0.0872854814, 0.996183395, -6.6594388e-005, -0.000213618565, -4.86380522e-005, -1, -0.996183395, 0.0872841552, 0.000202800249))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.341537476, 0.528381348, -0.0508613586, 0.573678315, 0.819081426, -0.000141450611, -0.000211792678, -2.84036378e-005, -1, -0.81908071, 0.573677182, 0.000152446417))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.172019958, 0.528419495, 0.400695801, -0.34189558, 0.93973738, 2.64931423e-005, -0.000211181527, -4.65366356e-005, -1, -0.939738095, -0.341896743, 0.000208934856))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.594734192, 0.52822113, -0.115596771, 0.5001086, 0.86596328, -0.000128862215, -0.000212473416, -2.94381189e-005, -1, -0.865962803, 0.500107348, 0.00016426653))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.298691183, 0.528419495, 0.358577728, 0.000130843444, 0.999999881, -5.04387062e-005, -0.000213440624, -5.04108903e-005, -1, -1, 0.000129550681, 0.000207654404))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.296276867, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.42980957, -2.26263809, -0.721710205, 0.000102296312, -5.74113947e-005, 1, 0.173456281, -0.984841287, -7.32817862e-005, 0.984841645, 0.173457533, -8.50954239e-005))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(1.23618877, 1.14424181, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.72732544, -0.484031677, 0.0424575806, -0.000128910935, -0.939656138, 0.34212032, -1, 0.000150963664, 3.55795091e-005, -9.09497903e-005, -0.342120141, -0.939656258))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.916976035, -0.211868286, -0.527198792, 0.00013084439, 0.999999881, -3.7444941e-005, 0.000215438544, 3.74168667e-005, 1, 1, -0.000129550681, -0.000209654012))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.296276867, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.430038452, -2.27284431, -0.780128479, -0.00032053265, 5.74369406e-005, -1, -0.173681721, -0.984802067, -1.89667662e-006, -0.984802067, 0.17368035, 0.000319945102))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.408657789, 0.21454522))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.270210266, -1.12802124, -0.0889282227, 0.13309826, -0.642770529, 0.754408181, 0.111850806, 0.766058624, 0.632965088, -0.984771311, 0.000133351612, 0.173849806))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.306493193))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199523926, -1.26028442, -0.0317230225, -0.603908837, -0.341920435, 0.719989359, -0.219676614, 0.939728916, 0.262014866, -0.766183019, 6.82739847e-005, -0.64262253))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.917022169, 0.207015991, -0.527252197, 0.00013084439, 0.999999881, -3.7444941e-005, 0.000215438544, 3.74168667e-005, 1, 1, -0.000129550681, -0.000209654012))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.653851986, 0.234978244, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.197502136, -2.03866005, -0.720588684, 0.000102296188, -5.83948749e-005, 1, 0.173456281, -0.984841347, -7.42503471e-005, 0.984841645, 0.173457503, -8.49247153e-005))
Block=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Dark indigo","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.306386948, 0.528373718, -0.101051331, 0.573678315, 0.819081426, -0.000141450611, -0.000211792678, -2.84036378e-005, -1, -0.81908071, 0.573677182, 0.000152446417))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 0.100000001))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(1.03186011, 0.766233265, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0160751343, -1.56690121, -0.720497131, 0.000102296312, -5.74113947e-005, 1, 0.173456281, -0.984841287, -7.32817862e-005, 0.984841645, 0.173457533, -8.50954239e-005))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.623202622, 0.326926231, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.564483643, -2.15213394, -0.720565796, 0.0302218646, -0.171073586, 0.984794796, 0.170802951, -0.969869256, -0.173721626, 0.984841704, 0.17345725, -8.56973347e-005))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19311714, 0.387729645, 0.0229797363, -0.34189558, 0.93973738, 3.24834182e-005, -0.939738095, -0.341896743, 0.000193244865, 0.000198485068, 3.55429875e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.653851986, 0.234978244, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.197738647, -2.04886627, -0.779018402, -0.000320532621, 5.84204208e-005, -1, -0.173681706, -0.984802127, -2.86521299e-006, -0.984802067, 0.17368035, 0.000320115883))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.306493193))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.157455444, -1.24506378, 0.0211410522, -0.604127288, 0.342061698, -0.719738901, 0.220016405, 0.939677596, 0.261914074, 0.765913248, -0.000124911487, -0.642943919))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.306493193))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0385856628, -1.24954796, 0.00178527832, -0.906255782, 0.422728926, 0.000155452013, 0.422729999, 0.906256139, -0.000111849964, -0.000193941232, -3.56497767e-005, -1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.357575327, 0.623203099, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.31264877, 0.0659294128, 0.320365906, 0.342142045, 0.936079502, 0.0818242952, -0.939648449, 0.340835601, 0.0298496094, 5.86125861e-005, -0.0870988518, 0.996199906))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.418873847, 0.837748349, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.803085327, 1.46542358, 0.320526123, 1, -0.00010365247, -0.000185784273, 0.000121238889, 0.99619931, 0.0871028528, 0.000181693526, -0.0871028602, 0.996199489))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.15074539, 0.22561264, 0.3204422, 0.422734737, 0.9028126, 0.0789060444, -0.906253576, 0.421122849, 0.0368615165, 5.55565639e-005, -0.0870915055, 0.996200502))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.306493163, 0.510822177, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.48254204, 0.514205933, 0.320602417, 0.573467374, -0.816104829, -0.0714554712, 0.81922859, 0.571302295, 0.0498023666, 0.000184351404, -0.0870983824, 0.996199846))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.306493163, 0.510822177, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.4988327, 0.490982056, 0.320457458, 0.573678732, 0.815971553, 0.0713104978, -0.81908077, 0.571493149, 0.0500086695, 5.78284853e-005, -0.0870979279, 0.996200025))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.08162117, 0.373813629, 0.320381165, 0.422734737, 0.9028126, 0.0789060444, -0.906253576, 0.421122849, 0.0368615165, 5.55565639e-005, -0.0870915055, 0.996200502))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.316709608, 0.378008485, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.05677414, 1.37703896, 0.320663452, 0.93965137, -0.340822607, -0.029903261, 0.34213379, 0.93608427, 0.0818045363, 0.000116775089, -0.0870986506, 0.996199846))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.418873847, 0.837748349, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.831409454, 1.46547031, 0.320373535, 1, -0.000114656985, -6.47828638e-005, 0.000121656121, 0.99619925, 0.0871028751, 6.01945867e-005, -0.0871028751, 0.996199548))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14737129, 0.232673645, 0.320594788, 0.422497094, -0.902912974, -0.0790129155, 0.906364381, 0.420907468, 0.0366332717, 0.000186115387, -0.0870919153, 0.996200383))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.49298096, -1.31683159, -0.930618286, 0.118712634, 0.671592176, 0.731349945, -0.96218729, -0.104052804, 0.251726419, 0.245159224, -0.733578086, 0.633846581))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.04873276, 0.929574251, 2.34379125))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0427017212, -2.4785614, -0.0754623413, -7.91625207e-005, -0.3419514, -0.93971771, -0.000342930667, -0.939717531, 0.341951519, -1, 0.000348038942, -4.86533972e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.29999995, 2))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0426177979, -2.47837067, 0.690757751, -7.91625207e-005, -0.3419514, -0.93971771, -0.000342930667, -0.939717531, 0.341951519, -1, 0.000348038942, -4.86533972e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.29999995, 2))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.042755127, -2.47822952, -0.047203064, 0.000202162293, 0.34195137, 0.93971765, -9.89315886e-005, -0.939717531, 0.341951489, 1, -0.000160813332, -0.000150366162))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.29999995, 2))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.733070374, -0.896598816, 1.82460499, -0.431915879, 0.0761658996, -0.898694754, -0.901586056, -0.0633394867, 0.427933335, -0.0243270826, 0.995081306, 0.0960273147))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.897728205, 0.36627984))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0426940918, -2.47821045, 0.719017029, 0.000202162293, 0.34195137, 0.93971765, -9.89315886e-005, -0.939717531, 0.341951489, 1, -0.000160813332, -0.000150366162))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1.29999995, 2))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.653182983, 0.869350433, 1.44331264, 0.344746232, -0.0818130225, 0.935125887, 0.938380778, 0.0558550358, -0.341054887, -0.0243269037, 0.995081365, 0.0960274413))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.106863573, 4.09860706))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.733078003, -0.896640778, -1.37849998, 0.431915879, -0.0761658996, 0.898694754, -0.901586056, -0.0633393973, 0.427933365, 0.0243269932, -0.995081306, -0.0960272551))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.897728205, 4.00051117))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.835861206, 1.76192474, -0.117393494, -0.869637787, -0.168936968, -0.463886231, -0.070332408, 0.972440481, -0.222290292, 0.488654792, -0.160685822, -0.857552707))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 5.98837423, 0.861329198))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.80958748, -1.02048492, 0.143783569, 0.52525717, -0.650066257, -0.549103439, -0.106815293, -0.690556228, 0.715347409, -0.844213188, -0.317089707, -0.43216148))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.19117522, 2.67499804, 0.448923111))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.36268234, 0.569274902, 0.499229431, -0.166665018, 0.946187198, -0.277403265, -0.884956539, -0.267610669, -0.381101966, -0.434827268, 0.181973174, 0.881934762))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.917938411, 0.39670372))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.36268616, 0.569229126, -0.228744507, 0.166665018, -0.946187198, 0.277403265, -0.884956717, -0.267610669, -0.381101876, 0.434827119, -0.181973204, -0.881934762))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.917938411, 2.25125289))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.48622894, -1.259758, -0.944999695, 0.118250139, -0.671621263, -0.731396198, 0.962263584, -0.104288563, 0.251347929, -0.245084226, -0.733517885, 0.6339432))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.04873276, 0.929574251, 2.34379125))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.81331825, -1.02017975, -0.0510482788, -0.52525717, 0.650066257, 0.549103439, -0.10681539, -0.690556228, 0.71534735, 0.844213068, 0.317089587, 0.43216157))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.19117522, 2.67499804, 0.520646214))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 1.22359776, 0.297242999))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.835800171, 1.76186562, 0.353996277, 0.869637787, 0.168936998, 0.463886261, -0.0703323781, 0.972440481, -0.222290382, -0.488654852, 0.160685912, 0.857552588))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.48616791, -1.25975037, 1.22211456, -0.118250139, 0.671621263, 0.731396198, 0.962263525, -0.104288623, 0.251347959, 0.245084256, 0.733517885, -0.633943081))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.04873276, 0.929574251, 0.368614644))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.216975361, 0.226115584, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.289352417, 0.788764954, 0.837745667, -0.106263191, -0.660668671, 0.743118048, -0.693411529, -0.4864057, -0.531596839, 0.712663114, -0.5717749, -0.406424135))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.289306641, 0.788833618, -0.655715942, 0.106263191, 0.660668671, -0.743118048, -0.69341141, -0.48640576, -0.531596899, -0.712663233, 0.57177484, 0.406424046))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.06189334, 1.10662568, 0.782044649))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.17351532, -0.908821106, -0.59318924, 0.282709837, -0.296140879, 0.912347913, 0.642017603, 0.76509726, 0.0494060405, -0.712663114, 0.5717749, 0.406424046))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.54893827, 0.498059273, 0.170772836))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.173492432, -0.908805847, 0.804264069, -0.282709837, 0.296140879, -0.912347913, 0.642017543, 0.765097439, 0.0494061261, 0.712663293, -0.571774781, -0.406424016))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.54893827, 0.498059273, 1.89491391))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.589288712, -0.913322449, -0.416030884, -0.380909294, -0.805445433, 0.454053432, 0.00865703914, 0.487948269, 0.872829616, -0.924572051, 0.336398393, -0.178896636))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.94255471, 0.851256251, 1.2318716))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.589271545, -0.913383484, 0.668037415, 0.380909294, 0.805445433, -0.454053432, 0.00865696091, 0.487948328, 0.872829616, 0.924572051, -0.336398363, 0.178896725))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.94255471, 0.851256251, 1.23506224))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.387691706, 0.391955018, 0.259938806))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.794935226, 0.492752075, 0.664306641, -0.368865371, -0.907897532, 0.199149236, 0.095420517, -0.250116348, -0.963501751, 0.92457217, -0.336398184, 0.178896695))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.387691706, 0.391955018, 0.244126722))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.794984818, 0.492767334, -0.412269592, 0.368865371, 0.907897532, -0.199149236, 0.0954206139, -0.250116378, -0.963501751, -0.924572051, 0.336398125, -0.178896755))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.216279984, 0.268463403, 0.211804286))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.133033752, 0.894514084, -0.629932404, -0.593129337, 0.35604313, -0.722101808, -0.618662477, -0.775523007, 0.125781745, -0.515222788, 0.521342099, 0.68025583))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.133010864, 0.8944664, 0.814159393, 0.593129218, -0.35604316, 0.722101808, -0.618662477, -0.775522888, 0.125781819, 0.515222609, -0.521342218, -0.68025583))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.05849016, 1.31387877, 0.766175389))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0940704346, -1.10329437, -0.166370392, -0.593506873, 0.384419501, -0.707086444, -0.00224121055, 0.877762198, 0.479091406, 0.804825783, 0.285928816, -0.520096302))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.10899508, 0.464785218, 0.247388422))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0940475464, -1.10327911, 0.337337494, 0.593506932, -0.384419501, 0.707086384, -0.00224115117, 0.877762198, 0.479091376, -0.804825783, -0.285928756, 0.520096362))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.10899508, 0.464785218, 1.42616677))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.581382751, -0.872062683, -0.449806213, -0.389106125, 0.795986891, -0.463683754, -0.0806557238, 0.471977741, 0.87791276, 0.917655289, 0.379000992, -0.119443215))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.77654254, 0.939429104, 1.01966178))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581329346, -0.872131348, 0.673458099, 0.389106125, -0.795986891, 0.463683754, -0.0806556195, 0.471977741, 0.8779127, -0.917655289, -0.379000962, 0.119443297))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.77654254, 0.939429104, 1.16938007))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.256694704, 0.345953107, 0.217528462))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.28805542, 0.984390259, 0.553504944, 0.349464387, -0.626595259, 0.696601748, -0.58984983, -0.724786162, -0.356039286, 0.727977872, -0.286466926, -0.622882009))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.256694704, 0.345953107, 0.283513159))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.288063049, 0.984405518, -0.303031921, -0.349464387, 0.626595259, -0.696601748, -0.58984977, -0.724786162, -0.356039315, -0.727977931, 0.286466867, 0.622882068))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30206108, 0.210021973, 0.0918807983, 0.213602901, -0.93970108, -0.267085344, -0.239669487, 0.214633793, -0.946833491, 0.947065353, 0.26625973, -0.179365799))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.610000014, 0.610000014, 0.819999993))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.20340919, 0.209495544, 0.0651016235, -0.213602901, 0.93970108, 0.267085344, -0.239669427, 0.214633867, -0.946833551, -0.947065353, -0.2662597, 0.179365695))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.56573594, 0.610362649, 0.730387509))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17146301, -0.0792198181, 0.34438324, -0.0869988501, 0.750661254, 0.654933631, -0.987280965, -0.152786821, 0.0439651422, 0.133071706, -0.642778158, 0.754406452))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.69480586, 1.4974947, 0.274708271))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.17146301, -0.0792541504, -0.242202759, 0.0869988501, -0.750661254, -0.654933631, -0.987280846, -0.152786896, 0.0439652018, -0.133071795, 0.642778158, -0.754406452))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.69480586, 1.4974947, 0.725284159))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.160186768, -0.180229187, 1.31716919, 0.320789039, 0.323206872, -0.890296996, 0.921328843, 0.111509696, 0.372455925, 0.219654351, -0.939735472, -0.262007415))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.61094129, 1.60385787, 0.442908227))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.160263062, -0.180236816, -1.21509933, -0.320789039, -0.323206872, 0.890296996, 0.921328843, 0.111509636, 0.372455895, -0.219654307, 0.939735532, 0.262007475))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.61094129, 1.60385787, 0.557083368))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.303962708, 1.05537224, -0.499168396, -0.100719966, -0.624946356, 0.774142683, 0.593835354, -0.662059665, -0.457200617, 0.798257649, 0.413665026, 0.437802613))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.82474399, 0.730152011, 1.01456404))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.303970337, 1.05539703, 0.672561646, 0.100719966, 0.624946356, -0.774142683, 0.593835413, -0.662059665, -0.457200557, -0.79825747, -0.413664997, -0.437802583))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.82474399, 0.730152011, 0.683287978))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.303977966, -0.356681824, -1.00946808, 0.100720018, 0.624946415, -0.774142563, -0.988609254, 0.150328442, -0.00727142533, 0.111836076, 0.766056776, 0.632969797))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.82474399, 1.2396872, 0.839884996))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.372847736, 0.253303885, 0.23704578))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.304000854, -0.356693268, 1.21382141, -0.100720018, -0.624946415, 0.774142563, -0.988609254, 0.150328502, -0.00727137411, -0.11183615, -0.766056776, -0.632969797))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.777759552, 0.625682831, 0.443702698, 0.590519965, -0.394368023, -0.704102337, -0.057478819, -0.890805781, 0.450734109, -0.804973543, -0.225696489, -0.548706412))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.30175447, 0.368513346, 1.65737736))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.777755737, 0.625671387, -0.125808716, -0.590519965, 0.394368023, 0.704102337, -0.0574789084, -0.8908059, 0.450734019, 0.804973543, 0.2256964, 0.548706472))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.30175447, 0.368513346, 1.45403373))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.22268677, 0.302383423, 0.0618515015, -0.0160375927, -0.762472272, -0.646822155, -0.523417056, -0.544784069, 0.655167878, -0.851925731, 0.349065065, -0.390353948))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.995311439, 0.774772108, 0.529077947))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.22258759, 0.302444458, 0.0568466187, 0.0160375927, 0.762472272, 0.646822155, -0.523417115, -0.544784069, 0.655167818, 0.851925671, -0.349065125, 0.390354007))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.995311439, 0.774772108, 0.632228613))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18283844, -0.260612488, 0.20174408, -0.274878114, -0.93256408, -0.234024808, -0.877319396, 0.143687353, 0.457886159, -0.393386394, 0.331176847, -0.857655346))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.52094769, 0.718637109, 0.912246406))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.18282318, -0.260601044, -0.0488891602, 0.274878114, 0.93256408, 0.234024808, -0.877319455, 0.143687382, 0.45788607, 0.393386245, -0.331176728, 0.857655287))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.52094769, 0.718637109, 0.583401918))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.365692139, 0.812561035, 0.923587799, -0.0180520453, -0.635292768, 0.772060573, -0.816389382, -0.436429083, -0.378209621, 0.577219725, -0.637128532, -0.510764539))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.92601693, 0.665026605, 0.746825218))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.142150879, -0.927974701, 0.949180603, -0.393373668, 0.331174374, -0.857661068, 0.715592921, 0.695981979, -0.05946666, 0.577220917, -0.637128353, -0.510765314))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.49563551, 0.795872152, 0.496771097))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.14214325, -0.92798233, -0.83659935, 0.393373668, -0.331174374, 0.857661068, 0.715592921, 0.69598192, -0.0594666786, -0.577220917, 0.637128353, 0.510765314))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.49563551, 0.795872152, 0.605472267))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.365684509, 0.812530518, -0.811040878, 0.0180520453, 0.635292768, -0.772060573, -0.816389322, -0.436429173, -0.378209651, -0.577219665, 0.637128472, 0.51076448))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.92601693, 0.665026605, 0.355418116))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1647644, -0.25113678, 0.241355896, 0.394208491, 0.845286489, -0.36068055, 0.794160008, -0.115810141, 0.596571803, 0.462503612, -0.52161175, -0.716946065))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.47358465, 0.76854372, 0.639793634))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.16476631, -0.251144409, -0.027923584, -0.394208491, -0.845286489, 0.36068058, 0.794160068, -0.115810178, 0.596571803, -0.462503552, 0.52161175, 0.716946125))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.47358465, 0.76854372, 1.44932234))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.18397713, -0.0475769043, 0.0525474548, 0.477965951, 0.827753663, -0.293892175, -0.746752262, 0.206749544, -0.632151723, -0.462503791, 0.521611631, 0.716946065))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.39288604, 0.749927998, 0.661516845))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18399811, -0.0476379395, 0.16085434, -0.477965951, -0.827753663, 0.293892205, -0.746752322, 0.206749573, -0.632151663, 0.462503731, -0.521611631, -0.716946125))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.39288604, 0.749927998, 1.42759919))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.201507568, -0.459602356, 1.14183044, -0.583255231, 0.218789414, -0.782268822, 0.751457036, 0.510999739, -0.41736272, 0.308424652, -0.831270337, -0.46245411))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.8984164, 0.703295708, 0.799203038))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.20149231, -0.459648132, -0.996704102, 0.583255231, -0.218789384, 0.782268822, 0.751456976, 0.510999739, -0.417362779, -0.308424592, 0.831270397, 0.462454081))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.8984164, 0.703295708, 0.621487975))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0147323608, -0.973236084, 0.914958954, -0.156483904, 0.435198843, -0.886632025, 0.683841348, 0.695461452, 0.220674947, 0.712652802, -0.57178241, -0.406431377))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.46008873, 0.666695833, 0.811124384))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0147171021, -0.973182678, -0.783901215, 0.156483904, -0.435198843, 0.886632025, 0.683841527, 0.695461452, 0.220674947, -0.712652802, 0.571782529, 0.406431407))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.46008873, 0.666695833, 0.472502589))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00747680664, 0.491611481, 1.14885712, 0.15648216, -0.435194016, 0.886634767, -0.93828851, -0.345830202, -0.00415303372, 0.308428675, -0.831268728, -0.462451935))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.677845, 0.366974115, 0.730107963))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0075302124, 0.491550446, -1.00376511, -0.15648216, 0.435194016, -0.886634767, -0.93828851, -0.345830232, -0.00415305141, -0.308428705, 0.831268787, 0.462451965))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.677845, 0.366974115, 0.69058305))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.193820953, 0.709960938, -0.841911316, -0.874475479, -0.30871588, 0.374148548, 0.482719928, -0.629681706, 0.608672738, 0.0476875678, 0.712878287, 0.699664593))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.54733896, 0.538285136, 1.11585033))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.193775177, 0.709960938, 1.0419693, 0.874475479, 0.30871594, -0.374148577, 0.482719988, -0.629681706, 0.608672738, -0.0476875678, -0.712878346, -0.699664533))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.54733896, 0.538285136, 0.842755437))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.158584595, -0.902748108, -0.82408905, 0.848674536, 0.340479612, -0.404753417, -0.526761472, 0.613088965, -0.588765144, 0.0476873368, 0.712878346, 0.699664533))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.50549781, 1.18244338, 0.941709101))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.307616472, 0.241607338, 0.207781255))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.158584595, -0.90272522, 1.02418518, -0.848674536, -0.340479553, 0.404753417, -0.526761413, 0.613088965, -0.588765144, -0.0476873666, -0.712878346, -0.699664533))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19345474, -0.119552612, 0.239513397, 0.3351264, -0.928513765, -0.159852102, -0.723190963, -0.144759417, -0.675307095, 0.60389179, 0.3419168, -0.720005393))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.77400637, 1.43617654, 0.608117402))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19345284, -0.119468689, -0.137443542, -0.33512637, 0.928513646, 0.159852102, -0.723190844, -0.144759372, -0.675307155, -0.60389179, -0.3419168, 0.720005274))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.77400637, 1.43617654, 0.391861618))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.18893051, -0.143814087, -0.0478820801, 0.364204645, -0.903420329, -0.226240769, -0.925450444, -0.323840916, -0.196651235, 0.104387544, 0.280996025, -0.954014301))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.85433221, 1.42614818, 0.426919371))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.18892097, -0.143798828, 0.127159119, -0.364204645, 0.903420329, 0.226240769, -0.925450444, -0.323840886, -0.19665134, -0.104387648, -0.280996084, 0.954014301))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.85433221, 1.42614818, 0.349282175))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.125923157, -0.187637329, 1.31838608, -0.849575102, 0.31651327, -0.421949774, 0.479390979, 0.129658356, -0.867970645, -0.220014945, -0.939685106, -0.261888117))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.60906887, 1.60550332, 0.282343328))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.125892639, -0.187728882, -1.21619415, 0.849575102, -0.31651333, 0.421949744, 0.479390949, 0.129658341, -0.867970645, 0.220014974, 0.939685166, 0.261888087))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.60906887, 1.60550332, 0.717650354))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0220947266, 0.982192993, 0.778064728, -0.844950199, 0.394084632, -0.361602783, -0.0886972621, -0.769973457, -0.631881058, -0.527439177, -0.50183481, 0.685543478))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.6173017, 0.73521018, 0.677838624))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.022064209, 0.98210907, -0.598415375, 0.84495008, -0.394084692, 0.361602813, -0.088697277, -0.769973457, -0.631881058, 0.527439177, 0.50183481, -0.685543418))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.6173017, 0.73521018, 1.08075833))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.1960907, -0.250663757, -0.128540039, -0.304940253, 0.909325957, -0.28308621, -0.740459204, -0.413307071, -0.529997647, -0.598942161, 0.0479961559, 0.799352646))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.37767649, 0.819024384, 0.573752046))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19606018, -0.250579834, 0.291267395, 0.304940253, -0.909325957, 0.283086181, -0.740459263, -0.413307071, -0.529997528, 0.598942041, -0.0479962192, -0.799352705))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.37767649, 0.819024384, 1.01813722))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19810486, -0.0906600952, 0.341804504, -0.396177769, 0.849719644, -0.347879052, 0.695916116, 0.525045455, 0.48992914, 0.598952413, -0.0479951911, -0.799343288))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.45940757, 0.852486551, 0.522749722))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1980896, -0.0906600952, -0.179210663, 0.396177769, -0.849719644, 0.347879052, 0.695916176, 0.525045395, 0.48992902, -0.598952353, 0.0479953066, 0.799343348))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.45940757, 0.852486551, 1.0691396))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16056633, -0.287460327, -0.298797607, -0.341383576, 0.938276768, -0.0556189939, 0.423022717, 0.100534245, -0.900522351, -0.839350402, -0.330952615, -0.431237996))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.34054089, 0.432091653, 0.206000254))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.16056061, -0.287406921, 0.411987305, 0.341383576, -0.938276768, 0.0556189939, 0.423022598, 0.10053423, -0.900522411, 0.839350462, 0.330952585, 0.431237876))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.34054089, 0.432091653, 0.901821733))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.17240524, 0.10735321, -0.368659973, 0.311656386, -0.942955077, 0.117069989, -0.445377439, -0.03613583, 0.894610882, -0.839350581, -0.330952555, -0.431237936))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.35788095, 0.456353605, 0.88979423))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17238617, 0.107315063, 0.481796265, -0.311656386, 0.942955077, -0.117069989, -0.445377558, -0.0361358784, 0.894610882, 0.839350402, 0.330952495, 0.431237996))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.35788095, 0.456353605, 0.218027741))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.707763672, -0.843032837, -1.38007164, 0.431558937, 0.0760657713, -0.898869574, 0.901749432, -0.0635482073, 0.42756781, -0.0246001333, -0.995075643, -0.0960171968))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.897728205, 4.00051117))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.35168457, -0.766448975, -1.44050694, 0.499652296, 0.0880823061, -0.861736119, 0.866216838, -0.0553927086, 0.496588379, -0.00399324391, -0.994571924, -0.103975467))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(4.85897541, 0.767845988, 3.67054677))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.351707458, -0.766471863, 1.85136318, -0.499652296, -0.0880823061, 0.861736119, 0.866216838, -0.0553927943, 0.496588379, 0.00399331842, 0.994571924, 0.103975512))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(4.85897541, 0.767845988, 0.351230234))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.854278564, 0.179862976, -1.05461311, 0.974913418, 0.0192669258, -0.221743852, 0.222584799, -0.0849288478, 0.971208513, -0.00012204994, -0.996200621, -0.0870868042))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.22106624, 0.0699908063, 0.078826271))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.854242325, 0.179824829, 1.47348976, -0.974913418, -0.0192669258, 0.221743852, 0.222584784, -0.0849289373, 0.971208513, 0.000122072292, 0.996200621, 0.0870868936))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.22106624, 0.0699908063, 4.02116823))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.21919632, -0.0326881409, -0.0951690674, -0.359190404, -0.923120201, -0.137227714, 0.711338758, -0.175616279, -0.680555761, 0.604135334, -0.34206447, 0.719730794))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.26254737, 1.51202679, 0.390782684))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.21922302, -0.0326271057, 0.197357178, 0.359190404, 0.923120141, 0.137227759, 0.711338818, -0.175616309, -0.680555761, -0.604135275, 0.34206447, -0.719730914))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.26254737, 1.51202679, 0.609207273))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.21037292, -0.143875122, 0.126155853, 0.409395009, 0.877541602, 0.249636665, -0.356349826, 0.405680567, -0.841689527, -0.83988744, 0.255624324, 0.478790551))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.34293306, 0.494276524, 0.869299412))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.21037674, -0.143844604, 0.0334014893, -0.409395009, -0.877541602, -0.249636665, -0.356349856, 0.405680597, -0.841689527, 0.83988744, -0.255624294, -0.478790611))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.34293306, 0.494276524, 0.692410111))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.281303406, -0.0255355835, -1.09235001, 0.936334133, 0.340577036, 0.0853662863, 0.174037009, -0.239044428, -0.955283642, -0.304941863, 0.90932107, -0.283100277))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99632597, 0.303129911, 0.36273855))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.281280518, -0.0254974365, 1.23389816, -0.936334133, -0.340577036, -0.0853662863, 0.17403698, -0.239044324, -0.955283701, 0.304941863, -0.909321129, 0.283100188))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99632597, 0.303129911, 1.02286696))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.300009131, 0.318958759, 0.308870733))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.109375, -0.0329818726, -1.2195549, -0.92370671, -0.381412029, 0.0359371938, 0.0237883106, 0.0365352854, 0.999049604, -0.382361412, 0.923682928, -0.02467696))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.195072174, 0.757850647, -0.789703369, -0.950788319, -0.306532681, -0.045175951, 0.184521183, -0.677290559, 0.712201357, -0.248905346, 0.668816149, 0.700520277))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.56093466, 0.59068346, 1.36605966))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.195049286, 0.757858276, 1.01163483, 0.950788319, 0.306532681, 0.045175951, 0.184521154, -0.677290499, 0.712201416, 0.248905331, -0.668816209, -0.700520217))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.56093466, 0.59068346, 0.806907356))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.21956635, -0.0637664795, -0.151447296, -0.382345438, 0.923689306, -0.0246913396, -0.358557761, -0.172939762, -0.917349517, -0.851615131, -0.341891676, 0.397316217))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.51162803, 1.45380855, 0.431501448))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.21951485, -0.0637512207, 0.25359726, 0.382345438, -0.923689306, 0.0246913396, -0.35855782, -0.172939792, -0.917349458, 0.851615131, 0.341891646, -0.397316307))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.51162803, 1.45380855, 0.568490505))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.22348022, -0.0297927856, -0.0385665894, -0.42246747, 0.906299114, 0.0119684767, 0.691414475, 0.330781877, -0.642284513, -0.586060822, -0.263069153, -0.7663728))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.52209508, 0.766567051, 0.874328911))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.22348785, -0.0297851563, 0.19354248, 0.42246753, -0.906299114, -0.011968445, 0.691414416, 0.330781788, -0.642284691, 0.586061001, 0.263069242, 0.766372681))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.52209508, 0.766567051, 0.642164826))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.298576355, -0.0441589355, 1.22732544, -0.935637772, -0.340421289, -0.0932586938, 0.181173086, -0.236450061, -0.954602361, 0.302916467, -0.910057485, 0.282908499))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.13579595, 0.270692378, 0.913378119))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.16928291, -0.231796265, -0.020275116, -0.39572525, -0.848519921, 0.351305455, 0.812094152, -0.14468956, 0.565303504, -0.428840995, 0.508997977, 0.746335387))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.46309757, 0.797017336, 1.56692863))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16924667, -0.231811523, 0.242053986, 0.39572525, 0.848519921, -0.351305425, 0.812094152, -0.14468953, 0.565303564, 0.428841114, -0.508997917, -0.746335447))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.46309757, 0.797017336, 0.603948653))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.16946411, 0.0625610352, 0.136352539, -0.39654845, -0.848372757, 0.350732058, -0.811692536, 0.145549893, -0.565659344, 0.428840965, -0.508997858, -0.746335506))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.46245193, 0.846652985, 1.6387167))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16942978, 0.0625152588, 0.0853347778, 0.39654845, 0.848372877, -0.350731909, -0.811692536, 0.145549878, -0.565659404, -0.428841054, 0.508997858, 0.746335387))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.46245193, 0.846652985, 0.53216064))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.633041382, 0.813529968, 1.44483662, 0.344373345, 0.0817331821, -0.935266376, -0.938510537, 0.0560721718, -0.340672195, 0.0246000513, 0.995075703, 0.0960173607))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.106863573, 4.09860706))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.643669128, 0.842651367, -0.99784565, -0.344488174, -0.0817330554, 0.935224235, -0.938468814, 0.0560724102, -0.3407875, -0.0245885253, -0.995075643, -0.096020326))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.106863573, 0.268184096))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134666443, 0.0933227539, 1.28321838, -0.281085044, -0.00132162112, 0.959680498, -0.446045697, 0.885602355, -0.129427373, -0.849726319, -0.464442343, -0.249523982))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134864807, -0.249932289, 1.22412872, -0.281084031, -0.00131962809, 0.959680676, -0.128520384, 0.991042852, -0.0362810865, -0.95103848, -0.133537784, -0.278741479))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.657094955, 0.268882751, 1.38109589, -0.192165166, 0.972471178, -0.13180314, 0.253973722, -0.0804480314, -0.963858247, -0.947929382, -0.218695641, -0.231528327))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0532608032, -0.737085342, 1.26184082, -0.312324136, -0.170946971, 0.934466541, -0.177306131, 0.976880133, 0.119443841, -0.933282614, -0.128382668, -0.335418671))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.041015625, -1.05544662, 0.94883728, -0.312324136, -0.170946956, 0.934466541, 0.152587712, 0.96187675, 0.226960301, -0.937641144, 0.213472098, -0.274338275))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134513855, -0.913040161, 1.00812531, -0.281082004, -0.00131965615, 0.959681392, 0.204503432, 0.976948619, 0.0612413213, -0.937641442, 0.213470697, -0.274338156))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.142997742, -0.618379593, 1.24410248, -0.281082004, -0.00131965615, 0.959681392, -0.128520504, 0.991042793, -0.0362807848, -0.951039076, -0.133537799, -0.278739423))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.709629059, 0.115264893, 1.28879547, 0.192162216, -0.972471297, 0.131806165, -0.253972739, 0.0804520026, 0.963858247, -0.947930336, -0.218693405, -0.231526896))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0950088501, -0.908855438, 0.785774231, -0.451516688, -0.0763901398, 0.888986647, 0.464072257, 0.830859721, 0.307097852, -0.762082398, 0.551213861, -0.339696497))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.675924301, 0.391967773, 1.33868027, -0.19216305, 0.972471595, -0.13180308, 0.0855095014, -0.117201947, -0.98941946, -0.977630556, -0.201401472, -0.0606393404))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.253860474, -0.323736191, 1.56922913, 0.173673511, -7.3144829e-006, 0.984804332, -0.492261946, 0.866105974, 0.0868159309, -0.852945447, -0.499860287, 0.150411159))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.730560303, -0.162284851, 1.27997208, 0.19216305, -0.972471595, 0.13180308, 0.0855543092, 0.150394559, 0.984917939, -0.977626741, -0.177989632, 0.112093799))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.745353699, -0.371025085, 1.27064514, -0.192163259, 0.972471595, -0.1318032, 0.253974766, -0.080448322, -0.963858068, -0.947929561, -0.218693852, -0.231529504))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.715274811, -0.650196075, 1.09525299, -0.192163274, 0.97247237, -0.131798893, 0.693910718, 0.0396773107, -0.71896714, -0.693946123, -0.229615763, -0.682433426))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.758314133, 0.0522842407, 1.36688614, 0.19216305, -0.972471595, 0.13180308, 0.0855543092, 0.150394559, 0.984917939, -0.977626741, -0.177989632, 0.112093799))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.721757889, -0.0192871094, 1.28364944, 0.19216305, -0.972471595, 0.13180308, -0.0855075866, 0.117202349, 0.989419639, -0.977630734, -0.201401249, -0.0606374033))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.243873596, -0.495903969, 1.4525795, 0.173673511, -7.3144829e-006, 0.984804332, -0.336670876, 0.93974781, 0.0593783446, -0.92546773, -0.341868401, 0.163201511))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.692108154, 0.497634888, 1.26395416, -0.19216305, 0.972471595, -0.13180308, -0.0855522454, -0.150394201, -0.984918237, -0.97762692, -0.177989975, 0.112091713))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.243888855, -1.01602936, 0.902326584, 0.173671409, -7.31526143e-006, 0.984804749, 0.336968005, 0.939639807, -0.05941559, -0.925360024, 0.342165112, 0.163185701))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.319404602, -0.914527893, 0.690523148, 0.142561167, -0.170562282, 0.974980354, 0.64707607, 0.761448801, 0.0385958962, -0.748978674, 0.625383019, 0.218915507))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.322914124, -0.328063965, 1.17824173, 0.142568156, -0.170563221, 0.974979222, 0.0142656704, 0.985292077, 0.170281798, -0.989682257, -0.0103693129, 0.142898783))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.24382782, -0.743279457, 1.08272171, 0.173671409, -7.31526143e-006, 0.984804749, 0.171164095, 0.98478049, -0.0301764794, -0.969815075, 0.173802719, 0.171023846))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.24382782, -0.809600115, 1.19537735, 0.173671514, -7.34507103e-006, 0.98480469, 0.000159187621, 0.999999881, -2.03871987e-005, -0.984803677, 0.000159036135, 0.173665836))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.24382782, -0.0735530853, 1.29883575, 0.173670441, -7.3440624e-006, 0.984804928, -0.336670905, 0.93974787, 0.059377294, -0.925468206, -0.341868252, 0.16319859))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.134651184, -0.803262711, 1.03211212, -0.281082004, -0.00131965615, 0.959681392, 0.204503432, 0.976948619, 0.0612413213, -0.937641442, 0.213470697, -0.274338156))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.243850708, -0.461564064, 1.13243103, 0.17366752, -7.28517716e-006, 0.984805346, 0.171164066, 0.98478061, -0.030175807, -0.96981591, 0.173802599, 0.171020046))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.21591949, -1.04887199, 0.149971008, 0.738176703, -0.633985758, 0.23055996, -0.671119869, -0.724850059, 0.155533791, 0.068509303, -0.269544721, -0.960547388))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.102075592, 0.99475044))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.418873966))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00539398193, -0.518615723, -0.523536682, 0.866129518, 0.499821275, 0.000181923358, 0.000226406322, -3.83719525e-005, -1, -0.499820113, 0.866128623, -0.000149287356))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.4495233))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.167789459, -0.518707275, -0.438488007, 0.81902945, -0.573750377, 0.000221751005, 0.000211779436, -7.59266695e-005, -1, 0.573751569, 0.819030166, 6.26376714e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.143371582, -0.600265503, -0.916534424, 0.766179204, 0.642628253, 0.000149400657, 0.000222153642, -3.92702314e-005, -1, -0.642627597, 0.766177952, -0.000176565052))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.326926023))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.282157898, -0.600479126, -0.832672119, 0.706954181, -0.707258344, 0.000205863966, 0.000208647136, -7.67374149e-005, -1, 0.707259595, 0.706955075, 9.74045834e-005))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1.5))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.49295807, -1.31685257, 1.20770264, -0.118712634, -0.671592176, -0.731349945, -0.96218735, -0.104052857, 0.251726508, -0.245159283, 0.733578146, -0.633846521))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.04873276, 0.929574251, 0.368614644))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.37257385, 0.621868134, -0.254203796, 0.166764513, 0.946150839, -0.277467132, 0.884746373, -0.267804444, -0.381445229, -0.435217023, -0.181876972, -0.8817662))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.917938411, 2.25125289))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.37258148, 0.621910095, 0.524650574, -0.166764513, -0.946150839, 0.277467132, 0.884746313, -0.267804474, -0.381445378, 0.435217172, 0.181876898, 0.88176614))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.917938411, 0.39670372))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.2597084, -1.00904465, 0.146209717, 0.738231182, 0.633818805, -0.230841458, 0.671015143, -0.725001514, 0.155278623, -0.0689477846, -0.269529611, -0.960521162))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.102075592, 0.99475044))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.84049988, -1.01443481, 0.194034576, 0.52563417, 0.649938822, 0.548901021, 0.106950767, -0.690589964, 0.715295672, 0.843961179, -0.317277342, -0.432504386))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.19117522, 2.67499804, 0.448923111))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 1.22359776, 0.297242999))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.887481689, 1.76607323, 0.3826828, 0.869409382, -0.169139594, -0.46423772, 0.0704672337, 0.972423315, -0.222322136, 0.489041686, 0.160575718, 0.857354224))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.887508392, 1.76605225, -0.146125793, -0.869409382, 0.169139594, 0.46423772, 0.0704672784, 0.972423434, -0.222322106, -0.489041686, -0.160575658, -0.857354224))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 5.98837423, 0.861329198))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(0.20432879, 0.20432891, 0.204328775))
WedgeWeld=CFuncs.Weld.Create(m,TorsoHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.84049988, -1.01435852, -0.0949707031, -0.52563417, -0.649938822, -0.548901021, 0.106950872, -0.690589964, 0.715295613, -0.843961239, 0.317277282, 0.432504505))
CFuncs.Mesh.Create("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(2.19117522, 2.67499804, 0.520646214))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.06961441, 0.39944458, 0.320617676, 0.422497094, -0.902912974, -0.0790129155, 0.906364381, 0.420907468, 0.0366332717, 0.000186115387, -0.0870919153, 0.996200383))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.316709608, 0.378008485, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.08344269, 1.36742687, 0.320472717, 0.939735532, 0.340614736, 0.0296679195, -0.341902643, 0.93615973, 0.0818906799, 0.000124904109, -0.0870991424, 0.996199846))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.357575327, 0.623203099, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30290413, 0.0924987793, 0.320655823, 0.341894269, -0.936161101, -0.0819110945, 0.939738512, 0.340611249, 0.0296118464, 0.00018402352, -0.0870991275, 0.996199727))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.916990221, -0.770381927, -0.0481796265, 0.00013084439, 0.999999881, -3.7444941e-005, -1, 0.000129550681, 0.000193783548, 0.00019956808, 3.74189221e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.917011857, -0.167484283, -0.0483169556, 0.00013084439, 0.999999881, -3.7444941e-005, -1, 0.000129550681, 0.000193783548, 0.00019956808, 3.74189221e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.916977465, 0.425041199, -0.0483932495, 0.00013084439, 0.999999881, -3.7444941e-005, -1, 0.000129550681, 0.000193783548, 0.00019956808, 3.74189221e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.19165039, 0.459186554, 0.132827759, -0.258729309, 0.951277912, -0.167717412, -0.965949833, -0.254761547, 0.0451389551, 0.000217641791, 0.173685327, 0.984801352))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(1.03186011, 0.653852522, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0140762329, -0.692106426, -0.421150208, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.351108551, -0.503547668, -0.252998352, 0.64288193, 0.765966117, -0.000155845904, -0.00021153345, -3.07716255e-005, -1, -0.765965343, 0.642880857, 0.000137817333))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.180000007, 0.150000006, 0.0599999987))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.657119751, -0.534034729, -0.269756317, 0.64288193, 0.765966117, -0.000155845904, -0.00021153345, -3.07716255e-005, -1, -0.765965343, 0.642880857, 0.000137817333))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.180000007, 0.150000006, 0.0599999987))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.429090351, 0.20432891, 0.439306885))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.504066467, -0.523918152, -0.261383057, 0.64288193, 0.765966117, -0.000155845904, -0.00021153345, -3.07716255e-005, -1, -0.765965343, 0.642880857, 0.000137817333))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.180000007, 0.150000006, 0.0599999987))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.187904358, 0.426956177, 0.416240185, 1, -0.000147648156, -3.67818939e-005, 4.25642938e-005, 1.86005291e-005, 1, -0.000148943203, -0.999999881, 1.86068664e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark indigo","Block",Vector3.new(0.20432879, 0.490389347, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.208106995, -0.565958023, 0.378990173, 0.819080472, -0.57367754, -0.000128238316, 0.571478665, 0.815960288, -0.0873012841, 0.05019328, 0.0714335442, 0.996182084))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.20000005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.316709608, 0.429090559, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.353622437, -0.564400077, -0.00731658936, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.065574646, 0.62374115, -1.12470627, -0.771373272, -0.633602023, 0.0594346672, 0.0490493886, 0.0339298137, 0.998220146, -0.634490132, 0.772914648, 0.00490157353))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.273571014, 0.611114502, -1.07255173, -0.771373272, -0.633602023, 0.0594346672, 0.0490493886, 0.0339298137, 0.998220146, -0.634490132, 0.772914648, 0.00490157353))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.22476162, 0.316709787, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.407535553, -0.508210003, -0.00720977783, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.06333923, 0.570411682, -0.264526367, -0.771373272, -0.633602023, 0.0594346672, 0.0490493886, 0.0339298137, 0.998220146, -0.634490132, 0.772914648, 0.00490157353))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00056458, 0.575164795, -0.461666107, -0.771373272, -0.633602023, 0.0594346672, 0.0490493886, 0.0339298137, 0.998220146, -0.634490132, 0.772914648, 0.00490157353))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.279945374, 0.447395325, 0.549048066, 1, -0.000147648156, -3.67818939e-005, 4.25642938e-005, 1.86005291e-005, 1, -0.000148943203, -0.999999881, 1.86068664e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.101985931, 0.762905121, 0.454162598, -0.866100073, -0.49987188, 4.3054155e-005, 0.49797231, -0.862801492, 0.0871576145, -0.0435246266, 0.0755085647, 0.996194601))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 2.5, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399791718, 0.986255646, 0.143608093, -0.716332436, 0.693889797, -0.073376894, -0.654266179, -0.63141346, 0.416234016, 0.242495134, 0.346170187, 0.906291902))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 2, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0467643738, 0.60241127, 0.518814087, -0.819062412, 0.573703408, 1.72674372e-005, -0.573704541, -0.819063067, 3.94681665e-005, 4.25657854e-005, 2.2419621e-005, 1))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 2, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.361625671, 0.447395325, 0.671660423, 1, -0.000147648156, -3.67818939e-005, 4.25642938e-005, 1.86005291e-005, 1, -0.000148943203, -0.999999881, 1.86068664e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0806465149, 1.09708405, 0.229934692, -0.77137357, -0.633601725, 0.0594341755, 0.612998188, -0.714692771, 0.336821318, -0.170927599, 0.29624778, 0.939691007))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1.60000002, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.326926231, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.261711121, 0.948196411, 0.0397186279, -0.771373272, -0.633602023, 0.0594346672, 0.574004948, -0.652392149, 0.494879007, -0.274776191, 0.415851742, 0.866927087))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 2, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.202278137, 1.05443192, 0.074256897, -0.718370676, 0.691030681, -0.0801227838, -0.630975664, -0.598741949, 0.493330777, 0.292939425, 0.404950142, 0.866143882))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 2, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.316709608))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000926971436, -1.14476585, 0.615692139, 0.865963578, -0.500106096, -0.000144638005, 0.500107288, 0.865964115, -0.00013586595, 0.000198978407, 4.5319739e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.106266022, 0.437164307, -0.67688632, 1, -0.000147648156, -3.67818939e-005, 4.25642938e-005, 1.86005291e-005, 1, -0.000148943203, -0.999999881, 1.86068664e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.247322083, -1.1689949, 0.610839844, 0.93973273, 0.341911435, -0.000195256172, -0.341910303, 0.939732194, 2.05054221e-005, 0.000196279201, 4.7489797e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Block",Vector3.new(0.408657581, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.578826904, -0.258167267, 0.146263123, 0.852841854, -0.492498308, 0.173514232, 0.500106514, 0.865964472, -0.000140637043, -0.150182083, 0.0868953019, 0.984831333))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.200000003, 1))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.498118222, 0.0346755981, 0.0129394531, -0.000128846688, -0.999999881, 5.04386444e-005, 1, -0.000127546475, -0.000190783467, 0.000196569599, 5.04133932e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 0.200000003, 1))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Block",Vector3.new(0.40865761, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.631591797, 0.165372849, 0.569297791, 0.852961361, 0.4923127, 0.173459724, -0.499897003, 0.866084218, 4.82927644e-005, -0.150201395, -0.0867533609, 0.984841049))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.200000003, 1))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Block",Vector3.new(2.0739367, 0.20432891, 1.05229294))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0142211914, 0.917001307, -0.00724029541, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.25541088, 0.75601697, 0.633419156))
Part.Shape = "Cylinder"
PartWeld=CFuncs.Weld.Create(m,TorsoHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.401390076, 0.414894104, -0.0484144688, -0.000242504699, 0.00010346956, -1, -1, 8.66204355e-005, 0.000236734166, 8.79392246e-005, 0.999999881, 0.000103448117))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.514907837, 0.467842102, 0.171043664, 1, -0.000147648156, -3.67818939e-005, 4.25642938e-005, 1.86005291e-005, 1, -0.000148943203, -0.999999881, 1.86068664e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.106197357, 0.437164307, -0.370426983, 1, -0.000147648156, -3.67818939e-005, 4.25642938e-005, 1.86005291e-005, 1, -0.000148943203, -0.999999881, 1.86068664e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Block",Vector3.new(0.459739625, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0470962524, 0.247809082, 0.0537490845, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 0.200000003, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.75601697, 0.633419156))
Part.Shape = "Cylinder"
PartWeld=CFuncs.Weld.Create(m,TorsoHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.43208313, 0.118618011, -0.0484086573, -0.000242504699, 0.00010346956, -1, -1, 8.66204355e-005, 0.000236734166, 8.79392246e-005, 0.999999881, 0.000103448117))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(2.05350399, 1.40986931, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0141868591, 0.334668666, -0.00722503662, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Dark indigo","Block",Vector3.new(0.20432879, 0.490389347, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.101119995, 0.487908572, 0.426948547, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.20000005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.521038294, 0.664068878, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.780406952, -0.681897581, -0.00723266602, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Alder","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.138961792, -0.794376075, 0.0231781006, -1, 0.000118657939, 0.000197783986, -0.00011994403, -0.999999881, 3.9439692e-005, 0.000203568343, 3.94153103e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.200000003, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.916997552, -0.933769226, 0.0233154297, 0.00013084439, 0.999999881, -3.7444941e-005, -1, 0.000129550681, 0.000193783548, 0.00019956808, 3.74189221e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Alder","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0266075134, 0.916997254, 0.0231323242, 1, -0.000120654695, -0.000185783865, 0.000121955258, 0.999999881, -4.5430148e-005, 0.000191569037, 4.54068067e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.200000003, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Block",Vector3.new(0.521038294, 0.643636048, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.752067566, -0.692039907, -0.00748443604, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.75601697, 0.633419156))
Part.Shape = "Cylinder"
PartWeld=CFuncs.Weld.Create(m,TorsoHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.442298889, -0.0346221924, -0.048402667, -0.000242504699, 0.00010346956, -1, -1, 8.66204355e-005, 0.000236734166, 8.79392246e-005, 0.999999881, 0.000103448117))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Alder","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.138973236, -1.03961945, 0.0231170654, -1, 0.000118657939, 0.000197783986, -0.00011994403, -0.999999881, 3.9439692e-005, 0.000203568343, 3.94153103e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.200000003, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.917024016, 0.619155884, 0.0230560303, 0.00013084439, 0.999999881, -3.7444941e-005, -1, 0.000129550681, 0.000193783548, 0.00019956808, 3.74189221e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Alder","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.9169783, 0.353458405, 0.0231399536, 0.00013084439, 0.999999881, -3.7444941e-005, -1, 0.000129550681, 0.000193783548, 0.00019956808, 3.74189221e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.670000017, 0.200000003, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Alder","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.917004466, -0.075553894, 0.0230789185, 0.00013084439, 0.999999881, -3.7444941e-005, -1, 0.000129550681, 0.000193783548, 0.00019956808, 3.74189221e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.670000017, 0.200000003, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Block",Vector3.new(0.429090351, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.916968167, -0.453540802, 0.0232543945, 0.00013084439, 0.999999881, -3.7444941e-005, -1, 0.000129550681, 0.000193783548, 0.00019956808, 3.74189221e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.300000012, 1))
Block=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Block",Vector3.new(0.20432879, 0.20432891, 0.204328775))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.514881134, 0.467788696, -0.0639477298, 1, -0.000147648156, -3.67818939e-005, 4.25642938e-005, 1.86005291e-005, 1, -0.000148943203, -0.999999881, 1.86068664e-005))
CFuncs.Mesh.Create("CylinderMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 0.300000012))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Mulberry","Part",Vector3.new(0.25541088, 0.510822237, 0.633419156))
Part.Shape = "Cylinder"
PartWeld=CFuncs.Weld.Create(m,TorsoHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.452613831, -0.0346183777, -0.0484021753, -0.000242504699, 0.00010346956, -1, -1, 8.66204355e-005, 0.000236734166, 8.79392246e-005, 0.999999881, 0.000103448117))
Block=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Block",Vector3.new(0.408657581, 0.20432891, 1.03186023))
BlockWeld=CFuncs.Weld.Create(m,TorsoHandle,Block,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.052192688, -0.344719172, 0.0537796021, 1, -0.000117138021, -0.000189372338, 0.000118438045, 0.99999994, -5.29401368e-005, 0.000195158267, 5.29170284e-005, 1))
CFuncs.Mesh.Create("BlockMesh",Block,"","",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 0.200000003, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.75601697, 0.633419156))
Part.Shape = "Cylinder"
PartWeld=CFuncs.Weld.Create(m,TorsoHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.442321777, -0.136814117, -0.0484017283, -0.000242504699, 0.00010346956, -1, -1, 8.66204355e-005, 0.000236734166, 8.79392246e-005, 0.999999881, 0.000103448117))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.25541088, 0.75601697, 0.633419156))
Part.Shape = "Cylinder"
PartWeld=CFuncs.Weld.Create(m,TorsoHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.421798706, 0.302509308, -0.0484103411, -0.000242504699, 0.00010346956, -1, -1, 8.66204355e-005, 0.000236734166, 8.79392246e-005, 0.999999881, 0.000103448117))
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
print("If you remove credits, i will kill you. ~by grgrgry21 and Dooven, Credit to Curseei")
	Shoot = function(orgpos)
	
	rand = 1.5
	spread = Vector3.new((math.random(-1, 0) + math.random()) * rand, (math.random(-1, 0) + math.random()) * rand, (math.random(-1, 0) + math.random()) * rand) * (orgpos - Mouse.Hit.p).magnitude / 100
	local MouseLook = CFrame.new((orgpos + Mouse.Hit.p) / 2, Mouse.Hit.p + spread)
	Effects.Sphere.Create(BrickColor.new("Really red"), CFrame.new(orgpos), 5, 5, 5, 1, 1, 1, 0.1)
	table.insert(Effects, {MouseLook.lookVector, "Shoot", 50, orgpos, 5, 7, 0, 1, 2})
end



function Beem(Part, Dmg)
  sp = Part.Position
  dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(-1.57, 0, 0)
  local hit, pos = rayCast(sp, dirr.lookVector, 500, Character)
  local las = Instance.new("Part", Character)
  las.Anchored = true
  las.Locked = true
  las.CanCollide = false
  las.TopSurface = 0
  las.BottomSurface = 0
  las.BrickColor = BrickColor.new("Really red")
  las.Size = Vector3.new(1, 1, 1)
  las.CFrame = CFrame.new((Part.Position + pos) / 2, pos) * CFrame.Angles(math.rad(90), 0, 0)
  local msh = Instance.new("SpecialMesh", las)
  mag = (Part.Position - pos).magnitude
  msh.Scale = Vector3.new(0.1, mag, 0.1)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 0.8, 0.1 do
      wait()
      Part.Transparency = Part.Transparency + 0.2
      Mesh.Scale = Mesh.Scale + Vector3.new(2.5, 0.7, 2.5)
    end
    Part.Parent = nil
  end), las, msh)
  if pos ~= nil then
    local las2 = Instance.new("Part", Character)
    las2.Anchored = true
    las2.Locked = true
    las2.CanCollide = false
    las2.TopSurface = 0
    las2.BottomSurface = 0
    las2.Transparency = 1
    las2.BrickColor = BrickColor.new("Really red")
    las2.Size = Vector3.new(1, 1, 1)
    las2.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(90), 0, 0)
    local msh = Instance.new("SpecialMesh", las2)
    msh.MeshType = "Sphere"
    mag = (Part.Position - pos).magnitude
    msh.Scale = Vector3.new(0.1, 0.1, 0.1)
    Effects.Ring.Create(BrickColor.new("Really red"), las2.CFrame * CFrame.Angles(math.random(-4,4),math.random(-4,4),math.random(-4,4)), 8, 8, 8, 2.5, 2.5, 2.5, 0.09)
    Effects.Sphere.Create(BrickColor.new("Really red"), las2.CFrame, 6, 6, 6, 9, 9, 9, 0.09)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=228343252", las2, 1.2, 0.9)

    coroutine.resume(coroutine.create(function(Part, Mesh)
      for i = 0, 0.8, 0.1 do
        wait()
        Part.Transparency = Part.Transparency + 1
        Mesh.Scale = Mesh.Scale + Vector3.new(0, 0, 0)
      end
      Part.Parent = nil
    end), las2, msh)
  end
  if hit ~= nil and pos ~= nil then
    if hit.Parent.className == "Hat" then
      hit:BreakJoints()
      hit.Velocity = Vector3.new(math.random(-5, 5), 20, math.random(-5, 5))
    end
    if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then
      hit.Parent.Humanoid:TakeDamage(Dmg)
    end
  end
end
function attackone()
	rest = 0
	attack = true
	if revive == false then
		local con = Hitbox.Touched:connect(function(hit)
		Damage(Hitbox, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149186", 1)
	end)
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(3.1888485e-006, -0.135727808, -0.090551421, 0.887299776, 8.66027449e-007, -0.461193204, 0.111254968, 0.970466852, 0.21404773, 0.447572887, -0.241234511, 0.861094952) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.170388967, 1.46516669, 0.0786629021, 0.89947015, 0.0952406526, 0.426477224, 0.0431619063, 0.951824009, -0.303592235, -0.434845537, 0.291479737, 0.852026463) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.76999593, 0.524272799, 0.536947787, -0.824378848, -0.556176841, 0.105199724, -0.101877227, -0.0370285362, -0.994107544, 0.556795001, -0.830238819, -0.0261361897) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.54940248, 0.201853648, 0.296690404, 0.912440598, 0.242420107, 0.329674006, -0.259011656, 0.965851367, 0.00664581358, -0.316804975, -0.0914532915, 0.944071651) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.444144607, -1.96865499, 0.0609999895, 0.952755094, 0.0323256031, 0.302014709, -0.0153191071, 0.998169243, -0.0585106462, -0.30335319, 0.0511197299, 0.951506019) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.641738653, -1.83772755, -0.31178546, 0.979474902, 0.166682214, 0.113340706, -0.127873763, 0.948499024, -0.289823711, -0.155811995, 0.269381702, 0.950345397) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(2.02863264, 2.17956877, 5.53378057, 0.193428919, -0.0124910157, -0.981034875, 0.130222961, 0.991398871, 0.013052864, 0.972433627, -0.130278081, 0.19339183) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox, 1, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159972643", RootPart, 2.2, 1)
for i = 0, .2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-7.61821866e-007, -0.135726035, -0.0905515105, 0.98718524, -0.0342359059, -0.155862927, 0.0608490147, 0.983679473, 0.169328853, 0.147522032, -0.176643074, 0.973156929) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.176366746, 1.45743966, 0.0633319616, 0.991438866, 0.0208096169, 0.128903434, 0.0107620265, 0.970836461, -0.239501983, -0.130128041, 0.238838792, 0.962300777) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(2.02698541, 0.493261278, -0.362023592, 0.376805305, -0.925614357, 0.0354378, 0.0921622217, -0.00060473755, -0.99574393, 0.921696186, 0.37846756, 0.0850788057) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.66954982, 0.216622323, 0.167213038, 0.959444165, 0.276925802, 0.0527184531, -0.281814009, 0.937635601, 0.203520671, 0.00692941248, -0.210123435, 0.977650404) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.440681338, -1.93650913, 0.00681057945, 0.99916929, 0.0382597931, -0.0140336007, -0.0377957597, 0.998774409, 0.0319615155, 0.0152392238, -0.0314045548, 0.999390602) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.746239841, -1.86186814, -0.212277442, 0.967113733, 0.16472356, -0.193797082, -0.198402971, 0.965338826, -0.169580624, 0.159145847, 0.202453628, 0.966273904) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(6.68535852, 2.17957497, -1.63628554, 0.985680759, -0.130871594, 0.106329605, 0.130222976, 0.991398811, 0.0130504724, -0.10712298, 0.000982958823, 0.994245291) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(1.3820827e-006, -0.135725722, -0.0905503631, 0.96990335, -0.0342345722, 0.241072059, -0.00993300416, 0.983679473, 0.179655433, -0.243288085, -0.176642954, 0.953733802) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.0447445028, 1.32461989, 0.168906212, 0.96942836, -0.0738906413, -0.233985081, 0.0162658244, 0.970836282, -0.239191175, 0.244835153, 0.228072733, 0.942357957) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.15444815, 0.426336318, -0.85153687, 0.953193367, 0.30236128, -0.000511534512, -0.02835311, 0.0876985639, -0.995743513, -0.301029354, 0.949150503, 0.0921665132) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.76892877, 0.286314428, -0.0598289967, 0.880930066, 0.356498718, -0.311241388, -0.281813025, 0.923521221, 0.260172963, 0.38018924, -0.141482264, 0.914023519) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.47067669, -1.95908511, 0.0229037106, 0.956264436, 0.07208848, -0.283481628, -0.0539168268, 0.995989501, 0.071400106, 0.287491798, -0.052992925, 0.956315935) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.598981798, -2.05361271, -0.354111671, 0.939836681, 0.0789397657, -0.332379043, -0.170964986, 0.951018572, -0.257555306, 0.295767248, 0.298885047, 0.90729785) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(-0.855638802, 1.63974154, -5.48237848, -0.33147788, 0.0311269723, 0.942949355, 0.130222961, 0.991398871, 0.0130513823, -0.934432626, 0.127119914, -0.332680285) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
con:Disconnect()
	else
	local con = Hitbox2.Touched:connect(function(hit)
		Damage(Hitbox2, hit, 15, 30, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149186", 1)
	end)
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-1.39433439e-007, 9.24597202e-007, 1.87545353e-007, 0.802510381, -0.146206558, -0.578446805, 9.21018e-008, 0.969510436, -0.24505052, 0.596638083, 0.196655557, 0.778042138) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.204300493, 1.42397118, -0.160506755, 0.742298901, 0.0699159354, 0.666411459, -0.164200872, 0.983198106, 0.079747878, -0.649638772, -0.168622077, 0.74130702) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.65062964, 0.895309448, -0.8110888, 0.935224533, -0.354055196, -2.71201134e-006, -0.180982545, -0.478052676, -0.859483063, 0.30430308, 0.80381012, -0.511164308) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.61394322, 0.244269118, 0.27999264, 0.978328049, 0.187252223, 0.0883789957, -0.205970794, 0.92381835, 0.322701156, -0.0212196112, -0.333911061, 0.942365766) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.547388077, -1.98154938, 0.293397248, 0.975088239, -0.0956564099, 0.200132132, 0.0257554054, 0.944959342, 0.326172709, -0.220317215, -0.312892646, 0.923882365) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.660872221, -2.01056027, 0.428069353, 0.623481989, 0.0966738015, 0.775837898, -0.191589862, 0.980961978, 0.0317327827, -0.757999659, -0.168427467, 0.630133808) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.35253143, 2.18300819, 0.912846625, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 70),0 - 0.3 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter2.C0 = clerp(moter2.C0, CFrame.new(4.51726246, 6.13339806, 0.297565818, 0.920824707, 0.11843352, 0.37155813, 6.21133267e-006, 0.952765346, -0.303707719, -0.389976829, 0.279663831, 0.877329051) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox2, 1, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159882598", RootPart, 2.2, 1)

for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0388609171, -0.0129924938, -0.10637071, 0.939256907, -0.0777328238, 0.334296435, 0, 0.974014759, 0.226484388, -0.343214959, -0.21272701, 0.914850116) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.0471520014, 1.49997687, -0.0236845464, 0.893592179, 0.0303314477, -0.447854012, -1.36904418e-006, 0.997714639, 0.0675686449, 0.448879957, -0.0603782088, 0.891549945) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.870252788, -0.130316079, -0.630792975, 0.886449158, 0.442299306, -0.136305928, -0.424441308, 0.659444869, -0.620469213, -0.184546769, 0.607868254, 0.772294521) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.7608161, 0.0593556091, 0.027794525, 0.922702193, 0.367331862, -0.116995871, -0.305199385, 0.881435454, 0.360450745, 0.235529304, -0.296881616, 0.925411999) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.486680508, -2.03429937, 0.0783693492, 0.984123409, 5.14090061e-007, -0.177485481, 0.0206973739, 0.993176877, 0.114765868, 0.176274553, -0.116617277, 0.977408707) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.500086665, -1.86545455, -0.502036512, 0.994581461, -1.15483999e-006, 0.103960186, 0.0444080569, 0.904178858, -0.424839586, -0.0939980745, 0.427154243, 0.899279535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.35253143, 2.18300819, 0.912846625, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 70),0 - 0.3 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter2.C0 = clerp(moter2.C0, CFrame.new(-0.129167616, -0.743002534, -6.51623297, 0.72400099, -0.606965601, 0.327742815, 0, 0.475128055, 0.879916668, -0.689799011, -0.637060523, 0.343993157) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
end
con:Disconnect()
end
	attack = false
end
attacktwo = function()
	rest = 0
	attack = true
	if revive == false then
		local con = Hitbox.Touched:connect(function(hit)
		Damage(Hitbox, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149186", 1)
	end)

for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.0157033913, -0.12434648, 1, 0, 0, 0, 0.968592644, 0.248652905, 0, -0.248652905, 0.968592644) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.53016877, -0.177580431, 1, 0, 0, 0, 0.959844053, 0.280533969, 0, -0.280533969, 0.959844053) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.61450207, 0.0604900531, 0.0873810202, 0.989498615, -0.144265711, -0.008941615, 0.144542545, 0.987612367, 0.061069712, 2.05785036e-005, -0.0617208332, 0.998093486) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.62296021, 0.0289408118, 0.355457932, 0.98650521, 0.153734595, 0.0563320816, -0.163730368, 0.926278889, 0.339410931, -2.23517418e-008, -0.344053835, 0.938949883) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.594041765, -1.96204889, -0.355085373, 0.989354014, -0.0917348862, -0.112975277, 0.0548789017, 0.954170465, -0.294188797, 0.134785041, 0.284856886, 0.949046731) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.549505055, -1.97664773, -0.16808717, 0.999183774, -7.10019322e-007, 0.0403949916, 0.0055563678, 0.990497172, -0.13742128, -0.0400110222, 0.137533545, 0.989688754) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, -1.86380208, -2.65159225, 1, 0, 0, 0, 0.741740227, 0.670687258, 0, -0.670687258, 0.741740227) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox, 1, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159972627", RootPart, 2.2, 1)	
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.0157023482, -0.124346256, 1, 0, 0, 0, 0.968592644, 0.248652905, 0, -0.248652905, 0.968592644) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.39549804, 0.181215167, 1, 0, -0, 0, 0.93622452, -0.35140264, 0, 0.35140264, 0.93622452) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.66558266, 0.181276932, 0.184540361, 0.973157644, -0.228790149, -0.0248844326, 0.229642391, 0.958259821, 0.170301393, -0.0151175335, -0.171444625, 0.985077798) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.62620044, 1.3525722, -0.584102333, 0.986748874, 0.152566627, 0.0552284904, 0.159316525, -0.846534729, -0.507934153, -0.0307409689, 0.510002255, -0.859623611) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.594041586, -1.96204603, -0.355085015, 0.989354014, -0.0917348862, -0.112975277, 0.0548789017, 0.954170465, -0.294188797, 0.134785041, 0.284856886, 0.949046731) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.54950124, -1.97664273, -0.168086126, 0.999183774, -7.10019322e-007, 0.0403949916, 0.0055563678, 0.990497172, -0.13742128, -0.0400110222, 0.137533545, 0.989688754) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, 3.0010252, -3.93542266, 1, 0, -0, 0, 0.838179111, -0.545395076, 0, 0.545395076, 0.838179111) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
	con:Disconnect()
	else
	local con = Hitbox1.Touched:connect(function(hit)
		Damage(Hitbox1, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149186", 1)
	end)
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.175288185, -0.210022062, -0.147610337, 0.644133806, -0.350557327, 0.679853797, 0, 0.888799131, 0.458297074, -0.764912844, -0.295204669, 0.572505534) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(7.23451376e-006, 1.49998105, -1.28746033e-005, 0.801360607, 0.061380595, -0.595024109, 1.25169754e-006, 0.994721413, 0.102613628, 0.598181725, -0.0822312832, 0.797130227) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.61698437, 0.179215804, -0.343888462, 0.985634685, -0.145503327, 0.0857504308, 0.168891594, 0.849141181, -0.500434756, 6.55651093e-007, 0.507728457, 0.861517131) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.64838099, 0.221447259, 0.499359012, 0.321099073, 0.679919004, 0.659246266, -0.944398046, 0.281899571, 0.16924867, -0.0707658902, -0.676936388, 0.732631743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.567970753, -1.73139715, -1.09096611, 0.856979728, -0.137837037, -0.496574968, -0.277687132, 0.688216746, -0.670259416, 0.434137732, 0.712291121, 0.551512241) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.641023695, -2.01173067, -0.244203776, 0.983233452, 0.125889063, 0.131924808, -0.0949699134, 0.971119225, -0.218879879, -0.155669361, 0.202681139, 0.966792345) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-2.08473682, -0.286551297, 5.26742315, 0.432623088, -0.213842079, 0.875847459, 0.437982112, 0.898978233, 0.00314915506, -0.788041174, 0.382243156, 0.482577711) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox1, 1, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159972657", RootPart, 2.2, 1)	
for i = 0, .2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.149420664, -0.0166877955, -0.115064353, 0.912340522, -0.187641665, 0.363902986, 0, 0.888800085, 0.458297849, -0.409432709, -0.418123662, 0.81088841) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.0119313756, 1.40751874, 0.0585282706, 0.991280258, 0.0400279388, -0.125545725, -0.0511279106, 0.994942188, -0.0864784718, 0.121448338, 0.0921434164, 0.98831284) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.59707296, 0.220976621, -0.261113942, 0.972156286, -0.227036804, -0.0580241382, 0.189108804, 0.906329572, -0.377898216, 0.138384998, 0.35640353, 0.924028397) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.90839612, 0.483834952, -0.407841355, 0.0439183488, 0.93894279, -0.341259599, -0.98249191, -0.0213149413, -0.185088784, -0.181061864, 0.343412697, 0.921567619) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.56797117, -1.73139894, -1.09097195, 0.856981337, -0.137836501, -0.496572912, -0.277686149, 0.688216925, -0.670261443, 0.434135497, 0.712292969, 0.55151391) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.641024053, -2.01173663, -0.244192317, 0.983233213, 0.125888139, 0.131928533, -0.0949680209, 0.971120536, -0.21887961, -0.155673608, 0.202680677, 0.966793001) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.75925541, 0.682564974, -1.11051106, 0.908626437, -0.106531404, -0.403793514, 0.0834651366, 0.993733943, -0.0743578747, 0.409184694, 0.0338608399, 0.911824465) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.140085995, -0.0945337117, 0.105154842, 0.846895814, 0.144478679, -0.511755288, 0, 0.962382734, 0.271699756, 0.531759202, -0.230101392, 0.815037906) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.0864557475, 1.38195932, 0.0406370834, 0.976288497, -0.0141473114, 0.216010898, 0.0270473659, 0.998014569, -0.0568805337, -0.214777291, 0.0613743216, 0.974732816) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.60075378, 0.0679632202, 0.504623711, 0.972156405, -0.163835332, -0.167540818, 0.212924033, 0.916150928, 0.339603961, 0.0978535712, -0.365821719, 0.9255265) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.634001315, 0.615387022, -0.932349086, -0.10978812, -0.630040288, -0.768762589, -0.968913734, -0.104679197, 0.224161953, -0.221704483, 0.769474864, -0.598962128) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.46257937, -1.92212296, 0.36242488, 0.961114764, 0.0977503657, -0.258270085, -0.0106618702, 0.947692454, 0.319007099, 0.275943667, -0.303848803, 0.911883354) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.722478747, -1.72382724, -0.498746991, 0.98323375, 0.171755135, 0.0612508655, -0.124124765, 0.876463711, -0.465193003, -0.133583426, 0.449790716, 0.883087754) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(1.48600042, 0.817939997, -5.74683571, -0.405213952, -0.199575052, -0.892172396, 0.0165060069, 0.97412616, -0.225404546, 0.914073408, -0.106063269, -0.391435266) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
end
con:Disconnect()
end
	attack = false
end
attackthree = function()
	rest = 0
	attack = true
		if revive == false then
			local con = RightLeg.Touched:connect(function(hit)
		Damage(RightLeg, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149186", 1)
	end)
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.55453968, -0.0703605115, 1, 0, 0, 0, 0.98677212, 0.162114009, 0, -0.162114009, 0.98677212) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.5512929, 0.0850069597, 0, 0.99147135, -0.130325049, 0, 0.130325049, 0.99147135, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.56969881, 0.0500169247, 0, 0.992582738, 0.121570967, 0, -0.121570967, 0.992582738, 0, -0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.5, -1.82836175, 0.389226913, 1, 0, 0, 0, 0.914989769, 0.403476924, 0, -0.403476924, 0.914989769) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.565449357, -1.99361193, 0, 0.995276093, 0.097085014, 0, -0.097085014, 0.995276093, 0, -0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(-0.377030611, 2.23529887, 3.38560438, 0.999624133, 0.0181941353, -0.0205119029, -0.017229002, 0.998779655, 0.0462857895, 0.0213290025, -0.0459149815, 0.998717666) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
end
Torso.Velocity = RootPart.CFrame.lookVector * 60
--Torso.Velocity = Vector3.new(0, 40, 0)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=199145095", RightLeg, 1, 0.8)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159882477", RootPart, 2.2, 1)	
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.00213143881, 0.049953457, 1, 0, -0, 0, 0.995428622, -0.0955089629, 0, 0.0955089629, 0.995428622) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.55725658, -0.0331232771, 1, 0, -0, 0, 0.99733007, 0.0730267763, -0, -0.0730267763, 0.99733007) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.53314447, 0.223051548, 0.306677878, 0.991471469, -0.11866843, -0.0538730845, 0.130324632, 0.902787685, 0.409865797, -2.17370689e-006, -0.413391173, 0.910553634) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.5310266, 0.365730882, 0.489296556, 0.992583096, 0.101924911, 0.0662593469, -0.121568866, 0.832199454, 0.540985525, -1.09057873e-006, -0.54502815, 0.838417828) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.559038937, -1.54237294, -0.907594442, 0.998593748, -0.0530143008, 4.13909582e-008, 0.0187391378, 0.352975488, -0.935444951, 0.0495919436, 0.934129536, 0.353472531) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.565448523, -1.99360824, -2.19610229e-007, 0.995276213, 0.0970847905, -2.8573902e-007, -0.0970847979, 0.995276213, 1.88499689e-006, 4.67523932e-007, -1.84774399e-006, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(-0.377030611, 2.23529887, 3.38560438, 0.999624133, 0.0181941353, -0.0205119029, -0.017229002, 0.998779655, 0.0462857895, 0.0213290025, -0.0459149815, 0.998717666) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
end
con:Disconnect()
else	
	local con1 = Hitbox1.Touched:connect(function(hit)
		Damage(Hitbox1, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149186", 1)
	end)
	local con2 = Hitbox2.Touched:connect(function(hit)
		Damage(Hitbox2, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149186", 1)
	end)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159882497", RootPart, 2.2, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox1, 1, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox2, 1, 1)
for i = 0, 1.4, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 1.06191099, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(rest * 180), 0), 
CFrame.new(0, 1.45912731, 0.0540094301, 1, 0, -0, 0, 0.995180011, -0.0980649963, 0, 0.0980649963, 0.995180011) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.98196495, 0.403993249, 0.102202326, -0.00658000214, -0.997568667, -0.0693794712, 0.999978364, -0.00656414591, -0.000456526992, 0, -0.0693809763, 0.997590303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.99594164, 0.410645872, -0.0270873383, -0.0315870047, 0.997066379, -0.0697202086, -0.999501109, -0.0315100625, 0.00220335182, 0, 0.0697550252, 0.997564137) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.545021772, -1.9967308, 0, 0.997383535, -0.0722919554, 0, 0.0722919628, 0.997383535, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.597879827, -1.9551301, 0.181263611, 0.995445549, 0.0953322127, 1.98143397e-007, -0.0935729519, 0.977075279, 0.191227973, 0.0182299912, -0.190357059, 0.981545687) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-7.49335861, 1.83090806, -0.276578128, -0.999649346, -9.27991423e-005, 0.0264818445, 0, 0.999993861, 0.0035042339, -0.0264820084, 0.00350300479, -0.999643207) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter2.C0 = clerp(moter2.C0, CFrame.new(6.43242884, 1.60368204, 0.38795799, 0.995433748, 0.000334574026, -0.0954543874, 0, 0.999993861, 0.00350504508, 0.095454976, -0.0034890403, 0.995427608) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 4.35019827, 2.20168948, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
Torso.Velocity = RootPart.CFrame.lookVector * 80
moter1.Part0 = real1
moter2.Part0 = real2
vr1.C0 = clerp(vr1.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(rest * 180), 0), 0.3)
vr2.C0 = clerp(vr2.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(rest * 180), 0), 0.3)
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox1, 1, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox2, 1, 1)
for i = 0, 1.4, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 1.06191099, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(rest * 180), 0), 
CFrame.new(0, 1.45912731, 0.0540094301, 1, 0, -0, 0, 0.995180011, -0.0980649963, 0, 0.0980649963, 0.995180011) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.98196495, 0.403993249, 0.102202326, -0.00658000214, -0.997568667, -0.0693794712, 0.999978364, -0.00656414591, -0.000456526992, 0, -0.0693809763, 0.997590303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.99594164, 0.410645872, -0.0270873383, -0.0315870047, 0.997066379, -0.0697202086, -0.999501109, -0.0315100625, 0.00220335182, 0, 0.0697550252, 0.997564137) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.545021772, -1.9967308, 0, 0.997383535, -0.0722919554, 0, 0.0722919628, 0.997383535, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.597879827, -1.9551301, 0.181263611, 0.995445549, 0.0953322127, 1.98143397e-007, -0.0935729519, 0.977075279, 0.191227973, 0.0182299912, -0.190357059, 0.981545687) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-7.49335861, 1.83090806, -0.276578128, -0.999649346, -9.27991423e-005, 0.0264818445, 0, 0.999993861, 0.0035042339, -0.0264820084, 0.00350300479, -0.999643207) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter2.C0 = clerp(moter2.C0, CFrame.new(6.43242884, 1.60368204, 0.38795799, 0.995433748, 0.000334574026, -0.0954543874, 0, 0.999993861, 0.00350504508, 0.095454976, -0.0034890403, 0.995427608) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 4.35019827, 2.20168948, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
Torso.Velocity = RootPart.CFrame.lookVector * 80
moter1.Part0 = real1
moter2.Part0 = real2
vr1.C0 = clerp(vr1.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(rest * 180), 0), 0.3)
vr2.C0 = clerp(vr2.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(rest * 180), 0), 0.3)
end
con1:Disconnect()
con2:Disconnect()	
end
		attack = false
end
attackfour = function()
	rest = 0
	attack = true
	if revive == false then
local ref = New("Part",Model,"ref",{Transparency = 1,CanCollide = false, BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.8233452, -2.94440603, -41.9271126, -1, -0, 0, 0, -0.0611380227, 0.998129368, 0, 0.998129368, 0.0611380227),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local mot = New("Weld",ref,"mot",{Part0 = ref,Part1 = RootPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.0611380227, 0.998129368, 0, 0.998129368, 0.0611380227),C1 = CFrame.new(0.16015625, -2.91722918, -7.77282715, -1, 0, 0, 0, 1, 0, 0, 0, -1),})

CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=199145497", RootPart, 1, 1)	
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159882584", RootPart, 2.2, 1)	
Humanoid.Jump = true
Torso.Velocity = Vector3.new(0, 90, 0)
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.46795857, 0.132517934, 1, 0, -0, 0, 0.972055614, -0.234750897, 0, 0.234750912, 0.972055614) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.69050443, 0.337467134, 0.508190036, 0.790086865, -0.513706088, -0.334467947, 0.612994909, 0.662113965, 0.431094438, 0, -0.545629144, 0.838026762) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.84881663, 0.417017847, 0.309735924, 0.76242888, 0.62015909, 0.184675008, -0.647071958, 0.730718195, 0.217597991, -0, -0.285401046, 0.958408237) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.586394787, -1.3048085, -0.2875247, 0.991395891, -0.130897745, 1.22869665e-006, 0.120959982, 0.916132748, 0.382190466, -0.050028991, -0.378901899, 0.92408365) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.5, -1.91453815, 0.275938064, 1, 0, 0, 0, 0.955236971, 0.295841992, 0, -0.295841992, 0.955236971) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(-0.377030611, 2.23529887, 3.38560438, 0.999624133, 0.0181941353, -0.0205119029, -0.017229002, 0.998779655, 0.0462857895, 0.0213290025, -0.0459149815, 0.998717666) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
end
for i = 0, 1.5, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0.0446925536, -0.113902621, 1, 0, 0, 0, 0.959784448, 0.280738115, 0, -0.280738115, 0.959784448) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.4780724, -0.108031765, 1, 0, 0, 0, 0.980096817, 0.198520318, 0, -0.198520318, 0.980096817) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.52336431, 1.37410688, 0.429173201, 0.961683333, -0.177957356, 0.208558023, -0.239297733, -0.916084111, 0.321755826, 0.133797854, -0.359334648, -0.923567533) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.52519119, 1.33760417, 0.33274734, 0.972769022, 0.161078379, -0.166655868, 0.199760884, -0.947310805, 0.250395894, -0.117541522, -0.276868761, -0.953691661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.497251898, -1.93572879, 0.243175536, 0.999088347, -0.0412701331, -0.0109227467, 0.0426911041, 0.965871334, 0.25548023, 6.2668696e-006, -0.255713612, 0.966752648) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.613620698, -1.90004504, 0.308153152, 0.99603647, 0.0889458209, 5.18413913e-007, -0.0854247287, 0.956604838, 0.278585613, 0.0247785319, -0.277481496, 0.960411429) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, 6.59590435, 0.365743309, 1, 0, -0, 0, 0.996492445, -0.0836840272, 0, 0.0836840346, 0.996492445) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
coroutine.wrap(function()
	wait(.1)
	MagnitudeDamage(ref, 12, 15, 25, math.random(1, 5), "Normal", "http://www.roblox.com/asset/?id=199145477", 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=199145477", ref, 1, 1)	
Effects.Sphere.Create(BrickColor.new("Really black"), ref.CFrame, 1, 1, 1, 7.5, 7.5, 7.5, 0.07)
Effects.Sphere.Create(BrickColor.new("Really red"), ref.CFrame, 1, 1, 1, 6.5, 6.5, 6.5, 0.07)
Effects.Wave.Create(BrickColor.new("Really red"), ref.CFrame* CFrame.Angles(math.rad(90),0,0), 1, 1, 1, 1.2, .5, 1.2, 0.07)
end)()
for i = 0, 1.2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -2.52295923, -0.584590793, 1, 0, 0, 0, -0.0135839973, 0.999907732, 0, -0.999907732, -0.0135839982) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.46205437, -0.000206507742, 1, 0, 0, 0, 0.997810066, 0.0661448836, 0, -0.0661448836, 0.997810066) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.58987796, 1.20756996, -0.0198090896, 0.962880969, -0.269926339, -1.14066779e-006, -0.26989004, -0.962751448, -0.0164019652, 0.00442622229, 0.0157934465, -0.999865532) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.62800121, 1.23728025, -0.0652080923, 0.976427615, 0.215845466, -3.47263239e-007, 0.215546325, -0.97507441, -0.0526290238, -0.0113600753, 0.0513883606, -0.998614192) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.494747847, -1.93533611, -0.257378459, 0.996715009, -0.0784583315, 0.0200892054, 0.0809894279, 0.965555847, -0.247270226, 3.16055957e-006, 0.248084933, 0.968738317) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.540820956, -1.81960273, -0.311453491, 0.995794892, 0.0869645029, -0.0288037509, -0.0916104838, 0.945302486, -0.313066721, 2.5635818e-006, 0.31438899, 0.949294269) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .8, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, -2.91722918, -7.77282524, 1, 0, 0, 0, -0.0611380227, 0.998129368, 0, -0.998129368, -0.0611380227) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
	attack = false
	wait(1)
	ref:Remove()
	else
local refn = New("Part",RuinedHand3,"refn",{Transparency = 1,CanCollide = false, BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.8233452, -2.94440603, -41.9271126, -1, -0, 0, 0, -0.0611380227, 0.998129368, 0, 0.998129368, 0.0611380227),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
local mot = New("Weld",refn,"mot",{Part0 = refn,Part1 = RootPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.0189939924, 0.999819636, 0, 0.999819636, -0.0189939905),C1 = CFrame.new(-0.0398359299, -3.0348413, -7.48670959, -1, 0, 0, 0, 1, 0, 0, 0, -1),})

for i = 0, 2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0522649661, -0.0177109893, 0.0515693352, 0.940172851, 0.0898527652, -0.328635961, 0, 0.964596212, 0.26373142, 0.340697974, -0.247953147, 0.906887054) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.147830844, 1.26536345, 0.147715598, 0.930256009, 0.107446812, 0.350826323, 0.106247783, 0.836310387, -0.537863016, -0.351191342, 0.537624717, 0.766566575) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.50417614, 1.60240793, -0.53337431, 0.976805091, -0.156650946, -0.145988032, -0.190315336, -0.947598577, -0.256587803, -0.0981433392, 0.278420031, -0.955431938) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.68182266, 0.150129914, 0.0506387241, 0.963969111, 0.258431643, 0.0630610287, -0.258947164, 0.9658916, 2.74181366e-006, -0.0609093904, -0.0163321495, 0.998009741) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.698598504, -2.07093692, -0.300203562, 0.971846223, -0.124182761, 0.200234249, 0.183686733, 0.931553841, -0.313794136, -0.147561193, 0.341739923, 0.92813772) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.579440534, -1.96539998, 0.181585327, 0.993177831, 0.115896322, -0.012883395, -0.113001414, 0.983822763, 0.139009744, 0.0287856758, -0.136605561, 0.990207195) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .2, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.35253143, 2.18300819, 0.912846625, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 70),0 - 0.3 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 7.26833677, -1.17806709, 1, 0, 0, 0, 0.980331779, 0.197356954, 0, -0.197356954, 0.980331779) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
coroutine.wrap(function()
	wait(.1)
	MagnitudeDamage(refn, 12, 15, 25, math.random(1, 5), "Normal", "http://www.roblox.com/asset/?id=199145477", 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=199145477", ref, 1, 1)	
Effects.Sphere.Create(BrickColor.new("Really black"), refn.CFrame, 1, 1, 1, 7.5, 7.5, 7.5, 0.07)
Effects.Sphere.Create(BrickColor.new("Really red"), refn.CFrame, 1, 1, 1, 6.5, 6.5, 6.5, 0.07)
Effects.Wave.Create(BrickColor.new("Really red"), refn.CFrame* CFrame.Angles(math.rad(90),0,0), 1, 1, 1, 1.2, .5, 1.2, 0.07)
end)()
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.0168609619, -1.13198364, -0.217963964, 0.867993832, 0.0938589126, 0.487624079, -0.490228891, 0.318454146, 0.811333895, -0.0791349784, -0.94328022, 0.322428614) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.0264188647, 1.30064738, -0.104003608, 0.810651183, 0.331579745, -0.482596755, -0.114372201, 0.897998989, 0.424872994, 0.574250579, -0.289228171, 0.765887439) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.4650929, 0.276666582, -0.519725025, 0.85737294, -0.488166362, -0.16311121, -0.019970268, 0.285117865, -0.958284497, 0.514308214, 0.824864447, 0.234703571) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.65412951, 0.42048353, 0.794181585, 0.478840798, 0.581504405, 0.657696187, -0.745587766, -0.126142204, 0.654360056, 0.463476449, -0.803704679, 0.373160481) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.785483599, -2.03150511, -0.305618703, 0.909185231, -0.346521854, 0.230878338, 0.412516147, 0.825058699, -0.38614592, -0.0566802025, 0.446319163, 0.893077135) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.331169307, -1.77338052, -0.888589919, 0.967000008, -0.228374869, -0.112942219, 0.0143533228, 0.491427779, -0.870800078, 0.254371822, 0.840442598, 0.478488654) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .4, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.35253143, 2.18300819, 0.912846625, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 70),0 - 0.3 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398359299, -3.03484178, -7.48670959, 1, 0, 0, 0, 0.0189939924, 0.999819636, 0, -0.999819636, 0.0189939905) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.4)
end
	attack = false
	wait(1)
	refn:Remove()
		end


end
takdis = function()
	rest = 0
	attack = true
		local con = Hitbox.Touched:connect(function(hit)
		Damage(Hitbox, hit, 20, 30, 4, "Normal", RootPart, .4, "rbxassetid://199149186", 1)
		end)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159882578", RootPart, 2.2, 1)
for i = 0, 1.4, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(2.46614218e-006, -0.0109724114, -0.104171105, 0.907603979, -4.05730646e-007, -0.419827312, 0.0874660015, 0.978057086, 0.189087495, 0.410614997, -0.208337203, 0.887688577) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.173052579, 1.40446305, -0.0192120522, 0.862485647, 0.116007932, 0.492605954, -5.19677997e-007, 0.973373115, -0.229226962, -0.506081402, 0.197704688, 0.839520454) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.88510799, 0.306754798, -0.163154587, 0.173845708, -0.971135855, 0.163318172, 0.98477298, 0.171438843, -0.0288279951, -3.21120024e-006, 0.165842921, 0.986152232) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.47473085, 0.12939091, 0.221077085, 0.965204597, 0.0922840536, 0.24467057, -0.122411355, 0.986263275, 0.11090675, -0.231074631, -0.136998236, 0.963242531) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.512320936, -1.96948612, 0.20825164, 0.989587784, -0.0441185161, -0.1370022, 0.0627790093, 0.988851547, 0.135024637, 0.129517794, -0.142219663, 0.98132515) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.569151103, -1.93431842, -0.264938474, 0.974078536, 0.142103419, 0.176004544, -0.100388855, 0.968799889, -0.226603031, -0.202714175, 0.203060225, 0.957952857) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(4.12204742, 2.18300295, 4.24023008, 0.936150372, -0.00123224582, 0.351597965, 0, 0.999993861, 0.00350468024, -0.351600111, -0.00328090717, 0.93614459) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter2.C0 = clerp(moter2.C0, CFrame.new(4.12204742, 2.18300295, 4.24023008, 0.936150372, -0.00123224582, 0.351597965, 0, 0.999993861, 0.00350468024, -0.351600111, -0.00328090717, 0.93614459) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end	
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox, 1, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159882481", RootPart, 2.2, 1)
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.132035702, -0.0109716617, 0.296845376, 0.63251102, -0.201170281, 0.747970819, 0.0874660015, 0.978056848, 0.189088628, -0.769596994, -0.0541786104, 0.63622731) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.173044205, 1.40446091, -0.0191971958, 0.629808307, -0.00259829313, -0.776746452, -0.208151132, 0.962855518, -0.171995759, 0.748341322, 0.270004988, 0.605873525) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.70916152, 0.513785243, -0.597414076, 0.0536051206, -0.743416011, 0.666677713, 0.99246937, -0.0339756384, -0.117687263, 0.110141411, 0.667965889, 0.735996306) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.44067943, 0.16942057, 0.342082769, 0.960899711, 0.100347161, 0.258074075, -0.179227486, 0.935842216, 0.303441972, -0.211067051, -0.337831289, 0.917235434) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.655667424, -1.90291786, -0.316539109, 0.806838989, -0.0411082581, -0.589339495, -0.10342247, 0.972342193, -0.209415048, 0.58164829, 0.229915187, 0.780272007) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.569166362, -1.93431771, -0.264936477, 0.890522659, 0.142103121, -0.432175905, -0.214692771, 0.968798935, -0.123837158, 0.40109393, 0.203064889, 0.893245995) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.619564772, 2.18300295, -5.68279314, 0.996969998, 0.000272771198, -0.0777865276, 0, 0.999993861, 0.00350664277, 0.077786997, -0.00349601754, 0.996963918) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter2.C0 = clerp(moter2.C0, CFrame.new(0.619564772, 2.18300295, -5.68279314, 0.996969998, 0.000272771198, -0.0777865276, 0, 0.999993861, 0.00350664277, 0.077786997, -0.00349601754, 0.996963918) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
con:Disconnect()
Shoot(Hitbox.Position) 
wait(.2)
Shoot(Hitbox.Position) 
wait(.2)
Shoot(Hitbox.Position) 
wait(.2)
Shoot(Hitbox.Position) 
wait(.2)
	attack = false
end
takdis2 = function()
	rest = 0
	attack = true
		local con = Hitbox2.Touched:connect(function(hit)
		Damage(Hitbox2, hit, 20, 30, 4, "Normal", RootPart, .4, "rbxassetid://199149186", 1)
		end)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159882578", RootPart, 2.2, 1)
for i = 0, 1.4, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(2.46614218e-006, -0.0109724114, -0.104171105, 0.907603979, -4.05730646e-007, -0.419827312, 0.0874660015, 0.978057086, 0.189087495, 0.410614997, -0.208337203, 0.887688577) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.173052579, 1.40446305, -0.0192120522, 0.862485647, 0.116007932, 0.492605954, -5.19677997e-007, 0.973373115, -0.229226962, -0.506081402, 0.197704688, 0.839520454) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.88510799, 0.306754798, -0.163154587, 0.173845708, -0.971135855, 0.163318172, 0.98477298, 0.171438843, -0.0288279951, -3.21120024e-006, 0.165842921, 0.986152232) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.47473085, 0.12939091, 0.221077085, 0.965204597, 0.0922840536, 0.24467057, -0.122411355, 0.986263275, 0.11090675, -0.231074631, -0.136998236, 0.963242531) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.512320936, -1.96948612, 0.20825164, 0.989587784, -0.0441185161, -0.1370022, 0.0627790093, 0.988851547, 0.135024637, 0.129517794, -0.142219663, 0.98132515) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.569151103, -1.93431842, -0.264938474, 0.974078536, 0.142103419, 0.176004544, -0.100388855, 0.968799889, -0.226603031, -0.202714175, 0.203060225, 0.957952857) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter2.C0 = clerp(moter2.C0, CFrame.new(4.12204742, 2.18300295, 4.24023008, 0.936150372, -0.00123224582, 0.351597965, 0, 0.999993861, 0.00350468024, -0.351600111, -0.00328090717, 0.93614459) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end	
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=231917758", Hitbox, 1, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159882481", RootPart, 2.2, 1)
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0.132035702, -0.0109716617, 0.296845376, 0.63251102, -0.201170281, 0.747970819, 0.0874660015, 0.978056848, 0.189088628, -0.769596994, -0.0541786104, 0.63622731) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.173044205, 1.40446091, -0.0191971958, 0.629808307, -0.00259829313, -0.776746452, -0.208151132, 0.962855518, -0.171995759, 0.748341322, 0.270004988, 0.605873525) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.70916152, 0.513785243, -0.597414076, 0.0536051206, -0.743416011, 0.666677713, 0.99246937, -0.0339756384, -0.117687263, 0.110141411, 0.667965889, 0.735996306) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.44067943, 0.16942057, 0.342082769, 0.960899711, 0.100347161, 0.258074075, -0.179227486, 0.935842216, 0.303441972, -0.211067051, -0.337831289, 0.917235434) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.655667424, -1.90291786, -0.316539109, 0.806838989, -0.0411082581, -0.589339495, -0.10342247, 0.972342193, -0.209415048, 0.58164829, 0.229915187, 0.780272007) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.569166362, -1.93431771, -0.264936477, 0.890522659, 0.142103121, -0.432175905, -0.214692771, 0.968798935, -0.123837158, 0.40109393, 0.203064889, 0.893245995) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter2.C0 = clerp(moter2.C0, CFrame.new(0.619564772, 2.18300295, -5.68279314, 0.996969998, 0.000272771198, -0.0777865276, 0, 0.999993861, 0.00350664277, 0.077786997, -0.00349601754, 0.996963918) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
con:Disconnect()
Shoot(Hitbox2.Position) 
wait(.2)
Shoot(Hitbox2.Position) 
wait(.2)
Shoot(Hitbox2.Position) 
wait(.2)
Shoot(Hitbox2.Position) 
wait(.2)
	attack = false
end
aa2 = function()
	rest = 0
	attack = true
	
	attack = false
end
aa3 = function()
	rest = 0
	attack = true
	
	attack = false
end
Watergunshoot = function()
	rest = 0
	attack = true
local ref = New("Part",RuinedHand3,"ref",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-63.7534943, 0.396845818, -9.92230225, -1, 0, 0, 0, 0.00350399944, -0.999993861, 0, -0.999993861, -0.00350399921),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Weld",ref,"mot",{Part0 = ref,Part1 = RootPart,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.00350399944, -0.999993861, 0, -0.999993861, -0.00350399921),C1 = CFrame.new(0.16015625, 0.531864166, -3.29763794, -1, 0, 0, 0, 1, 0, 0, 0, -1),})

for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.00210787077, -0.0458669737, 1, 0, 0, 0, 0.99578476, 0.0917209759, 0, -0.0917209759, 0.99578476) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.40754497, 0.206716642, 1, 0, -0, 0, 0.975682199, -0.219190434, 0, 0.219190434, 0.975682199) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.95036316, 0.310376257, 0.21589011, 0.145582005, -0.977177262, -0.154694855, 0.989346206, 0.143791646, 0.0227615014, 1.8030405e-006, -0.156360433, 0.987700164) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.93764758, 0.329942942, 0.227602825, 0.15245606, 0.969210148, 0.19336246, -0.988310337, 0.149509609, 0.0298281983, 2.4586916e-007, -0.195649609, 0.980673969) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.539771438, -1.98573685, 0.130261451, 0.993277669, -0.0736663789, -0.0892904848, 0.0811407641, 0.993224859, 0.0831893161, 0.0825572833, -0.089875184, 0.992525458) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.52309376, -1.98177481, -0.172783673, 0.991188109, 0.0202227402, 0.130909711, -1.41747296e-006, 0.988279283, -0.152657196, -0.132462516, 0.151311785, 0.979570687) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, 5.50872755, 3.94009233, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter3.C0 = clerp(moter3.C0, CFrame.new(0.16015625, 5.50872755, 3.94009233, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
Humanoid.WalkSpeed = Humanoid.WalkSpeed - 10
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=240517975", ref, 1, 1)	
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136007472", ref, 1, .6)	
for i = 0, 10, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.00210938277, -0.0458677933, 1, 0, 0, 0, 0.99578476, 0.0917209759, 0, -0.0917209759, 0.99578476) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.46350527, 0.0670536235, 1, 0, 0, 0, 0.998798668, -0.0490033403, 0, 0.0490033403, 0.998798668) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.95198667, 0.513723493, -1.00684893, -0.0350960083, 0.505839884, 0.861913145, 0.999117732, -0.00214993209, 0.0419445485, 0.0230702832, 0.862624764, -0.505318046) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.911337733, 0.491125166, -0.985779762, 0.0220579933, -0.46987775, -0.882455945, -0.998977184, -0.045207873, -0.000898923725, -0.0394715592, 0.8815732, -0.470394403) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.539767623, -1.98573625, 0.13026011, 0.993277669, -0.0736663789, -0.0892904848, 0.0811407641, 0.993224859, 0.0831893161, 0.0825572833, -0.089875184, 0.992525458) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.523090065, -1.98177934, -0.172784865, 0.991188109, 0.0202227402, 0.130909711, -1.41747296e-006, 0.988279283, -0.152657196, -0.132462516, 0.151311785, 0.979570687) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .05, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, 0.531864882, -3.29763651, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter3.C0 = clerp(moter3.C0, CFrame.new(0.16015625, 0.531864882, -3.29763651, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
Effects.Ring.Create(BrickColor.new("Really red"), ref.CFrame * CFrame.Angles(math.random(-4,4),math.random(-4,4),math.random(-4,4)), 12, 12, 1, -1, -1, -0.2, 0.06)
end
wait(1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=160212892", RootPart, 2.2, 0.9)	
--159882578
wait(0.7)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=215270668", Character, 1.5, 0.8)	
coroutine.wrap(function()
for i = 0, 8, 0.2 do
swait(1)
Beem(ref, math.random(4,8))
end
end)()
for i = 0, 10, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0.0425720811, 0.0879573151, 1, 0, -0, 0, 0.983600378, -0.180362046, 0, 0.180362061, 0.983600378) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.53438246, -0.0555603988, 1, 0, -0, 0, 0.999988079, 0.00491549075, -0, -0.00491547585, 0.999988079) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.50075209, 0.375080168, -0.888684034, -0.00480999937, -0.172377959, 0.985019147, 0.98854965, 0.147744581, 0.0306824874, -0.150820225, 0.973887801, 0.169693515) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.43092561, 0.442071348, -0.89775157, -0.0831570104, 0.152046055, -0.984869063, -0.983948529, 0.144060731, 0.105319664, 0.157894373, 0.977818429, 0.137625828) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.544128001, -1.89933491, 0.36939612, 0.993278265, -0.0485721268, -0.105067566, 0.0811390057, 0.9395262, 0.332727045, 0.0825524628, -0.339015573, 0.937151968) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.487928987, -1.94980812, 0.0903224647, 0.991188228, -0.0158370733, 0.131510586, 2.15321779e-006, 0.992828965, 0.119544536, -0.132460743, -0.118490845, 0.984080374) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, 0.531864107, -3.29763818, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(math.random(-0.8,0.8), math.random(-0.8,0.8), 0) * CFrame.Angles(0, 0, 0), 0.7)
moter3.C0 = clerp(moter3.C0, CFrame.new(0.16015625, 0.531864107, -3.29763818, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(math.random(-0.8,0.8), math.random(-0.8,0.8), 0) * CFrame.Angles(0, 0, 0), 0.7)
Torso.Velocity = RootPart.CFrame.lookVector * -16
end

Humanoid.WalkSpeed = Humanoid.WalkSpeed + 10
ref:Remove()
attack = false
end
Ohgreatfuckeryoujustfuckingcommitedsuicideohwaitdidumeanallahuakbarohyesumean911oyesilykit = function()-- rude
attack = true
--Models:Remove()
wait(.1)
local Models = New("Model",Character,"Model",{})
local eyesz = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.0288696, 1.56154633, -44.8319473, -1.00000036, 3.95500101e-005, -5.96046945e-008, -3.95501265e-005, -1.00000024, -4.44026066e-011, 2.98024041e-008, -3.24078958e-012, 1),CanCollide = false,Color = Color3.new(1, 0, 0),})
Meshs = New("SpecialMesh",eyesz,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mots = New("Weld",eyesz,"mot",{Part0 = eyesz,Part1 = Head,C0 = CFrame.new(0, 0, 0, -1.00000036, -3.95501265e-005, 2.98024041e-008, 3.95500101e-005, -1.00000024, -3.24078958e-012, -5.96046945e-008, -4.44026066e-011, 1),C1 = CFrame.new(0.0999984741, 0.230003357, -0.54234314, -1, 0, 0, 0, 1, 0, 0, 0, -1),})

local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.0288696, 1.56154633, -44.791954, 0, 3.89999987e-005, 1, 0, -1, 3.89999987e-005, 1, -0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 3.89999987e-005, -1, 0, 1, 3.89999987e-005, 0),C1 = CFrame.new(0.0999984741, 0.230003357, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.1781769, 1.47783697, -44.791954, 0, 0.383733064, 0.923444092, 0, -0.923444092, 0.383733094, 1, -0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0.383733064, -0.923444092, 0, 0.923444092, 0.383733094, 0),C1 = CFrame.new(0.249305725, 0.146293998, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.1935196, 1.51477695, -44.791954, 0, -0.383726001, 0.923447013, 0, 0.923447013, 0.383726001, -1, 0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, -0.383726001, 0.923447013, 0, 0.923447013, 0.383726001, 0),C1 = CFrame.new(0.264648438, 0.183233976, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-55.8642044, 1.60829198, -44.791954, 0, 0.383726001, -0.923447013, 0, -0.923447013, -0.383726001, -1, -0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0.383726001, -0.923447013, 0, -0.923447013, -0.383726001, 0),C1 = CFrame.new(-0.064666748, 0.276749015, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-55.8795433, 1.64523494, -44.791954, 0, -0.383733064, -0.923444092, 0, 0.923444092, -0.383733094, 1, 0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, 1, -0.383733064, 0.923444092, 0, -0.923444092, -0.383733094, 0),C1 = CFrame.new(-0.0493278503, 0.313691974, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye1 = New("Part",Models,"eye1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.0288696, 1.56154633, -44.8119507, -1.00000036, 3.95500101e-005, -5.96046945e-008, -3.95501265e-005, -1.00000024, -4.44026066e-011, 2.98024041e-008, -3.24078958e-012, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye1,"Mesh",{Scale = Vector3.new(0.3, 0.8, 0.9),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",eye1,"mot",{Part0 = eye1,Part1 = Head,C0 = CFrame.new(0, 0, 0, -1.00000036, -3.95501265e-005, 2.98024041e-008, 3.95500101e-005, -1.00000024, -3.24078958e-012, -5.96046945e-008, -4.44026066e-011, 1),C1 = CFrame.new(0.0999984741, 0.230003357, -0.562339783, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
--


Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-17.9002018, 7.27178431, 34.0376816, 0.0072249379, -0.707797825, 0.706379771, 0.137452006, 0.700395107, 0.700395465, -0.99048233, 0.0920329168, 0.102348484),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, -0.70779711, 0.700395107, 0.0920328945, 0.706378937, 0.700395346, 0.102348447),C1 = CFrame.new(-2.19604683, 2.08184719, 0.0628738403, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-19.2190533, 8.67616653, 33.4809532, 0.505598247, -0.495380044, 0.706379175, -0.398058146, 0.592448831, 0.700395823, -0.765454769, -0.635298193, 0.102350935),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.505597711, -0.398058146, -0.76545459, -0.495379508, 0.592448831, -0.635298014, 0.706378341, 0.700395703, 0.102350898),C1 = CFrame.new(-3.51892281, 3.48813772, -0.479293823, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-17.8900223, 7.27588177, 34.0383034, 0.0072249379, -0.707797825, 0.706379771, 0.137452006, 0.700395107, 0.700395465, -0.99048233, 0.0920329168, 0.102348484),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, -0.70779711, 0.700395107, 0.0920328945, 0.706378937, 0.700395346, 0.102348447),C1 = CFrame.new(-2.18586349, 2.08594275, 0.0634346008, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-19.209795, 8.68073177, 33.4847069, 0.505598247, -0.495380044, 0.706379175, -0.398058146, 0.592448831, 0.700395823, -0.765454769, -0.635298193, 0.102350935),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.505597711, -0.398058146, -0.76545459, -0.495379508, 0.592448831, -0.635298014, 0.706378341, 0.700395703, 0.102350898),C1 = CFrame.new(-3.50963783, 3.49269056, -0.475593567, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Claw = New("Part",RuinedHand1,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-11.8605099, 8.93473816, 33.1463051, -0.504593313, 0.707798064, 0.494378328, -0.592447281, -0.700394809, 0.398062021, 0.628006816, -0.0920335948, 0.77274704),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.504592776, -0.59244734, 0.628006637, 0.707797348, -0.700394809, -0.0920335725, 0.494377732, 0.398061961, 0.772746801),C1 = CFrame.new(3.83697701, 3.74806929, -0.866695404, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
FingerBottem = New("Part",RuinedHand1,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-13.143919, 7.42977905, 34.094265, 0.0072249379, 0.706380069, 0.707797527, 0.137452006, 0.700395167, -0.700395405, -0.99048233, 0.102348462, -0.0920329615),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, 0.706379235, 0.700395048, 0.102348417, 0.707796812, -0.700395405, -0.0920329392),C1 = CFrame.new(2.56051731, 2.23976374, 0.085319519, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
FingerTop = New("Part",RuinedHand1,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-12.2727013, 8.36536789, 33.7183762, -0.494378448, 0.504595041, 0.707796752, -0.398059249, 0.592447877, -0.700395942, -0.772748291, -0.628005087, -0.0920346752),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.494377851, -0.398059189, -0.772748053, 0.504594445, 0.592447877, -0.628004909, 0.707796097, -0.700395942, -0.0920346454),C1 = CFrame.new(3.42896938, 3.17668676, -0.293632507, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-13.4306698, 7.14325953, 34.0524216, 0.0072249379, 0.706380069, 0.707797527, 0.137452006, 0.700395167, -0.700395405, -0.99048233, 0.102348462, -0.0920329615),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, 0.706379235, 0.700395048, 0.102348417, 0.707796812, -0.700395405, -0.0920329392),C1 = CFrame.new(2.27346897, 1.95338535, 0.0445632935, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-12.110425, 8.55479622, 33.5173836, -0.494378448, 0.50459379, 0.707797527, -0.398059249, 0.592448831, -0.700395048, -0.772748291, -0.628004849, -0.0920355767),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.494377851, -0.398059189, -0.772748053, 0.504593253, 0.59244889, -0.62800467, 0.707796872, -0.700395048, -0.0920355543),C1 = CFrame.new(3.58977604, 3.36682272, -0.495136261, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-13.4276352, 7.1371088, 34.0515747, 0.0072249379, 0.706380069, 0.707797527, 0.137452006, 0.700395167, -0.700395405, -0.99048233, 0.102348462, -0.0920329615),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, 0.706379235, 0.700395048, 0.102348417, 0.707796812, -0.700395405, -0.0920329392),C1 = CFrame.new(2.27649784, 1.94723797, 0.043674469, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-13.4276657, 7.1448288, 34.056076, 0.707797587, 0.70637995, -0.00722075719, -0.700395048, 0.700396001, -0.137449637, -0.0920341909, 0.102343857, 0.990482688),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.707796931, -0.700395048, -0.0920341685, 0.706379175, 0.700395823, 0.10234382, -0.00722075719, -0.137449652, 0.99048245),C1 = CFrame.new(2.27649975, 1.95494223, 0.0482025146, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-12.1083651, 8.55403137, 33.5171242, 0.707798541, 0.504592121, 0.494378805, -0.700393975, 0.592449367, 0.398060381, -0.0920361727, -0.628005803, 0.772747457),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.707797885, -0.700393975, -0.0920361429, 0.504591584, 0.592449427, -0.628005683, 0.494378209, 0.398060352, 0.772747219),C1 = CFrame.new(3.59183407, 3.36605787, -0.495414734, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-12.1069374, 8.54890156, 33.5182266, -0.494378448, 0.50459379, 0.707797527, -0.398059249, 0.592448831, -0.700395048, -0.772748291, -0.628004849, -0.0920355767),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.494377851, -0.398059189, -0.772748053, 0.504593253, 0.59244889, -0.62800467, 0.707796872, -0.700395048, -0.0920355543),C1 = CFrame.new(3.59326935, 3.3609252, -0.494338989, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-13.4317846, 7.14719725, 34.0529556, 0.0072249379, 0.706380069, 0.707797527, 0.137452006, 0.700395167, -0.700395405, -0.99048233, 0.102348462, -0.0920329615),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, 0.706379235, 0.700395048, 0.102348417, 0.707796812, -0.700395405, -0.0920329392),C1 = CFrame.new(2.27235889, 1.95732117, 0.0451202393, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-12.1119509, 8.55852604, 33.5164528, -0.494378448, 0.50459379, 0.707797527, -0.398059249, 0.592448831, -0.700395048, -0.772748291, -0.628004849, -0.0920355767),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.494377851, -0.398059189, -0.772748053, 0.504593253, 0.59244889, -0.62800467, 0.707796872, -0.700395048, -0.0920355543),C1 = CFrame.new(3.58824348, 3.3705554, -0.496044159, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-13.5505228, 5.33059931, 33.9869957, 0.999974668, -0.00513897371, -0.00517537072, 5.96097465e-008, 0.709594131, -0.704610825, 0.0072934106, 0.704592228, 0.709575355),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.999973595, 0, 0.00729339523, -0.00513900304, 0.709594071, 0.704592049, -0.00517534884, -0.704610825, 0.709575176),C1 = CFrame.new(2.15314293, 0.140962601, -0.0263366699, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.9277067, 7.30885792, 33.96315, -1.74006109e-005, 0.701933324, -0.712244391, -0.99999398, 0.00249576266, 0.00248392788, 0.00352111761, 0.712239385, 0.701928258),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -1.73644676e-005, -0.999993861, 0.00352112087, 0.701932549, 0.00249570701, 0.712239146, -0.712243676, 0.00248395652, 0.701928079),C1 = CFrame.new(-0.224149704, 2.11923218, -0.0259094238, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.5272827, 2.94761062, 33.9791985, -1.74006109e-005, 0.701933324, -0.712244391, -0.99999398, 0.00249576266, 0.00248392788, 0.00352111761, 0.712239385, 0.701928258),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -1.73644676e-005, -0.999993861, 0.00352112087, 0.701932549, 0.00249570701, 0.712239146, -0.712243676, 0.00248395652, 0.701928079),C1 = CFrame.new(0.176380157, -2.2420342, -0.0280685425, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-17.9116993, 4.9300766, 33.9588623, 0.999974668, -0.00513897371, -0.00517537072, 5.96097465e-008, 0.709594131, -0.704610825, 0.0072934106, 0.704592228, 0.709575355),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.999973595, 0, 0.00729339523, -0.00513900304, 0.709594071, 0.704592049, -0.00517534884, -0.704610825, 0.709575176),C1 = CFrame.new(-2.20811844, -0.259570122, -0.024066925, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.9273787, 2.95032668, 33.9785156, -1.74006109e-005, 0.701933324, -0.712244391, -0.99999398, 0.00249576266, 0.00248392788, 0.00352111761, 0.712239385, 0.701928258),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -1.73644676e-005, -0.999993861, 0.00352112087, 0.701932549, 0.00249570701, 0.712239146, -0.712243676, 0.00248395652, 0.701928079),C1 = CFrame.new(-0.223709106, -2.239326, -0.0258255005, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.5276012, 7.30614281, 33.9638405, -1.74006109e-005, 0.701933324, -0.712244391, -0.99999398, 0.00249576266, 0.00248392788, 0.00352111761, 0.712239385, 0.701928258),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -1.73644676e-005, -0.999993861, 0.00352112087, 0.701932549, 0.00249570701, 0.712239146, -0.712243676, 0.00248395652, 0.701928079),C1 = CFrame.new(0.17595005, 2.1165247, -0.0281486511, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-17.9089622, 5.33015013, 33.955246, 0.999974668, -0.00513897371, -0.00517537072, 5.96097465e-008, 0.709594131, -0.704610825, 0.0072934106, 0.704592228, 0.709575355),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.999973595, 0, 0.00729339523, -0.00513900304, 0.709594071, 0.704592049, -0.00517534884, -0.704610825, 0.709575176),C1 = CFrame.new(-2.2054081, 0.14051342, -0.0263023376, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-13.5532465, 4.9305253, 33.9906464, 0.999974668, -0.00513897371, -0.00517537072, 5.96097465e-008, 0.709594131, -0.704610825, 0.0072934106, 0.704592228, 0.709575355),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.999973595, 0, 0.00729339523, -0.00513900304, 0.709594071, 0.704592049, -0.00517534884, -0.704610825, 0.709575176),C1 = CFrame.new(2.15044594, -0.259121895, -0.0240707397, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.720072329),CFrame = CFrame.new(-15.7319794, 6.89960861, 33.9718781, -0.00729529932, -0.999974549, -2.57378579e-005, 0.00352302007, -5.94275242e-008, -0.99999398, 0.999967515, -0.00729536498, 0.00352290412),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.999973416, 1.80457663e-010, -0.00729534961, -2.57017055e-005, -0.999993861, 0.00352290762),C1 = CFrame.new(-0.0283641815, 1.70995951, -0.0200462341, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.68406868),CFrame = CFrame.new(-15.7320766, 3.39267802, 33.9842339, -0.00729529932, -0.999974549, -2.57378579e-005, 0.00352302007, -5.94275242e-008, -0.99999398, 0.999967515, -0.00729536498, 0.00352290412),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.999973416, 1.80457663e-010, -0.00729534961, -2.57017055e-005, -0.999993861, 0.00352290762),C1 = CFrame.new(-0.0283708572, -1.79699254, -0.0199813843, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.68406868),CFrame = CFrame.new(-13.969655, 5.15514135, 33.9970779, -0.0108133061, -3.61687853e-008, 0.99994272, 1.83936208e-008, -1.00000012, 5.96746759e-008, 0.999941826, -4.42378223e-009, 0.0108133247),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.010813307, 0, 0.999941587, 0, -1, 0, 0.999941647, 0, 0.0108133079),C1 = CFrame.new(1.73409557, -0.0345401764, -0.0138130188, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.720072329),CFrame = CFrame.new(-17.4764042, 5.15513992, 33.9591599, -0.0108133061, -3.61687853e-008, 0.99994272, 1.83936208e-008, -1.00000012, 5.96746759e-008, 0.999941826, -4.42378223e-009, 0.0108133247),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.010813307, 0, 0.999941587, 0, -1, 0, 0.999941647, 0, 0.0108133079),C1 = CFrame.new(-1.77283287, -0.0344982147, -0.0261535645, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 2.0999999, 0.200000003),CFrame = CFrame.new(-16.4037476, 5.96782446, 33.9702492, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.700126648, 0.778169632, -0.0200424194, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 2.30000019),CFrame = CFrame.new(-16.4745007, 4.41220188, 33.975235, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.770839691, -0.777462482, -0.0199928284, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 1.89999998, 0.200000003),CFrame = CFrame.new(-14.9896069, 4.41219616, 33.986042, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(0.714091301, -0.777468204, -0.0200157166, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 2.0999999),CFrame = CFrame.new(-14.9188671, 5.82640314, 33.9815865, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(0.784796715, 0.63674736, -0.0200309753, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 1.89999998, 0.600000024),CFrame = CFrame.new(-15.1310205, 4.55361509, 33.9845161, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.600000024, 0.99000001, 0.99000001),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(0.572669983, -0.636048317, -0.0200119019, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 2.0999999, 0.600000024),CFrame = CFrame.new(-16.2623348, 5.82640362, 33.9717903, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.600000024, 0.99000001, 0.99000001),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.558706284, 0.636747837, -0.0200271606, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.600000024, 2.0999999),CFrame = CFrame.new(-15.0602779, 5.68498039, 33.9810524, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.600000024, 0.99000001, 0.99000001),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(0.643385887, 0.495323658, -0.0200271606, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.600000024, 2.30000019),CFrame = CFrame.new(-16.3330784, 4.55362129, 33.9757538, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.600000024, 0.99000001, 0.99000001),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.629417419, -0.636042118, -0.0200080872, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 1.09999979, 0.200000003),CFrame = CFrame.new(-16.0916386, 5.51427412, 33.9737816, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 1, 0.400000006),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.387999535, 0.324617863, -0.0203742981, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 1.09999979),CFrame = CFrame.new(-15.3724041, 5.51427221, 33.9790421, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(0.331254005, 0.324615955, -0.0203590393, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 1.10000014),CFrame = CFrame.new(-16.0916481, 4.79504156, 33.9770126, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.387986183, -0.394621372, -0.0196647644, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 1.09999979, 0.200000003),CFrame = CFrame.new(-15.372427, 4.79503632, 33.9822578, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 1, 0.400000006),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(0.331254005, -0.394627094, -0.0196647644, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-19.2147083, 8.6795578, 33.4827309, 0.706379354, -0.495382756, -0.505595028, 0.700396538, 0.59244585, 0.398061395, 0.102344915, -0.635298729, 0.765455186),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.706378579, 0.700396359, 0.102344878, -0.495382249, 0.59244591, -0.63529855, -0.505594552, 0.398061395, 0.765454948),C1 = CFrame.new(-3.51456451, 3.49152327, -0.477535248, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-17.8983173, 7.2754097, 34.0416107, 0.706380367, -0.707797229, -0.00722086197, 0.700395525, 0.700395465, -0.137451112, 0.102344938, 0.0920352414, 0.990482509),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.706379592, 0.700395346, 0.102344893, -0.707796574, 0.700395465, 0.0920352191, -0.00722086104, -0.137451127, 0.990482271),C1 = CFrame.new(-2.19413376, 2.08545876, 0.0668029785, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-19.2155094, 8.67747879, 33.482605, 0.505598247, -0.495380044, 0.706379175, -0.398058146, 0.592448831, 0.700395823, -0.765454769, -0.635298193, 0.102350935),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.505597711, -0.398058146, -0.76545459, -0.495379508, 0.592448831, -0.635298014, 0.706378341, 0.700395703, 0.102350898),C1 = CFrame.new(-3.51536751, 3.48944426, -0.477664948, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-17.8962173, 7.27288055, 34.0378685, 0.0072249379, -0.707797825, 0.706379771, 0.137452006, 0.700395107, 0.700395465, -0.99048233, 0.0920329168, 0.102348484),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, -0.70779711, 0.700395107, 0.0920328945, 0.706378937, 0.700395346, 0.102348447),C1 = CFrame.new(-2.19206238, 2.08294249, 0.0630340576, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
FingerTop = New("Part",RuinedHand1,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-19.057127, 8.48711205, 33.6858025, 0.505596936, -0.495380193, 0.70637995, -0.398058921, 0.592449009, 0.700395226, -0.765455365, -0.635297775, 0.102349833),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.505596399, -0.398058921, -0.765455127, -0.495379686, 0.592449069, -0.635297596, 0.706379116, 0.700395107, 0.102349788),C1 = CFrame.new(-3.3555069, 3.29837084, -0.276294708, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
FingerBottem = New("Part",RuinedHand1,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-18.1857719, 7.55719805, 34.0752029, 0.0072249379, -0.707797825, 0.706379771, 0.137452006, 0.700395107, 0.700395465, -0.99048233, 0.0920329168, 0.102348484),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, -0.70779711, 0.700395107, 0.0920328945, 0.706378937, 0.700395346, 0.102348447),C1 = CFrame.new(-2.48133659, 2.36712027, 0.103477478, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Claw = New("Part",RuinedHand1,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-19.5377922, 8.98028564, 33.0966492, 0.495381176, 0.706379116, -0.505597055, -0.59244597, 0.700396478, 0.398061335, 0.635299921, 0.102346785, 0.765453875),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.49538064, -0.592446029, 0.635299742, 0.706378341, 0.700396299, 0.102346748, -0.505596519, 0.398061365, 0.765453696),C1 = CFrame.new(-3.84045601, 3.79359388, -0.86019516, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-17.0984516, 2.2719667, 33.9423218, 0.0072249379, -0.499117464, -0.866505682, 0.137452006, -0.857806504, 0.495252579, -0.99048233, -0.122681022, 0.0624070168),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, -0.499116898, -0.857806385, -0.122680977, -0.866504729, 0.495252609, 0.0624070093),C1 = CFrame.new(-1.39501381, -2.9175849, -0.0558547974, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-18.0201683, 0.76996994, 32.9851837, 0.358038634, -0.347821534, -0.866505086, 0.703753293, -0.509367645, 0.495253593, -0.613628864, -0.787124872, 0.0624071136),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.358038247, 0.703753173, -0.613628685, -0.347821116, -0.509367585, -0.787124574, -0.866504133, 0.495253623, 0.0624071062),C1 = CFrame.new(-2.3236866, -4.41624117, -1.01150513, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-17.1029701, 2.27227354, 33.9457092, -0.866504312, -0.499119848, -0.0072248783, 0.495254785, -0.857805133, -0.137453064, 0.0624079295, -0.122681744, 0.990482211),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.866503358, 0.495254815, 0.062407922, -0.499119222, -0.857804954, -0.1226817, -0.0072248783, -0.137453079, 0.990481973),C1 = CFrame.new(-1.39950752, -2.91728997, -0.0524330139, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-18.0274448, 0.777164459, 32.989151, 0.358038634, -0.347821534, -0.866505086, 0.703753293, -0.509367645, 0.495253593, -0.613628864, -0.787124872, 0.0624071136),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.358038247, 0.703753173, -0.613628685, -0.347821116, -0.509367585, -0.787124574, -0.866504133, 0.495253623, 0.0624071062),C1 = CFrame.new(-2.33093452, -4.40906048, -1.00745773, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-18.0247746, 0.773050308, 32.9868507, -0.866505384, -0.347821623, -0.358037531, 0.495252907, -0.509369314, -0.703752577, 0.0624069273, -0.787123859, 0.613630295),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.866504431, 0.495252937, 0.0624069236, -0.347821236, -0.509369254, -0.787123561, -0.358037144, -0.703752458, 0.613630116),C1 = CFrame.new(-2.3282795, -4.41316652, -1.00979233, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle2 = New("Part",RuinedHand1,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-17.105114, 2.2806561, 33.9434471, 0.0072249379, -0.499117464, -0.866505682, 0.137452006, -0.857806504, 0.495252579, -0.99048233, -0.122681022, 0.0624070168),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, -0.499116898, -0.857806385, -0.122680977, -0.866504729, 0.495252609, 0.0624070093),C1 = CFrame.new(-1.40166855, -2.90889978, -0.054649353, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-18.0225868, 0.772788525, 32.9869804, 0.358038634, -0.347821534, -0.866505086, 0.703753293, -0.509367645, 0.495253593, -0.613628864, -0.787124872, 0.0624071136),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.358038247, 0.703753173, -0.613628685, -0.347821116, -0.509367585, -0.787124574, -0.866504133, 0.495253623, 0.0624071062),C1 = CFrame.new(-2.32609177, -4.41342878, -1.00967789, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-17.1005688, 2.27548885, 33.9427757, 0.0072249379, -0.499117464, -0.866505682, 0.137452006, -0.857806504, 0.495252579, -0.99048233, -0.122681022, 0.0624070168),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, -0.499116898, -0.857806385, -0.122680977, -0.866504729, 0.495252609, 0.0624070093),C1 = CFrame.new(-1.39712715, -2.91406441, -0.0553741455, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
FingerTop = New("Part",RuinedHand1,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-17.9104652, 0.935851574, 33.2389145, 0.358038634, -0.347823471, -0.866504312, 0.703753293, -0.509366572, 0.495254725, -0.613628864, -0.787124813, 0.0624088459),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.358038247, 0.703753173, -0.613628685, -0.347823054, -0.509366512, -0.787124574, -0.866503417, 0.495254755, 0.0624088384),C1 = CFrame.new(-2.21213531, -4.25124693, -0.75799942, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
FingerBottem = New("Part",RuinedHand1,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-17.302599, 1.92514825, 33.892704, 0.0072249379, -0.499117106, -0.866505086, 0.137452006, -0.857806444, 0.495252609, -0.990482211, -0.122680999, 0.0624070168),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.0072249379, 0.137452021, -0.990482092, -0.499116898, -0.857806385, -0.122680977, -0.866504729, 0.495252609, 0.0624070093),C1 = CFrame.new(-1.59951782, -3.26423264, -0.105197906, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Claw = New("Part",RuinedHand1,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.1737995, 0.456343651, 32.5163193, 0.34782365, -0.866503537, -0.358040482, 0.50936693, 0.495256394, -0.703751922, 0.787124515, 0.0624074303, 0.613629341),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, 0.347823232, 0.50936687, 0.787124276, -0.866502583, 0.495256424, 0.0624074265, -0.358040094, -0.703751802, 0.613629162),C1 = CFrame.new(-2.48073196, -4.72822571, -1.48033142, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Sphere1 = New("Part",RuinedHand1,"Sphere1",{BrickColor = BrickColor.new("Maroon"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.666068554, 0.66606915, 0.396039784),CFrame = CFrame.new(-15.7109165, 5.15943432, 34.0019493, -0.999974668, 2.57241809e-005, 0.00729334354, -5.96097465e-008, 0.99999398, -0.0035221146, -0.0072934106, -0.00352199865, -0.999967515),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.458824, 0, 0),})
Mesh = New("SpecialMesh",Sphere1,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Sphere1,"mot",{Part0 = Sphere1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.999973595, -0, -0.00729339523, 2.56880285e-005, 0.999993861, -0.00352200191, 0.00729334867, -0.0035220955, -0.999967217),C1 = CFrame.new(-0.00708293915, -0.0303087234, 0.0037727356, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.674169421, 0.200000003, 0.409091085),CFrame = CFrame.new(-15.7109118, 5.15974665, 34.0026436, -0.999974668, 2.57241809e-005, 0.00729334354, -5.96097465e-008, 0.99999398, -0.0035221146, -0.0072934106, -0.00352199865, -0.999967515),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.591811061, 1),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.999973595, -0, -0.00729339523, 2.56880285e-005, 0.999993861, -0.00352200191, 0.00729334867, -0.0035220955, -0.999967217),C1 = CFrame.new(-0.00707244873, -0.0299987793, 0.0044670105, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.672369778, 0.402790427),CFrame = CFrame.new(-15.7289152, 5.15863037, 34.002037, -0.999974668, 2.57241809e-005, 0.00729334354, -5.96097465e-008, 0.99999398, -0.0035221146, -0.0072934106, -0.00352199865, -0.999967515),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.810083568, 1, 1),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.999973595, -0, -0.00729339523, 2.56880285e-005, 0.999993861, -0.00352200191, 0.00729334867, -0.0035220955, -0.999967217),C1 = CFrame.new(-0.0250797272, -0.0311136246, 0.00398635864, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.7327251, 6.15317917, 33.9750443, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.0290870667, 0.963523388, -0.0194892883, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 0.200000003),CFrame = CFrame.new(-16.7405319, 5.15395069, 33.9709129, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-1.03689575, -0.0357098579, -0.0197753906, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 0.200000003),CFrame = CFrame.new(-15.7313385, 4.15613079, 33.9810181, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.0276565552, -1.0335331, -0.020526886, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 1.29999983, 0.200000003),CFrame = CFrame.new(-16.1916313, 5.61427402, 33.9730606, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 1, 0.400000006),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.487994194, 0.42461729, -0.0200157166, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 1.30000019),CFrame = CFrame.new(-16.1916561, 4.69504118, 33.9762955, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-0.487995148, -0.494621277, -0.0200042725, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 1.29999983),CFrame = CFrame.new(-15.2724133, 5.61427212, 33.979763, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(0.431246758, 0.424615383, -0.0200195313, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 1.29999983, 0.200000003),CFrame = CFrame.new(-15.272438, 4.69503593, 33.9829788, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 1, 0.400000006),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(0.431245804, -0.494626522, -0.0200233459, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Neon = New("Part",RuinedHand1,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.7335196, 5.15536356, 33.985054, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(0.970164299, -0.0342955589, -0.0202674866, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 3.0999999, 0.200000003),CFrame = CFrame.new(-16.7572994, 6.31427431, 33.9689102, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-1.05367851, 1.12461329, -0.0175857544, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 3.30000019),CFrame = CFrame.new(-16.8208904, 4.05865097, 33.9688492, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(-1.11726761, -1.13099766, -0.0250892639, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 2.9000001, 0.200000003),CFrame = CFrame.new(-14.636054, 4.06574631, 33.9873772, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(1.06764412, -1.12391138, -0.0224723816, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})
Handle1 = New("Part",RuinedHand1,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 3.0999999),CFrame = CFrame.new(-14.5724773, 6.17995501, 33.9879723, -0.00729529932, -0.707107425, 0.707070291, 0.00352302007, -0.707102239, -0.707102716, 0.999967515, -0.00266753719, 0.00764967036),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d1,C0 = CFrame.new(0, 0, 0, -0.00729530444, 0.00352300098, 0.999967217, -0.70710665, -0.70710218, -0.00266752392, 0.707069576, -0.707102716, 0.00764966197),C1 = CFrame.new(1.13122368, 0.990283489, -0.0149307251, 0.999973595, 0, 0.00729339523, 2.55640462e-005, 0.999993861, -0.00350500271, -0.00729334867, 0.00350509607, 0.999967337),})



Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-7.24721813, 4.35527515, -4.86151123, 2.85844908e-005, -0.707103074, 0.707133174, -0.137452438, 0.700408399, 0.70038873, -0.990506828, -0.0972137526, -0.0971758962),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, -0.707093418, 0.700406134, -0.0972145572, 0.707120657, 0.70038408, -0.0971735194),C1 = CFrame.new(2.19604778, 2.08184695, 0.0628738403, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-8.57010746, 5.75968218, -4.31445885, -0.499978006, -0.500017762, 0.707132578, 0.398067266, 0.592458487, 0.700389087, -0.769135594, 0.631652117, -0.0971783549),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.499972522, 0.39806518, -0.769137263, -0.500009537, 0.592457414, 0.631652653, 0.707120061, 0.700384438, -0.0971759781),C1 = CFrame.new(3.51892328, 3.48813796, -0.479293346, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-7.23703432, 4.35937309, -4.86205769, 2.85844908e-005, -0.707103074, 0.707133174, -0.137452438, 0.700408399, 0.70038873, -0.990506828, -0.0972137526, -0.0971758962),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, -0.707093418, 0.700406134, -0.0972145572, 0.707120657, 0.70038408, -0.0971735194),C1 = CFrame.new(2.18586445, 2.08594298, 0.0634350777, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-8.56082153, 5.76424742, -4.31814241, -0.499978006, -0.500017762, 0.707132578, 0.398067266, 0.592458487, 0.700389087, -0.769135594, 0.631652117, -0.0971783549),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.499972522, 0.39806518, -0.769137263, -0.500009537, 0.592457414, 0.631652653, 0.707120061, 0.700384438, -0.0971759781),C1 = CFrame.new(3.50963831, 3.49269032, -0.475593567, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Claw = New("Part",RuinedHand2,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-1.21410012, 6.01815224, -3.92594624, 0.499997109, 0.707103312, 0.500040233, 0.592442989, -0.700408101, 0.398057073, 0.631681621, 0.097214438, -0.769106805),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 0.499989688, 0.592440128, 0.631684482, 0.707093656, -0.700405836, 0.0972152352, 0.500029981, 0.398053288, -0.769106269),C1 = CFrame.new(-3.83697701, 3.74806952, -0.866695404, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
FingerBottem = New("Part",RuinedHand2,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-2.49057555, 4.51320362, -4.88327265, 2.85844908e-005, 0.707133472, 0.707102776, -0.137452438, 0.700388432, -0.700408697, -0.990506828, -0.0971758664, 0.0972138047),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, 0.707120955, 0.700383782, -0.0971734896, 0.70709312, -0.700406432, 0.0972146019),C1 = CFrame.new(-2.56051707, 2.23976398, 0.0853199959, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
FingerTop = New("Part",RuinedHand2,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-1.62210512, 5.44878531, -4.50101757, 0.500040352, 0.499998778, 0.707102001, 0.398054272, 0.592443526, -0.700409234, -0.769108057, 0.631679952, 0.0972155109),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 0.5000301, 0.398050487, -0.769107521, 0.499991357, 0.592440665, 0.631682813, 0.707092345, -0.700406969, 0.0972163081),C1 = CFrame.new(-3.42896986, 3.176687, -0.293632507, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-2.77763462, 4.22668695, -4.84352732, 2.85844908e-005, 0.707133472, 0.707102776, -0.137452438, 0.700388432, -0.700408697, -0.990506828, -0.0971758664, 0.0972138047),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, 0.707120955, 0.700383782, -0.0971734896, 0.70709312, -0.700406432, 0.0972146019),C1 = CFrame.new(-2.27346873, 1.95338559, 0.0445632935, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-1.46129966, 5.63821173, -4.29884481, 0.500040352, 0.499997586, 0.707102776, 0.398054272, 0.592444539, -0.70040834, -0.769108057, 0.631679714, 0.0972164124),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 0.5000301, 0.398050487, -0.769107521, 0.499990165, 0.592441678, 0.631682575, 0.70709312, -0.700406075, 0.0972172171),C1 = CFrame.new(-3.58977604, 3.36682248, -0.495136261, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-2.77460575, 4.22053671, -4.84265995, 2.85844908e-005, 0.707133472, 0.707102776, -0.137452438, 0.700388432, -0.700408697, -0.990506828, -0.0971758664, 0.0972138047),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, 0.707120955, 0.700383782, -0.0971734896, 0.70709312, -0.700406432, 0.0972146019),C1 = CFrame.new(-2.2764976, 1.94723821, 0.043674469, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-2.77460361, 4.2282567, -4.84716082, -0.707102835, 0.707133353, 3.27676462e-005, 0.70040834, 0.700389326, -0.137450069, -0.0972150266, -0.0971712694, -0.990507185),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.707093179, 0.700406075, -0.0972158313, 0.707120836, 0.700384617, -0.0971688926, 3.07824375e-005, -0.137450725, -0.990508795),C1 = CFrame.new(-2.27649975, 1.95494246, 0.0482025146, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-1.45924163, 5.63744593, -4.29856968, -0.707103789, 0.499995917, 0.50004071, 0.700407267, 0.592445076, 0.398055434, -0.0972170234, 0.631680667, -0.769107223),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.707094133, 0.700405002, -0.0972178206, 0.499988496, 0.592442214, 0.631683528, 0.500030458, 0.398051649, -0.769106686),C1 = CFrame.new(-3.59183407, 3.36605763, -0.495414257, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-1.45780635, 5.63231707, -4.29966307, 0.500040352, 0.499997586, 0.707102776, 0.398054272, 0.592444539, -0.70040834, -0.769108057, 0.631679714, 0.0972164124),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 0.5000301, 0.398050487, -0.769107521, 0.499990165, 0.592441678, 0.631682575, 0.70709312, -0.700406075, 0.0972172171),C1 = CFrame.new(-3.59326935, 3.36092496, -0.494338512, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-2.77874446, 4.23062468, -4.84407043, 2.85844908e-005, 0.707133472, 0.707102776, -0.137452438, 0.700388432, -0.700408697, -0.990506828, -0.0971758664, 0.0972138047),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, 0.707120955, 0.700383782, -0.0971734896, 0.70709312, -0.700406432, 0.0972146019),C1 = CFrame.new(-2.27235889, 1.95732141, 0.0451202393, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-1.46283221, 5.64194107, -4.29792452, 0.500040352, 0.499997586, 0.707102776, 0.398054272, 0.592444539, -0.70040834, -0.769108057, 0.631679714, 0.0972164124),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 0.5000301, 0.398050487, -0.769107521, 0.499990165, 0.592441678, 0.631682575, 0.70709312, -0.700406075, 0.0972172171),C1 = CFrame.new(-3.58824348, 3.37055469, -0.496043682, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-2.89799619, 2.41401958, -4.77897978, -1.00001621, 3.498359e-005, 1.04426481e-005, 1.40059283e-005, 0.709597647, -0.704613924, -2.7570266e-005, -0.704611659, -0.709591448),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -1.00000048, 1.5735508e-005, -2.98140585e-005, 3.21747211e-005, 0.709593296, -0.704611719, 1.00690913e-005, -0.70461154, -0.709593415),C1 = CFrame.new(-2.15314293, 0.140962601, -0.0263361931, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-5.27529192, 4.39232063, -4.77254295, 9.03544424e-006, 0.707142413, -0.707093954, 0.999998689, 0.00248598168, 0.00249403808, 0.00351872202, -0.707080424, -0.707122803),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 7.31354294e-006, 0.99999392, 0.00352005847, 0.707129776, 0.00248380518, -0.707079828, -0.707084417, 0.00249430817, -0.707125366),C1 = CFrame.new(0.224150181, 2.11923146, -0.0259094238, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-4.8748312, 0.0310480595, -4.7856493, 9.03544424e-006, 0.707142413, -0.707093954, 0.999998689, 0.00248598168, 0.00249403808, 0.00351872202, -0.707080424, -0.707122803),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 7.31354294e-006, 0.99999392, 0.00352005847, 0.707129776, 0.00248380518, -0.707079828, -0.707084417, 0.00249430817, -0.707125366),C1 = CFrame.new(-0.176380157, -2.24203396, -0.0280680656, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-7.25933361, 2.01355672, -4.78277302, -1.00001621, 3.498359e-005, 1.04426481e-005, 1.40059283e-005, 0.709597647, -0.704613924, -2.7570266e-005, -0.704611659, -0.709591448),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -1.00000048, 1.5735508e-005, -2.98140585e-005, 3.21747211e-005, 0.709593296, -0.704611719, 1.00690913e-005, -0.70461154, -0.709593415),C1 = CFrame.new(2.20811987, -0.259570003, -0.0240664482, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-5.27492666, 0.0337693691, -4.78789425, 9.03544424e-006, 0.707142413, -0.707093954, 0.999998689, 0.00248598168, 0.00249403808, 0.00351872202, -0.707080424, -0.707122803),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 7.31354294e-006, 0.99999392, 0.00352005847, 0.707129776, 0.00248380518, -0.707079828, -0.707084417, 0.00249430817, -0.707125366),C1 = CFrame.new(0.223709106, -2.239326, -0.0258250237, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-4.87518597, 4.38960028, -4.7703023, 9.03544424e-006, 0.707142413, -0.707093954, 0.999998689, 0.00248598168, 0.00249403808, 0.00351872202, -0.707080424, -0.707122803),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 7.31354294e-006, 0.99999392, 0.00352005847, 0.707129776, 0.00248380518, -0.707079828, -0.707084417, 0.00249430817, -0.707125366),C1 = CFrame.new(-0.175949574, 2.11652446, -0.0281486511, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-7.25661659, 2.41363192, -4.77913618, -1.00001621, 3.498359e-005, 1.04426481e-005, 1.40059283e-005, 0.709597647, -0.704613924, -2.7570266e-005, -0.704611659, -0.709591448),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -1.00000048, 1.5735508e-005, -2.98140585e-005, 3.21747211e-005, 0.709593296, -0.704611719, 1.00690913e-005, -0.70461154, -0.709593415),C1 = CFrame.new(2.20540953, 0.140513659, -0.0263018608, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-2.90069985, 2.01394391, -4.78264713, -1.00001621, 3.498359e-005, 1.04426481e-005, 1.40059283e-005, 0.709597647, -0.704613924, -2.7570266e-005, -0.704611659, -0.709591448),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -1.00000048, 1.5735508e-005, -2.98140585e-005, 3.21747211e-005, 0.709593296, -0.704611719, 1.00690913e-005, -0.70461154, -0.709593415),C1 = CFrame.new(-2.15044594, -0.259121776, -0.0240702629, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.720072329),CFrame = CFrame.new(-5.07951021, 3.98306727, -4.77983475, -3.01651871e-005, -1.00001609, -1.73595017e-005, -0.00352325267, 1.40061093e-005, -0.999998689, 0.999992609, -2.56149378e-005, -0.00352056976),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -1.00000036, 1.57356917e-005, -2.78587286e-005, -1.56374736e-005, -0.99999392, -0.00352190621),C1 = CFrame.new(0.0283646584, 1.70995975, -0.0200457573, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.68406868),CFrame = CFrame.new(-5.0795784, 0.476120234, -4.79218292, -3.01651871e-005, -1.00001609, -1.73595017e-005, -0.00352325267, 1.40061093e-005, -0.999998689, 0.999992609, -2.56149378e-005, -0.00352056976),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -1.00000036, 1.57356917e-005, -2.78587286e-005, -1.56374736e-005, -0.99999392, -0.00352190621),C1 = CFrame.new(0.0283718109, -1.7969923, -0.0199813843, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.68406868),CFrame = CFrame.new(-3.31705284, 2.23856711, -4.79212952, 0.00348804891, -1.74654833e-005, 1.00001001, -2.84053385e-007, -1.00000477, -1.4005017e-005, 0.999992728, 2.42702663e-006, -0.00349247805),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 0.00349023775, 1.04124626e-006, 0.999994159, -1.57355389e-005, -1, 1.09593407e-006, 0.999994338, -1.57392715e-005, -0.00349023915),C1 = CFrame.new(-1.73409534, -0.034539938, -0.0138130188, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.720072329),CFrame = CFrame.new(-6.82403803, 2.23861504, -4.77988577, 0.00348804891, -1.74654833e-005, 1.00001001, -2.84053385e-007, -1.00000477, -1.4005017e-005, 0.999992728, 2.42702663e-006, -0.00349247805),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 0.00349023775, 1.04124626e-006, 0.999994159, -1.57355389e-005, -1, 1.09593407e-006, 0.999994338, -1.57392715e-005, -0.00349023915),C1 = CFrame.new(1.77283478, -0.0344979763, -0.0261530876, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 2.0999999, 0.200000003),CFrame = CFrame.new(-5.75129986, 3.05128789, -4.78312111, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.700127602, 0.778169632, -0.0200419426, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 2.30000019),CFrame = CFrame.new(-5.82204008, 1.49565911, -4.78862143, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.770839691, -0.777462363, -0.0199923515, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 1.89999998, 0.200000003),CFrame = CFrame.new(-4.33708572, 1.49563265, -4.78855753, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-0.714091301, -0.777468085, -0.0200152397, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 2.0999999),CFrame = CFrame.new(-4.26635551, 2.90984488, -4.78358698, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-0.784796238, 0.636747122, -0.0200304985, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 1.89999998, 0.600000024),CFrame = CFrame.new(-4.47850752, 1.63705444, -4.78806973, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.600000024, 0.99000001, 0.99000001),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-0.572669506, -0.636048079, -0.020011425, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 2.0999999, 0.600000024),CFrame = CFrame.new(-5.60987949, 2.90986443, -4.78362703, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.600000024, 0.99000001, 0.99000001),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.55870676, 0.636747837, -0.0200271606, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.600000024, 2.0999999),CFrame = CFrame.new(-4.40777016, 2.7684238, -4.78408957, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.600000024, 0.99000001, 0.99000001),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-0.643385887, 0.495323896, -0.0200271606, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Bright red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.600000024, 2.30000019),CFrame = CFrame.new(-5.68061304, 1.63707733, -4.78810644, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.600000024, 0.99000001, 0.99000001),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.629417419, -0.636041999, -0.0200080872, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 1.09999979, 0.200000003),CFrame = CFrame.new(-5.43917513, 2.59773111, -4.78436852, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 1, 0.400000006),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.388000011, 0.324617863, -0.0203742981, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 1.09999979),CFrame = CFrame.new(-4.71991062, 2.59771919, -4.7843647, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-0.331253529, 0.324615955, -0.0203585625, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 1.10000014),CFrame = CFrame.new(-5.4391737, 1.87849557, -4.78759718, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.387986183, -0.394621253, -0.0196647644, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 1.09999979, 0.200000003),CFrame = CFrame.new(-4.71992302, 1.87847948, -4.78757811, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 1, 0.400000006),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-0.331253529, -0.394627213, -0.0196642876, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-8.56574821, 5.76307392, -4.31620502, -0.707132757, -0.500020504, -0.499974787, -0.700389862, 0.592455566, 0.398070514, 0.0971723348, 0.631652653, -0.769135952),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.70712024, -0.700385153, 0.0971699581, -0.500012279, 0.592454493, 0.63165319, -0.499969333, 0.398068428, -0.769137621),C1 = CFrame.new(3.51456499, 3.4915235, -0.477534771, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-7.24530506, 4.35890102, -4.86542749, -0.70713377, -0.707102478, 3.26623704e-005, -0.700388849, 0.700408757, -0.137451544, 0.0971723422, -0.0972160846, -0.990507007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.707121253, -0.70038414, 0.0971699655, -0.707092822, 0.700406492, -0.0972168818, 3.0677169e-005, -0.1374522, -0.990508616),C1 = CFrame.new(2.19413471, 2.08545899, 0.0668029785, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-8.56655121, 5.76099443, -4.31608295, -0.499978006, -0.500017762, 0.707132578, 0.398067266, 0.592458487, 0.700389087, -0.769135594, 0.631652117, -0.0971783549),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.499972522, 0.39806518, -0.769137263, -0.500009537, 0.592457414, 0.631652653, 0.707120061, 0.700384438, -0.0971759781),C1 = CFrame.new(3.51536798, 3.48944449, -0.477664471, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-7.24323368, 4.35637093, -4.86166763, 2.85844908e-005, -0.707103074, 0.707133174, -0.137452438, 0.700408399, 0.70038873, -0.990506828, -0.0972137526, -0.0971758962),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, -0.707093418, 0.700406134, -0.0972145572, 0.707120657, 0.70038408, -0.0971735194),C1 = CFrame.new(2.19206333, 2.08294225, 0.0630345345, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
FingerTop = New("Part",RuinedHand2,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-8.40668678, 5.57062435, -4.518116, -0.499976695, -0.500017941, 0.707133353, 0.398068041, 0.592458725, 0.700388491, -0.769136131, 0.6316517, -0.0971772373),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.499971211, 0.398065954, -0.7691378, -0.500009716, 0.592457652, 0.631652236, 0.707120836, 0.700383842, -0.0971748605),C1 = CFrame.new(3.35550833, 3.2983706, -0.276294708, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
FingerBottem = New("Part",RuinedHand2,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-7.53250694, 4.64069366, -4.90112305, 2.85844908e-005, -0.707103074, 0.707133174, -0.137452438, 0.700408399, 0.70038873, -0.990506828, -0.0972137526, -0.0971758962),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, -0.707093418, 0.700406134, -0.0972145572, 0.707120657, 0.70038408, -0.0971735194),C1 = CFrame.new(2.48133802, 2.36712003, 0.103477478, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Claw = New("Part",RuinedHand2,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-8.89165306, 6.06380749, -3.93249893, -0.500018954, 0.707132518, -0.499976814, 0.592455685, 0.700389802, 0.398070484, 0.631653845, -0.0971742049, -0.7691347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.500010729, 0.592454612, 0.631654382, 0.707120001, 0.700385094, -0.0971718282, -0.49997133, 0.398068398, -0.769136369),C1 = CFrame.new(3.84045744, 3.79359412, -0.860194921, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-6.44626379, -0.644577265, -4.76027298, 2.85844908e-005, -0.500025272, -0.86602968, -0.137452438, -0.857803583, 0.495267123, -0.990506828, 0.119025603, -0.0687500983),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, -0.500015616, -0.857798457, 0.119023509, -0.866017044, 0.49526614, -0.0687514842),C1 = CFrame.new(1.39501524, -2.9175849, -0.0558543205, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-7.37500763, -2.14656854, -3.80990458, -0.353551447, -0.353592366, -0.866029084, -0.703751564, -0.50936532, 0.495268136, -0.616230965, 0.784557462, -0.0687501952),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.353546083, -0.703748345, -0.616233587, -0.35358417, -0.509361207, 0.784557104, -0.866016448, 0.495267153, -0.068751581),C1 = CFrame.new(2.32368803, -4.41624117, -1.01150489, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-6.45075703, -0.64427042, -4.76369381, 0.866028309, -0.500027657, 2.86431441e-005, -0.495269299, -0.857802153, -0.137453496, 0.0687509999, 0.119026318, -0.990506709),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 0.866015673, -0.495268345, 0.0687523857, -0.500018001, -0.857797027, 0.119024217, 2.66580082e-005, -0.137454152, -0.990508378),C1 = CFrame.new(1.39950895, -2.91728997, -0.0524325371, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-7.38225555, -2.13937354, -3.8139267, -0.353551447, -0.353592366, -0.866029084, -0.703751564, -0.50936532, 0.495268136, -0.616230965, 0.784557462, -0.0687501952),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.353546083, -0.703748345, -0.616233587, -0.35358417, -0.509361207, 0.784557104, -0.866016448, 0.495267153, -0.068751581),C1 = CFrame.new(2.33093596, -4.40906048, -1.00745773, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-7.37960052, -2.14348722, -3.81160688, 0.866029382, -0.353592455, -0.353550345, -0.495267451, -0.509366989, -0.703750849, 0.0687500015, 0.784556448, -0.616232336),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 0.866016746, -0.495266467, 0.0687513947, -0.35358426, -0.509362876, 0.784556091, -0.35354498, -0.70374763, -0.616234958),C1 = CFrame.new(2.32828093, -4.41316605, -1.00979209, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle2 = New("Part",RuinedHand2,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-6.45291805, -0.635887623, -4.76144791, 2.85844908e-005, -0.500025272, -0.86602968, -0.137452438, -0.857803583, 0.495267123, -0.990506828, 0.119025603, -0.0687500983),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, -0.500015616, -0.857798457, 0.119023509, -0.866017044, 0.49526614, -0.0687514842),C1 = CFrame.new(1.4016695, -2.90889955, -0.054649353, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-7.3774128, -2.14374948, -3.81172204, -0.353551447, -0.353592366, -0.866029084, -0.703751564, -0.50936532, 0.495268136, -0.616230965, 0.784557462, -0.0687501952),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.353546083, -0.703748345, -0.616233587, -0.35358417, -0.509361207, 0.784557104, -0.866016448, 0.495267153, -0.068751581),C1 = CFrame.new(2.3260932, -4.41342878, -1.00967765, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-6.44837666, -0.641055107, -4.76074076, 2.85844908e-005, -0.500025272, -0.86602968, -0.137452438, -0.857803583, 0.495267123, -0.990506828, 0.119025603, -0.0687500983),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, -0.500015616, -0.857798457, 0.119023509, -0.866017044, 0.49526614, -0.0687514842),C1 = CFrame.new(1.39712858, -2.91406441, -0.0553741455, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
FingerTop = New("Part",RuinedHand2,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-7.26344347, -1.9806869, -4.06282711, -0.353551447, -0.353594303, -0.866028309, -0.703751564, -0.509364247, 0.495269269, -0.616230965, 0.784557402, -0.0687519163),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.353546083, -0.703748345, -0.616233587, -0.353586107, -0.509360135, 0.784557045, -0.866015673, 0.495268315, -0.0687533021),C1 = CFrame.new(2.21213675, -4.25124645, -0.75799942, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
FingerBottem = New("Part",RuinedHand2,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-6.65077829, -0.991394758, -4.7121501, 2.85844908e-005, -0.500025272, -0.86602968, -0.137452438, -0.857803583, 0.495267123, -0.990506828, 0.119025603, -0.0687500983),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 2.65993513e-005, -0.137453094, -0.990508437, -0.500015616, -0.857798457, 0.119023509, -0.866017044, 0.49526614, -0.0687514842),C1 = CFrame.new(1.59951925, -3.26423264, -0.10519743, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Claw = New("Part",RuinedHand2,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-7.53207493, -2.4601934, -3.34217882, -0.353594482, -0.866027534, -0.353553295, -0.509364605, 0.495270938, -0.703750193, 0.784557104, -0.0687504932, -0.616231441),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -0.353586286, -0.509360492, 0.784556746, -0.866014898, 0.495269954, -0.068751879, -0.353547931, -0.703746974, -0.616234064),C1 = CFrame.new(2.48073292, -4.72822571, -1.48033142, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Sphere2 = New("Part",RuinedHand2,"Sphere2",{BrickColor = BrickColor.new("Maroon"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.666068554, 0.66606915, 0.396039784),CFrame = CFrame.new(-5.05825806, 2.2428844, -4.80974865, 1.00001621, 1.73524604e-005, -3.21209809e-005, -1.40059283e-005, 0.999998689, -0.00352234719, 2.7570266e-005, 0.00351966405, 0.999992609),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.458824, 0, 0),})
Mesh = New("SpecialMesh",Sphere2,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Sphere2,"mot",{Part0 = Sphere2,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 1.00000048, -1.5735508e-005, 2.98140585e-005, 1.56304286e-005, 0.99999392, 0.0035210005, -2.98706655e-005, -0.00352099934, 0.99999404),C1 = CFrame.new(0.00708341599, -0.0303087234, 0.00377321243, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.674169421, 0.200000003, 0.409091085),CFrame = CFrame.new(-5.05824757, 2.24319673, -4.81044149, 1.00001621, 1.73524604e-005, -3.21209809e-005, -1.40059283e-005, 0.999998689, -0.00352234719, 2.7570266e-005, 0.00351966405, 0.999992609),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.591811061, 1),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 1.00000048, -1.5735508e-005, 2.98140585e-005, 1.56304286e-005, 0.99999392, 0.0035210005, -2.98706655e-005, -0.00352099934, 0.99999404),C1 = CFrame.new(0.00707292557, -0.0299987793, 0.0044670105, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.672369778, 0.402790427),CFrame = CFrame.new(-5.07625532, 2.24208045, -4.80996561, 1.00001621, 1.73524604e-005, -3.21209809e-005, -1.40059283e-005, 0.999998689, -0.00352234719, 2.7570266e-005, 0.00351966405, 0.999992609),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.810083568, 1, 1),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, 1.00000048, -1.5735508e-005, 2.98140585e-005, 1.56304286e-005, 0.99999392, 0.0035210005, -2.98706655e-005, -0.00352099934, 0.99999404),C1 = CFrame.new(0.025080204, -0.0311136246, 0.00398683548, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 0.200000003),CFrame = CFrame.new(-5.08024645, 3.23663425, -4.78300619, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.0290880203, 0.963523626, -0.0194888115, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 0.200000003),CFrame = CFrame.new(-6.08808804, 2.23741508, -4.78624821, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(1.03689671, -0.0357098579, -0.0197749138, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 0.200000003),CFrame = CFrame.new(-5.07885027, 1.23957658, -4.78896379, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.027657032, -1.03353298, -0.0205264091, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 1.29999983, 0.200000003),CFrame = CFrame.new(-5.53916931, 2.6977334, -4.78437996, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 1, 0.400000006),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.487994194, 0.424617529, -0.0200152397, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 1.30000019),CFrame = CFrame.new(-5.53918648, 1.77849603, -4.78761148, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(0.487995625, -0.494621158, -0.0200037956, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 1.29999983),CFrame = CFrame.new(-4.61991453, 2.69771862, -4.78435135, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-0.431246281, 0.424615622, -0.0200185776, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 1.29999983, 0.200000003),CFrame = CFrame.new(-4.6199317, 1.77847767, -4.78756762, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 1, 0.400000006),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-0.43124485, -0.494626522, -0.0200223923, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Neon = New("Part",RuinedHand2,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.225023165, 0.200000003, 0.200000003),CFrame = CFrame.new(-4.08099651, 2.23879933, -4.78569555, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-0.970163822, -0.0342957973, -0.0202670097, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 3.0999999, 0.200000003),CFrame = CFrame.new(-6.10485077, 3.39774489, -4.78437424, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(1.05367899, 1.12461352, -0.0175848007, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 3.30000019),CFrame = CFrame.new(-6.16848087, 1.14211142, -4.78477287, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(1.11726856, -1.13099754, -0.0250887871, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 2.9000001, 0.200000003),CFrame = CFrame.new(-3.98353434, 1.14917648, -4.7873044, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-1.0676434, -1.12391114, -0.0224719048, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})
Handle1 = New("Part",RuinedHand2,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 3.0999999),CFrame = CFrame.new(-3.91991663, 3.26339364, -4.78743935, -3.01651871e-005, -0.70713073, 0.707105696, -0.00352325267, -0.707095563, -0.707116008, 0.999992609, -0.00250753039, -0.00247130683),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d2,C0 = CFrame.new(0, 0, 0, -2.79149026e-005, -0.00352190481, 0.99999404, -0.707118452, -0.707090974, -0.00251006149, 0.707095802, -0.707113862, -0.00247066515),C1 = CFrame.new(-1.1312232, 0.990283489, -0.0149302483, -1.00000012, 1.5735508e-005, -2.98149789e-005, 1.56309379e-005, 0.999993861, 0.00350400037, 2.98699306e-005, 0.00350399921, -0.99999398),})


Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-34.9348907, 17.1883621, -58.9862022, -0.501736164, 0.636302292, 0.585986793, 0.859544158, 0.44285056, 0.255087137, -0.0971922055, 0.631668091, -0.769124091),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.501736104, 0.859543204, -0.0971920192, 0.636302173, 0.442850083, 0.631667197, 0.585986793, 0.25508675, -0.769123077),C1 = CFrame.new(-4.35414124, 2.61706066, -0.480609894, -1, 0, 0, 0, 0.999993861, 0.00350399944, 0, 0.00350399921, -0.999993861),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-39.3169975, 19.711565, -58.4799347, -0.0456920862, -0.0515018851, -0.997627258, -0.786245167, 0.617902815, 0.00411155354, 0.616225064, 0.784567475, -0.06872648),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0456920154, -0.786244273, 0.616224229, -0.0515019596, 0.61790216, 0.784566402, -0.997627139, 0.00411166577, -0.0687263161),C1 = CFrame.new(0.0279655457, 5.14201832, -0.978031158, -1, -7.4505806e-008, 2.98023224e-008, 8.94069672e-008, 0.999993801, 0.00350402296, 0, 0.00350399315, -0.99999392),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-39.8952141, 13.1658468, -59.4541588, -2.20742251e-008, -0.258819163, -0.965926111, 0.00352212205, -0.965921223, 0.258817643, -0.99999553, -0.00340192928, 0.000911466661),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.258818984, -0.965920091, -0.00340199098, -0.965925872, 0.258817464, 0.000911560608),C1 = CFrame.new(0.606182098, -1.40706539, -0.0267486572, -1.00000012, -7.86967576e-008, 2.98023224e-008, 9.22009349e-008, 0.999993861, 0.00350394286, -1.49011612e-008, 0.00350405951, -0.99999392),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-43.7428551, 17.0375824, -58.9681282, 0.58598721, -0.6363011, -0.501737297, -0.255086333, 0.442852378, -0.859543383, 0.769124269, 0.631667674, 0.0971942246),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.585987031, -0.255086035, 0.769123137, -0.6363011, 0.44285205, 0.631666839, -0.501737118, -0.85954237, 0.0971940383),C1 = CFrame.new(4.45382309, 2.46634483, -0.499210358, -1.00000012, -7.86967576e-008, 2.98023224e-008, 9.22009349e-008, 0.999993861, 0.00350394286, -1.49011612e-008, 0.00350405951, -0.99999392),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-39.3204956, 19.710331, -58.4817696, -0.0456919968, -0.0515018478, -0.997627378, -0.786245108, 0.617902696, 0.00411161687, 0.616225183, 0.784567475, -0.0687265322),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0456920154, -0.786244273, 0.616224229, -0.0515019596, 0.61790216, 0.784566402, -0.997627139, 0.00411166577, -0.0687263161),C1 = CFrame.new(0.031463623, 5.14077759, -0.976200104, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.0648804, 16.8921242, -59.4419365, -5.98152212e-008, -0.707107306, 0.707106471, -0.999995053, 0.00248974562, 0.00248983223, -0.00352091552, -0.707103372, -0.707103848),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.999994099, -0.0035210005, -0.707107067, 0.00248972187, -0.707102239, 0.707106471, 0.00248972396, -0.707102835),C1 = CFrame.new(-0.224151611, 2.31922722, -0.0259170532, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.465416, 12.1308842, -59.4564629, -5.98152212e-008, -0.707107306, 0.707106471, -0.999995053, 0.00248974562, 0.00248983223, -0.00352091552, -0.707103372, -0.707103848),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.999994099, -0.0035210005, -0.707107067, 0.00248972187, -0.707102239, 0.707106471, 0.00248972396, -0.707102835),C1 = CFrame.new(0.176383972, -2.442029, -0.0280723572, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.720072329),CFrame = CFrame.new(-39.2606621, 16.2828732, -59.4499283, -1.11652824e-007, 1.00000024, -5.98154557e-008, 0.00352309411, 5.9421783e-008, -0.999995172, -0.999995649, 1.11862967e-007, -0.003522916),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352300052, -0.999994099, 1, 0, 0, 0, -0.999994099, -0.00352300052),C1 = CFrame.new(-0.0283699036, 1.70995331, -0.0200576782, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.4649696, 16.8894138, -59.4396935, -5.98152212e-008, -0.707107306, 0.707106471, -0.999995053, 0.00248974562, 0.00248983223, -0.00352091552, -0.707103372, -0.707103848),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.999994099, -0.0035210005, -0.707107067, 0.00248972187, -0.707102239, 0.707106471, 0.00248972396, -0.707102835),C1 = CFrame.new(0.175937653, 2.31652451, -0.0281677246, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.0653267, 12.1336002, -59.4586983, -5.98152212e-008, -0.707107306, 0.707106471, -0.999995053, 0.00248974562, 0.00248983223, -0.00352091552, -0.707103372, -0.707103848),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.999994099, -0.0035210005, -0.707107067, 0.00248972187, -0.707102239, 0.707106471, 0.00248972396, -0.707102835),C1 = CFrame.new(-0.223705292, -2.43932056, -0.0258293152, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-36.8809204, 14.3133488, -59.4528198, -1.00000024, -3.66544981e-008, -1.21246401e-007, -5.9421783e-008, 0.709594905, -0.704611778, -1.11862967e-007, -0.704612255, -0.709595084),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.709594131, -0.704611123, 0, -0.704611123, -0.709594131),C1 = CFrame.new(-2.40811157, -0.259567261, -0.024066925, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-41.6421738, 14.713872, -59.4491539, -1.00000024, -3.66544981e-008, -1.21246401e-007, -5.9421783e-008, 0.709594905, -0.704611778, -1.11862967e-007, -0.704612255, -0.709595084),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.709594131, -0.704611123, 0, -0.704611123, -0.709594131),C1 = CFrame.new(2.35314178, 0.140966415, -0.0263328552, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-41.6394806, 14.313797, -59.452816, -1.00000024, -3.66544981e-008, -1.21246401e-007, -5.9421783e-008, 0.709594905, -0.704611778, -1.11862967e-007, -0.704612255, -0.709595084),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.709594131, -0.704611123, 0, -0.704611123, -0.709594131),C1 = CFrame.new(2.35044861, -0.259119034, -0.0240707397, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-36.8836212, 14.7134228, -59.4491615, -1.00000024, -3.66544981e-008, -1.21246401e-007, -5.9421783e-008, 0.709594905, -0.704611778, -1.11862967e-007, -0.704612255, -0.709595084),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(0.450046331, 0.225023374, 0.225022614),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.709594131, -0.704611123, 0, -0.704611123, -0.709594131),C1 = CFrame.new(-2.40541077, 0.140516281, -0.0263252258, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.68406868),CFrame = CFrame.new(-39.2606621, 12.7759495, -59.4622917, -1.11652824e-007, 1.00000024, -5.98154557e-008, 0.00352309411, 5.9421783e-008, -0.999995172, -0.999995649, 1.11862967e-007, -0.003522916),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352300052, -0.999994099, 1, 0, 0, 0, -0.999994099, -0.00352300052),C1 = CFrame.new(-0.0283699036, -1.79698849, -0.019985199, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-40.8266182, 16.077837, -59.4438972, 1.11652888e-007, -0.707107186, -0.70710659, -0.00352209411, 0.707102954, -0.70710355, 0.999995649, 0.00249029021, -0.00249045016),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.707107067, 0.707102239, 0.00249042897, -0.707106471, -0.707102835, -0.00249043107),C1 = CFrame.new(1.53758621, 1.50494003, -0.0268096924, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-39.2655983, 12.2918377, -59.4572372, -1.11652888e-007, -5.98153491e-008, -1.00000024, 0.00352209411, -0.999995172, -5.9421783e-008, -0.999995649, -0.00352191599, -1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0, -0.999994099, -0.00352200051, -1, 0, 0),C1 = CFrame.new(-0.0234336853, -2.28107929, -0.0267333984, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-39.2619972, 16.7273083, -59.4416161, 1.11652888e-007, 5.98153491e-008, -1.00000024, -0.00352209411, 0.999995172, -5.9421783e-008, 0.999995649, 0.00352191599, -1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, 0.999994099, 0.00352200051, -1, 0, 0),C1 = CFrame.new(-0.0270347595, 2.15441322, -0.0268135071, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-38.1491051, 16.4297562, -59.4426575, -1.11652888e-007, 0.500000119, 0.866025686, 0.00352209411, 0.866021097, -0.499997497, -0.999995649, 0.00305012381, -0.00176086102),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.5, 0.866020262, 0.00305014174, 0.866025448, -0.49999705, -0.00176100025),C1 = CFrame.new(-1.13992691, 1.85686111, -0.0268135071, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-40.8302155, 12.9412975, -59.4549522, -1.11652888e-007, -0.707107186, -0.70710659, 0.00352209411, -0.707102954, 0.70710355, -0.999995649, -0.00249044807, 0.0024902923),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.707107067, -0.707102239, -0.00249042897, -0.707106471, 0.707102835, 0.00249043107),C1 = CFrame.new(1.54118347, -1.63161564, -0.0267448425, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-37.6898003, 12.9401588, -59.4549599, 1.11652888e-007, 0.707106173, 0.707107604, -0.00352209411, -0.707103968, 0.707102537, 0.999995649, -0.00249029393, 0.00249044644),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.707106054, -0.707103252, -0.0024904327, 0.707107484, 0.707101822, 0.00249042758),C1 = CFrame.new(-1.59923172, -1.63275433, -0.0267410278, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-41.4027786, 15.0791111, -59.447422, 1.11652888e-007, -0.96592623, -0.258818686, -0.00352209411, 0.258817285, -0.965921223, 0.999995649, 0.000911429292, -0.00340193859),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.965925992, 0.258817077, 0.000911559269, -0.258818567, -0.96592021, -0.00340199168),C1 = CFrame.new(2.11374664, 0.50620842, -0.0267829895, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-37.1172371, 15.0779629, -59.447422, -1.11652888e-007, 0.96592623, 0.258818567, 0.00352209411, 0.258817405, -0.965921223, -0.999995649, 0.000911645358, -0.00340188085),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.965925992, 0.258817077, 0.000911559269, 0.258818567, -0.96592021, -0.00340199168),C1 = CFrame.new(-2.17179489, 0.505060196, -0.0267868042, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-38.6854515, 16.6518288, -59.4418678, -1.11652888e-007, 0.258819103, 0.965926111, 0.00352209411, 0.965921104, -0.258817673, -0.999995649, 0.00340193813, -0.000911430689),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.258818984, 0.965920091, 0.00340199098, 0.965925872, -0.258817464, -0.000911560608),C1 = CFrame.new(-0.603580475, 2.07893372, -0.0268249512, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-41.47892, 14.504303, -59.4494476, 1.11652888e-007, -1.00000024, -5.98153491e-008, -0.00352209411, -5.9421783e-008, -0.999995172, 0.999995649, -1.11862967e-007, -0.00352191599),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -1, 0, 0, 0, -0.999994099, -0.00352200051),C1 = CFrame.new(2.189888, -0.068602562, -0.0267715454, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-41.4063835, 13.9400311, -59.4514389, -1.11652888e-007, -0.96592623, -0.258818567, 0.00352209411, -0.258817405, 0.965921223, -0.999995649, -0.000911645358, 0.00340188085),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.965925992, -0.258817077, -0.000911559269, -0.258818567, 0.96592021, 0.00340199168),C1 = CFrame.new(2.11735153, -0.63287735, -0.0267562866, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-38.6818581, 12.3650379, -59.4569817, 1.11652888e-007, 0.258818984, 0.965926111, -0.00352209411, -0.965921104, 0.258817792, 0.999995649, -0.00340188039, 0.000911646697),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.258818984, -0.965920091, -0.00340199098, 0.965925872, 0.258817464, 0.000911560608),C1 = CFrame.new(-0.60717392, -2.20787811, -0.0267333984, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-40.3709106, 16.4308949, -59.4426575, 1.11652888e-007, -0.500000119, -0.866025686, -0.00352209411, 0.866021097, -0.499997616, 0.999995649, 0.00305001205, -0.00176105474),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.5, 0.866020262, 0.00305014174, -0.866025448, -0.49999705, -0.00176100025),C1 = CFrame.new(1.08187866, 1.8579998, -0.0268096924, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-40.3745041, 12.5882444, -59.4561958, -1.11652888e-007, -0.500000119, -0.866025686, 0.00352209411, -0.866021097, 0.499997497, -0.999995649, -0.00305012381, 0.00176086102),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.5, -0.866020262, -0.00305014174, -0.866025448, 0.49999705, 0.00176100025),C1 = CFrame.new(1.08547211, -1.98467064, -0.0267372131, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-41.1840515, 13.40271, -59.4533272, -1.11652888e-007, -0.866025507, -0.500000417, 0.00352209411, -0.499997854, 0.866021037, -0.999995649, -0.00176105555, 0.00305001182),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.866025269, -0.499997288, -0.00176100107, -0.500000298, 0.866020203, 0.0030501415),C1 = CFrame.new(1.89501953, -1.1702013, -0.0267524719, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-37.335968, 13.4015665, -59.4533272, 1.11652888e-007, 0.866025507, 0.500000417, -0.00352209411, -0.499997735, 0.866021037, 0.999995649, -0.00176086184, 0.00305012357),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.866025269, -0.499997288, -0.00176100107, 0.500000298, 0.866020203, 0.0030501415),C1 = CFrame.new(-1.95306396, -1.17134476, -0.0267562866, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-37.6934013, 16.0767078, -59.4439125, -1.11652888e-007, 0.707106173, 0.707107604, 0.00352209411, 0.707103968, -0.707102537, -0.999995649, 0.00249045179, -0.00249028858),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.707106054, 0.707103252, 0.0024904327, 0.707107484, -0.707101822, -0.00249042758),C1 = CFrame.new(-1.59563065, 1.50381088, -0.0267982483, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-38.145504, 12.5871038, -59.4561958, 1.11652888e-007, 0.500000119, 0.866025686, -0.00352209411, -0.866021097, 0.499997616, 0.999995649, -0.00305001205, 0.00176105474),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.5, -0.866020262, -0.00305014174, 0.866025448, 0.49999705, 0.00176100025),C1 = CFrame.new(-1.14352798, -1.98581123, -0.0267410278, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-37.0410957, 14.503149, -59.4494476, -1.11652888e-007, 1.00000024, -5.98153491e-008, 0.00352209411, 5.9421783e-008, -0.999995172, -0.999995649, 1.11862967e-007, -0.00352191599),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 1, 0, 0, 0, -0.999994099, -0.00352200051),C1 = CFrame.new(-2.24793625, -0.0697565079, -0.0267753601, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-37.3395691, 15.6153002, -59.4455299, -1.11652888e-007, 0.866025507, 0.500000417, 0.00352209411, 0.499997854, -0.866021037, -0.999995649, 0.00176105555, -0.00305001182),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.866025269, 0.499997288, 0.00176100107, 0.500000298, -0.866020203, -0.0030501415),C1 = CFrame.new(-1.94946289, 1.04240036, -0.0267982483, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-39.8345642, 16.6529694, -59.4418678, 1.11652888e-007, -0.258818984, -0.965926111, -0.00352209411, 0.965921104, -0.258817792, 0.999995649, 0.00340188039, -0.000911646697),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.258818984, 0.965920091, 0.00340199098, -0.965925872, -0.258817464, -0.000911560608),C1 = CFrame.new(0.545532227, 2.08007431, -0.0268211365, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-37.113636, 13.9388971, -59.4514313, 1.11652888e-007, 0.96592623, 0.258818686, -0.00352209411, -0.258817285, 0.965921223, 0.999995649, -0.000911429292, 0.00340193859),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.965925992, -0.258817077, -0.000911559269, 0.258818567, 0.96592021, 0.00340199168),C1 = CFrame.new(-2.17539597, -0.634011269, -0.0267677307, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-41.1804466, 15.6164217, -59.4455223, 1.11652888e-007, -0.866025507, -0.500000417, -0.00352209411, 0.499997735, -0.866021037, 0.999995649, 0.00176086184, -0.00305012357),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.866025269, 0.499997288, 0.00176100107, -0.500000298, -0.866020203, -0.0030501415),C1 = CFrame.new(1.89141464, 1.04352188, -0.026802063, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.324033618, 0.630063236),CFrame = CFrame.new(-39.8381615, 12.3661785, -59.4569817, -1.11652888e-007, -0.258819103, -0.965926111, 0.00352209411, -0.965921104, 0.258817673, -0.999995649, -0.00340193813, 0.000911430689),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.258818984, -0.965920091, -0.00340199098, -0.965925872, 0.258817464, 0.000911560608),C1 = CFrame.new(0.549129486, -2.20673752, -0.0267295837, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.57066298, 0.995499909),CFrame = CFrame.new(-40.3138275, 14.396657, -59.4590492, 1.11652888e-007, -5.98153491e-008, 1.00000024, -0.00352209411, -0.999995172, 5.9421783e-008, 0.999995649, -0.00352191599, 1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, -0.999994099, -0.00352200051, 1, 0, 0),C1 = CFrame.new(1.02479553, -0.176280975, -0.0175476074, -1.00000012, -2.98023224e-008, -5.96046448e-008, 2.98023224e-008, 0.999993742, 0.0035039708, -5.21540642e-008, 0.00350406021, -0.99999398),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.464898169, 0.815031886),CFrame = CFrame.new(-39.1448402, 15.4802608, -59.4552307, -1.11653016e-007, -0.96592623, 0.258818686, 0.00352109619, 0.258817434, 0.965921819, -0.999996245, 0.000911171024, 0.00340097491),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.0035210005, -0.999994099, -0.965925992, 0.258817077, 0.00091130042, 0.258818567, 0.96592021, 0.00340102566),C1 = CFrame.new(-0.144191742, 0.907327652, -0.0175704956, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.594959855),CFrame = CFrame.new(-39.8685341, 14.0150909, -59.4603958, -1.11652952e-007, 0.707107186, -0.70710659, 0.0035220962, -0.707103431, -0.707104027, -0.999996245, -0.00249029184, -0.00249045179),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.707107067, -0.707102239, -0.00249042897, -0.707106471, -0.707102835, -0.00249043107),C1 = CFrame.new(0.579502106, -0.557849884, -0.0175361633, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-38.7820969, 14.4419756, -59.4588852, 1.11652952e-007, -0.258819103, 0.965926111, -0.0035220962, -0.9659217, -0.258817822, 0.999996245, -0.00340194046, -0.000911431271),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.258818984, -0.965920091, -0.00340199098, 0.965925872, -0.258817464, -0.000911560608),C1 = CFrame.new(-0.50693512, -0.130962372, -0.0175514221, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.492800981, 0.942844689),CFrame = CFrame.new(-39.4735909, 13.6107788, -59.4618187, 1.11653016e-007, -1.00000024, -5.98152639e-008, -0.00352109619, -5.9421783e-008, -0.999995768, 0.999996245, -1.11862967e-007, -0.00352091831),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.0035210005, 0.999994099, -1, 0, 0, 0, -0.999994099, -0.0035210005),C1 = CFrame.new(0.184558868, -0.962163925, -0.0175323486, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.27272746),CFrame = CFrame.new(-39.8573341, 14.9000311, -59.4572792, 1.11652952e-007, 0.500000119, -0.866025686, -0.0035220962, 0.866021693, 0.499997854, 0.999996245, 0.00305012637, 0.00176086242),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.5, 0.866020262, 0.00305014174, -0.866025448, 0.49999705, 0.00176100025),C1 = CFrame.new(0.568302155, 0.327095032, -0.0175552368, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 2.48425794, 0.4401443),CFrame = CFrame.new(-40.069458, 14.4803667, -59.4587517, 1.11652952e-007, -5.98153775e-008, 1.00000024, -0.0035220962, -0.999995768, 5.9421783e-008, 0.999996245, -0.00352191832, 1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, -0.999994099, -0.00352200051, 1, 0, 0),C1 = CFrame.new(0.780426025, -0.0925712585, -0.0175514221, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.01260495, 0.923942685),CFrame = CFrame.new(-40.4373627, 14.7669821, -59.4577522, 1.11652952e-007, -0.500000119, 0.866025686, -0.0035220962, -0.866021693, -0.499997854, 0.999996245, -0.00305012637, -0.00176086242),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.5, -0.866020262, -0.00305014174, 0.866025448, -0.49999705, -0.00176100025),C1 = CFrame.new(1.14833069, 0.194046021, -0.0175476074, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.32133323, 0.969847441),CFrame = CFrame.new(-39.6396141, 13.6489887, -59.4616814, -1.11652952e-007, 0.96592623, -0.258818686, 0.0035220962, -0.258817434, -0.965921819, -0.999996245, -0.000911429874, -0.00340194092),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.965925992, -0.258817077, -0.000911559269, -0.258818567, -0.96592021, -0.00340199168),C1 = CFrame.new(0.350582123, -0.923953056, -0.0175361633, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.227273509, 0.64986527),CFrame = CFrame.new(-39.7479973, 15.2771835, -59.4559517, 1.11652952e-007, 0.866025507, -0.500000417, -0.0035220962, 0.499998212, 0.866021633, 0.999996245, 0.00176105695, 0.00305001438),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.866025269, 0.499997288, 0.00176100107, -0.500000298, 0.866020203, 0.0030501415),C1 = CFrame.new(0.458965302, 0.704249382, -0.0175590515, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.359587193, 0.776778042),CFrame = CFrame.new(-39.7638092, 13.8186779, -59.4610863, -1.11652952e-007, 0.866025507, -0.500000417, 0.0035220962, -0.499998093, -0.866021633, -0.999996245, -0.00176086323, -0.00305012614),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.866025269, -0.499997288, -0.00176100107, -0.500000298, -0.866020203, -0.0030501415),C1 = CFrame.new(0.474777222, -0.754263878, -0.0175361633, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 2.15257359, 0.846084595),CFrame = CFrame.new(-38.3507271, 14.4621382, -59.4588203, -0, 0, 1, -0.00352200051, -0.999994099, 0, 0.999994099, -0.00352200051, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, -0.999994099, -0.00352200051, 1, 0, 0),C1 = CFrame.new(-0.938304901, -0.110799789, -0.0175476074, -1.00000012, -2.98023402e-008, -5.96046803e-008, 2.98023224e-008, 0.999994397, 0.00350397313, -5.21540642e-008, 0.0035040623, -0.999994636),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.325833619, 1.17821801),CFrame = CFrame.new(-38.1931152, 13.6072454, -59.461834, 1.11652959e-007, 0.479103178, 0.877758861, -0.0035230983, -0.877755463, 0.47910139, 0.999996841, -0.00309222029, 0.00168794021),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352300052, 0.999994099, 0.479103118, -0.877753496, -0.00309234415, 0.877758622, 0.479100227, 0.00168788037),C1 = CFrame.new(-1.09591675, -0.965697289, -0.0175285339, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.535555363, 0.200000003),CFrame = CFrame.new(-37.4265556, 14.3166199, -59.4593239, 1.11653023e-007, -5.98154202e-008, 1.00000024, -0.0035220983, -0.999996364, 5.9421783e-008, 0.999996841, -0.00352192065, 1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 0.704319298),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, -0.999994099, -0.00352200051, 1, 0, 0),C1 = CFrame.new(-1.86247635, -0.256319046, -0.0175514221, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.212421924, 0.401890427),CFrame = CFrame.new(-38.7110329, 14.2044411, -59.4597244, 1.11653023e-007, -0.500000119, 0.866025686, -0.0035220983, -0.86602217, -0.499998152, 0.999996841, -0.00305012846, -0.00176086358),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.5, -0.866020262, -0.00305014174, 0.866025448, -0.49999705, -0.00176100025),C1 = CFrame.new(-0.577999115, -0.368497849, -0.0175437927, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.8277931, 14.4397621, -59.4589005, -1.11653023e-007, 0.258818984, -0.965926111, 0.0035220983, -0.965922296, -0.25881812, -0.999996841, -0.00340188481, -0.00091164792),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.258818984, -0.965920091, -0.00340199098, -0.965925872, -0.258817464, -0.000911560608),C1 = CFrame.new(0.538761139, -0.13317585, -0.0175437927, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.01260495, 0.923942685),CFrame = CFrame.new(-38.0161171, 14.7597694, -59.4577713, 1.11653023e-007, -0.866025507, 0.500000417, -0.0035220983, -0.49999851, -0.86602211, 0.999996841, -0.001761058, -0.00305001647),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.866025269, -0.499997288, -0.00176100107, 0.500000298, -0.866020203, -0.0030501415),C1 = CFrame.new(-1.27291489, 0.186832428, -0.0175514221, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.535555363, 1.32268262),CFrame = CFrame.new(-40.4900208, 14.3034296, -59.4593849, 1.11653023e-007, -5.98154202e-008, 1.00000024, -0.0035220983, -0.999996364, 5.9421783e-008, 0.999996841, -0.00352192065, 1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, -0.999994099, -0.00352200051, 1, 0, 0),C1 = CFrame.new(1.20098877, -0.269509315, -0.017539978, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.41404286, 0.792079568),CFrame = CFrame.new(-39.4337654, 15.4785395, -59.4552307, -1.1165308e-007, -1.00000024, 5.98152994e-008, 0.00352109829, -5.9421783e-008, 0.999996364, -0.999996841, -1.11862967e-007, 0.00352092064),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.0035210005, -0.999994099, -1, 0, 0, 0, 0.999994099, 0.0035210005),C1 = CFrame.new(0.144733429, 0.90560627, -0.0175743103, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 1.01260495, 1.2839787),CFrame = CFrame.new(-38.1263771, 14.3426466, -59.45924, 1.11653023e-007, -5.98154202e-008, 1.00000024, -0.0035220983, -0.999996364, 5.9421783e-008, 0.999996841, -0.00352192065, 1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, -0.999994099, -0.00352200051, 1, 0, 0),C1 = CFrame.new(-1.16265488, -0.23029232, -0.0175476074, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.31953299, 0.491899252),CFrame = CFrame.new(-38.4196434, 15.5927305, -59.4548378, 1.11653023e-007, -0.258819103, 0.965926111, -0.0035220983, -0.965922296, -0.258818001, 0.999996841, -0.00340194255, -0.000911431853),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.258818984, -0.965920091, -0.00340199098, 0.965925872, -0.258817464, -0.000911560608),C1 = CFrame.new(-0.86938858, 1.01979828, -0.0175666809, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.325833619, 1.17821801),CFrame = CFrame.new(-40.4694481, 13.693924, -59.4615173, 1.11653023e-007, -0.520610273, 0.853794873, -0.0035220983, -0.853791416, -0.520608127, 0.999996841, -0.00300705456, -0.0018334518),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.520610154, -0.853789508, -0.00300706481, 0.853794634, -0.520606995, -0.00183358893),C1 = CFrame.new(1.18041611, -0.87901783, -0.017539978, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.31953299, 0.300179988),CFrame = CFrame.new(-39.8849907, 15.6799698, -59.4545326, 1.1165308e-007, -5.98152994e-008, 1.00000024, -0.00352109829, -0.999996364, 5.9421783e-008, 0.999996841, -0.00352092064, 1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.0035210005, 0.999994099, 0, -0.999994099, -0.0035210005, 1, 0, 0),C1 = CFrame.new(0.59595871, 1.10703754, -0.0175666809, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.30513069),CFrame = CFrame.new(-38.7433662, 14.9202919, -59.4572029, -1.11653023e-007, -0.500000119, 0.866025686, 0.0035220983, 0.86602217, 0.499998271, -0.999996841, 0.0030500167, 0.00176105718),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.879840851, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.5, 0.866020262, 0.00305014174, 0.866025448, 0.49999705, 0.00176100025),C1 = CFrame.new(-0.545665741, 0.347355843, -0.0175590515, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.31953299, 0.300179988),CFrame = CFrame.new(-39.8849907, 13.2835293, -59.4629745, 1.1165308e-007, -5.98152994e-008, 1.00000024, -0.00352109829, -0.999996364, 5.9421783e-008, 0.999996841, -0.00352092064, 1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.0035210005, 0.999994099, 0, -0.999994099, -0.0035210005, 1, 0, 0),C1 = CFrame.new(0.59595871, -1.28941441, -0.0175209045, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.207921505, 0.556705952),CFrame = CFrame.new(-39.9670181, 14.1654701, -59.4598656, -1.11653023e-007, 0.500000119, -0.866025686, 0.0035220983, -0.86602217, -0.499998271, -0.999996841, -0.0030500167, -0.00176105718),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.5, -0.866020262, -0.00305014174, -0.866025448, -0.49999705, -0.00176100025),C1 = CFrame.new(0.677986145, -0.407469749, -0.017539978, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 2.79028964, 0.212871432),CFrame = CFrame.new(-38.6317787, 14.4907188, -59.4587135, 1.11653023e-007, -5.98154202e-008, 1.00000024, -0.0035220983, -0.999996364, 5.9421783e-008, 0.999996841, -0.00352192065, 1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, -0.999994099, -0.00352200051, 1, 0, 0),C1 = CFrame.new(-0.657253265, -0.0822191238, -0.0175552368, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.363187611, 0.982448757),CFrame = CFrame.new(-39.1514473, 13.596137, -59.4618645, 1.1165308e-007, -0.96592623, 0.258818567, -0.00352109829, -0.258817732, -0.965922415, 0.999996841, -0.00091138779, -0.00340091926),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.0035210005, 0.999994099, -0.965925992, -0.258817077, -0.00091130042, 0.258818567, -0.96592021, -0.00340102566),C1 = CFrame.new(-0.137584686, -0.976805687, -0.0175361633, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.31953299, 0.491899252),CFrame = CFrame.new(-40.2558289, 15.3870134, -59.4555588, 1.11653023e-007, 0.500000119, 0.866025686, -0.0035220983, -0.86602217, 0.499998271, 0.999996841, -0.0030500167, 0.00176105718),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.5, -0.866020262, -0.00305014174, 0.866025448, 0.49999705, 0.00176100025),C1 = CFrame.new(0.966796875, 0.814080238, -0.0175666809, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.8273506, 14.7205114, -59.4579086, 1.11653023e-007, 0.258819103, -0.965926111, -0.0035220983, 0.965922296, 0.258818001, 0.999996841, 0.00340194255, 0.000911431853),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.258818984, 0.965920091, 0.00340199098, -0.965925872, 0.258817464, 0.000911560608),C1 = CFrame.new(0.538318634, 0.147574425, -0.0175514221, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.258326709, 0.398740053),CFrame = CFrame.new(-38.8475151, 15.1152525, -59.4565163, -1.11653023e-007, -0.707107186, 0.70710659, 0.0035220983, 0.707103848, 0.707104445, -0.999996841, 0.00249029347, 0.00249045342),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.707107067, 0.707102239, 0.00249042897, 0.707106471, 0.707102835, 0.00249043107),C1 = CFrame.new(-0.441516876, 0.54231739, -0.0175628662, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.8462486, 14.5782995, -59.458416, 1.11653023e-007, 5.98154202e-008, -1.00000024, -0.0035220983, 0.999996364, -5.9421783e-008, 0.999996841, 0.00352192065, -1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, 0.999994099, 0.00352200051, -1, 0, 0),C1 = CFrame.new(0.557216644, 0.00536251068, -0.0175437927, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.319983095, 0.793429732),CFrame = CFrame.new(-39.6156769, 15.4262571, -59.4554253, 1.11653023e-007, 0.96592623, -0.258818567, -0.0035220983, 0.258817732, 0.965922415, 0.999996841, 0.000911646639, 0.00340188527),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.965925992, 0.258817077, 0.000911559269, -0.258818567, 0.96592021, 0.00340199168),C1 = CFrame.new(0.326644897, 0.853323936, -0.0175628662, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.422143668, 0.483798653),CFrame = CFrame.new(-38.8758087, 13.961462, -59.460598, 1.11653023e-007, -0.707107186, 0.70710659, -0.0035220983, -0.707103848, -0.707104445, 0.999996841, -0.00249045133, -0.00249029556),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.707107067, -0.707102239, -0.00249042897, 0.707106471, -0.707102835, -0.00249043107),C1 = CFrame.new(-0.413223267, -0.611478806, -0.0175247192, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.462647855, 0.985598981),CFrame = CFrame.new(-38.943737, 13.6439419, -59.4617004, 1.1165308e-007, -0.866025507, 0.500000417, -0.00352109829, -0.49999845, -0.86602211, 0.999996841, -0.00176055788, -0.00304915034),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.0035210005, 0.999994099, -0.866025269, -0.499997288, -0.00176050107, 0.500000298, -0.866020203, -0.00304927537),C1 = CFrame.new(-0.345294952, -0.928999901, -0.0175323486, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.490999401),CFrame = CFrame.new(-39.8313255, 15.108427, -59.4565468, 1.11653023e-007, 0.707107186, -0.70710659, -0.0035220983, 0.707103848, 0.707104445, 0.999996841, 0.00249045133, 0.00249029556),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.707107067, 0.707102239, 0.00249042897, -0.707106471, 0.707102835, 0.00249043107),C1 = CFrame.new(0.542293549, 0.535491943, -0.0175552368, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-38.7816467, 14.7227278, -59.4578934, -1.11653023e-007, -0.258818984, 0.965926111, 0.0035220983, 0.965922296, 0.25881812, -0.999996841, 0.00340188481, 0.00091164792),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.258818984, 0.965920091, 0.00340199098, 0.965925872, 0.258817464, 0.000911560608),C1 = CFrame.new(-0.507385254, 0.149790764, -0.0175590515, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.303331375, 0.847885191),CFrame = CFrame.new(-38.9087257, 15.4212971, -59.4554405, -1.1165308e-007, -0.866025507, 0.500000417, 0.00352109829, 0.499998331, 0.86602211, -0.999996841, 0.00176036416, 0.0030492621),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 1, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.0035210005, -0.999994099, -0.866025269, 0.499997288, 0.00176050107, 0.500000298, 0.866020203, 0.00304927537),C1 = CFrame.new(-0.380306244, 0.848363876, -0.0175666809, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Eye2 = New("Part",RuinedHand3,"Eye2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-38.7631989, 14.5841837, -59.4583931, 1.11653023e-007, -5.98154202e-008, 1.00000024, -0.0035220983, -0.999996364, 5.9421783e-008, 0.999996841, -0.00352192065, 1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Eye2,"Mesh",{Scale = Vector3.new(0.897842646, 0.765078902, 0.393789858),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Eye2,"mot",{Part0 = Eye2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, -0.999994099, -0.00352200051, 1, 0, 0),C1 = CFrame.new(-0.52583313, 0.0112466812, -0.0175476074, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 2.69442987, 0.200000003),CFrame = CFrame.new(-38.5951042, 14.5956125, -59.4590263, 1.11653023e-007, 0.258818984, 0.965926111, -0.0035220983, -0.965922296, 0.25881812, 0.999996841, -0.00340188481, 0.00091164792),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.949597955, 1, 0.598558366),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.258818984, -0.965920091, -0.00340199098, 0.965925872, 0.258817464, 0.000911560608),C1 = CFrame.new(-0.693927765, 0.0226726532, -0.016872406, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 2.65842581, 0.200000003),CFrame = CFrame.new(-40.0104713, 14.6065912, -59.4589882, 1.11653023e-007, -0.258819103, 0.965926111, -0.0035220983, -0.965922296, -0.258818001, 0.999996841, -0.00340194255, -0.000911431853),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.949597955, 1, 0.598558366),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.258818984, -0.965920091, -0.00340199098, 0.965925872, -0.258817464, -0.000911560608),C1 = CFrame.new(0.721439362, 0.0336513519, -0.016872406, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.672369778, 0.402790427),CFrame = CFrame.new(-39.2939491, 14.5619049, -59.4800758, 1.00000024, 5.98152994e-008, 1.1165308e-007, 5.9421783e-008, 0.999996364, -0.00352109829, 1.11862967e-007, 0.00352092064, 0.999996841),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.810083568, 1, 1),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994099, 0.0035210005, 0, -0.0035210005, 0.999994099),C1 = CFrame.new(0.00491714478, -0.0111083984, 0.00405883789, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 3.49326277, 0.200000003),CFrame = CFrame.new(-39.2838936, 13.9346189, -59.4613571, 1.11653023e-007, -1.00000024, -5.98154202e-008, -0.0035220983, -5.9421783e-008, -0.999996364, 0.999996841, -1.11862967e-007, -0.00352192065),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.949597955, 1, 0.598558366),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -1, 0, 0, 0, -0.999994099, -0.00352200051),C1 = CFrame.new(-0.00513839722, -0.638323784, -0.0168571472, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.674169421, 0.200000003, 0.409091085),CFrame = CFrame.new(-39.3119507, 14.5630217, -59.480526, 1.00000024, 5.98152994e-008, 1.1165308e-007, 5.9421783e-008, 0.999996364, -0.00352109829, 1.11862967e-007, 0.00352092064, 0.999996841),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1, 0.591811061, 1),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994099, 0.0035210005, 0, -0.0035210005, 0.999994099),C1 = CFrame.new(0.0229187012, -0.00999355316, 0.00451278687, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 3.01036239, 0.200000003),CFrame = CFrame.new(-39.311573, 15.238698, -59.4567566, 1.11653023e-007, -1.00000024, -5.98154202e-008, -0.0035220983, -5.9421783e-008, -0.999996364, 0.999996841, -1.11862967e-007, -0.00352192065),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(0.949597955, 1, 0.598558366),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -1, 0, 0, 0, -0.999994099, -0.00352200051),C1 = CFrame.new(0.0225410461, 0.665761948, -0.0168876648, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Sphere3 = New("Part",RuinedHand3,"Sphere",{BrickColor = BrickColor.new("Maroon"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.666068554, 0.66606915, 0.396039784),CFrame = CFrame.new(-39.3119507, 14.5627089, -59.4798431, 1.00000024, 5.98152994e-008, 1.1165308e-007, 5.9421783e-008, 0.999996364, -0.00352109829, 1.11862967e-007, 0.00352092064, 0.999996841),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.458824, 0, 0),})
Mesh = New("SpecialMesh",Sphere3,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",Sphere3,"mot",{Part0 = Sphere3,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999994099, 0.0035210005, 0, -0.0035210005, 0.999994099),C1 = CFrame.new(0.0229187012, -0.0103034973, 0.00382995605, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-38.1517487, 13.3608561, -59.4512253, 1.11653023e-007, 0.500000119, 0.866025686, -0.0035220983, -0.86602217, 0.499998271, 0.999996841, -0.0030500167, 0.00176105718),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.5, -0.866020262, -0.00305014174, 0.866025448, 0.49999705, 0.00176100025),C1 = CFrame.new(-1.13728333, -1.21204758, -0.0289993286, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-38.6242943, 13.163928, -59.4519157, 1.11653023e-007, 0.258818984, 0.965926111, -0.0035220983, -0.965922296, 0.25881812, 0.999996841, -0.00340188481, 0.00091164792),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.258818984, -0.965920091, -0.00340199098, 0.965925872, 0.258817464, 0.000911560608),C1 = CFrame.new(-0.664737701, -1.40897655, -0.0289993286, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-41.0833321, 14.0767727, -59.4509506, -1.11653023e-007, -0.866025507, -0.500000417, 0.0035220983, -0.49999851, 0.86602211, -0.999996841, -0.001761058, 0.00305001647),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.866025269, -0.499997288, -0.00176100107, -0.500000298, 0.866020203, 0.0030501415),C1 = CFrame.new(1.79430008, -0.496134758, -0.0267677307, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-41.1400337, 14.4959526, -59.458477, 1.11653023e-007, -0.96592623, -0.258818686, -0.0035220983, 0.258817613, -0.965922415, 0.999996841, 0.000911430572, -0.00340194302),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.965925992, 0.258817077, 0.000911559269, -0.258818567, -0.96592021, -0.00340199168),C1 = CFrame.new(1.85100174, -0.0769844055, -0.0177726746, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-37.7467041, 13.6722279, -59.4501228, 1.11653023e-007, 0.707107186, 0.70710659, -0.0035220983, -0.707103848, 0.707104445, 0.999996841, -0.00249029347, 0.00249045342),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.707107067, -0.707102239, -0.00249042897, 0.707106471, 0.707102835, 0.00249043107),C1 = CFrame.new(-1.54232788, -0.900673866, -0.0290107727, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-40.7728004, 13.6741438, -59.4523735, -1.11653023e-007, -0.707106173, -0.707107604, 0.0035220983, -0.707104862, 0.707103431, -0.999996841, -0.00249045482, 0.00249029207),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.707106054, -0.707103252, -0.0024904327, -0.707107484, 0.707101822, 0.00249042758),C1 = CFrame.new(1.48376846, -0.898765564, -0.0267562866, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-40.3677597, 13.3627701, -59.4534721, -1.11653023e-007, -0.500000119, -0.866025686, 0.0035220983, -0.86602217, 0.499998152, -0.999996841, -0.00305012846, 0.00176086358),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, -0.5, -0.866020262, -0.00305014174, -0.866025448, 0.49999705, 0.00176100025),C1 = CFrame.new(1.07872772, -1.21014118, -0.0267486572, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-37.3794746, 14.4940386, -59.4562302, -1.11653023e-007, 0.96592623, 0.258818567, 0.0035220983, 0.258817732, -0.965922415, -0.999996841, 0.000911646639, -0.00340188527),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.965925992, 0.258817077, 0.000911559269, 0.258818567, -0.96592021, -0.00340199168),C1 = CFrame.new(-1.90955734, -0.0788908005, -0.0200233459, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-37.8790245, 15.3610001, -59.4531822, -1.11653023e-007, 0.707107186, 0.70710659, 0.0035220983, 0.707103848, -0.707104445, -0.999996841, 0.00249045133, -0.00249029556),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.707107067, 0.707102239, 0.00249042897, 0.707106471, -0.707102835, -0.00249043107),C1 = CFrame.new(-1.41000748, 0.788075447, -0.02003479, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-37.5684929, 14.958375, -59.4546013, -1.11653023e-007, 0.866025507, 0.500000417, 0.0035220983, 0.49999851, -0.86602211, -0.999996841, 0.001761058, -0.00305001647),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.866025269, 0.499997288, 0.00176100107, 0.500000298, -0.866020203, -0.0030501415),C1 = CFrame.new(-1.72053909, 0.385448456, -0.0200271606, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-40.2354431, 15.6742935, -59.4543304, 1.11653023e-007, -0.500000119, -0.866025686, -0.0035220983, 0.86602217, -0.499998271, 0.999996841, 0.0030500167, -0.00176105718),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.5, 0.866020262, 0.00305014174, -0.866025448, -0.49999705, -0.00176100025),C1 = CFrame.new(0.946411133, 1.10136223, -0.0177879333, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-37.4361763, 14.0748596, -59.4487, 1.11653023e-007, 0.866025507, 0.500000417, -0.0035220983, -0.499998391, 0.86602211, 0.999996841, -0.0017608644, 0.00305012823),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0.866025269, -0.499997288, -0.00176100107, 0.500000298, 0.866020203, 0.0030501415),C1 = CFrame.new(-1.85285568, -0.498040199, -0.0290222168, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-38.2840614, 15.6723814, -59.4520836, -1.11653023e-007, 0.500000119, 0.866025686, 0.0035220983, 0.86602217, -0.499998152, -0.999996841, 0.00305012846, -0.00176086358),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.5, 0.866020262, 0.00305014174, 0.866025448, -0.49999705, -0.00176100025),C1 = CFrame.new(-1.00497055, 1.09945774, -0.0200424194, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.809181273),CFrame = CFrame.new(-39.2543449, 13.1005917, -59.4543915, -1.11653023e-007, -5.98154202e-008, -1.00000024, 0.0035220983, -0.999996364, -5.9421783e-008, -0.999996841, -0.00352192065, -1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0, -0.999994099, -0.00352200051, -1, 0, 0),C1 = CFrame.new(-0.0346870422, -1.47232151, -0.0267448425, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-38.7566109, 15.869319, -59.4513893, -1.11653023e-007, 0.258819103, 0.965926111, 0.0035220983, 0.965922296, -0.258818001, -0.999996841, 0.00340194255, -0.000911431853),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, 0.00352200051, -0.999994099, 0.258818984, 0.965920091, 0.00340199098, 0.965925872, -0.258817464, -0.000911560608),C1 = CFrame.new(-0.532421112, 1.29639626, -0.0200462341, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-39.2565956, 15.9364796, -59.4533997, 1.11653023e-007, 5.98154202e-008, -1.00000024, -0.0035220983, 0.999996364, -5.9421783e-008, 0.999996841, 0.00352192065, -1.11862967e-007),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, 0, 0.999994099, 0.00352200051, -1, 0, 0),C1 = CFrame.new(-0.0324363708, 1.36354923, -0.0178031921, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-40.6404877, 15.3629179, -59.4554214, 1.11653023e-007, -0.707107186, -0.70710659, -0.0035220983, 0.707103848, -0.707104445, 0.999996841, 0.00249029347, -0.00249045342),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.707107067, 0.707102239, 0.00249042897, -0.707106471, -0.707102835, -0.00249043107),C1 = CFrame.new(1.35145569, 0.789985657, -0.0177879333, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-39.7628975, 15.871232, -59.4536362, 1.11653023e-007, -0.258818984, -0.965926111, -0.0035220983, 0.965922296, -0.25881812, 0.999996841, 0.00340188481, -0.00091164792),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.258818984, 0.965920091, 0.00340199098, -0.965925872, -0.258817464, -0.000911560608),C1 = CFrame.new(0.473865509, 1.2983017, -0.017791748, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.225023165, 0.200000003, 0.540054262),CFrame = CFrame.new(-40.9510193, 14.9602919, -59.4568367, 1.11653023e-007, -0.866025507, -0.500000417, -0.0035220983, 0.499998391, -0.86602211, 0.999996841, 0.0017608644, -0.00305012823),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0, -0.00352200051, 0.999994099, -0.866025269, 0.499997288, 0.00176100107, -0.500000298, -0.866020203, -0.0030501415),C1 = CFrame.new(1.6619873, 0.387356758, -0.0177841187, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
FingerTop = New("Part",RuinedHand3,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-35.1383247, 17.0436459, -59.188118, -0.58598876, 0.636300027, -0.501736879, -0.255086631, 0.442852885, 0.859544516, 0.769123733, 0.631670058, -0.0971955284),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.58598876, -0.255085915, 0.769121706, 0.636299789, 0.442851871, 0.63166827, -0.50173676, 0.859542549, -0.0971951261),C1 = CFrame.new(-4.15070724, 2.47163677, -0.279201508, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-36.5816193, 16.1764126, -59.532093, 0.035575103, 0.864288807, -0.50173682, 0.132769138, 0.493517935, 0.859544694, 0.990511119, -0.0971934795, -0.0971942171),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.0355749764, 0.132768929, 0.990508378, 0.864288568, 0.493516743, -0.097193256, -0.501736701, 0.859542727, -0.0971938148),C1 = CFrame.new(-2.70741272, 1.60320568, 0.0617332458, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-36.5737534, 16.1738167, -59.5354424, -0.501736999, 0.864288807, -0.0355748273, 0.859544814, 0.493518412, -0.132766873, -0.0971923769, -0.097192131, -0.990511417),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.501736879, 0.859542847, -0.0971919745, 0.864288568, 0.49351722, -0.0971919149, -0.0355747007, -0.132766664, -0.990508676),C1 = CFrame.new(-2.71527863, 1.60059834, 0.065071106, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-36.5728416, 16.1698132, -59.5315285, 0.035575103, 0.864288807, -0.50173682, 0.132769138, 0.493517935, 0.859544694, 0.990511119, -0.0971934795, -0.0971942171),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.0355749764, 0.132768929, 0.990508378, 0.864288568, 0.493516743, -0.097193256, -0.501736701, 0.859542727, -0.0971938148),C1 = CFrame.new(-2.71619034, 1.59660816, 0.0611457825, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
FingerBottem = New("Part",RuinedHand3,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-36.2234001, 16.3716698, -59.5711403, 0.035575103, 0.864288807, -0.50173682, 0.132769138, 0.493517935, 0.859544694, 0.990511119, -0.0971934795, -0.0971942171),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.0355749764, 0.132768929, 0.990508378, 0.864288568, 0.493516743, -0.097193256, -0.501736701, 0.859542727, -0.0971938148),C1 = CFrame.new(-3.06563187, 1.79832363, 0.101463318, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Claw = New("Part",RuinedHand3,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-34.5422707, 17.3945065, -58.6024628, -0.636298418, -0.501736403, 0.585990906, -0.442851126, 0.859544933, 0.255088508, -0.631672919, -0.0971946716, -0.769121528),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.63629818, -0.442850113, -0.63167119, -0.501736283, 0.859542966, -0.0971942693, 0.585990906, 0.255087793, -0.769119501),C1 = CFrame.new(-4.74676132, 2.82454777, -0.863624573, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-36.5764008, 16.1719093, -59.5316887, 0.035575103, 0.864288807, -0.50173682, 0.132769138, 0.493517935, 0.859544694, 0.990511119, -0.0971934795, -0.0971942171),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.0355749764, 0.132768929, 0.990508378, 0.864288568, 0.493516743, -0.097193256, -0.501736701, 0.859542727, -0.0971938148),C1 = CFrame.new(-2.71263123, 1.59870434, 0.0613136292, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-34.9315529, 17.1839733, -58.9844398, -0.585989773, 0.636300147, -0.501735508, -0.255084634, 0.442852944, 0.859545112, 0.769123673, 0.631669879, -0.0971972421),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.585989773, -0.255083919, 0.769121706, 0.636299908, 0.442851931, 0.631668091, -0.501735389, 0.859543145, -0.0971968397),C1 = CFrame.new(-4.3574791, 2.61267757, -0.482387543, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-34.9346504, 17.1861591, -58.9860764, -0.585989773, 0.636300147, -0.501735508, -0.255084634, 0.442852944, 0.859545112, 0.769123673, 0.631669879, -0.0971972421),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.585989773, -0.255083919, 0.769121706, 0.636299908, 0.442851931, 0.631668091, -0.501735389, 0.859543145, -0.0971968397),C1 = CFrame.new(-4.35438156, 2.61485767, -0.480743408, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-34.9393501, 17.1907845, -58.9881248, -0.585989773, 0.636300147, -0.501735508, -0.255084634, 0.442852944, 0.859545112, 0.769123673, 0.631669879, -0.0971972421),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.585989773, -0.255083919, 0.769121706, 0.636299908, 0.442851931, 0.631668091, -0.501735389, 0.859543145, -0.0971968397),C1 = CFrame.new(-4.34968185, 2.61947536, -0.478675842, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-42.1065788, 16.010828, -59.5136948, -0.0355748646, -0.864288807, -0.50173682, 0.132769138, 0.493517816, -0.859544694, 0.990511119, -0.0971936733, 0.0971941054),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0355749764, 0.132768929, 0.990508378, -0.864288568, 0.493516743, -0.097193256, -0.501736701, -0.859542727, 0.0971938148),C1 = CFrame.new(2.81754684, 1.43768597, 0.042755127, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Claw = New("Part",RuinedHand3,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-44.0804749, 17.3366051, -58.596138, 0.636298835, -0.501737058, -0.585989833, -0.442851782, -0.859544575, 0.255088151, -0.631671429, 0.0971943811, -0.76912272),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.636298835, -0.442850888, -0.631669819, -0.501736939, -0.859542608, 0.0971940905, -0.585989594, 0.255087584, -0.769120574),C1 = CFrame.new(4.79144287, 2.76666927, -0.87015152, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
FingerBottem = New("Part",RuinedHand3,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-42.4580078, 16.2132874, -59.5534554, -0.0355748646, -0.864288807, -0.50173682, 0.132769138, 0.493517816, -0.859544694, 0.990511119, -0.0971936733, 0.0971941054),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0355749764, 0.132768929, 0.990508378, -0.864288568, 0.493516743, -0.097193256, -0.501736701, -0.859542727, 0.0971938148),C1 = CFrame.new(3.16897583, 1.64000607, 0.0832214355, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-42.1065331, 16.0149174, -59.5142403, -0.0355748646, -0.864288807, -0.50173682, 0.132769138, 0.493517816, -0.859544694, 0.990511119, -0.0971936733, 0.0971941054),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0355749764, 0.132768929, 0.990508378, -0.864288568, 0.493516743, -0.097193256, -0.501736701, -0.859542727, 0.0971938148),C1 = CFrame.new(2.81750107, 1.44177341, 0.0433120728, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-42.1099205, 16.0115604, -59.5173187, -0.501736999, -0.864288807, 0.0355745889, -0.859544814, 0.493518293, -0.132766873, 0.0971922651, -0.0971923247, -0.990511417),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.501736879, -0.859542847, 0.0971919745, -0.864288568, 0.49351722, -0.0971919149, 0.0355747007, -0.132766664, -0.990508676),C1 = CFrame.new(2.82088852, 1.43840694, 0.0463790894, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-42.1079178, 16.0041046, -59.5128365, -0.0355748646, -0.864288807, -0.50173682, 0.132769138, 0.493517816, -0.859544694, 0.990511119, -0.0971936733, 0.0971941054),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0355749764, 0.132768929, 0.990508378, -0.864288568, 0.493516743, -0.097193256, -0.501736701, -0.859542727, 0.0971938148),C1 = CFrame.new(2.8188858, 1.43096542, 0.0418701172, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
FingerTop = New("Part",RuinedHand3,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-43.5390167, 16.8922386, -59.1712189, 0.58598727, -0.636302233, -0.501735866, -0.255086631, 0.442851037, -0.85954541, 0.769125283, 0.631668687, 0.0971929133),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.585987031, -0.255086035, 0.769123137, -0.636302233, 0.442850143, 0.631667078, -0.501735747, -0.859543443, 0.0971926227),C1 = CFrame.new(4.24998474, 2.32029057, -0.296630859, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-43.7451553, 17.0323181, -58.9687805, -0.501738966, -0.636298716, -0.585988402, -0.859543681, 0.44285202, 0.255090773, 0.0971922427, 0.631671429, -0.769123137),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.501738846, -0.859541714, 0.0971919596, -0.636298716, 0.442851126, 0.631669819, -0.585988164, 0.255090177, -0.769120991),C1 = CFrame.new(4.45612335, 2.4610796, -0.498577118, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-43.7452126, 17.0269966, -58.969841, 0.58598727, -0.6363011, -0.501737237, -0.255086631, 0.442852944, -0.859544337, 0.769125283, 0.631668448, 0.0971943289),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.585987031, -0.255086035, 0.769123137, -0.6363011, 0.44285205, 0.631666839, -0.501737118, -0.85954237, 0.0971940383),C1 = CFrame.new(4.45618057, 2.45575428, -0.497535706, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-43.7433624, 17.0335903, -58.9690437, 0.58598727, -0.6363011, -0.501737237, -0.255086631, 0.442852944, -0.859544337, 0.769125283, 0.631668448, 0.0971943289),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.585987031, -0.255086035, 0.769123137, -0.6363011, 0.44285205, 0.631666839, -0.501737118, -0.85954237, 0.0971940383),C1 = CFrame.new(4.45433044, 2.46234989, -0.498310089, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle1 = New("Part",RuinedHand3,"Handle1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.819532275),CFrame = CFrame.new(-39.2673492, 17.9444695, -59.4308128, -0.0687269196, -0.00411192048, -0.997627378, -0.119038381, 0.992883563, 0.0041081137, 0.990511, 0.119038135, -0.0687275454),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Scale = Vector3.new(1.01999998, 0.979549885, 1.01999998),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle1,"mot",{Part0 = Handle1,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0687270164, -0.119038031, 0.990508258, -0.0041119922, 0.992881238, 0.119037904, -0.997627139, 0.00410815747, -0.0687272474),C1 = CFrame.new(-0.0216827393, 3.37160397, -0.0333518982, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Claw = New("Part",RuinedHand3,"Claw",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-39.2961884, 20.0616989, -58.012207, 0.0515008755, -0.997627616, 0.0456886329, -0.617903173, 0.00410960801, 0.786246359, -0.784568846, -0.0687237754, -0.616225779),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Claw,"Mesh",{Scale = Vector3.new(1.57516229, 0.900093496, 0.900090456),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Claw,"mot",{Part0 = Claw,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, 0.0515009873, -0.617901862, -0.78456682, -0.997627378, 0.00410965178, -0.06872347, 0.0456886515, 0.786244512, -0.616224051),C1 = CFrame.new(0.00715637207, 5.49378872, -1.44452667, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
FingerBottem = New("Part",RuinedHand3,"FingerBottem",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-39.2674484, 18.3490715, -59.3822021, -0.0687269196, -0.00411192048, -0.997627378, -0.119038381, 0.992883563, 0.0041081137, 0.990511, 0.119038135, -0.0687275454),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerBottem,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerBottem,"mot",{Part0 = FingerBottem,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0687270164, -0.119038031, 0.990508258, -0.0041119922, 0.992881238, 0.119037904, -0.997627139, 0.00410815747, -0.0687272474),C1 = CFrame.new(-0.0215835571, 3.77637386, -0.0805435181, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Neon = New("Part",RuinedHand3,"Neon",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.765078783, 0.290730327, 0.812331557),CFrame = CFrame.new(-39.2637634, 17.9464722, -59.4303322, -0.0687269196, -0.00411192048, -0.997627378, -0.119038381, 0.992883563, 0.0041081137, 0.990511, 0.119038135, -0.0687275454),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Neon,"Mesh",{Scale = Vector3.new(1.00999999, 1.00999999, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Neon,"mot",{Part0 = Neon,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0687270164, -0.119038031, 0.990508258, -0.0041119922, 0.992881238, 0.119037904, -0.997627139, 0.00410815747, -0.0687272474),C1 = CFrame.new(-0.0252685547, 3.37360859, -0.0338249207, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-39.267807, 17.9484558, -59.4337692, -0.997627378, -0.00411094213, 0.068725802, 0.00410895655, 0.992883563, 0.119038463, -0.0687263086, 0.119038261, -0.990511119),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.997627139, 0.00410900032, -0.0687260106, -0.00411101384, 0.992881238, 0.119038031, 0.0687258989, 0.119038112, -0.990508378),C1 = CFrame.new(-0.0212249756, 3.37558079, -0.030380249, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-39.2738533, 17.9422626, -59.43153, -0.0687269196, -0.00411192048, -0.997627378, -0.119038381, 0.992883563, 0.0041081137, 0.990511, 0.119038135, -0.0687275454),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0687270164, -0.119038031, 0.990508258, -0.0041119922, 0.992881238, 0.119037904, -0.997627139, 0.00410815747, -0.0687272474),C1 = CFrame.new(-0.0151786804, 3.36939526, -0.0326423645, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
FingerTop = New("Part",RuinedHand3,"FingerTop",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 1.76418316, 0.810081363),CFrame = CFrame.new(-39.3033333, 19.5121422, -58.7328606, -0.0456910022, -0.0515028425, -0.997627437, -0.786246181, 0.617903471, 0.00411022082, 0.616226017, 0.784568369, -0.0687267855),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",FingerTop,"Mesh",{MeshType = Enum.MeshType.Brick,})
mot = New("Weld",FingerTop,"mot",{Part0 = FingerTop,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0456910208, -0.786244333, 0.616224289, -0.0515029542, 0.61790216, 0.784566343, -0.997627199, 0.00411026459, -0.0687264875),C1 = CFrame.new(0.0143013, 4.94171238, -0.72580719, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.819084406, 0.200000003, 0.739424169),CFrame = CFrame.new(-39.322525, 19.7112045, -58.4816399, -0.997627497, -0.0515013114, 0.0456905738, 0.00411095703, 0.61790204, 0.786247253, -0.0687253103, 0.784569681, -0.616224527),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.997627258, 0.0041110008, -0.0687250122, -0.0515014231, 0.617900729, 0.784567595, 0.0456905924, 0.786245406, -0.616222799),C1 = CFrame.new(0.033493042, 5.14165211, -0.976325989, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})
Handle2 = New("Part",RuinedHand3,"Handle2",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.765078783, 0.200000003, 0.769577205),CFrame = CFrame.new(-39.3268852, 19.7089691, -58.4839668, -0.0456919968, -0.0515018478, -0.997627378, -0.786246121, 0.617903471, 0.00411162199, 0.616225958, 0.784568429, -0.0687266216),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Handle2,"Mesh",{Scale = Vector3.new(1.02999997, 0.747730851, 1.00999999),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Handle2,"mot",{Part0 = Handle2,Part1 = W3d3,C0 = CFrame.new(0, 0, 0, -0.0456920154, -0.786244273, 0.616224229, -0.0515019596, 0.61790216, 0.784566402, -0.997627139, 0.00411166577, -0.0687263161),C1 = CFrame.new(0.037853241, 5.13940907, -0.974006653, -1.00000012, -2.98023579e-008, -5.96047158e-008, 2.98023224e-008, 0.999994993, 0.00350397523, -5.21540642e-008, 0.00350406417, -0.999995232),})

Hitbox1 = New("Part",RuinedHand1,"Hitbox",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.225023165, 4.50000048, 4.42007256),CFrame = CFrame.new(-45.8067703, 2.15377712, 2.25294924, 0, 1, 0, 0.000304999994, 0, -1, -1, 0, -0.000304999994),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Hitbox1,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Hitbox1,"mot",{Part0 = Hitbox1,Part1 = Sphere1,C0 = CFrame.new(0, 0, 0, -1.62422657e-006, 1.62458491e-006, -0.999998808, 1.00000715, -2.0038101e-006, 6.18398133e-007, -2.74038939e-007, -1.00000226, -2.92566966e-007),C1 = CFrame.new(0.0275506973, -0.00451803207, 0.0296287537, 1, 5.81144241e-006, -1.43646939e-005, -5.76079674e-006, 0.999993801, 0.00352320028, 1.43850802e-005, -0.00352320028, 0.999993801),})
Hitbox2 = New("Part",RuinedHand2,"Hitbox",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.225023165, 4.50000048, 4.42007256),CFrame = CFrame.new(-45.8067703, 2.15377712, 2.25294924, 0, 1, 0, 0.000304999994, 0, -1, -1, 0, -0.000304999994),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Hitbox2,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Hitbox2,"mot",{Part0 = Hitbox2,Part1 = Sphere2,C0 = CFrame.new(0, 0, 0, -1.62422657e-006, 1.62458491e-006, -0.999998808, 1.00000715, -2.0038101e-006, 6.18398133e-007, -2.74038939e-007, -1.00000226, -2.92566966e-007),C1 = CFrame.new(0.0275506973, -0.00451803207, 0.0296287537, 1, 5.81144241e-006, -1.43646939e-005, -5.76079674e-006, 0.999993801, 0.00352320028, 1.43850802e-005, -0.00352320028, 0.999993801),})
Hitbox3 = New("Part",RuinedHand3,"Hitbox",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.225023165, 4.50000048, 4.42007256),CFrame = CFrame.new(-45.8067703, 2.15377712, 2.25294924, 0, 1, 0, 0.000304999994, 0, -1, -1, 0, -0.000304999994),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Hitbox3,"Mesh",{Scale = Vector3.new(1, 0.945098102, 1),MeshType = Enum.MeshType.Brick,})
mot = New("Weld",Hitbox3,"mot",{Part0 = Hitbox3,Part1 = Sphere3,C0 = CFrame.new(0, 0, 0, -1.62422657e-006, 1.62458491e-006, -0.999998808, 1.00000715, -2.0038101e-006, 6.18398133e-007, -2.74038939e-007, -1.00000226, -2.92566966e-007),C1 = CFrame.new(0.0275506973, -0.00451803207, 0.0296287537, 1, 5.81144241e-006, -1.43646939e-005, -5.76079674e-006, 0.999993801, 0.00352320028, 1.43850802e-005, -0.00352320028, 0.999993801),})


--
coroutine.resume(coroutine.create(function(Part,Weld)
while Part.Parent~=nil do
wait(5)
for i=0,1,0.2 do
wait()
Meshs.Scale = Vector3.new(1,1-.9*i,1)
end
for i=0,1,0.2 do
wait()
Meshs.Scale = Vector3.new(1,.1+.9*i,1)
end
end
end),eyesz,mots)
for _,v in pairs(Models:children()) do
if v:IsA("Part") then
v.Transparency = 1
v.CanCollide = false
end
end
for _,v in pairs(RuinedHand1:children()) do
if v:IsA("Part") then
v.Transparency = 1
v.CanCollide = false
end
end
for _,v in pairs(RuinedHand2:children()) do
if v:IsA("Part") then
v.Transparency = 1
v.CanCollide = false
end
end
for _,v in pairs(RuinedHand3:children()) do
if v:IsA("Part") then
v.Transparency = 1
v.CanCollide = false
end
end

Humanoid.JumpPower = 0
Humanoid.WalkSpeed = 0
Humanoid.MaxHealth = math.huge
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=209527203", RootPart, 2.2, 0.9)	
coroutine.wrap(function()
while wait() and sick and sick.Volume >= 0.02 do
	sick.Volume = sick.Volume - 0.02
end
wait(0.1)
sick.Pitch = 0
sick.PlaybackSpeed = 0
end)()
for i = 0, 2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0113718649, -0.26686281, 0.323312402, 0.999907017, 0.00404607877, 0.0130218547, 0.00419700006, 0.817286015, -0.576216936, -0.0129739996, 0.576218009, 0.817193031) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.216519505, 1.45546079, -0.163409114, 0.544463634, 0.20175378, 0.814158976, -0.191566974, 0.974897623, -0.113476649, -0.816615939, -0.0941820741, 0.56944555) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(2.00065351, 0.394954354, -0.444823503, 0.687914014, -0.725662887, -0.0137004554, 0.286868006, 0.289187819, -0.913278222, 0.666694164, 0.624326646, 0.407105803) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-2.0522964, 0.40963921, -0.211461544, 0.374745607, 0.927127719, -7.64863216e-007, -0.52711612, 0.213060006, -0.822650671, -0.762702048, 0.308285147, 0.568547249) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.745027363, -1.85072303, -0.558617473, 0.949456334, -0.274882793, 0.15156579, 0.297323883, 0.632709622, -0.715036452, 0.100654051, 0.723959982, 0.682459295) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.751481593, -1.8061769, -0.406617165, 0.917579293, 0.392233253, 0.0648172423, -0.288188875, 0.768569469, -0.571181297, -0.273852885, 0.5054245, 0.818260729) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
Torso.Velocity = RootPart.CFrame.lookVector * -35
motr.C0 = clerp(motr.C0, CFrame.new(0.196983516, 2.30555201, 6.29692078, 0.96731025, -0.000887790986, 0.253594518, 0.11342603, 0.895907998, -0.429515451, -0.226816058, 0.444238931, 0.86672157) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
for i = 0, 20, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0113739315, -2.26505518, -0.0380998179, 0.999907017, 0.00404682197, 0.0130240917, 0.0130700003, -0.0115330061, -0.999848127, -0.0038960001, 0.999925375, -0.011584824) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.0988635495, 1.45892119, -0.134056658, -0.243073568, 0.0172691811, 0.969854176, -0.0433204286, 0.998650789, -0.0286392868, -0.969040155, -0.0489759482, -0.241997465) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.88350761, 0.393193901, 0.184678555, -0.173339143, -0.979623377, -0.10144832, 0.100963607, 0.0847895145, -0.991270483, 0.979673445, -0.182068557, 0.0842089504) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.97712409, 0.411010504, 0.0787188113, -0.0708820522, 0.993879676, 0.0847292989, -0.041651886, 0.0819197446, -0.995768249, -0.996614754, -0.0741112381, 0.0355903208) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.760086298, -1.97730565, 0.0855870396, 0.956526935, -0.291499853, 0.00918129459, 0.290045112, 0.954102397, 0.0745833963, -0.0305009373, -0.0686780214, 0.997172654) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.714580953, -1.99994349, -0.011869166, 0.952661812, 0.30331111, -0.020931758, -0.303521037, 0.952794313, -0.00762972888, 0.0176294781, 0.0136217801, 0.999751925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, -2.53131008, 8.14245892, 1, 0, -0, 0, 0.0478500314, -0.998854578, 0, 0.998854578, 0.0478500351) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136007472", Character, 1, 0.7)

Effects.Block.Create(BrickColor.new("Really red"), Torso.CFrame, 60, 60, 60, -.13, -.13, -.13, 0.008)
for i = 0, 10, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0113739315, -2.26505518, -0.0380998179, 0.999907017, 0.00404682197, 0.0130240917, 0.0130700003, -0.0115330061, -0.999848127, -0.0038960001, 0.999925375, -0.011584824) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.0988635495, 1.45892119, -0.134056658, -0.243073568, 0.0172691811, 0.969854176, -0.0433204286, 0.998650789, -0.0286392868, -0.969040155, -0.0489759482, -0.241997465) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.88350761, 0.393193901, 0.184678555, -0.173339143, -0.979623377, -0.10144832, 0.100963607, 0.0847895145, -0.991270483, 0.979673445, -0.182068557, 0.0842089504) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.97712409, 0.411010504, 0.0787188113, -0.0708820522, 0.993879676, 0.0847292989, -0.041651886, 0.0819197446, -0.995768249, -0.996614754, -0.0741112381, 0.0355903208) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.760086298, -1.97730565, 0.0855870396, 0.956526935, -0.291499853, 0.00918129459, 0.290045112, 0.954102397, 0.0745833963, -0.0305009373, -0.0686780214, 0.997172654) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.714580953, -1.99994349, -0.011869166, 0.952661812, 0.30331111, -0.020931758, -0.303521037, 0.952794313, -0.00762972888, 0.0176294781, 0.0136217801, 0.999751925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, -2.53131008, 8.14245892, 1, 0, -0, 0, 0.0478500314, -0.998854578, 0, 0.998854578, 0.0478500351) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end

CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=132164034", Character, 1.2, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=197161452", Character, 1.2, 1)
Effects.Cylinder.Create(BrickColor.new("Really red"), RootPart.CFrame, 3, 1, 3, 4, 999, 4, 0.01)
Effects.Cylinder.Create(BrickColor.new("Really red"), RootPart.CFrame, 3, 1, 3, 5, 999, 5, 0.01)
sick.Volume = 1
sick.Pitch = 1
sick.PlaybackSpeed = 1
mode = true
for _,v in pairs(Models:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
end
for _,v in pairs(RuinedHand1:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
end
for _,v in pairs(RuinedHand2:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
end
for _,v in pairs(RuinedHand3:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
end
Model:Remove()
wait(0.0000001)
Hitbox1.Transparency = 1
Hitbox2.Transparency = 1
Hitbox3.Transparency = 1
for i = 0, 8, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-9.53674316e-007, 0.790859044, 0.0725279003, 1, 0, -0, 0, 0.989426374, -0.145036027, 0, 0.145036042, 0.989426374) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.30101156, 0.196671277, 1, 0, -0, 0, 0.915346265, -0.402667701, -0, 0.402667701, 0.915346265) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.67171931, 0.287356615, 0.417912006, 0.705255628, -0.708953083, -2.5283623e-006, 0.414769202, 0.412603229, 0.811002612, -0.574961662, -0.571965158, 0.585042715) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.68455255, 0.143952221, 0.542633057, 0.530752957, 0.679351628, 0.506737292, -0.84752661, 0.425436944, 0.317335904, -2.11596489e-006, -0.597900331, 0.801570415) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.574909687, -1.83144093, 0.631305099, 0.992854238, -0.11933364, -1.07745086e-006, 0.0965526775, 0.803311586, 0.587680221, -0.0701291487, -0.583480835, 0.809093297) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.643773019, -1.80755758, 0.56899035, 0.988081634, 0.153931156, -1.86338343e-006, -0.129901588, 0.833842635, 0.536499918, 0.0825856179, -0.530105472, 0.843900442) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-5.57939672, 1.8176198, 2.28067017, 0.882535875, 0.00164885551, -0.470242292, -0.343319982, 0.685609102, -0.641927958, 0.321343958, 0.727967978, 0.605640709) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter2.C0 = clerp(moter2.C0, CFrame.new(5.75608063, 1.38062644, 2.66038799, 0.848572135, -0.0018521517, 0.529076517, 0.388229072, 0.681560934, -0.620284617, -0.359449029, 0.731759071, 0.579072654) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.07756042, 6.36681652, 1, 0, -0, 0, 0.778400719, -0.627767742, 0, 0.627767742, 0.778400719) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.184288353, -0.970438838, -0.480006367, 0.604430258, 0.431570888, -0.6696347, 0.526011169, 0.415081888, 0.742306769, 0.598311245, -0.80090791, 0.0238769576) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.18280071, 1.50643575, -0.0727445036, 0.854768455, -0.135565102, 0.50099206, 0.108584642, 0.99063319, 0.0827968568, -0.507523656, -0.0163721014, 0.861482382) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.7380147, 0.306035697, 0.180198133, 0.621258974, -0.745725751, 0.24068743, 0.329211831, 0.527120829, 0.783430338, -0.711095631, -0.407476008, 0.572980344) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.63127697, 0.216810882, -0.508374929, 0.618531942, 0.726723611, 0.298816204, 0.0639827549, 0.332445085, -0.940949738, -0.783150494, 0.601126611, 0.159130111) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.622849584, -1.62418222, -0.845270991, 0.849319339, 0.18659319, 0.493801296, 0.301406235, 0.596552849, -0.743827224, -0.433371633, 0.780581653, 0.450423568) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.484097034, -1.86309493, -0.194815755, 0.752010763, 0.0599912405, 0.656415343, 0.126171857, 0.964334428, -0.232679248, -0.646962643, 0.257798433, 0.71762073) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.35253143, 2.18300819, 0.912846625, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 70),0 - 0.3 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
end
rest = 0
attack = false
Humanoid.JumpPower = 50
Humanoid.WalkSpeed = 16
Humanoid.MaxHealth = 500
wait(0.0001)
Humanoid.Health = 500
revive = true
	real1.Transparency = 1
	real2.Transparency = 1

end
ukantkilmenaocuzialwaysrevive = function()-- rude
attack = true

wait(.1)

Humanoid.JumpPower = 0
Humanoid.WalkSpeed = 0
Humanoid.MaxHealth = math.huge
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=209527203", RootPart, 2.2, 0.9)	
coroutine.wrap(function()
while wait() and sick and sick.Volume >= 0.02 do
	sick.Volume = sick.Volume - 0.02
end
wait(0.1)
sick.Pitch = 0
sick.PlaybackSpeed = 0
end)()
for i = 0, 2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0113718649, -0.26686281, 0.323312402, 0.999907017, 0.00404607877, 0.0130218547, 0.00419700006, 0.817286015, -0.576216936, -0.0129739996, 0.576218009, 0.817193031) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.216519505, 1.45546079, -0.163409114, 0.544463634, 0.20175378, 0.814158976, -0.191566974, 0.974897623, -0.113476649, -0.816615939, -0.0941820741, 0.56944555) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(2.00065351, 0.394954354, -0.444823503, 0.687914014, -0.725662887, -0.0137004554, 0.286868006, 0.289187819, -0.913278222, 0.666694164, 0.624326646, 0.407105803) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-2.0522964, 0.40963921, -0.211461544, 0.374745607, 0.927127719, -7.64863216e-007, -0.52711612, 0.213060006, -0.822650671, -0.762702048, 0.308285147, 0.568547249) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.745027363, -1.85072303, -0.558617473, 0.949456334, -0.274882793, 0.15156579, 0.297323883, 0.632709622, -0.715036452, 0.100654051, 0.723959982, 0.682459295) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.751481593, -1.8061769, -0.406617165, 0.917579293, 0.392233253, 0.0648172423, -0.288188875, 0.768569469, -0.571181297, -0.273852885, 0.5054245, 0.818260729) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
Torso.Velocity = RootPart.CFrame.lookVector * -35
motr.C0 = clerp(motr.C0, CFrame.new(0.196983516, 2.30555201, 6.29692078, 0.96731025, -0.000887790986, 0.253594518, 0.11342603, 0.895907998, -0.429515451, -0.226816058, 0.444238931, 0.86672157) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
for i = 0, 20, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0113739315, -2.26505518, -0.0380998179, 0.999907017, 0.00404682197, 0.0130240917, 0.0130700003, -0.0115330061, -0.999848127, -0.0038960001, 0.999925375, -0.011584824) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.0988635495, 1.45892119, -0.134056658, -0.243073568, 0.0172691811, 0.969854176, -0.0433204286, 0.998650789, -0.0286392868, -0.969040155, -0.0489759482, -0.241997465) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.88350761, 0.393193901, 0.184678555, -0.173339143, -0.979623377, -0.10144832, 0.100963607, 0.0847895145, -0.991270483, 0.979673445, -0.182068557, 0.0842089504) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.97712409, 0.411010504, 0.0787188113, -0.0708820522, 0.993879676, 0.0847292989, -0.041651886, 0.0819197446, -0.995768249, -0.996614754, -0.0741112381, 0.0355903208) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.760086298, -1.97730565, 0.0855870396, 0.956526935, -0.291499853, 0.00918129459, 0.290045112, 0.954102397, 0.0745833963, -0.0305009373, -0.0686780214, 0.997172654) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.714580953, -1.99994349, -0.011869166, 0.952661812, 0.30331111, -0.020931758, -0.303521037, 0.952794313, -0.00762972888, 0.0176294781, 0.0136217801, 0.999751925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, -2.53131008, 8.14245892, 1, 0, -0, 0, 0.0478500314, -0.998854578, 0, 0.998854578, 0.0478500351) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136007472", Character, 1, 0.7)

Effects.Block.Create(BrickColor.new("Really red"), Torso.CFrame, 60, 60, 60, -.13, -.13, -.13, 0.008)
for i = 0, 10, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0113739315, -2.26505518, -0.0380998179, 0.999907017, 0.00404682197, 0.0130240917, 0.0130700003, -0.0115330061, -0.999848127, -0.0038960001, 0.999925375, -0.011584824) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.0988635495, 1.45892119, -0.134056658, -0.243073568, 0.0172691811, 0.969854176, -0.0433204286, 0.998650789, -0.0286392868, -0.969040155, -0.0489759482, -0.241997465) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.88350761, 0.393193901, 0.184678555, -0.173339143, -0.979623377, -0.10144832, 0.100963607, 0.0847895145, -0.991270483, 0.979673445, -0.182068557, 0.0842089504) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.97712409, 0.411010504, 0.0787188113, -0.0708820522, 0.993879676, 0.0847292989, -0.041651886, 0.0819197446, -0.995768249, -0.996614754, -0.0741112381, 0.0355903208) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.760086298, -1.97730565, 0.0855870396, 0.956526935, -0.291499853, 0.00918129459, 0.290045112, 0.954102397, 0.0745833963, -0.0305009373, -0.0686780214, 0.997172654) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.714580953, -1.99994349, -0.011869166, 0.952661812, 0.30331111, -0.020931758, -0.303521037, 0.952794313, -0.00762972888, 0.0176294781, 0.0136217801, 0.999751925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, -2.53131008, 8.14245892, 1, 0, -0, 0, 0.0478500314, -0.998854578, 0, 0.998854578, 0.0478500351) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=132164034", Character, 1.2, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=197161452", Character, 1.2, 1)
Effects.Cylinder.Create(BrickColor.new("Really red"), RootPart.CFrame, 3, 1, 3, 4, 999, 4, 0.01)
Effects.Cylinder.Create(BrickColor.new("Really red"), RootPart.CFrame, 3, 1, 3, 5, 999, 5, 0.01)
sick.Volume = 1
sick.Pitch = 1
sick.PlaybackSpeed = 1

for i = 0, 8, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 1.19713736, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.31050682, 0.298446625, 1, 0, -0, 0, 0.844238997, -0.535966992, 0, 0.535966992, 0.844238997) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.51145935, -0.00935543329, 0.577541411, 0.632511258, -0.611183941, -0.47579813, 0.774551272, 0.499102801, 0.388544559, 0, -0.614288867, 0.789081275) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.84017658, 0.273199409, 0.448734552, 0.599824131, 0.704425216, 0.379468322, -0.785319149, 0.427466959, 0.447823524, 0.153248027, -0.566619098, 0.809603512) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.669435382, -1.6378901, 0.569406748, 0.973072112, -0.23050113, 6.48898748e-008, 0.192336023, 0.811956167, 0.551120698, -0.127034009, -0.536280096, 0.834425628) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.798247337, -1.64760017, 0.468695372, 0.967132747, 0.254272074, 3.91400157e-008, -0.221843943, 0.843791187, 0.488673449, 0.12425597, -0.472612113, 0.872466743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, 4.31054163, 6.91670084, 1, 0, -0, 0, 0.567099988, -0.823648989, 0, 0.823648989, 0.567099988) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
attack = false
rest = 0
Humanoid.JumpPower = 50
Humanoid.WalkSpeed = 10
Humanoid.MaxHealth = 400
trans = true
wait(0.1)
Humanoid.Health = 400

end
intro = function()
	attack = true
	wait(.1)
	Humanoid.JumpPower = 0
	Humanoid.WalkSpeed = 0
	Humanoid.MaxHealth = math.huge
for _,v in pairs(Model:children()) do
if v:IsA("Part") then
v.Transparency = 1
end
end
for _,v in pairs(Character:children()) do
if v:IsA("Accessory") then
v.Handle.Transparency = 1
end
end
Head.Transparency = 1
Head.face.Transparency = 1
Torso.Transparency = 1
RightArm.Transparency = 1
LeftArm.Transparency = 1
RightLeg.Transparency = 1
LeftLeg.Transparency = 1
wait(6)

CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136007472", Character, 1, 0.7)
Effects.Block.Create(BrickColor.new("Really red"), Torso.CFrame, 60, 60, 60, -.13, -.13, -.13, 0.008)

wait(4)
for _,v in pairs(Model:children()) do
if v:IsA("Part") then
v.Transparency = 0
end
end
for _,v in pairs(Character:children()) do
if v:IsA("Accessory") then
v.Handle.Transparency = 0
end
end
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=132164034", Character, 1.2, 1)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=197161452", Character, 1.2, 1)
Effects.Sphere.Create(BrickColor.new("Really red"), RootPart.CFrame, 3, 3, 3, 4, 4, 4, 0.01)
Effects.Sphere.Create(BrickColor.new("Really red"), RootPart.CFrame, 3, 3, 3, 5, 5, 5, 0.01)
Head.Transparency = 0
Torso.Transparency = 0
RightArm.Transparency = 0
LeftArm.Transparency = 0
Armor()
--RightLeg.Transparency = 0
--LeftLeg.Transparency = 0
Head.face.Transparency = 0
for i = 0, 8, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 1.19713736, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.31050682, 0.298446625, 1, 0, -0, 0, 0.844238997, -0.535966992, 0, 0.535966992, 0.844238997) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.51145935, -0.00935543329, 0.577541411, 0.632511258, -0.611183941, -0.47579813, 0.774551272, 0.499102801, 0.388544559, 0, -0.614288867, 0.789081275) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.84017658, 0.273199409, 0.448734552, 0.599824131, 0.704425216, 0.379468322, -0.785319149, 0.427466959, 0.447823524, 0.153248027, -0.566619098, 0.809603512) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.669435382, -1.6378901, 0.569406748, 0.973072112, -0.23050113, 6.48898748e-008, 0.192336023, 0.811956167, 0.551120698, -0.127034009, -0.536280096, 0.834425628) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.798247337, -1.64760017, 0.468695372, 0.967132747, 0.254272074, 3.91400157e-008, -0.221843943, 0.843791187, 0.488673449, 0.12425597, -0.472612113, 0.872466743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.16015625, 4.31054163, 6.91670084, 1, 0, -0, 0, 0.567099988, -0.823648989, 0, 0.823648989, 0.567099988) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
end
attack = false
    Humanoid.JumpPower = 50
	Humanoid.WalkSpeed = 10
	Humanoid.MaxHealth = 400
	rest = 0
	real1.Transparency = 1
	real2.Transparency = 1
	wait(0.001)
	Humanoid.Health = 400
end
transform = function()
	for i = 0, 10, 0.1 do
        swait()
        PlayAnimationFromTable({
         CFrame.new(-0, -0.360002249, -1.93715096e-007, 1, 0, 0, 0, 0.469484925, 0.882945418, 0, -0.882945418, 0.469484925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.66057301, 0.0344081521, 1, 0, 0, 0, 0.719355583, -0.694659233, 0, 0.694659233, 0.719355583) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.04001498, 0.727374077, -0.250856757, 0.0328158364, -0.999390066, 0.0119439159, 0.742883921, 0.0163951702, -0.669226229, 0.668622077, 0.030834157, 0.742968798) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.29002714, 0.277995408, -1.22377253, 0.906314969, 0, 0.422623098, 0.373153657, 0.469484925, -0.800222218, -0.198415458, 0.882945418, 0.425498873) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.769996643, -0.7699579, -1.44802988, 1, 0, -0, 0, 0.309034824, -0.951056361, 0, 0.951056242, 0.309034675) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.500002682, -1.48724723, -0.794807374, 0.950272024, 0.179153308, 0.254739046, -0.00482566655, 0.826344252, -0.563154161, -0.311393201, 0.53391993, 0.786113918) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
        }, .3, false)
    motr.C0 = clerp(motr.C0, CFrame.new(-3.39984894, 1.29300308, -2.88833761, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	    end
	real1.Transparency = 1
	real2.Transparency = 1
end
Mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
		else	if attack == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
		else	if attack == false and attacktype == 3 then
		attacktype = 4
		attackthree()
	else	if attack == false and attacktype == 4 then
		attacktype = 1
		attackfour()
		end
		end
		end
	end
end)
warn("If you remove credits, i will kill you. ~by grgrgry21 and Dooven, Credit to Curseei")
a = function()
	   looprevive = true
	   print'looprevived'
	   Effects.Sphere.Create(BrickColor.new("Really red"), RootPart.CFrame, 8, 8, 8, 1, 1, 1, 0.06)
end
b = function()
		looprevive = false
	   print'unlooprevived'
	   Effects.Sphere.Create(BrickColor.new("Really black"), RootPart.CFrame, 8, 8, 8, 1, 1, 1, 0.06)
end
Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'x' then
       aa2()
	   else	if attack == false and k == 'c' then
	   aa3()
	   else	if attack == false and k == 'v' then
	   Watergunshoot()
	   else	if attack == false and k == 'e' then
	   transform()
	   else	if attack == false and looprevive == false and k == 'n' then
       a()
	   else	if attack == false and looprevive == true and k == 'n' then
       b()
	   else	if attack == false and looprevive == true and k == 'q' then
       rest = 101
	    end
	    end
	    end
	    end
		end
		end
	end
end)

Mouse.KeyDown:connect(function(k)
k=k:lower()
if mode == false and attack == false and k == 'z' then
attack = true
takdis()
attack = false
elseif mode == true and attack == false and k == 'z' then
attack = true
takdis2()
attack = false
end
end)

coroutine.wrap(function()
while true and wait(0.1) do
if Humanoid.Health <=50 then
if attack == false then
	if revive == false and looprevive == false then
Humanoid.Health = math.huge
Ohgreatfuckeryoujustfuckingcommitedsuicideohwaitdidumeanallahuakbarohyesumean911oyesilykit()
end
end
end
end
end)()
coroutine.wrap(function()
while true and wait(0.1) do
if Humanoid.Health <=50 then
if attack == false then
if revive == false and  looprevive == true then		
Humanoid.Health = math.huge
ukantkilmenaocuzialwaysrevive()
end
end
end
end
end)()
coroutine.wrap(function()
intro() -- really
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
		while 1 do
		swait()
		if rest <= 100 then
			rest = rest + 0.1
		else
			rest = rest + 0
			end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if  attack == false and revive == false then
				rest = 0
motr.C0 = clerp(motr.C0, CFrame.new(-0.377030611, 2.23529887, 3.38560438, 0.999624133, 0.0181941353, -0.0205119029, -0.017229002, 0.998779655, 0.0462857895, 0.0213290025, -0.0459149815, 0.998717666) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	

				PlayAnimationFromTable({
         CFrame.new(-8.60420997e-008, 0.0903999731, 0.0717497543, 0.999999344, -7.68441396e-007, 9.95312632e-008, -9.23871994e-007, 0.866027236, -0.500000715, -3.7252903e-007, 0.499999225, 0.866028309) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.90734863e-006, 1.61952782, -0.25634706, 1, 0, 0, 0, 0.866025984, 0.499998987, -0, -0.499998987, 0.866025984) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.79112387, 0.991010547, -0.34551996, 0.857188284, -0.515007496, -4.09685754e-006, -0.466755271, -0.776878357, 0.422614634, -0.217652529, -0.362256378, -0.90631187) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.73517203, 1.09069431, 0.126366287, 0.908706844, 0.41093263, -0.0733932331, 0.399825603, -0.806285143, 0.435939968, 0.119966239, -0.425485879, -0.896978498) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.500001311, -1.94823658, 0.19318518, 0.939692855, -1.10619897e-006, 0.342019498, -0.0885189474, 0.965926766, 0.243207395, -0.330366045, -0.258815497, 0.907674372) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499992847, -1.10274684, -0.291438699, 0.984807611, 1.5922127e-006, -0.173649013, 0.133020341, 0.642797828, 0.754398108, 0.111622408, -0.766035795, 0.633032024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
				else if  attack == false and revive == true then
		rest = 0		
moter1.Part0 = RootPart
moter2.Part0 = RootPart
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.35253143, 2.18300819, 0.912846625, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 70),0 - 0.3 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
				PlayAnimationFromTable({
         CFrame.new(-8.60420997e-008, 0.0903999731, 0.0717497543, 0.999999344, -7.68441396e-007, 9.95312632e-008, -9.23871994e-007, 0.866027236, -0.500000715, -3.7252903e-007, 0.499999225, 0.866028309) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.90734863e-006, 1.61952782, -0.25634706, 1, 0, 0, 0, 0.866025984, 0.499998987, -0, -0.499998987, 0.866025984) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.79112387, 0.991010547, -0.34551996, 0.857188284, -0.515007496, -4.09685754e-006, -0.466755271, -0.776878357, 0.422614634, -0.217652529, -0.362256378, -0.90631187) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.73517203, 1.09069431, 0.126366287, 0.908706844, 0.41093263, -0.0733932331, 0.399825603, -0.806285143, 0.435939968, 0.119966239, -0.425485879, -0.896978498) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.500001311, -1.94823658, 0.19318518, 0.939692855, -1.10619897e-006, 0.342019498, -0.0885189474, 0.965926766, 0.243207395, -0.330366045, -0.258815497, 0.907674372) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499992847, -1.10274684, -0.291438699, 0.984807611, 1.5922127e-006, -0.173649013, 0.133020341, 0.642797828, 0.754398108, 0.111622408, -0.766035795, 0.633032024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
end
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if  attack == false and revive == false then
				rest = 0
motr.C0 = clerp(motr.C0, CFrame.new(-0.377030611, 2.23529887, 3.38560438, 0.999624133, 0.0181941353, -0.0205119029, -0.017229002, 0.998779655, 0.0462857895, 0.0213290025, -0.0459149815, 0.998717666) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	

		PlayAnimationFromTable({
         CFrame.new(-8.60420997e-008, 0.0903999731, 0.0717497543, 0.999999344, -7.68441396e-007, 9.95312632e-008, -9.23871994e-007, 0.866027236, -0.500000715, -3.7252903e-007, 0.499999225, 0.866028309) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.90734863e-006, 1.61952782, -0.25634706, 1, 0, 0, 0, 0.866025984, 0.499998987, -0, -0.499998987, 0.866025984) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.79112387, 0.991010547, -0.34551996, 0.857188284, -0.515007496, -4.09685754e-006, -0.466755271, -0.776878357, 0.422614634, -0.217652529, -0.362256378, -0.90631187) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.73517203, 1.09069431, 0.126366287, 0.908706844, 0.41093263, -0.0733932331, 0.399825603, -0.806285143, 0.435939968, 0.119966239, -0.425485879, -0.896978498) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.500001311, -1.94823658, 0.19318518, 0.939692855, -1.10619897e-006, 0.342019498, -0.0885189474, 0.965926766, 0.243207395, -0.330366045, -0.258815497, 0.907674372) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499992847, -1.10274684, -0.291438699, 0.984807611, 1.5922127e-006, -0.173649013, 0.133020341, 0.642797828, 0.754398108, 0.111622408, -0.766035795, 0.633032024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
else if  attack == false and revive == true then
			rest = 0	
moter1.Part0 = RootPart
moter2.Part0 = RootPart
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.35253143, 2.18300819, 0.912846625, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 70),0 - 0.3 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
		PlayAnimationFromTable({
         CFrame.new(-8.60420997e-008, 0.0903999731, 0.0717497543, 0.999999344, -7.68441396e-007, 9.95312632e-008, -9.23871994e-007, 0.866027236, -0.500000715, -3.7252903e-007, 0.499999225, 0.866028309) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.90734863e-006, 1.61952782, -0.25634706, 1, 0, 0, 0, 0.866025984, 0.499998987, -0, -0.499998987, 0.866025984) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.79112387, 0.991010547, -0.34551996, 0.857188284, -0.515007496, -4.09685754e-006, -0.466755271, -0.776878357, 0.422614634, -0.217652529, -0.362256378, -0.90631187) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.73517203, 1.09069431, 0.126366287, 0.908706844, 0.41093263, -0.0733932331, 0.399825603, -0.806285143, 0.435939968, 0.119966239, -0.425485879, -0.896978498) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.500001311, -1.94823658, 0.19318518, 0.939692855, -1.10619897e-006, 0.342019498, -0.0885189474, 0.965926766, 0.243207395, -0.330366045, -0.258815497, 0.907674372) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.499992847, -1.10274684, -0.291438699, 0.984807611, 1.5922127e-006, -0.173649013, 0.133020341, 0.642797828, 0.754398108, 0.111622408, -0.766035795, 0.633032024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
end
	
    end
		end
		  if Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				-->|
				-->>|
				-->|
				if revive == false and rest <= 100 then
motr.C0 = clerp(motr.C0, CFrame.new(-0.377030611, 2.23529887, 3.38560438, 0.999624133, 0.0181941353, -0.0205119029, -0.017229002, 0.998779655, 0.0462857895, 0.0213290025, -0.0459149815, 0.998717666) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
				
--motr.C0 = clerp(motr.C0, CFrame.new(0.111216806, 2.23529911, 3.38560462, 0.999624133, 0.0181941353, -0.0205119029, -0.017229002, 0.998779655, 0.0462857895, 0.0213290025, -0.0459149815, 0.998717666) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30),0) * CFrame.Angles(0, 0, 0), 0.3)
PlayAnimationFromTable({
CFrame.new(0.0392251611, -0.399999946, -0.0661237091, 0.76604414, 0, 0.642788053, 0, 1, 0, -0.642788053, 0, 0.76604414) * CFrame.new(0, 0- 0.1 * math.cos((sine) / 6), 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(3.20374966e-007, 1.49998975, -3.20374966e-007, 0.76604712, 0.0560228042, -0.640339732, 2.79222441e-008, 0.996194661, 0.0871557072, 0.642792821, -0.0667651594, 0.763125181) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.579222202, 0.891285896, -1.05190825, 0.561522603, 0.723551512, -0.401454747, 0.120765731, -0.551630616, -0.82529974, -0.818601489, 0.414942414, -0.397133231) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.61124444, 0.263379157, 0.32901755, 0.847116113, 0.408216923, 0.340225905, -0.468929023, 0.875426173, 0.117197424, -0.250000656, -0.258821666, 0.933012128) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.771941304, -1.88623738, -0.0557135344, 0.816501081, -0.0616285168, -0.574043393, 0.0858317688, 0.996194422, 0.0151345003, 0.57092613, -0.0616286062, 0.818683982) * CFrame.new(0, 0+ 0.1 * math.cos((sine) / 6), 0) * CFrame.Angles(0, 0, 0),  
CFrame.new(-0.699491143, -1.88838339, 0.0179257095, 0.903779387, 0.0983075202, -0.416555703, -0.0818995386, 0.995001972, 0.0571281463, 0.420089871, -0.0175155103, 0.907313585) * CFrame.new(0, 0+ 0.1 * math.cos((sine) / 6), 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)

else if revive == false and rest >= 100 then
PlayAnimationFromTable({
CFrame.new(0, 1.64290798, 0.790938377, 1, 0, -0, 0, 0.946682513, -0.322168171, 0, 0.322168171, 0.946682513) * CFrame.new(0, 0- 0.1 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.47566569, -0.135178268, 1, 0, -0, 0, 0.981204629, 0.192970574, -0, -0.192970574, 0.981204629) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.66249502, 0.235957205, 0.327167809, 0.969476461, -0.231295139, -0.0813506246, 0.245135278, 0.921011984, 0.30273062, 0.00490477681, -0.313432157, 0.949598014) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-1.53803706, 0.217998713, 0.317616045, 0.97153455, 0.185463041, 0.147390753, -0.221911296, 0.930258751, 0.292188585, -0.0829213411, -0.316578954, 0.944934905) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.635925353, -1.65514231, -0.614153743, 0.982298017, -0.187325418, 1.35933419e-006, 0.0592784919, 0.310837924, -0.94861263, 0.177698851, 0.931820273, 0.316439837) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.716957748, -1.68315148, -0.704560757, 0.982148886, 0.188105345, -3.90193151e-007, -0.0583207756, 0.30450663, -0.950723171, -0.178835973, 0.933751762, 0.310041249) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(0.160171509, -0.227467522, 0.141577125, 1, 0, -0, 0, 0.0394390002, -0.999221981, 0, 0.999221981, 0.0394390002) * CFrame.new(0, 0, 0+ 0.1 * math.cos((sine) / 40)) * CFrame.Angles(0, 0, 0), 0.3)

else if revive == true and rest <= 100 then

PlayAnimationFromTable({
CFrame.new(0, -0.00887098443, -0.0937612727, 1, 0, 0, 0, 0.982259452, 0.18752709, 0, -0.18752709, 0.982259452) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.53825808, -0.0745411664, 1, 0, 0, 0, 0.982847154, 0.184422195, 0, -0.184422195, 0.982847154) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0+ 0.02 * math.cos((sine) / 45)), 
CFrame.new(1.58500147, 0.0840085745, -4.23921301e-006, 0.988930881, -0.148377314, 2.86626602e-007, 0.148377329, 0.988930821, -3.42726707e-007, -2.32830644e-007, 3.7252903e-007, 1) * CFrame.new(0, 0+ 0.03 * math.cos((sine) / 35), 0) * CFrame.Angles(0+ 0.04 * math.cos((sine) / 35), 0, 0), 
CFrame.new(-1.59969079, 0.0581852607, 0.00147094927, 0.98752898, 0.15742676, 0.00183918548, -0.157437503, 0.987461925, 0.01151824, -2.84425914e-006, -0.011664167, 0.999932051) * CFrame.new(0, 0+ 0.03 * math.cos((sine) / 35), 0) * CFrame.Angles(0+ 0.04 * math.cos((sine) / 35), 0, 0),  
CFrame.new(0.609301865, -2.01351237, -0.193993554, 0.993222535, -0.0876774415, -0.0762994736, 0.0721344054, 0.979739249, -0.186836153, 0.0911348984, 0.180066094, 0.979423642) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.52007699, -1.94294918, -0.261722565, 0.997069001, 0.0162452944, 0.0747634321, 1.35414302e-006, 0.977193356, -0.212351725, -0.0765080377, 0.211729422, 0.974329174) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.35253143, 2.18300819, 0.912846625, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 70),0 - 0.3 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter1.Part0 = RootPart
moter2.Part0 = RootPart
				else if revive == true and rest >= 100 then

PlayAnimationFromTable({
CFrame.new(0, 3.87472081, 0, 0.976388752, 0, -0.216020957, 0, 1, 0, 0.216020957, 0, 0.976388752) * CFrame.new(0, 0- 0.2 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.49997687, 0, 0.954754591, 0, 0.297394872, 0, 1, 0, -0.297394872, 0, 0.954754591) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.390021682, 0.222514346, -0.894349933, 0.35626933, 0.923096657, 0.144792497, -0.216943949, 0.232444882, -0.948105872, -0.908849537, 0.306369215, 0.283073217) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.324467421, 0.350337386, -0.446477503, 0.249009907, -0.949674129, 0.190035224, 0.326498896, -0.102416016, -0.939632654, 0.911807358, 0.296024144, 0.284564912) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0.54084909, -1.88140583, 0.118697941, 0.998933613, -0.0461705141, 1.83284283e-006, 0.0456019975, 0.986639619, 0.156405926, -0.00722315907, -0.156239033, 0.987693012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(-0.539447427, -1.26912189, -0.196743608, 0.999433637, 0.0336541012, -5.06639481e-007, -0.0324969925, 0.965074658, 0.259951562, 0.00874893367, -0.259804279, 0.96562165) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
}, .3, false)
moter1.Part0 = real1
moter2.Part0 = real2
vr1.C0 = clerp(vr1.C0,CFrame.new(0, 0- 0.25 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0- 5 * math.cos((sine) / 60), 0), 0.3)
vr2.C0 = clerp(vr2.C0,CFrame.new(0, 0- 0.25 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0- 5 * math.cos((sine) / 60), 0), 0.3)
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 0.184350342, 0.149495751, 1, 0, -0, 0, 0.00328599871, -0.999994636, 0, 0.999994636, 0.00328599871) * CFrame.new(0, 0, 0+ 0.2 * math.cos((sine) / 30)) * CFrame.Angles(0, 0, 0), 0.3)
		
					end
end
			end
			end
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false and revive == false then
rest = 0
PlayAnimationFromTable({
CFrame.new(0, -0.0193441566, -0.137761548, 1, 0, 0, 0, 0.961308897, 0.275472969, 0, -0.275472969, 0.961308897) * CFrame.new(0, 0+ .1 * math.cos((sine) / 2), 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.44159341, 0.0451771915, 1, 0, 0, 0, 0.98646307, -0.163984656, 0, 0.163984656, 0.98646307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.63363111, 0.0754526258, -2.72151652e-007, 0.985570133, -0.16926825, 1.56980732e-007, 0.16926825, 0.985570133, 2.38418579e-007, -1.86264515e-007, -1.49011612e-007, 1.00000024) * CFrame.new(0-.2+.5 * math.cos((sine) / 4), 0.2+ .65 * math.cos((sine) / 2), 0+ 1.1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0- 120 * math.cos((sine) / 4)),0, math.rad(0+ 60 * math.cos((sine) / 4))), 
CFrame.new(-1.61827064, 0.111134544, 1.51569429e-006, 0.978242338, 0.207465827, 7.76345075e-007, -0.207465842, 0.978242397, -2.41398811e-006, -1.25542283e-006, 2.20537186e-006, 1.00000012) * CFrame.new(0.2+.5 * math.cos((sine) / 4), 0.2+ .65 * math.cos((sine) / 2), 0- 1.1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0+ 120 * math.cos((sine) / 4)), 0, math.rad(0+ 60 * math.cos((sine) / 4))), 
CFrame.new(0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 + 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 - 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)),
CFrame.new(-0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 - 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 + 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)), 
}, .3, false)
motr.C0 = clerp(motr.C0, CFrame.new(-0.377030611, 2.23529887, 3.38560438, 0.999624133, 0.0181941353, -0.0205119029, -0.017229002, 0.998779655, 0.0462857895, 0.0213290025, -0.0459149815, 0.998717666) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
			else if attack == false and revive == true then
		rest = 0	
moter1.Part0 = RootPart
moter2.Part0 = RootPart
moter1.C0 = clerp(moter1.C0, CFrame.new(-6.35253143, 2.18300819, 0.912846625, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 70),0 - 0.3 * math.cos((sine) / 35), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter2.C0 = clerp(moter2.C0, CFrame.new(6.03458405, 2.18300843, 1.24349523, 1, 0, 0, -0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0+ 0.3 * math.cos((sine) / 80),0 + 0.3 * math.cos((sine) / 40), 0) * CFrame.Angles(0, 0, 0), 0.3)	
moter3.C0 = clerp(moter3.C0, CFrame.new(-0.0398368835, 5.56001043, 2.20168447, 1, 0, 0, 0, 0.999993861, 0.00350399921, 0, -0.00350399944, 0.999993861) * CFrame.new(0- 0.5 * math.cos((sine) / 60),0 + 0.5 * math.cos((sine) / 30), 0) * CFrame.Angles(0, 0, 0), 0.3)	
PlayAnimationFromTable({
CFrame.new(0, -0.0193441566, -0.137761548, 1, 0, 0, 0, 0.961308897, 0.275472969, 0, -0.275472969, 0.961308897) * CFrame.new(0, 0+ .1 * math.cos((sine) / 2), 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.44159341, 0.0451771915, 1, 0, 0, 0, 0.98646307, -0.163984656, 0, 0.163984656, 0.98646307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.63363111, 0.0754526258, -2.72151652e-007, 0.985570133, -0.16926825, 1.56980732e-007, 0.16926825, 0.985570133, 2.38418579e-007, -1.86264515e-007, -1.49011612e-007, 1.00000024) * CFrame.new(0-.2+.5 * math.cos((sine) / 4), 0.2+ .65 * math.cos((sine) / 2), 0+ 1.1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0- 120 * math.cos((sine) / 4)),0, math.rad(0+ 60 * math.cos((sine) / 4))), 
CFrame.new(-1.61827064, 0.111134544, 1.51569429e-006, 0.978242338, 0.207465827, 7.76345075e-007, -0.207465842, 0.978242397, -2.41398811e-006, -1.25542283e-006, 2.20537186e-006, 1.00000012) * CFrame.new(0.2+.5 * math.cos((sine) / 4), 0.2+ .65 * math.cos((sine) / 2), 0- 1.1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0+ 120 * math.cos((sine) / 4)), 0, math.rad(0+ 60 * math.cos((sine) / 4))), 
CFrame.new(0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 + 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 - 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)),
CFrame.new(-0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 - 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 + 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)), 
}, .3, false)
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
							local hit, pos = rayCast(Thing[4], Look, 15, Character)
							local mag = (Thing[4] - pos).magnitude
							Thing[9] = Thing[9] + 1
							Thing[5] = Thing[5] + 0.2
							Thing[6] = Thing[6] + 0.2
							Effects.Cylinder.Create(BrickColor.new("Really red"), CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), Thing[9], mag * 5, Thing[9], -0.06, 0, -0.06, 0.1)
							Thing[4] = Thing[4] + Look * 15
							Thing[3] = Thing[3] - 3
							if hit ~= nil then
								Thing[3] = 0
								ref = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
								ref.Anchored = true
								ref.CFrame = CFrame.new(pos)
								MagnitudeDamage(ref, 10, 10, 15, 0, "Normal", "http://www.roblox.com/asset/?id=300916057", 1)
								Effects.Sphere.Create(BrickColor.new("Really red"), CFrame.new(pos), 5, 5, 5, 4, 4, 4, 0.07)
								Effects.Block.Create(BrickColor.new("Really red"), CFrame.new(pos), 5, 5, 5, 4, 4, 4, 0.08)
								Effects.Block.Create(BrickColor.new("Really red"), CFrame.new(pos), 5, 5, 5, 5, 5, 5, 0.08)
								CFuncs.Sound.Create("rbxassetid://300916057", ref, 1, 2)
								game:GetService("Debris"):AddItem(ref, 1)
							end
							if Thing[3] <= 0 then
								table.remove(Effects, e)
							end
						end
					--[[if Thing[2] == "Shoot" then
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
					end]]
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

end







