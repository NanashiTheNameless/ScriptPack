--[[NIGHTOWLACE_WEAPONRY]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
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

local NeckCF = cn(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()

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
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0) 
RW.Part1 = RightArm
RW.Parent = Torso 

LW.Name = "LW"
LW.Part0 = Torso 
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0) 
LW.Part1 = LeftArm
LW.Parent = Torso 

function clerp(a, b, t)
	return a:lerp(b, t)
end

function swait(num)
	if num == 0 or num == nil then
		game:service'RunService'.RenderStepped:wait(0)
	else
		for i = 0, num do
			game:service'RunService'.RenderStepped:wait(0)
		end
	end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		formFactor = FormFactor,
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

function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	for i, v in pairs(hit:GetChildren()) do 
		if v:IsA("Humanoid") and hit.Name ~= Character.Name then
			local find = v:FindFirstChild("Hitz")
			if not find then
				if v.Parent:findFirstChild("Head") then
					local BillG = Create("BillboardGui"){
						Parent = v.Parent.Head,
						Size = UDim2.new(1, 0, 1, 0),
						Adornee = v.Parent.Head,
						StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3)),
					}
					local TL = Create("TextLabel"){
						Parent = BillG,
						Size = UDim2.new(3, 3, 3, 3),
						BackgroundTransparency = 1,
						Text = tostring(damage).."-",
						TextColor3 = Color1.Color,
						TextStrokeColor3 = Color2.Color,
						TextStrokeTransparency = 0,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						FontSize = Enum.FontSize.Size18,
						Font = "ArialBold",
					}
					coroutine.resume(coroutine.create(function()
						swait(1)
						for i = 0, 1, .1 do
							swait(.1)
							BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, .1, 0)
						end
						BillG:Destroy()
					end))
				end
				v.Health = v.Health - damage
				local bool = Create("BoolValue"){
					Parent = v,
					Name = 'Hitz',
				}
				if HSound ~= nil and HPitch ~= nil then
					CreateSound(HSound, hit, 1, HPitch) 
				end
				game:GetService("Debris"):AddItem(bool, cooldown)
			end
		end
	end
end

