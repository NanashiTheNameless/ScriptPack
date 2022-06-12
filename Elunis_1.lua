--[[Qarmory, if you stole this then youre a bigger duche than i am lol!]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local effects = Instance.new('Model', Character)
effects.Name = "Effects"
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
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
local Anim = 'Idle'
local idle = 0
local attacktype = 1
local vt = Vector3.new
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it =Instance.new

local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

local NeckCF = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

RSH, LSH = nil, nil 

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

function clerp(a, b, t)
	return a:lerp(b, t)
end


local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
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
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

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
	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

Handle=CreatePart(m,Enum.Material.SmoothPlastic,0,1,"Sand blue","Handle",Vector3.new(0.399999976, 1.98000026, 0.300000012))
HandleWeld=CreateWeld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.171703339, -0.00845432281, 1.05079269, 0.999912977, 0.00131422468, -0.0131317414, -0.0131096533, -0.015600008, -0.999792337, -0.00151880702, 0.999877512, -0.0155814216))
CreateMesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
FakeHandle=CreatePart(m,Enum.Material.SmoothPlastic,0,1,"Sand blue","FakeHandle",Vector3.new(0.399999976, 1.98000026, 0.300000012))
FakeHandleWeld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1.00000012, 0, 0, 0, 0.99999994, 2.87400326e-010, 0, 2.87400326e-010, 1.00000012))
CreateMesh("CylinderMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Pastel Blue","Part",Vector3.new(0.219999999, 0.539999902, 0.219999999))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00999641418, 2.71751785, -0.00159263611, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.449999869, 0.710000277))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 1.87192869, -0.623038769, -1.00000012, 1.13621354e-007, -1.12690032e-007, -1.5925616e-007, -0.76604408, 0.642788231, -1.3038516e-008, 0.642788053, 0.766044021))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.230000168, 0.470000088))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.678504348, -3.19653034, -1.00000012, -3.81842256e-008, 1.5553087e-007, 1.55414455e-007, 1.18868593e-006, 1, -3.7252903e-008, 1, -1.188022e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.220000163, 0.360000074))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00539636612, -2.75015545, 1.30182314, 0.999971151, 0.000330297276, -0.00759611651, 0.00462766644, 0.766258419, 0.642515957, 0.00603280962, -0.642532408, 0.766234696))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.239999875, 0.220000207))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00539493561, 2.73895788, -1.0421896, 0.999971211, 0.000330418348, -0.00759610767, -0.00462756725, -0.766258478, -0.642515838, -0.00603288133, 0.642532289, -0.766234815))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 3.67000008, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.29153442e-006, -1.6777854, -0.0237259865, 1.00000012, 0, 0, 0, 0.99619472, 0.0871556178, 5.82076609e-011, -0.0871556103, 0.996194839))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.259999871, 0.690000236))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-007, -4.44096231, -0.484997451, -1.00000012, 1.14552677e-007, -1.21537596e-007, 1.41561031e-007, 0.965925634, -0.258819908, 8.80099833e-008, -0.258819878, -0.965925694))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.540000021, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, -3.15672684, -0.282786548, 1.00000012, 0, 0, 0, 0.996194661, -0.0871556774, 2.32830644e-010, 0.0871556625, 0.996194839))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.27000016, 0.550000191))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 4.42526388, -1.03425908, 1.00000012, 0, 0, 0, -0.965925813, 0.258819133, 0, -0.258819103, -0.965925932))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 0.840000153))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 3.72886276, -1.63047957, 1.00000012, 0, 0, 0, -1.00000012, 6.56293196e-007, 0, -6.56982593e-007, -1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.850000024, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.91184044, 1.72197342, 1.00000012, 0, 0, 0, 0.819152057, 0.573576689, 0, -0.57357657, 0.819151938))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 0.970000029))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.398318052, -2.67175436, 1.00000012, 0, 0, 0, -8.78675564e-007, -1, 0, 1.00000012, -8.77947969e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.239999995, 0.259999931, 0.319999993))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00999879837, -3.93248463, 0.748408318, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.460000157, 1.1500001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 4.28005934, -0.422626019, 1.00000012, 0, 0, 9.31322575e-010, -0.819152296, 0.573576212, 0, -0.573576093, -0.819152355))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.449999869, 0.520000219))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -4.27859831, 1.23466301, 1.00000012, 0, 0, 0, 0.819152117, -0.57357645, 9.31322575e-010, 0.573576391, 0.819152176))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.259999871, 0.78000021))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.43847418, 1.65982461, 1.00000012, 0, 0, 0, 0.965925753, -0.258819282, 0, 0.258819282, 0.965925872))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.440000176, 0.450000167))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, 3.62456226, -1.78776872, 1.00000012, 0, 0, 0, -0.984807849, -0.173647866, 0, 0.173647851, -0.984807968))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.220000163, 0.360000074))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 2.38940191, -2.60514045, -1.00000012, -8.47503543e-008, 3.51574272e-008, 8.94069672e-008, -0.819151878, 0.573576808, -1.95577741e-008, 0.573576689, 0.819151938))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.400000155, 0.420000017))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-006, 1.38498998, -3.13907766, 1.00000012, 0, 0, 0, -0.500000298, -0.866025329, 0, 0.866025209, -0.500000358))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0,0,"Teal","Part",Vector3.new(0.25, 0.25, 0.25))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00999879837, -3.21248627, -1.13159263, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.239999875, 0.340000212))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -2.40059805, 2.92477083, -1.00000012, -8.47503543e-008, 2.95694917e-008, -8.66129994e-008, 0.819152117, -0.573576331, 2.42143869e-008, -0.573576272, -0.819152236))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.540000021, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.84173918, -2.17655039, 1.00000012, 0, 0, 9.31322575e-010, 0.766045034, -0.642787158, 0, 0.64278692, 0.766044974))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.460000157, 1.84000015))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 4.10026407, -1.10925746, 1.00000012, 0, 0, 0, -0.965925813, 0.258819133, 0, -0.258819103, -0.965925932))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.449999869, 0.520000219))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -4.09880209, 2.26629663, 1.00000012, 0, 0, 0, 0.965925753, -0.258819282, 0, 0.258819282, 0.965925872))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 0.710000157))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, 2.63581657, -2.70031881, 1.00000012, 0, 0, 0, -0.819152534, -0.573576093, 4.65661287e-010, 0.573575974, -0.819152415))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.239999995, 0.259999931, 0.319999993))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0099978447, -2.65302324, 0.261572838, 1.00000012, 0, 0, 0, 0.939692616, 0.342020303, 2.32830644e-010, -0.342020243, 0.939692736))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Pastel Blue","Part",Vector3.new(0.439999998, 0.249999925, 0.439999998))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, 2.57250786, -0.00159060955, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.470000029, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, -1.62717199, 3.46052504, 1.00000012, 0, 0, 0, 0.258818895, 0.965926051, 0, -0.965925932, 0.258818895))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.239999995, 0.259999931, 0.319999993))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00999975204, -3.81249046, -0.941592574, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 0.900000095))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 0.0184775591, -2.90349102, 1.00000012, 0, 0, 2.32830644e-010, -0.0871563628, -0.99619472, 0, 0.99619472, -0.0871563926))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.470000029, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, 1.69540644, 2.2838316, 1.00000012, 0, 0, 0, -0.707107127, 0.707106531, 0, -0.707106471, -0.707107246))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.540000021, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.10930538, -3.27099419, 1.00000012, 0, 0, -4.65661287e-010, 0.422618419, -0.906307757, 0, 0.906307638, 0.422618449))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Cyan","Part",Vector3.new(0.219999999, 0.329999864, 2.67000031))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-007, -0.158611894, -1.86818981, -1.00000012, 1.76951289e-008, -1.46217644e-007, -1.46101229e-007, 1.19263859e-006, 1, 1.86264515e-008, 0.99999994, -1.19276592e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 1.07000005))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 1.19499111, -3.09407806, 1.00000012, 0, 0, 0, -0.500000298, -0.866025329, 0, 0.866025209, -0.500000358))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 1.00000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, 2.78988075, -2.44753766, 1.00000012, 0, 0, 0, -0.906308174, -0.422617465, 0, 0.422617376, -0.906308234))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 5.51000023, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, -0.185009003, -8.34465027e-007, 1.00000012, 0, 0, 0, 0.99999994, 2.87400326e-010, 0, 2.87400326e-010, 1.00000012))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.410000175, 0.640000105))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, -1.44318247, -1.80669498, 1.00000012, 0, 0, 0, 0.499999285, -0.866025925, 0, 0.866025805, 0.499999285))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Hitbox=CreatePart(m,Enum.Material.SmoothPlastic,0,1,"Sand blue","Hitbox",Vector3.new(0.399999976, 1.98000026, 4.19000006))
HitboxWeld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0432858467, -3.24210644, 1.43164659, 1.00000012, 0, 0, 0, 0.99999994, 2.87400326e-010, 0, 2.87400326e-010, 1.00000012))
CreateMesh("CylinderMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))

local function getclosest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local blocked=false
                local block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
HitHealth=h.Health
                h.Health=h.Health-Damage
			
		if HitHealth~=h.Health and HitHealth~=0 and h.Health<=0 and h.Parent.Name~="Lost Soul" then
			print("gained spree")
			game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value=game.Players.LocalPlayer.leaderstats.Spree.Value+1
		end
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end

                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
elseif Type=="Snare" then
		Charge=Charge+1
		coroutine.resume(coroutine.create(function(Part,Hum)
		swait(30)
		for i=1,5 do
		swait(5)
		CreateSound("rbxasset://sounds\\unsheath.wav",hit,1,2)
		MoonEffect(BrickColor.new("White"),hit.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.2,2,2,.5,.5,.5,0.07)
		newdam=math.random(1,5)
		if blocked==false then
		Hum:TakeDamage(newdam)
		 ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
		Hum:TakeDamage(newdam/2)
		ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
		end
		end
		end),hit,h)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://234376725"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)

        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = CreatePart(workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
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

function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
--Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,nil,1)
Damagefunc(head, head, mindam,maxdam, knock, Type, RootPart, .1, "Hit2", 1)
end
end
end
end
end



--[[Effect Functions]]--

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt=CreatePart(workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end


function MoonEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://259403370", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end

function HeadEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
end
                                                             --[[ V = The CFraming of the part]]--
--[[EXAMPLE: ExampleWeld.C0 = clerp(ExampleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3) ]]--
                                                                                                  --[[ ^ = The Rotations of the part]]--

                                                                                                  --[[ ^ = The Rotations of the part]]--

local nr=NumberRange.new
local ns=NumberSequence.new
local cs=ColorSequence.new
local nsk=NumberSequenceKeypoint.new
--[[Particles]]--
function particle(parent,col1,col2,lightemis,size,texture,transparency,zoffset,accel,drag,ltp,velinher,emisdir,enabled,lifetime,rate,rotation,rotspeed,speed,velspread)
local fp=it("ParticleEmitter")
fp.Parent=parent
fp.Color=cs(col1,col2)
fp.LightEmission=lightemis
fp.Size=size
fp.Texture=texture
fp.Transparency=transparency
fp.ZOffset=zoffset
fp.Acceleration=accel
fp.Drag=drag
fp.LockedToPart=ltp
fp.VelocityInheritance=velinher
fp.EmissionDirection=emisdir
fp.Enabled=enabled
fp.Lifetime=lifetime
fp.Rate=rate
fp.Rotation=rotation
fp.RotSpeed=rotspeed
fp.Speed=speed
fp.VelocitySpread=velspread
return fp 
end 



sizeseq=ns({nsk(0,4),nsk(.027,8.5),nsk(.184,9),nsk(1,10)})
transseq=ns({nsk(0,.375),nsk(.4,1),nsk(1,1)})
local icicleparti1=particle(Torso,Color3.new(255/255,255/255,255/255),Color3.new(100/255,100/255,255/255),.2,sizeseq,"http://www.roblox.com/asset/?id=329766994",transseq,0,vt(0,-.5,0),0,false,0,"Bottom",false,nr(7,10),15,nr(-360,360),nr(-30,30),nr(3),20)
sizeseq=ns({nsk(0,5),nsk(.025,7.7),nsk(.192,9),nsk(1,10)})
transseq=ns({nsk(0,.8),nsk(.3,1),nsk(1,1)})
local icicleparti2=particle(Torso,Color3.new(255/255,255/255,255/255),Color3.new(100/255,100/255,255/255),.3,sizeseq,"http://www.roblox.com/asset/?id=241594419",transseq,0,vt(0,-.5,0),0,false,0,"Bottom",false,nr(7,10),80,nr(-360,360),nr(-30,30),nr(3),20)
sizeseq=ns({nsk(0,.328),nsk(.075,3.11),nsk(.206,4.97),nsk(1,10)})
transseq=ns({nsk(0,.363),nsk(.107,1),nsk(1,1)})


--[[Attack Function]]--

function TriOrbs()
--for i=1,math.random(1,4) 
local dacf=Torso.CFrame*angles(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*angles(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*angles(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local icepart1=CreatePart(effects,"SmoothPlastic",0,0,BrickColor.new("Toothpaste"),"Ice",vt()) icepart1.Anchored=true
i1msh=CreateMesh("SpecialMesh",icepart1,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart1.CFrame=dacf
local partic1=icicleparti2:Clone() partic1.Parent=icepart1 partic1.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
dacf=dacf*cf(0,math.random(400,800)/10,0)
end
local spread=vt((math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16)*(icepart1.Position-(icepart1.Position+vt(0,-1,0))).magnitude/100
local TheHit=mouse.Hit.p
local MouseLook=cf((icepart1.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(icepart1.Position,MouseLook.lookVector,999,Character)
local target1,distance1=rayCast(icepart1.Position,MouseLook.lookVector,999,Character)
--local target1,distance1=findNearestTorso(icepart1.Position)
local test1,dist1=mouse.Hit.p
local pos1=nil
local refpart1=CreatePart(effects,"SmoothPlastic",0,1,BrickColor.new("Toothpaste"),"Ref",vt()) refpart1.Anchored=true
if target1~=nil then
--pos1=target1.Position
refpart1.CFrame=cf(pos)*cf(math.random(-5,5),5,math.random(-5,5))
end
local move=40
for i=0,1,0.1 do
swait()
move=40-40*i
if hit~=nil then
refpart1.CFrame=cf(refpart1.Position,pos)
SphereEffect(BrickColor.new("Toothpaste"),icepart1.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart1.CFrame=dacf
dacf=dacf*cf(0,move,0)
end
end
local laser1=CreatePart(effects,"SmoothPlastic",0,0,BrickColor.new("Toothpaste"),"Effect",vt()) 
laser1.Anchored=true
local lmsh1=CreateMesh("SpecialMesh",laser1,"Head","",vt(0,0,0),vt(10,1,10))
local ref=CreatePart(effects,"SmoothPlastic",0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref,1)
local ref1=CreatePart(effects,"SmoothPlastic",0,1,BrickColor.new("Black"),"Reference",vt())
ref1.Anchored=true
ref1.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref1,5)
local ice1=0
for i=0,3,0.05 do
swait()
ice1=ice1+1
if hit~=nil then
if i>1 then
refpart1.CFrame=refpart1.CFrame*cf(0,0,-1.5)
end
local cfnew=cf(icepart1.Position,refpart1.Position)
local hit1,pos1=rayCast(icepart1.Position,cfnew.lookVector,9999,Character)
local mag1=(icepart1.Position-pos).magnitude 
laser1.CFrame=CFrame.new((icepart1.Position+pos1)/2,pos1)*angles(1.57,0,0)
lmsh1.Scale=vt(10,mag1*5,10)
BlockEffect(BrickColor.new("Toothpaste"),cf(pos1),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos1)
MagniDamage(ref,5,8,14,0,"Normal")
ref1.CFrame=cf(ref.Position)
if ice1%2==0 then
CreateSound("http://www.roblox.com/asset/?id=333476017",ref1,.3,1.4)
end
end
end
if hit~=nil then
local pos1=laser1.CFrame
local x1=lmsh1.Scale.X local y1=lmsh1.Scale.Y local z1=lmsh1.Scale.Z
HeadEffect(BrickColor.new("Toothpaste"),pos1,x1,y1,z1,1,1,1,.1)
end
SphereEffect(BrickColor.new("Toothpaste"),cf(icepart1.Position),100,100,100,5,5,5,.2)
icepart1.Parent=nil
refpart1.Parent=nil
laser1.Parent=nil
ref.Parent=nil
end


function Finale()
	attack = true
	CreateSound("http://www.roblox.com/asset/?id=320557487",RootPart,1,1)
		local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
		end)
			for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
	CreateSound("http://www.roblox.com/asset/?id=338586331",RootPart,1,1)
local orb=CreatePart(Character,"SmoothPlastic",0,0.5,BrickColor.new("Teal"),"Orb",vt())
orb.Anchored=true
local omsh=CreateMesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(1,1,1))
orb.CFrame=RootPart.CFrame*cf(0,1,-7.5)
local orb2=CreatePart(Character,"SmoothPlastic",0,0.5,BrickColor.new("Toothpaste"),"Orb",vt())
orb2.Anchored=true
local omsh2=CreateMesh("SpecialMesh",orb2,"Sphere","",vt(0,0,0),vt(1,1,1))
orb2.CFrame=RootPart.CFrame*cf(0,1,-7.6)
CreateSound("http://www.roblox.com/asset/?id=235097614",orb,1,1)
coroutine.resume(coroutine.create(function()
	coroutine.resume(coroutine.create(function()
	for i = 0,5,.5 do
		swait()
	omsh2.Scale=Vector3.new(10*i,1,1)
	end
		for i = 0,50,10 do
		swait()
	omsh2.Scale=Vector3.new(50,1*i,1)
	end
end))
	for i = 0,10,1 do
		swait()
	omsh.Scale=Vector3.new(10*i,1,1)
	end
		for i = 0,50,10 do
		swait()
	omsh.Scale=Vector3.new(100,1*i,1)
	end
end))

		for i = 0, 1, 0.2 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-80), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(20),math.rad(-20)),.2)
		end
				for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-80), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(20),math.rad(-20)),.2)
		end
		shoottrail2(mouse,orb2)
		for i=0,1,.1 do
			swait()
		end
		coroutine.resume(coroutine.create(function()
			for i = 0,1,.1 do
				swait()
				orb2.Transparency=i
				orb.Transparency=i
			end
			orb.Parent=nil
			orb2.Parent=nil
		end))
		con:disconnect()
	attack = false
end


function attackone()
	attack = true
	CreateSound("http://www.roblox.com/asset/?id=320557487",RootPart,1,1)
		local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
	CreateSound("http://www.roblox.com/asset/?id=338586331",RootPart,1,1)
		for i = 0, 1, 0.2 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-80), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(20),math.rad(-20)),.2)
		end
		con:disconnect()
	attack = false
