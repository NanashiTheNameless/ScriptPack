--[[NIGHTOWLACE_WEAPONRY]]--
--Only working move does no damage-

--Needs more keybind attacks--
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
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5 / s 
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00 - m11 - m22 + 1) 
			local recip = 0.5 / s 
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip 
		elseif i == 1 then 
			local s = math.sqrt(m11 - m22 - m00 + 1) 
			local recip = 0.5 / s 
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip 
		elseif i == 2 then 
			local s = math.sqrt(m22 - m00 - m11 + 1) 
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip 
		end 
	end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w * xs, w * ys, w * zs 
	local xx = x * xs 
	local xy = x * ys 
	local xz = x * zs 
	local yy = y * ys 
	local yz = y * zs 
	local zz = z * zs 
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy)) 
end
 
function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1 / math.sin(theta) 
			startInterp = math.sin((1 - t) * theta) * invSinTheta 
			finishInterp = math.sin(t * theta) * invSinTheta  
		else 
			startInterp = 1 - t 
			finishInterp = t 
		end 
	else 
		if (1 + cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1 / math.sin(theta) 
			startInterp = math.sin((t - 1) * theta) * invSinTheta 
			finishInterp = math.sin(t * theta) * invSinTheta 
		else 
			startInterp = t - 1 
			finishInterp = t 
		end 
	end 
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp 
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

Handle = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 1, "Black", "Handle", Vector3.new(0.5, 2.0999999, 0.200000003))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.988736868, 0.384963989, -0.0709247589, -5.7466209e-006, -0.999994397, 3.26470035e-005, 5.88346529e-006, -3.26468544e-005, -1, 1, -5.74639671e-006, 5.8836531e-006))
CreateMesh("SpecialMesh", Handle, Enum.MeshType.Head, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
FakeHandle = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "FakeHandle", Vector3.new(0.5, 2.5, 0.200000003))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0171542168, -0.000101089478, -1.52587891e-005, 1, -4.94255801e-008, 6.54397758e-010, 4.94255801e-008, 1, -9.78161552e-009, -6.54065802e-010, 9.78116077e-009, 1))
CreateMesh("SpecialMesh", FakeHandle, Enum.MeshType.Head, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Hitbox = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 1, "Royal purple", "Hitbox", Vector3.new(3.39999962, 6.40000057, 0.200000003))
Hitboxweld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599976897, 3.78106308, -0.00105857849, 1, 9.17869329e-007, -3.09853681e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853635e-006, 3.59749265e-007, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00199222565, -1.36688352, 0.91988945, -1.07260448e-005, 5.24271636e-005, 1, 1, 7.52143824e-005, 1.07221013e-005, -7.52138149e-005, 1, -5.24279676e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.273375034, 0.273375034, 0.273375034))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0020980835, -1.36713505, -0.373126984, -3.42016392e-005, 3.30372723e-006, -1, 1, 6.92866306e-005, -3.420141e-005, 6.92865142e-005, -1, -3.30609691e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.273375034, 0.273375034, 0.273375034))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.36701512, 0.647027969, -0.00205993652, 1, 9.17869329e-007, -3.09853681e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853635e-006, 3.59749265e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.364500016, 0.364500016, 0.364500016))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00208091736, -0.729172707, 1.46697998, 2.14775646e-005, 6.49265075e-006, -1, -1, -6.24730383e-005, -2.14779684e-005, -6.24731765e-005, 1, 6.49130925e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.273375034, 0.364500016, 0.273375034))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00208473206, -1.36713862, 0.919971466, 2.14782158e-005, 6.48287187e-006, -1, -1, -6.25224275e-005, -2.14786214e-005, -6.2522573e-005, 1, 6.48152945e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.273375034, 0.273375034, 0.273375034))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.78813934e-005, 1.37602234, -0.00105953217, 1, 7.86549208e-007, -2.881829e-006, -7.86552846e-007, 1, -3.39721282e-007, 2.881829e-006, 3.39723101e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.911249995, 0.364500016, 0.364500016))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.50203705e-005, 1.37602234, -0.00106143951, 1, 7.86403689e-007, -2.88184356e-006, -7.86407327e-007, 1, -3.39764483e-007, 2.88184356e-006, 3.39766302e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.364500016, 0.911249995, 0.364500016))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.182015419, 1.46701622, -0.00105762482, 1, 8.6833461e-007, -3.09789539e-006, -8.68338248e-007, 1, -3.69564077e-007, 3.09789493e-006, 3.69566806e-007, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364500016, 0.273375034, 0.273375034))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00203514099, 0.728891611, -0.919963837, -3.42016392e-005, 3.30372177e-006, -1, 1, 6.92866452e-005, -3.420141e-005, 6.92865287e-005, -1, -3.30609146e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.273375034, 0.364500016, 0.273375034))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00205993652, -1.36701274, -0.374061584, -6.38305073e-006, -2.04226171e-006, 1, -1, 1.39180702e-006, -6.383048e-006, -1.39179247e-006, -1, -2.04227035e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.273375034, 0.273375034, 0.273375034))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.36696672, 0.647037506, -0.00205039978, 1, 9.17869329e-007, -3.09853681e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853635e-006, 3.59749265e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.364500016, 0.364500016, 0.364500016))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.48362732e-006, 1.74000549, -0.00106716156, 1, 8.31929356e-007, -3.09747497e-006, -8.55670805e-007, 1, -3.76769094e-007, 3.09776465e-006, 3.7206155e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.273375034, 0.546750069, 0.273375034))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 0.5, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.57492065e-005, -1.53996277, -0.0020532608, 1, 9.17869329e-007, -3.09853681e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853635e-006, 3.59749265e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.637875021, 0.637875021, 1.09350014))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00115871429, -3.30009842, 0.999759197, -4.33876921e-005, 1.81356409e-005, -1, 6.59307698e-005, -1, -1.81385021e-005, -1, -6.59315556e-005, 4.33864952e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0.800000012, -0.5), Vector3.new(0.0844999999, 2, 0.5))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.38282776e-005, 3.38105774, -0.00105476379, 1, 9.17869329e-007, -3.09853317e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853272e-006, 3.59749265e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.182250008, 2.55150008, 0.291599989))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.18200779, 3.38004494, -0.00105571747, 1, 9.17869329e-007, -3.09853499e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853453e-006, 3.59749265e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.182250008, 2.55150008, 0.182250008))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.31673431e-005, -0.00191497803, -4.11003494, 1, -1.81591931e-005, -3.91808044e-006, 3.9186757e-006, 3.27668895e-005, 1, -1.81590622e-005, -1, 3.27669622e-005))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 1.10000002), Vector3.new(1.09399998, 0.0480000004, 1.09399998))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.31809235e-005, -0.00191688538, -4.10998535, 1, -1.81591786e-005, -3.91808044e-006, 3.9186757e-006, 3.27668859e-005, 1, -1.81590476e-005, -1, 3.2766955e-005))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0.75), Vector3.new(2.18700027, 0.0437400006, 2.18700027))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00211715698, -5.9500494, -0.0851407051, 4.76346322e-005, -9.64188985e-006, 1, -1.57094873e-005, -1, -9.64114042e-006, 1, -1.5709029e-005, -4.76347814e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.0860000029, 1, 1))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00209140778, -6.52481937, 2.01444435, 7.50156905e-005, 0.000124422018, -1, 1.20043878e-005, -1, -0.000124421131, -1, -1.19950528e-005, -7.50171821e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.0860000029, 0.425000012, 0.349999994))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.47955322e-005, 3.38104248, -0.00105476379, 1, 9.17869329e-007, -3.09853681e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853635e-006, 3.59749265e-007, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1.09350014, 1.82249999, 0.091125004))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.5, 0.5, 0.5))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.97887421e-005, 0.100036621, -0.00205230713, 1, 9.17869329e-007, -3.09853681e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853635e-006, 3.59749265e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.200474992, 3.64499998, 0.200474992))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.88486481e-005, 5.20302105, -0.00205039978, 1, 9.17869329e-007, -3.09853681e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853635e-006, 3.59749265e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(1.09350014, 1.09350014, 1.09350014))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.47955322e-005, 3.38104248, -0.00105476379, 1, 9.17869329e-007, -3.09853681e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853635e-006, 3.59749265e-007, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0.300000012, 0), Vector3.new(2.1500001, 1.85000002, 0.0728999972))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00115871429, -3.30009842, 0.999759197, -4.33876921e-005, 1.81356409e-005, -1, 6.59307698e-005, -1, -1.81385021e-005, -1, -6.59315556e-005, 4.33864952e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0.5, -0.370000005), Vector3.new(0.0850000009, 3.1400001, 0.300000012))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.181978226, 3.38004112, -0.00105857849, 1, 9.17869329e-007, -3.09853499e-006, -9.17872967e-007, 1, -3.59746082e-007, 3.09853453e-006, 3.59749265e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.182250008, 2.55150008, 0.182250008))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00208759308, -2.14117122, -5.4559269, 7.50156905e-005, 0.000124422018, -1, 1, 1.21837293e-005, 7.50172112e-005, 1.21930643e-005, -1, -0.000124421102))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.0860000029, 0.219999999, 0.300000012))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00212001801, -1.77485621, -1.80015564, -3.42009844e-005, 3.29393743e-006, -1, 1, 6.93360635e-005, -3.42007552e-005, 6.9335947e-005, -1, -3.29630893e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.0860000029, 0.219999999, 0.300000012))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00212955475, -1.77469087, -4.10015297, -3.42009844e-005, 3.29393743e-006, -1, 1, 6.93360635e-005, -3.42007552e-005, 6.9335947e-005, -1, -3.29630893e-006))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0.104999997, 1.82500005), Vector3.new(0.0850000009, 0.485000014, 0.173999995))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.74045563e-005, -1.74000549, 0.00106239319, 1, 7.09867891e-007, -3.47113655e-006, 7.18398951e-007, -1, 1.90790615e-007, -3.47124728e-006, -1.89104412e-007, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(0.200000003, 0.728999972, 0.200000003))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Royal purple", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.09944153e-005, -1.5399704, -0.00205135345, 1, 8.40984285e-007, -3.09759139e-006, -9.45463398e-007, 1, -3.74972387e-007, 3.09895586e-006, 3.54291842e-007, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.182250008, 0.364500016, 0.182250008))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.182011604, 1.46700859, -0.00105857849, 1, 8.68320058e-007, -3.09790266e-006, -8.68323696e-007, 1, -3.69571353e-007, 3.09790221e-006, 3.69574082e-007, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.364500016, 0.273375034, 0.273375034))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(1, 1, 1))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.07424164e-005, 0.647010803, -0.00105762482, 1, 8.68501957e-007, -3.09789175e-006, -8.68505595e-007, 1, -3.69520876e-007, 3.09789129e-006, 3.69523605e-007, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.620000005, 0.100000001, 0.620000005))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000971794128, -0.728844762, 1.46681595, -1.07260448e-005, 5.24271709e-005, 1, 1, 7.52143824e-005, 1.07221013e-005, -7.52138221e-005, 1, -5.24279749e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.273375034, 0.364500016, 0.273375034))
Part = CreatePart(Enum.FormFactor.Symmetric, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(1, 2, 2))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00204944611, 0.728974223, -0.920038223, -6.38304891e-006, -2.04226171e-006, 1, -1, 1.39180702e-006, -6.38304618e-006, -1.39179247e-006, -1, -2.04227035e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.273375034, 0.364500016, 0.273375034))

