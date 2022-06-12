--[[qaeo baeo haeo]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
m.Name = "WeaponModel"
Character["Left Arm"]:remove()
Character["Right Arm"]:remove()
Character["Left Leg"]:remove()
Character["Right Leg"]:remove()
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
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it =Instance.new
vt=Vector3.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
for i,v in pairs(Character:GetChildren()) do
	if v:IsA("Accessory") then
		v:Destroy()
	end
end
local NeckCF = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
Head.Transparency = 1
Torso.Transparency = 1
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

Head.face:remove()
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

--[[Credits to SazErenos for his Artificial Heartbeat]]--

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


Handle=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Really black","Handle",Vector3.new(1, 1, 1))
HandleWeld=CreateWeld(m,Character["Torso"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0199661255, -0.0400784016, 0.15832901, 1, -5.67096185e-006, -2.38577304e-005, 5.6816225e-006, 0.999999344, 0.000446140766, 2.38577395e-005, -0.000446140766, 0.999999344))
Tock=CreatePart(m,Enum.Material.Plastic,0,0,"Medium stone grey","Tock",Vector3.new(1, 1, 1))
TockWeld=CreateWeld(m,Handle,Tock,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-006, -0.699996948, 7.00950623e-005, 1, 2.04636308e-011, 7.80528353e-008, -7.29414751e-008, 1.35121719e-010, 0.999998868, -2.04636308e-011, -0.999998868, -1.35550668e-010))
CreateMesh("CylinderMesh",Tock,"","",Vector3.new(0, 0, 0),Vector3.new(0.150000006, 0.75, 1))
Tick=CreatePart(m,Enum.Material.Plastic,0,0,"Medium stone grey","Tick",Vector3.new(1, 1, 1))
TickWeld=CreateWeld(m,Tock,Tick,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300003052, 0.200067759, 0, 7.80528353e-008, 0.999998868, -1.35550668e-010, 2.04636308e-011, 1.35121719e-010, -0.999998868, -1, 7.29414751e-008, 2.04636308e-011))
CreateMesh("SpecialMesh",Tick,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 1.20000005))
Tick=CreatePart(m,Enum.Material.Plastic,0,0,"Medium stone grey","Tick",Vector3.new(1, 1, 1))
TickWeld=CreateWeld(m,Tock,Tick,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.300003052, -0.199929476, -3.81469727e-006, 7.80528353e-008, 0.999998868, -1.35550668e-010, 2.04636308e-011, 1.35121719e-010, -0.999998868, -1, 7.29414751e-008, 2.04636308e-011))
CreateMesh("SpecialMesh",Tick,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.400000006, 1.20000005))
CreateMesh("SpecialMesh",Handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1.5, 1.5, 1.5))
Part=CreatePart(m,Enum.Material.Plastic,0,0,"Institutional white","Part",Vector3.new(0.540000021, 0.200000003, 0.460000038))
PartWeld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0200805664, -0.737700462, 0, -2.19000867e-007, -0.422617674, 0.906307518, -2.3091161e-007, 0.906307518, 0.422617704, -1, -1.16742285e-007, -2.98621671e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
LeftPeg=CreatePart(m,Enum.Material.Plastic,0,0,"Bright yellow","LeftPeg",Vector3.new(1, 0.560000002, 1))
LeftPegWeld=CreateWeld(m,Handle,LeftPeg,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399997711, 0.779884815, 7.62939453e-006, 1, -4.36907612e-008, -4.11564542e-008, 4.372896e-008, 0.999999404, 1.54743116e-008, 4.62659955e-008, -1.53474389e-008, 0.999999404))
CreateMesh("SpecialMesh",LeftPeg,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.75, 0.949999988))
Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Institutional white","Part",Vector3.new(0.200000003, 1.13999999, 0.590000033))
PartWeld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.219978333, -0.00736188889, 0.492553711, 1, 5.67091502e-006, -1.42244971e-007, -5.44018985e-006, 0.965925276, 0.258818746, 1.60760464e-006, -0.258818775, 0.965925276))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.649999976, 1))
Part=CreatePart(m,Enum.Material.Plastic,0.10000000149012,0,"Institutional white","Part",Vector3.new(0.200000003, 1.13999999, 0.590000033))
PartWeld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.189998627, -0.00735902786, 0.49256134, 1, 5.67091502e-006, -1.42244971e-007, -5.44018985e-006, 0.965925276, 0.258818746, 1.60760464e-006, -0.258818775, 0.965925276))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.649999976, 1))
Poot=CreatePart(m,Enum.Material.Plastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.219999999, 0.200000003))
PartWeld=CreateWeld(m,Handle,Poot,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.502023697, -1.00622749, 0, -9.02868123e-006, -0.81915164, 0.573576152, 2.20012589e-006, 0.573576152, 0.81915164, -1, 8.65777929e-006, -3.37895472e-006))
CreateMesh("CylinderMesh",Poot,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.5))
Part=CreatePart(m,Enum.Material.Plastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.219999999, 0.200000003))
PartWeld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0188560486, -0.944825172, 0, -1.92190091e-005, -0.422617674, 0.906307518, 1.27690937e-005, 0.906307518, 0.422617704, -1, 1.96949968e-005, -1.20244413e-005))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.5))
RightPeg=CreatePart(m,Enum.Material.Plastic,0,0,"Bright yellow","RightPeg",Vector3.new(1, 0.570000052, 1))
RightPegWeld=CreateWeld(m,Handle,RightPeg,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400005341, 0.784877062, 1.14440918e-005, 1, -4.36907612e-008, -4.11564542e-008, 4.372896e-008, 0.999999404, 1.54743116e-008, 4.62659955e-008, -1.53474389e-008, 0.999999404))
CreateMesh("SpecialMesh",RightPeg,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.75, 0.949999988))
Part=CreatePart(m,Enum.Material.Plastic,0,0,"Mid gray","Part",Vector3.new(0.200000003, 0.219999999, 0.200000003))
PartWeld=CreateWeld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.853747368, -0.98065567, 3.81469727e-006, -4.15784598e-008, -0.965925038, 0.258818835, 1.37861207e-008, 0.258818835, 0.965925038, -1, 4.36907612e-008, -2.55568011e-009))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.5))