end

local snund = false
function attacktwo()
	attack = true
	snund=true
			CreateSound("http://www.roblox.com/asset/?id=320557537",RootPart,1,1)
					local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 10, 15, math.random(1, 5), "Snare", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0-360*i)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
			CreateSound("http://www.roblox.com/asset/?id=338586299",RootPart,1,1)
	for i = 0, 1, 0.05 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(-20),math.rad(-30),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-30)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
	end
	snund=false
	con:disconnect()
	attack = false
end

function attackthree()
	attack = true
		CreateSound("http://www.roblox.com/asset/?id=320557563",RootPart,1,1)
				local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 10, 25, math.random(1, 5), "Snare", RootPart, .2, "rbxassetid://199149221", .8)
	end)
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(-20),math.rad(-30),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-30)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
end
Torso.Velocity=Head.CFrame.lookVector*100
CreateSound("http://www.roblox.com/asset/?id=338586331",RootPart,1,.8)
	for i = 0, 1, 0.05 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
	con:disconnect()
	attack = false
end

local prep = false
function Luna()
	attack = true
	prep=true
	CreateSound("http://www.roblox.com/asset/?id=315746833",RootPart,1,1)
		SphereEffect(BrickColor.new("White"),RootPart.CFrame,1,1,1,5,5,5,.06)
		MoonEffect(BrickColor.new("Pastel light blue"),RootPart.CFrame*cf(0,2,0),1,1,1,.5,.5,.5,.06)
	while prep==true do
		swait()
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(0),math.rad(-30),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(150)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-30)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
			FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(90),math.rad(0-360*i),math.rad(90)),.2)