for i,v in pairs(Character:GetChildren()) do
	if v:IsA'Model' then
		for _,c in pairs(v:GetChildren()) do
			if c:IsA'Part' then
				c.CustomPhysicalProperties = PhysicalProperties.new(0.001,0.001,0.001,0.001,0.001)
			end
		end
	end
end

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

function DeadSpike()
	attack = true
	gyro.Parent = nil
	Humanoid.WalkSpeed = 0
	for i = 0, 1, 0.1 do
		swait(1)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(70)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(30)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(0), math.rad(-20)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(50), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(50), math.rad(0)), .3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
	end
	CreateSound("rbxassetid://382880737", Hitbox, 1, .9)
	for i = 0, 1, 0.1 do
		swait(1)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(120)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-50)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-50), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-50), math.rad(0)), .3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), .3)
	end
	local POS = RootPart.Position + RootPart.CFrame.lookVector * 15 - Vector3.new(0, 2, 0)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = false
	p.Anchored = true
	p.Material = "SmoothPlastic"
	p.BrickColor = BrickColor:Black()
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.CFrame = CFrame.new(POS)
	p.Parent = Character
	m = Instance.new("SpecialMesh",p)
	m.Name = "Triangle"
	m.MeshId = "http://www.roblox.com/asset/?id=6547801"
	m.MeshType = "FileMesh"
	m.Scale = Vector3.new(0.1, 0.001, 0.1)
	coroutine.resume(coroutine.create(function(p)
		for i = 1, 10 do
			p.Triangle.Scale = p.Triangle.Scale + Vector3.new(.05, 0, .05)
			p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0, .1, 0)
			swait(1)
		end
		for i = 1, 30 do
			p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0, .1, 0)
			swait(1)
		end
		for i = 1, 10 do
			p.Triangle.Scale = p.Triangle.Scale - Vector3.new(.06, 0, .06)
			p.Transparency = i / 10
			p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0, .5, 0)
			swait(1)
		end
		p.Parent = nil
	end), p)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = false
	p.Anchored = true
	p.Transparency = .5
	p.Material = "SmoothPlastic"
	p.BrickColor = BrickColor:Black()
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.CFrame = CFrame.new(POS)
	p.Parent = Character
	m = Instance.new("SpecialMesh",p)
	m.Name = "Triangle"
	m.MeshId = "http://www.roblox.com/asset/?id=6547801"
	m.MeshType = "FileMesh"
	m.Scale = Vector3.new(0.1, 0.001, 0.1)
	coroutine.resume(coroutine.create(function(p)
		for i = 1, 10 do
			p.Triangle.Scale = p.Triangle.Scale + Vector3.new(.06, 0, .06)
			p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0, -.15, 0)
			swait(1)
		end
		for i = 1, 32 do
			p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0, 0, 0)
			swait(1)
		end
		for i = 1, 10 do
			p.Triangle.Scale = p.Triangle.Scale - Vector3.new(.06, 0, .06)
			p.Transparency = i / 10
			p.CFrame = p.CFrame * CFrame.fromEulerAnglesXYZ(0, -.5, 0)
			swait(1)
		end
		p.Parent = nil
	end), p)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = false
	p.Anchored = true
	p.Transparency = 0
	p.Material = "SmoothPlastic"
	p.BrickColor = BrickColor:Black()
	p.formFactor = "Symmetric"
	p.Size = Vector3.new(1, 1, 1)
	p.CFrame = CFrame.new(POS) - Vector3.new(0, 15, 0)
	p.Parent = Character
	m = Instance.new("SpecialMesh",p)
	m.Name = "SpikeMesh"
	m.MeshId = "http://www.roblox.com/asset/?id=1033714"
    m.MeshType = "FileMesh"
	m.Scale = Vector3.new(5, 60, 5)
	CreateSound("rbxassetid://382885887", p, 1, .7)
	coroutine.resume(coroutine.create(function(p, o)
		for i = 1, 5 do
			p.CFrame = CFrame.new(p.Position:Lerp(o, i / 5), p.Position:Lerp(o, (i + 1) / 5)) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0)
			swait(1)
		end
		swait(10)
		for i = 1, 5 do
			p.CFrame = CFrame.new(o:Lerp(o - Vector3.new(0, 10, 0), i / 5), o:Lerp(o - Vector3.new(0, 10, 0), (i - 1) / 5)) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0)
			swait(1)
		end
		p.Parent = nil
	end), p, POS + Vector3.new(0, 5, 0))
	for i = 1, 5 do
		swait(1)
		local hpos = POS + Vector3.new(0, 4, 0)
		local maxdec = 8
		for il = 1, 7 do
			local p = Instance.new("Part")
			p.TopSurface = 0
			p.BottomSurface = 0
			p.CanCollide = false
			p.Anchored = true
			p.Transparency = 0
			p.Material = "SmoothPlastic"
			p.BrickColor = BrickColor:Black()
			p.formFactor = "Symmetric"
			p.Size = Vector3.new(1, 1, 1)
			p.CFrame = CFrame.new(POS) - Vector3.new(math.random(-6, 6), 15, math.random(-6, 6))
			p.Parent = Character
	        m = Instance.new("SpecialMesh",p)
	        m.Name = "SpikeMesh"
	        m.MeshId = "http://www.roblox.com/asset/?id=1033714"
	        m.MeshType = "FileMesh"
	        m.Scale = Vector3.new(1, 40, 1)
	        CreateSound("rbxassetid://382891851", p, 1, .9)
			coroutine.resume(coroutine.create(function(p, o)
				for i = 1, 5 do
					p.CFrame = CFrame.new(p.Position:Lerp(o, i / 5), p.Position:Lerp(o, (i + 1) / 5)) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0)
					swait(1)
				end
				swait(5.25)
				for i = 1, 5 do
					p.CFrame = CFrame.new(o:Lerp(o - Vector3.new(0, 10, 0), i / 5), o:Lerp(o - Vector3.new(0, 10, 0), (i - 1) / 5)) * CFrame.fromEulerAnglesXYZ(-math.pi / 2, 0, 0)
					swait(1)
				end
				p.Parent = nil
			end), p, POS + Vector3.new(math.random(-i, i), i * 2.5, math.random(-i, i)))
		end
	end
	for i = 0, 1, 0.1 do
		swait(1)
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(75)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-75)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(120)), .3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(-50)), .3)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-50), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-50), math.rad(0)), .3)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), .3)
	end
	Humanoid.WalkSpeed = 16
	gyro.Parent = RootPart
	attack = false