Handle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Earth green","Handle",Vector3.new(0.566999972, 0.200000003, 0.226800025))
HandleWeld=CreateWeld(m,RightArm,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0350052714, 0.9926579, 0.100006104, -5.46274701e-012, -3.52561292e-005, 1, 1.86290133e-011, 1, 3.52561292e-005, -1, 1.86292058e-011, -5.46209042e-012))
CreateMesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
FakeHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","FakeHandle",Vector3.new(0.566999972, 0.200000003, 0.226800025))
FakeHandleWeld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
ReloadPartConnector=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Dark stone grey","ReloadPartConnector",Vector3.new(0.226800188, 0.907199979, 0.200000003))
ReloadPartConnectorweld=CreateWeld(m,FakeHandle,ReloadPartConnector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30414581, -0.963857174, 0.0623626709, 1, 7.05122511e-005, -1.45563804e-011, 7.05122511e-005, -1, -1.49030242e-007, -2.50648374e-011, 1.49030242e-007, -1))
CreateMesh("BlockMesh",ReloadPartConnector,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.226800025, 0.340199977, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.226771593, 0.566906929, -1.67041835e-005, -3.37715392e-007, 1, -8.37888947e-005, 1, 3.36315765e-007, -1, -8.37888874e-005, -1.67042126e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.340199977, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -2.26798153, 1.36083066, 1.32622097e-006, -6.52065523e-007, -1, -1, -4.82311734e-005, -1.32618959e-006, -4.82311734e-005, 1, -6.52129529e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.41617584e-005, 0.170097351, 0.68047303, -7.99802947e-005, 1, 7.00372084e-007, -1.21703279e-005, -7.01345471e-007, 1, 1, 7.99802947e-005, 1.21703833e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.226799995, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283500671, 0.0566065311, 0.793872654, 1.66594655e-005, 7.09421556e-007, -1, -8.39141358e-005, 1, 7.08023549e-007, 1, 8.39141285e-005, 1.66595255e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.17010498, -1.70096517, 0.340240717, -8.21367109e-007, -5.09596794e-006, -1, -1, -4.78923139e-005, 8.21611195e-007, -4.78923175e-005, 1, -5.09592837e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170120239, -0.113251686, 1.92784548, -1.68208007e-005, 1.22768915e-006, 1, 8.32825754e-005, -1, 1.22909e-006, 1, 8.32825899e-005, 1.68206989e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.453599989, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.92776132, -0.340238452, 5.95927965e-008, 1.74689973e-007, -1, 1, 4.79274495e-005, 5.96011667e-008, 4.79274495e-005, -1, -1.74687116e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283500671, 0.567074418, 0.113316655, -1.67632879e-005, 4.86122701e-007, 1, 1, 8.32825754e-005, 1.67632479e-005, -8.32825608e-005, 1, -4.87518776e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.56693542, 0.226860404, 2.68224085e-006, -1.05698791e-006, -1, -7.7900906e-005, 1, -1.05719687e-006, 1, 7.79009133e-005, 2.68215854e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.226799995))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 2.3813858, -1.64433002, 1.49169102e-006, -2.51822485e-006, -1, 1, 4.92128529e-005, 1.4915671e-006, 4.92128493e-005, -1, 2.51829829e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.226799995, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 1.98448634, 1.36083448, -1.24539486e-006, 6.92952199e-007, 1, 1, 4.81456336e-005, 1.24536143e-006, -4.81456336e-005, 1, -6.93012112e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, 0.566840887, -2.15466261, -1.70109543e-005, -6.02137291e-008, 1, -8.31925136e-005, 1, 5.87985447e-008, -1, -8.31925136e-005, -1.70109597e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170089722, -1.7009654, 0.340241432, -8.21367109e-007, -5.09596794e-006, -1, -1, -4.78923139e-005, 8.21611195e-007, -4.78923175e-005, 1, -5.09592837e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283493042, 0.6804775, 0.226712108, -1.67632879e-005, 4.86122701e-007, 1, 1, 8.32825754e-005, 1.67632479e-005, -8.32825608e-005, 1, -4.87518776e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.453599989, 0.340199977, 0.340199977))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.58763599, -2.04118681, -1.15617024e-006, -1.49039764e-007, -1, 4.70735431e-005, -1, 1.4898535e-007, -1, -4.70735431e-005, 1.15617718e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283493042, 0.226700306, 0.907274663, 1.66594655e-005, 7.09421556e-007, -1, -8.39141358e-005, 1, 7.08023549e-007, 1, 8.39141285e-005, 1.66595255e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170097351, 0.340239286, -1.70097756, -4.6729333e-006, 2.33717492e-006, 1, -4.82201394e-005, 1, -2.33740025e-006, -1, -4.82201503e-005, -4.67282052e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283493042, -0.793682098, -1.2474618, 1.53565525e-005, 6.01706702e-008, -1, 8.41160945e-005, -1, -5.88789355e-008, -1, -8.41160945e-005, -1.53565579e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.680299282, 1.0205766, -2.55265786e-006, 2.22016433e-006, 1, 1, 8.28409684e-005, 2.55247392e-006, -8.28409684e-005, 1, -2.22037579e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170097351, 0.340238452, -1.70097899, -4.6729333e-006, 2.33717492e-006, 1, -4.82201394e-005, 1, -2.33740025e-006, -1, -4.82201503e-005, -4.67282052e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.691739976, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.58764791, 1.13398933, 7.22406867e-007, -2.65789083e-007, 1, 4.78476104e-005, -1, -2.65823644e-007, 1, 4.78476104e-005, -7.22394134e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283500671, 1.24729276, -1.24746799, -7.33725028e-006, 4.96884468e-007, 1, -7.64131328e-005, 1, -4.97445114e-007, -1, -7.64131401e-005, -7.33721208e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.81443107, -2.38139224, -8.09617518e-007, -6.23807136e-006, -1, 4.91291103e-005, -1, 6.23803135e-006, -1, -4.91291066e-005, 8.09923961e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.691739976, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.13398337, -1.1340487, -1.49000073e-007, -1.74378968e-007, 1, -1, -4.77701833e-005, -1.49008414e-007, 4.77701833e-005, -1, -1.74371849e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.226799995, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283500671, 0.0566061735, 0.793863237, 1.66594655e-005, 7.09421556e-007, -1, -8.39141358e-005, 1, 7.08023549e-007, 1, 8.39141285e-005, 1.66595255e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283508301, 0.680468082, 0.226712346, -1.67632879e-005, 4.86122701e-007, 1, 1, 8.32825754e-005, 1.67632479e-005, -8.32825608e-005, 1, -4.87518776e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283500671, 0.567065001, 0.113316894, -1.67632879e-005, 4.86122701e-007, 1, 1, 8.32825754e-005, 1.67632479e-005, -8.32825608e-005, 1, -4.87518776e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170074463, -0.113251328, 1.92784309, -1.68208007e-005, 1.22768915e-006, 1, 8.32825754e-005, -1, 1.22909e-006, 1, 8.32825899e-005, 1.68206989e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.453599989, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.340235829, 1.92777467, -1.21424762e-006, 2.73472529e-006, 1, 4.83095464e-005, -1, 2.73478395e-006, 1, 4.830955e-005, 1.21411551e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.68032372, -0.566974044, 2.797653e-006, -2.3178136e-006, -1, 1, 7.79330585e-005, 2.79747246e-006, 7.79330512e-005, -1, 2.31803165e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.453600049, 0.226800025, 0.566999972))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -1.53094459, 0.340105832, 2.02647493e-006, 5.09247059e-007, -0.999996781, 0.000109785527, -0.999999583, -5.09023039e-007, -0.999996841, -0.000109725981, -2.02653132e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -2.49479055, 1.81442845, -8.2132027e-007, -3.71707051e-006, -1, -1, -4.91887149e-005, 8.21503079e-007, -4.91887185e-005, 1, -3.71703027e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283493042, 0.453501225, 1.0206455, 2.53323196e-006, -1.13209649e-006, -1, -7.76732195e-005, 1, -1.13229328e-006, 1, 7.76732195e-005, 2.53314397e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.63075256e-005, 0.170097351, 0.680469155, 8.27782787e-005, -1, -5.66262827e-007, 1.02252161e-005, 5.67109225e-007, -1, 1, 8.27782642e-005, 1.02252634e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.453599989, 0.200000003, 0.340199977))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.58763313, 0.113453567, 1.82047155e-011, -1.12786974e-010, 0.999999583, 8.40734865e-005, -0.999999762, -1.12780153e-010, 0.999999344, 8.40734938e-005, -1.84218266e-011))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999972, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170074463, 0.113251567, -1.92784262, -1.41198061e-005, -1.24597113e-006, 1, -8.33272788e-005, 1, 1.24479459e-006, -1, -8.3327257e-005, -1.41199098e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.226799995))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 2.3813808, 1.41753197, -1.47523042e-006, 5.90461298e-007, 1, 1, 4.78678703e-005, 1.47520211e-006, -4.78678703e-005, 1, -5.90531897e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.28351593, 0.680283427, -1.24744642, -1.70109543e-005, -6.02137291e-008, 1, -8.31925136e-005, 1, 5.87985447e-008, -1, -8.31925136e-005, -1.70109597e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283508301, 0.453676045, 1.13392353, -3.3629849e-006, 1.11024099e-006, 1, 1, 7.75605295e-005, 3.36289872e-006, -7.75605222e-005, 1, -1.11050178e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.453600049, 0.340199977, 0.340199977))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.226812363, 1.24746561, -2.39162357e-009, 3.87425274e-007, 0.999993861, 0.999994099, 3.949237e-005, 2.37692221e-009, -3.96118485e-005, 0.999999523, -3.8742354e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283500671, 1.24729252, -1.24747205, -7.33725028e-006, 4.96884468e-007, 1, -7.64131328e-005, 1, -4.97445114e-007, -1, -7.64131401e-005, -7.33721208e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170074463, 1.8144449, 0.113256812, -1.67632879e-005, 4.86122701e-007, 1, 1, 8.32825754e-005, 1.67632479e-005, -8.32825608e-005, 1, -4.87518776e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283493042, 0.567081869, 1.3607192, -3.3629849e-006, 1.11024099e-006, 1, 1, 7.75605295e-005, 3.36289872e-006, -7.75605222e-005, 1, -1.11050178e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170120239, 0.113251209, -1.92784595, -1.41198061e-005, -1.24597113e-006, 1, -8.33272788e-005, 1, 1.24479459e-006, -1, -8.3327257e-005, -1.41199098e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283500671, -0.793710828, 0.79386574, -7.43302553e-006, 1.22160782e-006, 1, 7.63524586e-005, -1, 1.22217534e-006, 1, 7.63524658e-005, 7.43293231e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170120239, 1.81444728, 0.113257051, -1.67632879e-005, 4.86122701e-007, 1, 1, 8.32825754e-005, 1.67632479e-005, -8.32825608e-005, 1, -4.87518776e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.02053487, 0.226864815, -1.15058747e-005, 1.16188232e-006, 1, 7.63285061e-005, -1, 1.16276055e-006, 1, 7.63285207e-005, 1.15057865e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283485413, 0.680283427, -1.24745619, -1.70109543e-005, -6.02137291e-008, 1, -8.31925136e-005, 1, 5.87985447e-008, -1, -8.31925136e-005, -1.70109597e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.453600049, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.566917658, 1.47424436, -2.39428966e-009, 3.87438462e-007, 1, 0.999999642, 1.47554601e-005, 2.38857378e-009, -1.47554601e-005, 0.999999642, -3.87438718e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283493042, 0.453674138, 1.13392401, -3.3629849e-006, 1.11024099e-006, 1, 1, 7.75605295e-005, 3.36289872e-006, -7.75605222e-005, 1, -1.11050178e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283500671, -0.793710232, 0.793869913, -7.43302553e-006, 1.22160782e-006, 1, 7.63524586e-005, -1, 1.22217534e-006, 1, 7.63524658e-005, 7.43293231e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999972, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Wedge",Vector3.new(0.464940012, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.113732219, 1.13403893, -2.4343203e-009, 3.87479787e-007, 1, 1, -0.0002320567, 2.52423771e-009, 0.0002320567, 1, -3.87479218e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999972))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.226800025, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283500671, -0.623601913, 1.02065468, -7.43302553e-006, 1.22160782e-006, 1, 7.63524586e-005, -1, 1.22217534e-006, 1, 7.63524658e-005, 7.43293231e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283508301, 0.567083776, 1.36071873, -3.3629849e-006, 1.11024099e-006, 1, 1, 7.75605295e-005, 3.36289872e-006, -7.75605222e-005, 1, -1.11050178e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.226800025, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283500671, -0.623602509, 1.02065063, -7.43302553e-006, 1.22160782e-006, 1, 7.63524586e-005, -1, 1.22217534e-006, 1, 7.63524658e-005, 7.43293231e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283508301, -0.793879271, -1.24731112, -6.63055471e-006, 4.35758352e-007, 1, -1, -7.63684366e-005, -6.63052151e-006, 7.63684293e-005, -1, 4.36264713e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.226799995, 0.453599989))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -2.66488051, 1.53092706, -8.2132027e-007, -3.71707051e-006, -1, -1, -4.91887149e-005, 8.21503079e-007, -4.91887185e-005, 1, -3.71703027e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283508301, 0.453500628, 1.02064693, 2.53323196e-006, -1.13209649e-006, -1, -7.76732195e-005, 1, -1.13229328e-006, 1, 7.76732195e-005, 2.53314397e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.226799995, 0.226800025))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.77244568e-005, 0.396957934, 0.226806641, -8.62892193e-005, 1, -4.91719675e-007, 1, 8.62892266e-005, 1.91060244e-005, 1.91060699e-005, -4.90071045e-007, -1))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283508301, 0.226699948, 0.907265246, 1.66594655e-005, 7.09421556e-007, -1, -8.39141358e-005, 1, 7.08023549e-007, 1, 8.39141285e-005, 1.66595255e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283500671, -1.36068273, 1.47427011, -6.14581313e-006, 1.36218034e-006, 1, 7.64131328e-005, -1, 1.36264998e-006, 1, 7.64131401e-005, 6.14570899e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.340199977, 0.340199977))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283500671, 0.56692493, -0.567054808, -2.65210451e-006, 6.91624052e-007, 1, -7.76499364e-005, 1, -6.91829996e-007, -1, -7.76499364e-005, -2.65205085e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.340199977, 0.340199977))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283500671, 0.566925287, -0.567053258, -2.65210451e-006, 6.91624052e-007, 1, -7.76499364e-005, 1, -6.91829996e-007, -1, -7.76499364e-005, -2.65205085e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.226800025, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -3.19480896e-005, 0.453524143, -1.67041835e-005, -3.37715392e-007, 1, -8.37888947e-005, 1, 3.36315765e-007, -1, -8.37888874e-005, -1.67042126e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.453599989, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.000142097473, -1.81444216, -1.63920413e-005, 5.98815234e-007, 1, -8.32974765e-005, 1, -6.0018067e-007, -1, -8.32974838e-005, -1.63919904e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.691739976, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.5876509, -0.907188892, -6.70570671e-007, 3.69144715e-007, -1, 4.78493712e-005, -1, -3.69176803e-007, -1, -4.78493712e-005, 6.70552993e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.226799995, 0.226800025))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.82012939e-005, 0.396967947, 0.226799011, 8.63481764e-005, -1, 6.10928964e-007, 1, 8.6348191e-005, 2.54107908e-005, -2.54108436e-005, 6.08734751e-007, 1))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-8.55922699e-005, 0.170097351, 0.680474043, -8.21375143e-005, 1, 7.00370038e-007, -1.73874851e-005, -7.01798172e-007, 1, 1, 8.21374997e-005, 1.73875433e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283500671, -1.36068201, 1.47427344, -6.14581313e-006, 1.36218034e-006, 1, 7.64131328e-005, -1, 1.36264998e-006, 1, 7.64131401e-005, 6.14570899e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.453599989, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.47425652, 0.340190351, 1.79681062e-011, -6.12225132e-011, 0.999999583, 4.76498535e-005, -0.999999762, -6.12150192e-011, 0.999999344, 4.76498462e-005, -1.81917814e-011))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999972, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.453600049, 0.340199977, 0.340199977))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.226746261, -1.24743533, -2.4452122e-006, 3.38387224e-007, 0.999992073, -0.999992549, -9.3047056e-005, -2.44518083e-006, 9.32259063e-005, -0.999999404, 3.38612807e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.453600049, 0.226799995, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.30402756, 1.47425795, -2.08599801e-007, -6.32260594e-007, -1, -1, -1.46288785e-005, 2.08609052e-007, -1.46288785e-005, 1, -6.32257581e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.453599989, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, 0.453576088, 0.68030113, -1.67041835e-005, -3.37715392e-007, 1, -8.37888947e-005, 1, 3.36315765e-007, -1, -8.37888874e-005, -1.67042126e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283493042, -0.793875575, -1.24731135, -6.63055471e-006, 4.35758352e-007, 1, -1, -7.63684366e-005, -6.63052151e-006, 7.63684293e-005, -1, 4.36264713e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.453599989, 0.226800025, 0.226799995))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.21127105, -0.396936417, -5.95997065e-008, 1.20534471e-008, 1, -1, -4.81419593e-005, -5.95991274e-008, 4.81419593e-005, -1, 1.20563151e-008))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 0.566826463, 2.72165513, 1.71214233e-005, 1.721275e-007, -1, -8.27817566e-005, 1, 1.70710152e-007, 1, 8.27817566e-005, 1.7121436e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999972))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.453599989, 0.226800025, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.737079144, -0.340252638, 5.95927965e-008, 1.74689973e-007, -1, 1, 4.79274495e-005, 5.96011667e-008, 4.79274495e-005, -1, -1.74687116e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,FakeHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283508301, -0.793682098, -1.24745321, 1.53565525e-005, 6.01706702e-008, -1, 8.41160945e-005, -1, -5.88789355e-008, -1, -8.41160945e-005, -1.53565579e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.200000003, 0.691739976, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.793777227, -3.81469727e-005, -2.32471418, 3.52573661e-005, -1, -3.52561474e-005, 2.50964161e-009, -3.52561474e-005, 1, -1, -3.52573661e-005, 2.36080443e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.200000003, 0.691739976))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02054906, 1.58761907, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.200000003, 0.691739976, 0.226799995))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02057719, -4.57763672e-005, -1.98451412, 3.52573661e-005, -1, -3.52561474e-005, 2.50964161e-009, -3.52561474e-005, 1, -1, -3.52573661e-005, 2.36080443e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.200000003, 0.691739976, 0.226799995))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02057719, -4.57763672e-005, -2.66491413, 3.52573661e-005, -1, -3.52561474e-005, 2.50964161e-009, -3.52561474e-005, 1, -1, -3.52573661e-005, 2.36080443e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.226799995, 0.453599989, 0.226799995))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.6442132, -6.86645508e-005, -2.66492319, 3.52573661e-005, -1, -3.52561474e-005, 2.50964161e-009, -3.52561474e-005, 1, -1, -3.52573661e-005, 2.36080443e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.907199979, 0.680399954, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.75774693, 0.963873744, -0.283508301, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.81437302, 0.340231895, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999972, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.79378432, 0.226812243, -0.283493042, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.92777109, 0.226837873, -0.17010498, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999972, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.200000003, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.680345058, 0.567054629, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226800025, 0.200000003, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.55152869, 0.566917658, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.22679989, 0.200000003, 0.226800054))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.87107229, 0.340233922, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999972, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.200000003, 0.691739976, 0.226799995))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.793777227, -3.81469727e-005, -2.66491413, 3.52573661e-005, -1, -3.52561474e-005, 2.50964161e-009, -3.52561474e-005, 1, -1, -3.52573661e-005, 2.36080443e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.453599989, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.83501434, 1.07719815, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.92777109, 0.226837873, 0.17010498, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.453599989, 0.200000003, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30424333, 2.83492827, -1.52587891e-005, -6.75693792e-021, -1, -1.25554112e-009, 1, 2.34946161e-020, -1.2666469e-009, 1.26664701e-009, -1.25549737e-009, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.340199977, 0.226800025))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.453593135, 0.226780176, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226799995, 0.680399954, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.66491985, 0.963810802, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.453599989, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.49484181, 1.5308156, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.793799996, 0.200000003, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.2473774, 0.340217233, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.79378432, 0.226812243, 0.283500671, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.623694003, 9.05990601e-006, 0.283508301, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.340199977, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.72154522, 1.47421598, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.680389225, 0.113408208, 0.283500671, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.22679989, 0.200000003, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.09786892, 0.567037106, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.340199977, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.226847231, 0.793808579, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.45359993, 0.453599989, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.43804288, 1.53092015, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.200000003, 0.226800054))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.70097017, 0.340233207, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.566999972, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.49482059, 1.02051663, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.793799996, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02065277, 1.36077332, 0.283485413, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.340199977, 0.200000003, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113396287, 1.47420835, 0, 0.999999344, 2.24687392e-005, -4.60104177e-013, -2.24687574e-005, 0.999999762, 8.0098074e-011, 2.35317842e-013, -8.01064354e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.200000003, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.566995203, 9.05990601e-006, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.226799995, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.04116702, 0.396932125, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.200000003, 0.226800025))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.340190887, -1.47819519e-005, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.623694003, 9.05990601e-006, -0.283493042, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.680399835, 1.02059996, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.283476233, 0.907167912, 0, 0.999999762, -1.01767904e-022, 1.25767452e-016, -1.01850961e-022, 0.999999762, -1.5633328e-014, 2.42861287e-017, -4.14078494e-014, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.200000003, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.9277792, 3.88622284e-005, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.340199977, 0.340200007, 0.691739976))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02054429, 1.3608191, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.226800025, 0.200000003, 0.680400014))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.850479066, 0.340212226, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.340199977, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.680339336, 0.793854594, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.793799937, 0.566999972, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.226750493, 0.793819666, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226800025, 0.340199977, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.850528538, 0.566962004, -0.283508301, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.680389225, 0.113408208, -0.283493042, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.340199977, 0.464940012, 0.340199977))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02057719, -3.05175781e-005, -1.02061415, 3.52573661e-005, -1, -3.52561474e-005, 2.50964161e-009, -3.52561474e-005, 1, -1, -3.52573661e-005, 2.36080443e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.793799937, 0.200000003, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.81434608, 1.36081505, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.226799965, 0.200000003, 0.226800025))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.396898329, 9.29832458e-006, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.340199977, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.453655779, 0.90717423, -0.283508301, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.340199977, 0.200000003, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.856314301, 2.8406136, -1.52587891e-005, -6.75693792e-021, -1, -1.25554112e-009, 1, 2.34946161e-020, -1.2666469e-009, 1.26664701e-009, -1.25549737e-009, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.907199979, 0.680399954, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.75774693, 0.963873744, 0.283485413, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(1.13399982, 0.226800025, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.41747713, 0.510316014, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.566999972, 0.226799995, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.907166362, 1.41748571, 0, 1, -6.19819184e-006, 6.29308931e-012, 6.19819184e-006, 1, 4.54183566e-013, -6.29309495e-012, -4.54145402e-013, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.793799996, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02065277, 1.36077332, -0.283508301, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.226799995, 1.02059996, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.510237575, 0.907231688, -7.62939453e-006, 0.999999344, 8.60060682e-005, -1.38776247e-011, -8.60060536e-005, 0.999999762, 4.43279163e-011, 1.38815843e-011, -4.43837536e-011, 0.999999583))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.680399895, 0.340199977, 0.464940012))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.28361702, 1.02055216, -1.52587891e-005, 0.999996364, 6.66348351e-005, -2.37437327e-011, -6.66347478e-005, 0.999997854, 1.93355141e-011, 2.37480903e-011, -1.99401051e-011, 0.99999851))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340199947, 0.680399954, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.226783752, 0.737093925, 0, 0.999994695, 3.94592535e-005, -6.45634674e-012, -3.9578732e-005, 0.999999523, 2.16135009e-011, 7.10339079e-012, -2.20110354e-011, 0.999994457))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226799995, 0.566999972, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.623749793, 1.02057433, 0.283485413, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226799995, 0.566999972, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.623749793, 1.02057433, -0.283508301, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.200000003, 0.691739976, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02057719, -4.57763672e-005, -2.32471418, 3.52573661e-005, -1, -3.52561474e-005, 2.50964161e-009, -3.52561474e-005, 1, -1, -3.52573661e-005, 2.36080443e-011))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.340199977, 0.200000003, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30991328, 2.84059906, -1.52587891e-005, -6.75693792e-021, -1, -1.25554112e-009, 1, 2.34946161e-020, -1.2666469e-009, 1.26664701e-009, -1.25549737e-009, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.226799995, 0.200000003, 0.691739976))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.963848174, 1.13402021, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226799995, 0.566999972, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.32472754, 1.02052808, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.453599989, 0.200000003, 0.453599989))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.850644231, 2.83494425, -1.52587891e-005, -6.75693792e-021, -1, -1.25554112e-009, 1, 2.34946161e-020, -1.2666469e-009, 1.26664701e-009, -1.25549737e-009, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(1.58759975, 0.680399954, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.41747785, 0.963916183, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.200000003, 0.226799995, 0.464940012))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113420546, 0.963879585, -1.52587891e-005, 0.999996364, -1.471613e-005, -1.14038241e-011, 1.47160972e-005, 0.999997854, -2.4670245e-011, 1.14072814e-011, 2.40638776e-011, 0.99999851))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226800025, 0.226799995, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.3247292, 0.623628139, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.200000003, 0.680399954))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.49482059, 0.680327415, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.226799995, 0.226800025, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.737074077, 0.510316133, 0, 1, -1.01765587e-022, 0, -1.01765587e-022, 1, 0, 0, 0, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.226799965, 0.200000003, 0.453600049))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.30406153, 1.36078525, 0, 1, -6.19819184e-006, 6.29308931e-012, 6.19819184e-006, 1, 4.54183566e-013, -6.29309495e-012, -4.54145402e-013, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.453600049, 0.340199977))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.84068966, 1.07719779, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226800025, 0.340199977, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.850528538, 0.566962004, 0.283485413, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.340199977, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.453655779, 0.90717423, 0.283485413, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.200000003, 0.691739976, 0.226799995))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.793777227, -3.81469727e-005, -1.98451412, 3.52573661e-005, -1, -3.52561474e-005, 2.50964161e-009, -3.52561474e-005, 1, -1, -3.52573661e-005, 2.36080443e-011))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Barrel=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Barrel",Vector3.new(0.200000003, 0.453600049, 0.340199977))
Barrelweld=CreateWeld(m,FakeHandle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.9540894, 1.07719207, -1.52587891e-005, 0.999999583, 8.600609e-005, -1.39357822e-011, -8.60060754e-005, 1, 4.43511304e-011, 1.37214094e-011, -4.43503637e-011, 0.999999583))
CreateMesh("BlockMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
ReloadPartHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Dark stone grey","ReloadPartHandle",Vector3.new(0.226800188, 0.907199979, 0.200000003))
ReloadPartHandleWeld=CreateWeld(m,ReloadPartConnector,ReloadPartHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",ReloadPartHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0623550415, -0.510275722, -1.98448765, 5.37678773e-007, 8.26154064e-006, 1, -7.42080738e-006, -1, 8.26154428e-006, 1, -7.42080738e-006, -5.37617495e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0623626709, -2.32464981, -0.510339797, 5.11777387e-007, 8.04251431e-006, 1, 1, -7.42080738e-006, -5.11717758e-007, 7.42080738e-006, 1, -8.04251795e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999972))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0623626709, -0.0566602945, -2.32466936, 1.25546279e-007, 8.21602043e-006, 1, -7.42080738e-006, -1, 8.21602134e-006, 1, -7.42080738e-006, -1.25485315e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0623626709, -2.21127415, 0.170065165, 4.38841766e-007, 8.13810038e-006, 1, 1, -7.4506097e-006, -4.38781143e-007, 7.45060242e-006, 1, -8.13810402e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113395691, -0.396815121, 0.51025486, -1.67041835e-005, -2.83710989e-007, 1, -8.37889093e-005, 1, 2.82311362e-007, -1, -8.3788902e-005, -1.67042072e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0623779297, -0.0565953255, 2.5514884, -1.14968007e-005, -1.20270465e-006, -1, -5.78167237e-006, -1, 1.20277116e-006, -1, 5.78168147e-006, 1.14967934e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.680399954, 0.226799995, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0623703003, -2.49474525, 0.623743296, -5.06371578e-007, -8.00164617e-006, -1, 1, -7.16024078e-006, -5.06314223e-007, -7.16024078e-006, -1, 8.0016498e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0623626709, 0.0567251444, -1.98446345, 5.37678773e-007, 8.26154064e-006, 1, -7.42080738e-006, -1, 8.26154428e-006, 1, -7.42080738e-006, -5.37617495e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.680399954, 0.200000003, 0.226800025))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0623626709, 1.9844445, 0.567024052, 3.89692531e-007, 8.52081757e-006, 1, -1, 7.4506097e-006, 3.89629037e-007, -7.45060242e-006, -1, 8.5208203e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113395691, -0.396825254, -0.283453941, 1.67041926e-005, 5.88926241e-010, -1, -8.37425323e-005, 1, -8.09933454e-010, 1, 8.37425323e-005, 1.67041926e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0623626709, 2.32464981, 0.510339797, 6.12215558e-007, 8.30378485e-006, 1, -1, 7.42080738e-006, 6.12153997e-007, -7.42080738e-006, -1, 8.3037894e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0623550415, -0.510246038, 2.66488457, -5.51067899e-007, -8.20678088e-006, -1, -7.33187335e-006, -1, 8.20678542e-006, -1, 7.33188062e-006, 5.51007759e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0623626709, 0.0566602945, 2.32466936, 3.65426729e-007, 8.2360848e-006, 1, 7.42080738e-006, 1, -8.23608752e-006, -1, 7.42080738e-006, 3.65365651e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.680399954, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0623703003, 1.98448265, -0.396873713, 4.16283092e-006, 5.42734551e-006, 1, -1, 7.42080783e-006, 4.1627909e-006, -7.42078555e-006, -1, 5.42737644e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113380432, -0.39677012, 1.41745663, -1.67041835e-005, -2.83710989e-007, 1, -8.37889093e-005, 1, 2.82311362e-007, -1, -8.3788902e-005, -1.67042072e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113380432, -0.396781266, -1.19065666, 1.67041926e-005, 5.88926241e-010, -1, -8.37425323e-005, 1, -8.09933454e-010, 1, 8.37425323e-005, 1.67041926e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113388062, -0.396793067, 0.963856697, -1.67041835e-005, -2.83710989e-007, 1, -8.37889093e-005, 1, 2.82311362e-007, -1, -8.3788902e-005, -1.67042072e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113388062, -0.396804214, -0.737055779, 1.67041926e-005, 5.88926241e-010, -1, -8.37425323e-005, 1, -8.09933454e-010, 1, 8.37425323e-005, 1.67041926e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113388062, -0.283595562, -0.737022758, -1.66317204e-005, -1.16287697e-006, 1, 8.37445259e-005, -1, -1.16148408e-006, 1, 8.37444968e-005, 1.66318168e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113388062, -0.28360641, 0.963823557, 1.66445388e-005, 1.31188904e-006, -1, 8.35526735e-005, -1, -1.31049831e-006, -1, -8.35526516e-005, -1.6644648e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113380432, -0.283617616, -1.19062376, -1.66317204e-005, -1.16287697e-006, 1, 8.37445259e-005, -1, -1.16148408e-006, 1, 8.37444968e-005, 1.66318168e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113380432, -0.283628225, 1.41742361, 1.66445388e-005, 1.31188904e-006, -1, 8.35526735e-005, -1, -1.31049831e-006, -1, -8.35526516e-005, -1.6644648e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113395691, -0.283584476, 0.51022172, 1.66445388e-005, 1.31188904e-006, -1, 8.35526735e-005, -1, -1.31049831e-006, -1, -8.35526516e-005, -1.6644648e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113372803, -0.396749079, 1.87105703, -1.67041835e-005, -2.83710989e-007, 1, -8.37889093e-005, 1, 2.82311362e-007, -1, -8.3788902e-005, -1.67042072e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113372803, -0.396759272, -1.64425707, 1.67041926e-005, 5.88926241e-010, -1, -8.37425323e-005, 1, -8.09933454e-010, 1, 8.37425323e-005, 1.67041926e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.113372803, -0.28365016, 1.87102401, 1.66445388e-005, 1.31188904e-006, -1, 8.35526735e-005, -1, -1.31049831e-006, -1, -8.35526516e-005, -1.6644648e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113372803, -0.28363955, -1.64422417, -1.66317204e-005, -1.16287697e-006, 1, 8.37445259e-005, -1, -1.16148408e-006, 1, 8.37444968e-005, 1.66318168e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadPartHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113395691, -0.283573627, -0.28342092, -1.66317204e-005, -1.16287697e-006, 1, 8.37445259e-005, -1, -1.16148408e-006, 1, 8.37444968e-005, 1.66318168e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
ReloadHandleConnector=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,1,"Earth green","ReloadHandleConnector",Vector3.new(0.226799995, 0.226800025, 0.226800099))
ReloadHandleConnectorweld=CreateWeld(m,ReloadPartHandle,ReloadHandleConnector,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.49481797, -0.226940989, -0.277839661, 0.999999762, 7.05122366e-005, -2.50649571e-011, 7.05122366e-005, -0.999999762, 1.49030228e-007, -1.45563596e-011, -1.490302e-007, -1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.92779994, 0.793799937, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07730186, -0.0567010641, 0, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113492846, -0.11907196, 0.396896601, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.340199977, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0566112399, -0.11907196, 0.396897554, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.567000151))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22671026, -0.119064331, 0.396896601, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.680400014, 0.680400014))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.43809271, 0.226929545, 0.0623550415, 0.999999344, -1.54938607e-005, 1.63030874e-012, -1.5493817e-005, -0.999999762, 1.4898589e-007, -6.77920393e-013, -1.48985805e-007, -0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.340199977, 0.680400014))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.98450649, 0.283373833, 0.0623626709, 0.999999762, 7.05122366e-005, -2.50649571e-011, 7.05122366e-005, -0.999999762, 1.49030228e-007, -1.45563596e-011, -1.490302e-007, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.566999972, 0.200000003, 0.680400014))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.32471132, -0.510436893, 0.0623626709, 0.999999762, 7.05122366e-005, -2.50649571e-011, 7.05122366e-005, -0.999999762, 1.49030228e-007, -1.45563596e-011, -1.490302e-007, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.340199977, 0.680400014))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.09790635, -0.283637047, 0.0623626709, 0.999999762, 7.05122366e-005, -2.50649571e-011, 7.05122366e-005, -0.999999762, 1.49030228e-007, -1.45563596e-011, -1.490302e-007, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.396898985, -0.396898031, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340200007, 0.566999912, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.396898627, -0.0566999912, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.226800025, 0.793799996, 0.680400014))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.1546061, 0.283370972, 0.0623626709, 0.999999762, 7.05122366e-005, -2.50649571e-011, 7.05122366e-005, -0.999999762, 1.49030228e-007, -1.45563596e-011, -1.490302e-007, -1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.453600049, 0.680400014))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.32469153, 0.226923764, 0.0623550415, 0.999999344, -1.54938607e-005, 1.63030874e-012, -1.5493817e-005, -0.999999762, 1.4898589e-007, -6.77920393e-013, -1.48985805e-007, -0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark green","Part",Vector3.new(0.200000003, 0.567000091, 0.680400014))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.55149174, 0.283629358, 0.0623550415, 0.999999344, -1.54938607e-005, 1.63030874e-012, -1.5493817e-005, -0.999999762, 1.4898589e-007, -6.77920393e-013, -1.48985805e-007, -0.999999583))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(2.72159982, 0.200000003, 0.226800025))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.680400014, -0.510297, -0.0567016602, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.92779994, 0.200000003, 0.226800025))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07733405, 0.396901965, -0.0567016602, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.680400014))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.32470298, 0.62356174, 0.0623626709, 0.999999762, 7.05122366e-005, -2.50649571e-011, 7.05122366e-005, -0.999999762, 1.49030228e-007, -1.45563596e-011, -1.490302e-007, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22671026, -0.119064331, 0.850498438, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113492846, -0.11907196, 0.850498438, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.340199977, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0566112399, -0.11907196, 0.850499868, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.567000151))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113492846, -0.11907196, 1.30409884, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.340199977, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0566112399, -0.11907196, 1.3040998, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.567000151))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.850499868, -0.396914005, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340200007, 0.566999912, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.850499988, -0.0567159653, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.850523829, 0.283486128, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22671026, -0.119064331, 1.30409884, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340200007, 0.566999912, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30410182, -0.0567319393, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30410171, -0.396929979, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.30412579, 0.283470154, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.75772572, 0.28345418, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113492846, -0.11907196, 1.75769877, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.340199977, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0566121936, -0.11907196, 1.75769973, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.567000151))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Sea green","Part",Vector3.new(0.226799995, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.22671026, -0.119064331, 1.75769973, 3.52573588e-005, -1, -3.51071358e-005, 2.51327448e-009, -3.51071358e-005, 1, -1, -3.52573588e-005, 1.2754896e-009))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.340200007, 0.566999912, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.75770175, -0.056747973, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.75770164, -0.396946013, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ReloadPartHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.396922946, 0.283502102, -0.11340332, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 0.566999912))
ChargePart=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Dark stone grey","ChargePart",Vector3.new(1.47420001, 0.566999972, 0.200000003))
ChargePartweld=CreateWeld(m,ReloadPartHandle,ChargePart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07730186, -0.0567010641, -0.226806641, 1, 1.35525272e-018, 1.73472348e-018, 1.35525272e-018, 1, 0, 1.73472348e-018, 0, 1))
CreateMesh("BlockMesh",ChargePart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
ReloadHandle=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,1,"Earth green","ReloadHandle",Vector3.new(0.226799995, 0.226800025, 0.226800099))
ReloadHandleWeld=CreateWeld(m,ReloadHandleConnector,ReloadHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, 0, 0, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.907200098, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.340209961, -0.623709142, 0.283430576, 1.15484345e-005, -1.20871528e-006, -1, 7.59360555e-005, -0.999999762, 1.20959248e-006, -0.999999762, -7.59360701e-005, -1.15483454e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.907200098, 0.226799995, 0.226799995))
Wedgeweld=CreateWeld(m,ReloadHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.340202332, -0.11338532, 0.226852432, -1.1505872e-005, 1.1618821e-006, 1, 7.63284916e-005, -0.999999762, 1.16276055e-006, 0.999999762, 7.63285061e-005, 1.15057865e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.226800025, 0.226799995, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.340201318, -0.0566540658, -1.1505872e-005, 1.1618821e-006, 1, 7.63284916e-005, -0.999999762, 1.16276055e-006, 0.999999762, 7.63285061e-005, 1.15057865e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.453600049, 0.340199977, 0.340199977))
Wedgeweld=CreateWeld(m,ReloadHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.340202332, -0.170035392, 0.0567026138, -5.27866689e-007, 8.14134546e-006, 1, 0.999999762, 7.78287358e-005, 5.27233169e-007, -7.78287213e-005, 0.999999762, -8.14138821e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.226800025, 0.226799995, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.680404663, -0.340200543, -0.0566462278, -1.1505872e-005, 1.1618821e-006, 1, 7.63284916e-005, -0.999999762, 1.16276055e-006, 0.999999762, 7.63285061e-005, 1.15057865e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.566999912))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Wedge",Vector3.new(0.907199979, 0.200000003, 0.200000003))
Wedgeweld=CreateWeld(m,ReloadHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.340202332, -0.170096517, 0.283440024, -5.5162144e-007, 8.05771015e-006, 1, -7.78441026e-005, 0.999999762, -8.05775562e-006, -0.999999762, -7.78441172e-005, -5.50994287e-007))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 0.566999912))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.200000003, 0.453600049))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170098811, 0.623691797, 0.340202332, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.340199977, 0.453600109))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0567089319, 0.0567077398, 0.340202332, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226799995, 0.453599989, 0.226800099))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.680399895, 0.226800099))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283499837, 0.226791978, 0, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.907199979, 0.226800099))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170098901, 0.226791859, 0, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.680399895, 0.226800099))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.283499837, 0.226791978, 0.680397034, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226799995, 0.453599989, 0.226800099))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0.680397034, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.340199977, 0.200000003, 0.453600109))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0566909015, -0.170103908, 0.340202332, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.200000003, 0.907199979, 0.226800099))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.170098901, 0.226791859, 0.680397034, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.566999912, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226799995, 0.226799995, 0.907200098))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.226809144, -0.113391995, 0.340202332, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Earth green","Part",Vector3.new(0.226799995, 0.200000003, 0.453600049))
Partweld=CreateWeld(m,ReloadHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.226794779, 0.510291934, 0.340202332, 0.999999523, -1.01853277e-022, 1.50053581e-016, -1.01853277e-022, 0.999999523, -5.70411773e-014, 1.50053581e-016, -5.70411773e-014, 1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.566999912, 1))

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.new(x1, y1, z1)
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

function attackone()
	attack = true
	for i = 0, 1, 0.1 do
		swait(1)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
	end
	attack = false
end

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attackone()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == '' then
	
	end
end)

while true do
	swait(1)
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Hat") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				ReloadHandleWeld.C0 = clerp(ReloadHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				ReloadPartHandleWeld.C0 = clerp(ReloadPartHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				ReloadHandleWeld.C0 = clerp(ReloadHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				ReloadPartHandleWeld.C0 = clerp(ReloadPartHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				ReloadHandleWeld.C0 = clerp(ReloadHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				ReloadPartHandleWeld.C0 = clerp(ReloadPartHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				ReloadHandleWeld.C0 = clerp(ReloadHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				ReloadPartHandleWeld.C0 = clerp(ReloadPartHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
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