end
end

end
function LunarStrike()
	prep=false
	local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 20, 35, math.random(1, 5), "Snare", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	CreateSound("http://www.roblox.com/asset/?id=315744661",RootPart,1,1)
	SpecialEffect(BrickColor.new("White"),RootPart.CFrame,1,1,1,3,3,3,.08)
	SpecialEffect(BrickColor.new("Pastel light blue"),RootPart.CFrame,1,1,1,3,3,3,.07)
	RingEffect(BrickColor.new("Pastel blue-green"),RootPart.CFrame*cf(0,0,-5)*angles(math.rad(10,150),0,0),3,3,1,3,3,0,.07)
Torso.Velocity=Head.CFrame.lookVector*300
	for i = 0, 1, 0.1 do
		swait()
		MagniDamage(RootPart,10,10,15,10,"Knockdown")
	--	CylinderEffect(BrickColor.new("Pastel light blue"),RootPart.CFrame*angles(1.57,0,0),1,5,1,3,5,3,.07)
		SphereEffect(BrickColor.new("Pastel blue-green"),RootPart.CFrame,1,1,1,3,3,3,.08)
		RingEffect(BrickColor.new("Pastel blue-green"),RootPart.CFrame*cf(0,1,0),1,1,1,1,1,0,.07)
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0-360*i)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
		SphereEffect(BrickColor.new("Pastel blue-green"),RootPart.CFrame*cf(0,0,-10)*angles(0,0,math.rad(80,130)),1,1,1,1,15,1,.06)