function boom()
	attack = true
	d=Instance.new("Fire",Poot)
	d.Heat=0
	d.Size=2
	CreateSound("http://www.roblox.com/asset/?id=138931042",Torso,1,1)
	for i = 0, 1, 0.05 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Bright red")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
	for i = 0, 1, 0.05 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Black")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
	for i = 0, 1, 0.1 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Bright red")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
	for i = 0, 1, 0.1 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Black")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
		for i = 0, 1, 0.2 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Bright red")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
	for i = 0, 1, 0.2 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Black")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
		for i = 0, 1, 0.5 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Bright red")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
	for i = 0, 1, 0.5 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Black")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
		for i = 0, 1, 0.5 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Bright red")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
	for i = 0, 1, 0.5 do
		swait()
		if Torsovelocity > 2 then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		else
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		end
				Handle.BrickColor=BrickColor.new("Black")
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
	end
	CreateSound("http://www.roblox.com/asset/?id=282185588",Torso,1,1)
	gg=Instance.new("Explosion")
	gg.Parent=Torso
	gg.Position=Torso.Position
	attack = false
end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		boom()
	end
end)


Humanoid.WalkSpeed=10
--[[ Movement Detection ]]--
j=1
while true do
	swait()
	if j == 360 then
	j=1
	else
	j=j+5
	end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then

				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then

				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				RightPegWeld.C0 = clerp(RightPegWeld.C0, CFrame.new(0,0, 0+.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LeftPegWeld.C0 = clerp(LeftPegWeld.C0, CFrame.new(0,0, 0-.2* math.cos(sine / 3)) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				TockWeld.C0 = clerp(TockWeld.C0, CFrame.new(0,0, 0) * angles(math.rad(0), math.rad(0), math.rad(0+j)), .3)
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