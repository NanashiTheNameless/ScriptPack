Ply = game.Players.LocalPlayer
Char = Ply.Character
Tor = Char.Torso
He = Char.Head
Ne = Tor.Neck
Hu = Char.Humanoid
LA = Char["Left Arm"] 
LL = Char["Left Leg"] 
RA = Char["Right Arm"] 
RL = Char["Right Leg"]
LS = Tor["Left Shoulder"] 
RS = Tor["Right Shoulder"] 
LH = Tor["Left Hip"] 
RH = Tor["Right Hip"] 
Combo = 1
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RP = Char.HumanoidRootPart
RJ = RP.RootJoint
RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
LHCF = CFrame.Angles(0, math.rad(-90), 0)
RHCF = CFrame.Angles(0, math.rad(90), 0)
attack = false
equipped = false
local Anim = "Idle"
cam = workspace.CurrentCamera
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
	Parent = Char,
	Name = "WeaponModel",
}

RS.Parent = nil 
LS.Parent = nil 

RW = Create("Weld"){
	Name = "Right Shoulder",
	Part0 = Tor ,
	C0 = CFrame.new(1.5, 0.5, 0),
	C1 = CFrame.new(0, 0.5, 0), 
	Part1 = RA ,
	Parent = Tor ,
}

LW = Create("Weld"){
	Name = "Left Shoulder",
	Part0 = Tor ,
	C0 = CFrame.new(-1.5, 0.5, 0),
	C1 = CFrame.new(0, 0.5, 0) ,
	Part1 = LA ,
	Parent = Tor ,
}
	
mouse = Ply:GetMouse()

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(FF, Par, Mat, Ref, Tra, BC, Nam, Siz)
	local Part = Create("Part"){
		formFactor = FF,
		Parent = Par,
		Reflectance = Ref,
		Transparency = Tra,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BC)),
		Name = Nam,
		Size = Siz,
		Position = Tor.Position,
		Material = Mat,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Ms, Par, MType, MId, OS, Sca)
	local Msh = Create(Ms){
		Parent = Par,
		Offset = OS,
		Scale = Sca,
	}
	if Ms == "SpecialMesh" then
		Msh.MeshType = MType
		Msh.MeshId = MId
	end
end
	
function CreateWeld(Par, PartA, PartB, CA, CB)
	local Weld = Create("Weld"){
		Parent = Par,
		Part0 = PartA,
		Part1 = PartB,
		C0 = CA,
		C1 = CB,
	}
	return Weld
end
	
function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Create("Sound"){
		Parent = par or workspace,
		Volume = vol,
		Pitch = pit or 1,
		SoundId = id,
		}
		wait() 
		sou:play() 
	end))
end
 
function clerp(a, b, t)

	local function QuaternionFromCFrame(cf)
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
         
	local function QuaternionToCFrame(px, py, pz, x, y, z, w)
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
         
	local function QuaternionSlerp(a, b, t)
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

function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function Damage(Hit, Damage, CoolDown, Color1, Color2)
	for i, v in pairs(Hit:GetChildren()) do 
		if v:IsA("Humanoid") and Hit.Name ~= Char.Name then
			local find = v:FindFirstChild("Hitz")
			if not find then
				if v.Parent:findFirstChild("He") then
					local BillG = Instance.new("BillboardGui", v.Parent.He)
					BillG.Size = UDim2.new(1, 0, 1, 0)
					BillG.Adornee = v.Parent.He
					BillG.StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3))
					local TL = Create("TextLabel"){
					Parent = BillG,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Text = tostring(Damage).."-",
					TextColor3 = Color1.BrickColor.Color,
					TextStrokeColor3 = Color2.BrickColor.Color,
					TextStrokeTransparency = 0,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					FontSize = Enum.FontSize.Size18,
					Font = "ArialBold"
					}
					coroutine.resume(coroutine.create(function()
						wait(1)
						for i = 0, 1, .1 do
							wait(.1)
							BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, .1, 0)
						end
						BillG:Destroy()
					end))
				end
				v.Health = v.Health - Damage
				local bool = Instance.new("BoolValue", v)
				bool.Name = 'Hitz'
				game:GetService("Debris"):AddItem(bool, CoolDown)
			end
		end
	end
end