con:disconnect()
	attack = false
end

spread=0
range=50
rangepower=25
function shoottrail3(mouse,baseprt)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*50
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "Sphere"
effectsmsh.Scale=Vector3.new(5,5,5)
local effectsg = Instance.new("Part")
--effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Material="Neon"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Teal")
effectsg.Reflectance = 0

--particle.RotSpeed=NumberRange.new(20,20)
--particle.Rotation=NumberRange.new(180,180)
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(5,50,50)
effectsg.CFrame=CFrame.new((LP+point1)/2,point1)
MoonEffect(BrickColor.new("Toothpaste"),effectsg.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,.5,.5,.5,.07)
coroutine.resume(coroutine.create(function()
swait()
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower/10
repeat
swait() 
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 20
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
if torso~=nil then
dir=CFrame.new(pos,torso.Position)
end
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
rangepos = 0
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
--Damagefunc1(hit,20,30)
MagniDamage(hit,10,10,15,0,"Knockdown")
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
MagniDamage(hit.Parent.Parent.Torso,10,10,15,0,"Knockdown")
--Damagefunc1(hit.Parent.Parent.Torso,20,30)
attackdebounce=false
--ADmg(hum,hit)
end
	for i=1,math.random(3,6) do
	BreakEffect(BrickColor.new("Teal"),CFrame.new(newpos),0.5,math.random(5,20),0.5)
	end
	CreateSound("http://roblox.com/asset/?id=3264793",hit,1,math.random()+math.random()+1) 
SphereEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,3,3,3,.07)
BlockEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,2,2,2,.07,1)
MoonEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,.5,.5,.5,.07)
end
until rangepos <= 0
end))
end