end

keypress = false
input = ""

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if k == 'a' or k == 's' or k == 'd' or k == 'q' or k == 'e' or k == 'z' or k == 'x' or k == 'c' or k == 'v' and attack == false --[[and cooldown3 >= co3 and stamina>=skill3stam]] then
		input = input..k
		print(input)
		coroutine.resume(coroutine.create(function()
			while keypress == true do
				swait()
			end
			for i = 1, 50 do
				if keypress == false then
					swait()
				end
			end
			input = ''
		end))
	end
	if input == 'asdq' and attack == false then
		DeadSpike()
	end
end)

getDirection = function()
	if Character == nil then
		return {
			CFrame.new(0, 0, 0),
			CFrame.new(0, 0, 0)
		}
	end
	local Cam = workspace.CurrentCamera
	return {
		CFrame.new(RootPart.Position, Vector3.new(Cam.CoordinateFrame.x, RootPart.Position.y, Cam.CoordinateFrame.z)) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0),
		Vector3.new(Cam.CoordinateFrame.p.x, RootPart.CFrame.p.y, Cam.CoordinateFrame.p.z)
	}
end

gyro = Create("BodyGyro"){
	Parent = RootPart,
	P = 1e7,
	D = 1e3,
	MaxTorque = Vector3.new(0, 1e7, 0),
}