Handle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Fossil","Handle",Vector3.new(0.200000003, 1.5999999, 0.400000006))
Handleweld=CreateWeld(m,RA,Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000144958496, -0.000473022461, -0.902323723, -0.99999088, -7.06478168e-005, 1.32429577e-007, -1.32337391e-007, -1.23539292e-006, -0.999991298, 7.11832181e-005, -0.999998987, 1.19070683e-006))
FakeHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Fossil","FakeHandle",Vector3.new(0.200000003, 0.399999976, 0.400000006))
FakeHandleweld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0, -4.76837158e-007, 0.999981761, -1.49498192e-011, -1.60442858e-006, 4.88853402e-012, 0.999982595, 1.34059405e-007, 5.34804883e-007, -4.46862032e-008, 0.999998212))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, -1.29968262, -0.0999927521, 0.999981761, -4.21102413e-006, -0.000178337199, 4.21249342e-006, 0.999982595, 8.45484647e-006, 0.000177264592, -8.3660907e-006, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -1.20024109, 0.0999908447, 0.999981761, -3.9908814e-006, -0.00018298396, -3.993885e-006, -0.999982595, -1.6677257e-005, -0.000181911251, 1.65883521e-005, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, -1.29968262, -0.100018501, -0.999981761, 4.32283468e-006, 0.00017718962, 4.32428533e-006, 0.999982595, 8.40528628e-006, -0.000176117028, 8.3165487e-006, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, 0.100128174, -3.0040741e-005, -0.999981761, -3.06569291e-006, 0.000182044634, -3.06690617e-006, 0.999982595, -6.56936527e-006, -0.000180971983, -6.65919424e-006, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.200000003, 0.400000006))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.100143433, -2.28881836e-005, -0.999981761, 8.39634822e-007, 0.000183251264, -8.39851964e-007, -0.999982595, -1.34311608e-006, 0.000182178643, -1.2538751e-006, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, -0.39994812, -0.000118732452, 0.999981761, 3.41485384e-006, -2.31657104e-005, 3.41463692e-006, -0.999982595, -1.02540453e-005, -2.20957536e-005, 1.01644318e-005, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-005, 0.399993896, -6.67572021e-006, 0.999981761, -1.19159111e-007, -1.12509952e-005, 1.19157249e-007, 0.999982595, 9.39085567e-007, 1.01812002e-005, -8.49698608e-007, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.86645508e-005, 0.799972534, 4.76837158e-006, 0.999981761, -1.78735206e-007, -1.23205427e-005, 1.78738247e-007, 0.999982595, 1.29673231e-006, 1.12507296e-005, -1.20734046e-006, 0.999998212))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.34057617e-005, -1.20025635, 0.10000658, -0.999981761, 3.90575906e-006, 0.000185596058, -3.90847254e-006, -0.999982595, -1.48671952e-005, 0.000184523349, -1.47783121e-005, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-005, -0.899749756, -1.00135803e-005, 0.999981761, -4.52529139e-006, -0.000163834338, 4.52641507e-006, 0.999982595, 7.07933259e-006, 0.000162761979, -6.99058864e-006, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","Part",Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, 0.29977417, -3.57627869e-005, -0.999981761, 4.56700582e-006, 2.76307201e-005, -4.56679709e-006, -0.999982595, 7.23480662e-006, 2.65607014e-005, 7.32394074e-006, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.299850464, -1.8119812e-005, -0.999981761, 6.3186701e-007, 2.16101889e-005, 6.31867863e-007, 0.999982595, 6.72535407e-007, -2.05402212e-005, 5.8316482e-007, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, 0.899765015, -1.62124634e-005, 0.999981761, -9.32578303e-007, -0.000175737689, -9.32731155e-007, -0.999982595, -1.02931472e-006, -0.000174665154, 9.40088398e-007, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
BladeHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.19999998807907,"Toothpaste","BladeHandle",Vector3.new(0.200000003, 0.400000006, 0.400000006))
BladeHandleweld=CreateWeld(m,FakeHandle,BladeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, 1.99960327, 3.95774841e-005, -0.999981761, -1.32326576e-007, 0.000178653223, 1.3257916e-007, -0.999982715, 1.35444691e-006, 0.000177580674, 1.39915676e-006, 0.999998212))
CreateMesh("SpecialMesh",BladeHandle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Fossil","Hitbox",Vector3.new(0.200000003, 3.4000001, 1.20000005))
Hitboxweld=CreateWeld(m,BladeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -2.29992676, -0.000141143799, -0.999981761, 1.54720542e-011, 1.56042952e-005, -1.84014193e-011, -0.999982834, 5.96584471e-008, 1.66794853e-005, 5.96595839e-008, 0.999998212))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 3.20000005, 0.600000024))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -2.39953613, 0.299910545, -0.999981761, 1.11494702e-011, 4.91918036e-006, -1.47164086e-011, -0.999982834, 5.96425735e-008, 5.99455234e-006, 5.96437033e-008, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.100128174, 0.700077772, 0.999981761, 3.34093864e-012, -9.17352736e-008, -5.13478149e-013, -0.999982834, 5.95590421e-008, -1.16718002e-006, -5.95602003e-008, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 3.20000005, 0.600000024))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, -2.39958191, 0.300290346, 0.999981761, -2.12692253e-010, -1.34985239e-005, -2.15749973e-010, -0.999982834, 5.94570011e-008, -1.45737504e-005, -5.94581344e-008, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 0.200000018))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.400344849, 0.500155926, 0.999981761, -2.19540247e-010, -1.26651285e-005, -2.22647581e-010, -0.999982834, 5.94515797e-008, -1.37403622e-005, -5.94527094e-008, -0.999998212))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.15527344e-005, -0.499847412, -0.300111532, 0.999981761, -6.99822465e-007, 3.21262632e-006, 6.99820532e-007, 0.999982834, 2.40010445e-006, -2.13713793e-006, -2.40006443e-006, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, 0.20010376, -0.299919605, 0.999981761, -4.54817467e-007, -5.03034971e-006, -4.54819144e-007, -0.999982834, 2.78908715e-007, -6.10571442e-006, -2.78904196e-007, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.599838257, 0.600077152, -0.999981761, 2.73906039e-007, -4.02069418e-006, 2.7390189e-007, 0.999982834, 2.64749633e-006, 2.9451985e-006, 2.64745267e-006, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 0.200000018))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.400344849, 0.499759197, -0.999981761, 1.20092963e-011, 6.70757436e-006, -1.54696325e-011, -0.999982834, 5.96330949e-008, 7.78290996e-006, 5.96342247e-008, 0.999998212))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.600000143, 0.200000033))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.500274658, 0.699822426, -0.999981761, 2.13075807e-011, 1.29148029e-005, -2.44003914e-011, -0.999982834, 5.94436145e-008, 1.39900367e-005, 5.94447549e-008, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000152587891, 0.29977417, -0.20009017, 0.999981761, -6.43139708e-012, -3.69289774e-006, 1.0355744e-011, 0.999982834, -2.66098255e-011, 4.76827699e-006, 2.8663294e-011, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000183105469, 0.200149536, -0.300102234, -0.999981761, 1.49097339e-008, 4.5542256e-006, -1.49133381e-008, -0.999982834, 5.42441221e-008, 5.62959031e-006, 5.42452696e-008, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.800000072, 0.400000006))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(8.39233398e-005, -0.999664307, 0.200092554, 0.999981761, -3.95544708e-012, 4.41308657e-007, -7.84210197e-012, -0.999982834, 5.96419412e-008, -6.34157914e-007, -5.96430709e-008, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000152587891, 0.100143433, 0.500086546, 0.999981761, -5.8873878e-012, -3.42418934e-006, -9.54353263e-012, -0.999982834, 5.96374576e-008, -4.49957588e-006, -5.96385945e-008, -0.999998212))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 0.600000024))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-005, -0.599533081, 0.700154305, -0.999981761, -1.4772513e-008, 1.21978883e-005, -1.49355408e-008, 0.999982834, -1.2579485e-005, -1.32731293e-005, -1.25792931e-005, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-005, 0.0995178223, 0.700134993, 0.999981761, -2.18819241e-010, 9.61532351e-007, -2.22737162e-010, -0.999982834, 6.0835994e-008, -1.13912392e-007, -6.08371167e-008, -0.999998212))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000137, 0.600000024))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.70022583, 0.300123453, 0.999981761, -2.20294477e-010, 6.77464413e-008, -2.24158456e-010, -0.999982834, 5.98086771e-008, -1.00770558e-006, -5.98098069e-008, -0.999998212))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, 0.0997314453, 0.900169849, 0.999981761, -2.16103496e-010, 1.49953121e-006, -2.20052046e-010, -0.999982834, 6.14535409e-008, 4.24064638e-007, -6.14546636e-008, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.600000143, 0.200000033))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.500228882, 0.700129032, 0.999981761, -2.17749069e-010, -4.84001066e-006, -2.21319518e-010, -0.999982834, 5.9810489e-008, -5.91537537e-006, -5.98116188e-008, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.600000083, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.91821289e-005, 0.100112915, 0.699890614, -0.999981761, 7.18990145e-012, -1.53825385e-006, -1.11410742e-011, -0.999982834, 5.976095e-008, -4.62780008e-007, 5.97621082e-008, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.600000024, 0.400000006))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-005, 0.299789429, -0.199937344, -0.999981761, 2.7011865e-012, 1.49950938e-006, 6.31858454e-012, 0.999982834, -1.19261927e-007, -2.5749323e-006, -1.19262154e-007, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.800000072, 0.400000006))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, -0.999954224, 0.199864864, -0.999981761, 8.21773205e-012, 5.84091322e-006, -1.1729645e-011, -0.999982834, 5.96492384e-008, 6.91626337e-006, 5.96503753e-008, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.600000024, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81469727e-005, 0.100036621, 0.499933243, -0.999981761, 1.20618862e-011, 3.85295425e-006, -1.56922253e-011, -0.999982834, 5.96835577e-008, 4.92833351e-006, 5.96846945e-008, 0.999998212))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.399963379, 0.499933243, -0.999981761, 8.33516589e-012, 2.36118649e-006, -1.20545518e-011, -0.999982834, 5.96779444e-008, 3.43659485e-006, 5.96790812e-008, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.400000155, 0.600000024))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000183105469, -0.599578857, 0.699863434, 0.999981761, -1.50043302e-008, -5.07864752e-006, 1.50849182e-008, 0.999982834, 1.24600392e-005, 6.15401223e-006, -1.24598455e-005, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, 0.0995788574, 0.699845791, -0.999981761, 1.22518801e-011, 6.45028194e-007, -1.60736077e-011, -0.999982834, 5.86622804e-008, 1.72046566e-006, 5.86634457e-008, 0.999998212))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.200000137, 0.600000024))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.86645508e-005, -0.700195313, 0.299836636, -0.999981761, 1.4545129e-011, 3.57317185e-006, -1.8192392e-011, -0.999982834, 5.96309135e-008, 4.64856566e-006, 5.96320504e-008, 0.999998212))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000137329102, -0.499862671, -0.299929142, -0.999981761, -6.99751979e-007, -2.97113729e-006, -6.99742486e-007, 0.999982834, -2.51947517e-006, 1.89564162e-006, -2.51943766e-006, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000006, 0.400000036))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -0.599853516, 0.599877834, 0.999981761, 2.73833876e-007, 3.43463034e-006, -2.73823105e-007, 0.999982834, -2.76679339e-006, -2.35912739e-006, 2.766752e-006, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Mid gray","Part",Vector3.new(0.200000003, 0.600000143, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, 0.0998077393, 0.899896622, -0.999981761, 1.10282478e-011, -1.01601472e-007, -1.48965076e-011, -0.999982834, 5.82748356e-008, 9.73850547e-007, 5.82760045e-008, 0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.200000003, 0.400000036, 0.200000003))
Partweld=CreateWeld(m,BladeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000183105469, -0.399810791, 0.500085354, 0.999981761, -1.92078298e-012, -1.94731547e-006, -5.66501013e-012, -0.999982834, 5.96335141e-008, -3.02273838e-006, -5.9634651e-008, -0.999998212))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