function shoottrail2(mouse,baseprt)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*50
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "Sphere"
effectsmsh.Scale=Vector3.new(5,5,5)
local effectsg = Instance.new("Part")
--effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Material="Neon"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Teal")
effectsg.Reflectance = 0
--particle.RotSpeed=NumberRange.new(20,20)
--particle.Rotation=NumberRange.new(180,180)
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(50,50,50)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
RingEffect(BrickColor.new("Toothpaste"),effectsg.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,2,2,2,.07)

coroutine.resume(coroutine.create(function()
swait()
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower/10
repeat
swait() 
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 100
	local temp = nil
	local human = nil
	local temp2 = nil
--[[	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end]]
if torso~=nil then
dir=CFrame.new(pos,torso.Position)
end
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
rangepos = 0
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
--Damagefunc1(hit,20,30)
MagniDamage(hit,20,30,55,20,"Knockdown")
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
MagniDamage(hit.Parent.Parent.Torso,20,30,55,0,"Knockdown")
--Damagefunc1(hit.Parent.Parent.Torso,20,30)
attackdebounce=false
--ADmg(hum,hit)
end
	for i=1,math.random(3,6) do
	BreakEffect(BrickColor.new("Teal"),CFrame.new(newpos),0.5,math.random(5,20),0.5)
	end
	CreateSound("http://roblox.com/asset/?id=3264793",hit,1,math.random()+math.random()+1) 
local refpart1=CreatePart(Workspace,"SmoothPlastic",0,1,BrickColor.new("Toothpaste"),"Ref",vt()) 
refpart1.Anchored=true
refpart1.CFrame=cf(newpos)
game.Debris:AddItem(refpart1,.5)
MagniDamage(refpart1,20,30,55,0,"Knockdown")
SphereEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,13,13,13,.07)
BlockEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,12,12,12,.07,1)
MoonEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,.5,.5,.5,.07)
end
until rangepos <= 0
end))
end