while true do
	swait(1)
	Humanoid.JumpPower = 60
	gyro.cframe = getDirection()[1]
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -.4, -.5) * RHCF * angles(math.rad(3), math.rad(0), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -.8, -.2) * LHCF * angles(math.rad(3), math.rad(0), math.rad(30)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(40)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-40)), .3)
				RH.C0 = clerp(RH.C0, cn(1, -.8, -.2) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(20)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, -.3) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-30)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 2
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.1 + .1 * math.cos(sine / 40)) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 40)), math.rad(5), math.rad(30)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(10 + 3 * math.cos(sine / 40))), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-8 - 2 * math.cos(sine / 40))), .3)
				RH.C0 = clerp(RH.C0, cn(1, -.9 - .1 * math.cos(sine / 40), 0) * RHCF * angles(math.rad(-3.5 - 1 * math.cos(sine / 40)), math.rad(20), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -.9 - .1 * math.cos(sine / 40), 0) * LHCF * angles(math.rad(-3.5 - 1 * math.cos(sine / 40)), math.rad(20), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(13)), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(30 + 3 * math.cos(sine / 6)), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20 - 3 * math.cos(sine / 6)), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20 + 3 * math.cos(sine / 6)), math.rad(0), math.rad(10 + 3 * math.cos(sine / 15))), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0 - .5 * math.cos(sine / 5)) * angles(math.rad(50 * math.cos(sine / 5)), math.rad(0), math.rad(15 * math.cos(sine / 5))), .3)
				RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(50 * math.cos(sine / 4))), .3)
				LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(50 * math.cos(sine / 4))), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-10), math.rad(12)), .3)
			end
		end
	end
	BlockEffect(BrickColor.new("Black"), LeftArm.CFrame*CFrame.new(0,-1,0), 1, 1, 1, 1, 1, 1, .1, 1)
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