function FirstAttack()
attack = true
for i = 0,1,0.1 do
wait()
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-.5), math.rad(0), math.rad(-60)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(.5), math.rad(0), math.rad(60)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-90)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-.5)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.9, -1, .2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-.5)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
CreateSound("http://roblox.com/asset/?id=199145095",Hitbox,1,1)
for i = 0,1,0.1 do
wait()
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-.5), math.rad(0), math.rad(60)), .4)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(.5), math.rad(0), math.rad(-60)), .4)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(90)), .4)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(-50)), .4)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, .3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-.5)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-.9, -1, -.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-.5)), .4)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(0)), .4)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .4)
end
attack = false
end

function SecondAttack()
attack = true
for i = 0,1,0.1 do
wait()
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-.5), math.rad(0), math.rad(70)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(.5), math.rad(0), math.rad(-70)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * CFrame.Angles(math.rad(0), math.rad(100), math.rad(130)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, .3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-.5)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.9, -1, -.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-.5)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-10)), .3)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
end
CreateSound("http://roblox.com/asset/?id=199145146",Hitbox,1,1)
for i = 0,1,0.1 do
wait()
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, .5, 0) * CFrame.Angles(math.rad(-.5), math.rad(0), math.rad(-70)), .4)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(70)), .4)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(50)), .4)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), .4)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-.5)), .4)
				LH.C0 = clerp(LH.C0, CFrame.new(-.9, -1, .2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-.5)), .4)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-20)), .3)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .3)