function Comet()
	attack=true
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(40),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(150)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(40)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
			FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(90),math.rad(0-360*i),math.rad(90)),.2)
end
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(40),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(150)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(40)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
			FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(90),math.rad(0-360*i),math.rad(90)),.2)
end
MoonEffect(BrickColor.new("Pastel light blue"),RootPart.CFrame*cf(0,2,0),1,1,1,.5,.5,.5,.06)
SphereEffect(BrickColor.new("Pastel light blue"),Handle.CFrame,2,2,2,3,5,3,.05)
	coroutine.resume(coroutine.create(function()
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=1
							end
					end
	end))
	CreateSound("http://www.roblox.com/asset/?id=233091161",RightArm,1,1)
	shoottrail3(mouse,RightArm)
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(40),math.rad(0),math.rad(70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(-40),math.rad(30),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(100), math.rad(100)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(0)),0.3)
	FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(90)),.2)
end

SphereEffect(BrickColor.new("Pastel light blue"),Handle.CFrame,2,2,2,3,5,3,.05)
	coroutine.resume(coroutine.create(function()
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=0
							end
							Handle.Transparency=1
							Hitbox.Transparency=1
							FakeHandle.Transparency=1
					end
	end))
	attack=false
end
function Eclipse()
	attack=true
	for i = 0,1,.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(50), math.rad(-50), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(60)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(5)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
		for i = 0,1,.1 do
		swait()
		if i == .4 then
				coroutine.resume(coroutine.create(function()
			for i, v in pairs(Character:children()) do
							if (v:IsA("BasePart") and v.Name~="HumanoidRootPart") then
							v.Transparency=1
							end
							if (v:IsA("Hat")) then
								v.Handle.Transparency=1
							end
							Head.face.Transparency=1
			end
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=1
							end
					end
	end))
			RingEffect(BrickColor.new("Teal"),Torso.CFrame*angles(math.rad(50),math.rad(0),math.rad(0)),2,2,1,1,1,0,0.07)
		end
		Torso.Velocity=RootPart.CFrame.lookVector*75
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(50), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(5)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
		end
				for i = 1,8,1 do
local ef=CreatePart(workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt())
ef.Anchored=true
ef.CFrame=RootPart.CFrame*cf(0,0,-7.5*i)
CreateSound("http://www.roblox.com/asset/?id=231917788",ef,1,1)
MagniDamage(ef,12,20,35,10,"Knockdown")
--SphereEffect(BrickColor.new("Black"),ef.CFrame*angles(0,0,0),50,50,50,-5,-5,-5,0.08)
game:GetService("Debris"):AddItem(ef,.5)
SphereEffect(BrickColor.new("Teal"),ef.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.5,5,.5,0.03)
		end
		RootPart.CFrame=RootPart.CFrame*cf(0,0,-35)
	
			coroutine.resume(coroutine.create(function()
			for i, v in pairs(Character:children()) do
							if (v:IsA("BasePart") and v.Name~="HumanoidRootPart") then
							v.Transparency=0
							end
							if (v:IsA("Hat")) then
								v.Handle.Transparency=0
							end
							Head.face.Transparency=0
			end
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=0
							end
					end
					Hitbox.Transparency=1
					Handle.Transparency=1
			FakeHandle.Transparency=1
	end))
			RootPart.CFrame=RootPart.CFrame*cf(0,0,-35)
				for i = 0,1,.1 do
		swait()
		if i == .1 then
									coroutine.resume(coroutine.create(function()
			for i, v in pairs(Character:children()) do
							if (v:IsA("BasePart") and v.Name~="HumanoidRootPart") then
							v.Transparency=0
							end
							if (v:IsA("Hat")) then
								v.Handle.Transparency=0
							end
							Head.face.Transparency=0
			end
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=0
							end
							Handle.Transparency=1
							FakeHandle.Transparency=1
							Hitbox.Transparency=1
					end
	end))
			RingEffect(BrickColor.new("Teal"),Torso.CFrame*angles(math.rad(50),math.rad(0),math.rad(0)),2,2,1,1,1,0,0.07)
		end
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -5, -1) * angles(math.rad(50), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(5)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
		end

	attack=false
				end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype=2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype=3
		attacktwo()
			elseif attack == false and attacktype == 3 then
		attacktype=1
		attackthree()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'z' then
	Luna()
	elseif attack == false and k == 'x' then
	Comet()
	elseif attack == false and k == 'c' then
	Eclipse()
	elseif attack == false and k == 'v' then
	Finale()
		elseif attack == false and k == 'b' then
	TriOrbs()
	end
end)

mouse.KeyUp:connect(function(k)
	k = k:lower()
	if attack == true and k == 'z' then
	LunarStrike()
prep=false
	end
end)

--[[Movement Detection]]--

while true do
	swait()
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(5), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(10)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(5), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(60)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(5)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(10)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		end
	end
	if #Effects > 0 then
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
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
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

script = nil