end
attack = false
end

function ThirdAttack()
attack = true
for i = 1,2 do
CreateSound("http://roblox.com/asset/?id=199145327",Hitbox,.7,1)
for i = 0,1,0.2 do
wait()
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-.5), math.rad(0), math.rad(-70)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(70)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-.5)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.9, -1, .2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(60), math.rad(-.5)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(6*i, math.rad(0), math.rad(0)), .8)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
end
for i = 1,4 do
CreateSound("http://roblox.com/asset/?id=199145327",Hitbox,.7,1)
for i = 0,1,0.2 do
wait()
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-.5), math.rad(0), math.rad(70)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-70)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, .3) * RHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-.5)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.9, -1, -.2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(-60), math.rad(-.5)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), 6*i, math.rad(90)), .8)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
end
end
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and Combo == 1 then
Combo = 2
FirstAttack()
elseif attack == false and Combo == 2 then
Combo = 3
SecondAttack()
elseif attack == false and Combo == 3 then
Combo = 1
ThirdAttack()
end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	
end)


local sine = 0
local change = 1
local val = 0
local donum = 0

while true do
	wait()
	sine = sine + change
	local torvel = (RP.Velocity * Vector3.new(1, 0, 1)).magnitude 
	local velderp = RP.Velocity.y
	hitfloor, posfloor = rayCast(RP.Position, (CFrame.new(RP.Position, RP.Position - Vector3.new(0, 1, 0))).lookVector, 4, Char)
	if equipped == true or equipped == false then
		if donum >= .5 then
			handidle = true
		elseif donum <= 0 then
			handidle = false
		end
		if handidle == false then
			donum = donum + 0.003
		else
			donum = donum - 0.003
		end
		if RP.Velocity.y > 1 and hitfloor == nil then 
			Anim = "Jump"
			if attack == false then
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(10)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.3) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(-20)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -.1+donum/1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif RP.Velocity.y < -1 and hitfloor == nil then 
			Anim = "Fall"
			if attack == false then
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -.8, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), .3)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -.1+donum/1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			if attack == false then
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-.5)+donum/3.5, math.rad(0), math.rad(-40)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(.5)-donum/3.5, math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-1)-donum/2, math.rad(1)-donum/2, math.rad(2)+donum/2), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(5)+donum/2, math.rad(0), math.rad(-2)-donum/2), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1-donum/6, 0) * RHCF * CFrame.Angles(math.rad(-5), math.rad(20), math.rad(-.5)+donum/3.5), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.9, -1, .2) * LHCF * CFrame.Angles(math.rad(-5), math.rad(40), math.rad(-.5)-donum/3.5), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10)-donum/2, math.rad(0), math.rad(-10)), .3)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -.1+donum/3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif torvel > 2 and hitfloor ~= nil then
			Anim = "Walk"
			if attack == false then
				RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20)-donum/2, math.rad(0), math.rad(10)+donum/2), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.6, 0.6, -.9) * CFrame.Angles(math.rad(120)+donum/2, math.rad(10), math.rad(80)), .3)
				RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5)-donum/1, math.rad(0), math.rad(0)), .3)
				BladeHandleweld.C0 = clerp(BladeHandleweld.C0, CFrame.new(0, -.1+donum/1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		end
	end
end