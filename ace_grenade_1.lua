--[[NIGHTOWLACE_WEAPONRY]]--
maincolor = game.Players.LocalPlayer.Character.Torso.BrickColor.Name
secondcolor = "Really black"

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
		wait() 
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
						wait(1)
						for i = 0, 1, .1 do
							wait(.1)
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

BeltHandle=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,1,maincolor,"Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
BeltHandleWeld=CreateWeld(m,Character["Torso"],BeltHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100003839, -0.10000658, 0.039604187, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Handle,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.200000003))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00000143, 0.800000191, -0.900024414, 1.00000095, 0, 0, 0, 1.00000095, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.800000012))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199999452, 0.800000191, -0.900024414, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.800000012))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400000095, 0.800000668, -0.600036621, 1.00000095, 0, 0, 0, 1.00000095, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.200000003))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400000334, 0.800000191, -1.20002747, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.200000003))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.999999285, 1.20000017, -0.900024414, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.800000012))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(1, 0.200000003, 0.399999976))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399996519, 1.19997859, -0.900001526, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.5))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.400000006, 0.200000003, 1))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.873519182, 0.875028849, 7.62939453e-006, 1.00000048, 2.98023224e-008, 0, -2.98023224e-008, 1.00000048, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 1.29999995))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.19999969, 1.20000017, -0.900024414, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.800000012))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(1.20000005, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.383595228, 0.873704672, 0.561660767, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.200000003))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400000334, 1.20000017, -0.600036621, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.200000003))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.400000006, 0.200000003, 1))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10000467, -0.839025259, 7.62939453e-006, 1.00000048, 2.98023224e-008, 0, -2.98023224e-008, 1.00000048, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 1.29999995))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400000334, 1.20000017, -1.20002747, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.200000003))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.00000143, 1.00000095, -0.900024414, 1.00000095, 0, 0, 0, 1.00000095, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.800000012))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199999571, 1.00000024, -0.900024414, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 0.800000012))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400000334, 1.00000024, -1.20002747, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.200000003))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(1, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400000334, 1.00000024, -0.600036621, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.200000003))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.200000003, 0.200000003, 2))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600006104, -0.550998211, -0.264925003, 0, 0, 1, 0.866030455, -0.50000298, 0, 0.50000298, 0.866030455, 0))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 2))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.200000003, 0.200000003, 2))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.551292419, -0.550997257, -0.264920235, 0, 0, 1, 0.866026282, -0.500000596, 0, 0.500000596, 0.866026282, 0))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"rbxasset://fonts/torso.mesh",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.100000001, 2))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.618934631, -1.11904907, -0.378275394, -7.22996483e-005, 0.258449346, 0.966024876, -0.258846909, -0.933106005, 0.249622881, 0.965918303, -0.250034481, 0.0669662654))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146978378, 0.819980621, -0.618515015, 0.965925932, -0.25, 0.0669871271, 0.258818984, 0.933012784, -0.25000006, 1.72604899e-007, 0.258819044, 0.965925872))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.272097737, 0.272097737, 0.272097737))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.146780014, -0.618598938, 0.819963455, -0.965918303, 0.250127673, -0.0666192323, 0.000367853441, 0.258694977, 0.965959072, 0.258847147, 0.933012903, -0.249970183))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0353727117, 0.0353727117, 0.195910335))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.618911743, -1.11906242, 0.0842905045, -7.22996483e-005, 0.258449346, 0.966024876, -0.258846909, -0.933106005, 0.249622881, 0.965918303, -0.250034481, 0.0669662654))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.146529675, -1.11931229, -0.849815369, -0.966026366, 0.249645084, -0.0668619275, -0.258443773, -0.93311727, 0.249998152, 2.07903122e-005, 0.258784831, 0.965935051))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.217678159, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146978855, 0.833585739, -0.618515015, 0.965925932, -0.25, 0.0669871271, 0.258818984, 0.933012784, -0.25000006, 1.72604899e-007, 0.258819044, 0.965925872))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.136048868, 0.952341855))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.146543503, -1.11932945, -0.387252808, -0.966026366, 0.249645084, -0.0668619275, -0.258443773, -0.93311727, 0.249998152, 2.07903122e-005, 0.258784831, 0.965935051))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.544195533, 0.544195533, 0.544195533))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146978378, 1.11928749, -0.618515015, 0.965925932, -0.25, 0.0669871271, 0.258818984, 0.933012784, -0.25000006, 1.72604899e-007, 0.258819044, 0.965925872))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.146780968, -0.618598938, 0.887987137, -0.965918303, 0.250127673, -0.0666192323, 0.000367853441, 0.258694977, 0.965959072, 0.258847147, 0.933012903, -0.249970183))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.217678159, 0.200000003, 0.217678159))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.146979332, 0.874403, -0.618515015, 0.965925932, -0.25, 0.0669871271, 0.258818984, 0.933012784, -0.25000006, 1.72604899e-007, 0.258819044, 0.965925872))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.272097737, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.217678159, 0.51834631, 0.217678159))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.147661209, 0.618507385, -1.11928749, -0.965925753, 0.250000179, -0.0669872537, 9.5304955e-009, -0.258818716, -0.965925992, -0.258819222, -0.933012724, 0.249999642))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.217678159, 0.51834631, 0.217678159))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.618507385, 0.147660732, -1.11928558, 1.63101575e-007, 0.258819103, 0.965925872, -0.965925813, 0.249999955, -0.0669871345, -0.258818984, -0.933012784, 0.250000089))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.217678159, 0.51834631, 0.217678159))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.811385632, 1.0717392, -0.472206116, -0.965925872, -0.249999747, -0.0669872984, -3.85198042e-008, 0.258819461, -0.965925813, 0.258818835, -0.933012724, -0.250000447))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.217678159, 0.51834631, 0.217678159))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07174683, -0.811385632, -0.472205162, 0, -0.258819073, 0.965925932, -0.965925813, -0.25, -0.0669872984, 0.258819044, -0.933012664, -0.25))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.217678159, 0.200000003, 0.217678159))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.812067032, 0.227316856, -1.07175446, 0.965925813, 0.25, 0.0669872984, -0.258819044, 0.933012664, 0.25, 3.85670473e-009, -0.258819073, 0.965925932))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.272097737, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.812459946, -1.07144165, 0.240917206, -0.965933323, -0.250073344, -0.0666048378, 0.000382640806, -0.258748859, 0.965944588, -0.25879091, 0.933012486, 0.250029802))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.544195533, 0.544195533, 0.544195533))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.812067032, 0.472203255, -1.07175446, 0.965925813, 0.25, 0.0669872984, -0.258819044, 0.933012664, 0.25, 3.85670473e-009, -0.258819073, 0.965925932))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.812264442, -0.471851349, -0.840454102, -0.96582526, -0.250369936, -0.0670563057, 0.259194255, -0.932908118, -0.250001878, 3.5586083e-005, -0.258838713, 0.965920568))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,secondcolor,"Part",Vector3.new(0.217678159, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.812066555, 0.186501503, -1.07175446, 0.965925813, 0.25, 0.0669872984, -0.258819044, 0.933012664, 0.25, 3.85670473e-009, -0.258819073, 0.965925932))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.136048868, 0.952341855))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.812278271, -0.471839905, -1.30301666, -0.96582526, -0.250369936, -0.0670563057, 0.259194255, -0.932908118, -0.250001878, 3.5586083e-005, -0.258838713, 0.965920568))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0718689, -0.471829414, 1.04336882, 0.000128595711, -0.259174168, 0.965830684, 0.258791149, -0.932919323, -0.250377089, 0.965933323, 0.249980628, 0.066952005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.07188416, -0.471815109, 0.580803394, 0.000128595711, -0.259174168, 0.965830684, 0.258791149, -0.932919323, -0.250377089, 0.965933323, 0.249980628, 0.066952005))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.141490847, 0.141490847, 0.579568207))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.812461376, -1.07144928, 0.172890663, -0.965933323, -0.250073344, -0.0666048378, 0.000382640806, -0.258748859, 0.965944588, -0.25879091, 0.933012486, 0.250029802))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.0353727117, 0.0353727117, 0.195910335))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,maincolor,"Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,BeltHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.812067032, 0.172896385, -1.07176208, 0.965925813, 0.25, 0.0669872984, -0.258819044, 0.933012664, 0.25, 3.85670473e-009, -0.258819073, 0.965925932))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.272097737, 0.272097737, 0.272097737))

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

	local GrenadeModel = Instance.new("Model")
	GrenadeModel.Parent = nil
	GrenadeModel.Name = "GrenadeModel"
	GrenadeHandle = CreatePart(Enum.FormFactor.Symmetric, GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, secondcolor, "Handle", Vector3.new(0.720000029, 0.720000029, 0.720000029))
	GrenadeHandleWeld = CreateWeld(GrenadeModel, Character["Left Arm"], GrenadeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0399894714, 0.0880355835, -1.03497469, -1, -1.29144695e-010, -1.65926451e-007, 1.65926451e-007, -5.96046377e-008, -1, 1.291348e-010, -1, 5.96046377e-008))
	GrenadeHandleWeld.Name = "HandleWeld"
	CreateMesh("SpecialMesh", GrenadeHandle, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(Enum.FormFactor.Custom, GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, maincolor, "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-005, 6.07967377e-006, -0.305992126, -0.99999994, 2.91125325e-005, 0.000388413115, 0.0003884123, -2.87742059e-005, 1, 2.91237066e-005, 1, 2.87628955e-005))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	Button = CreatePart(Enum.FormFactor.Custom, GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, secondcolor, "Button", Vector3.new(0.287999928, 0.24000001, 0.251999915))
	Buttonweld = CreateWeld(GrenadeModel, GrenadeHandle, Button, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.378005981, -2.2649765e-006, 1, 0, 4.87636868e-018, 0, 1, 0, 4.87636868e-018, 0, 1))
	CreateMesh("CylinderMesh", Button, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.150000006, 1))
	Part = CreatePart(Enum.FormFactor.Custom, GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, secondcolor, "Part", Vector3.new(0.287999928, 0.24000001, 0.287999928))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-006, -0.323997498, 4.05311584e-006, 1, 0, 4.87636868e-018, 0, 1, 0, 4.87636868e-018, 0, 1))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.299999982, 1))
	Part = CreatePart(Enum.FormFactor.Custom, GrenadeModel, Enum.Material.Neon, 0, 0, maincolor, "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.52587891e-005, 9.77516174e-006, -0.395996094, -0.99999994, 2.91125325e-005, 0.000388413115, 0.0003884123, -2.87742059e-005, 1, 2.91237066e-005, 1, 2.87628955e-005))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.0468000025, 0.0468000025, 0.259199947))
	Part = CreatePart(Enum.FormFactor.Custom, GrenadeModel, Enum.Material.Neon, 0, 0, maincolor, "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.396003723, 5.96046448e-007, 1, 0, 4.87636868e-018, 0, 1, 0, 4.87636868e-018, 0, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 0.300000012, 0.300000012))
	Part = CreatePart(Enum.FormFactor.Custom, GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, maincolor, "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.67572021e-006, -7.62939453e-006, -0.305995941, 2.90565495e-005, -0.000388383865, 0.99999994, -2.88907795e-005, -0.99999994, -0.000388383021, 1, -2.88794927e-005, -2.90677672e-005))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	Part = CreatePart(Enum.FormFactor.Symmetric, GrenadeModel, Enum.Material.Neon, 0, 0, maincolor, "Part", Vector3.new(0.287999928, 0.685800076, 0.287999928))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.000904083252, 0, 3.6234119e-012, 0, 1, -1, -1.42108547e-014, 3.62340236e-012, 1.42108547e-014, -1, 0))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
	Part = CreatePart(Enum.FormFactor.Custom, GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, maincolor, "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.67028809e-005, 0, 0.306002617, -0.99999994, -0.000388418615, 2.90845201e-005, 0.0003884178, -1, -2.87741423e-005, 2.90956923e-005, -2.87628409e-005, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	Part = CreatePart(Enum.FormFactor.Custom, GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, maincolor, "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.14440918e-005, 1.52587891e-005, -0.306001425, -0.99999994, -0.000388418615, 2.90845201e-005, 0.0003884178, -1, -2.87741423e-005, 2.90956923e-005, -2.87628409e-005, 1))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	Part = CreatePart(Enum.FormFactor.Custom, GrenadeModel, Enum.Material.SmoothPlastic, 0, 0, maincolor, "Part", Vector3.new(0.24000001, 0.24000001, 0.24000001))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.45571136e-005, -3.05175781e-005, 0.305992126, 2.90565495e-005, -0.000388383865, 0.99999994, -2.88907795e-005, -0.99999994, -0.000388383021, 1, -2.88794927e-005, -2.90677672e-005))
	CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.18720001, 0.18720001, 0.766799986))
	Part = CreatePart(Enum.FormFactor.Symmetric, GrenadeModel, Enum.Material.Neon, 0, 0, maincolor, "Part", Vector3.new(0.287999928, 0.685800076, 0.287999928))
	Partweld = CreateWeld(GrenadeModel, GrenadeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000904083252, -5.96046448e-007, 0, -1, 2.46687932e-007, -5.96051919e-008, 5.96052629e-008, 3.27825546e-007, -1, -2.46687904e-007, -1, -3.27825546e-007))
	CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))

local charge = false

local CanThrow = true

function ThrowGrenade()
	attack = true
	for i = 0, 1, 0.05 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(0)), .1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, .1) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.1)
		if Torsovelocity > 2 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
		RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		elseif Torsovelocity < 1 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		end
	end
	Grenade = GrenadeModel:Clone()
	Grenade.Parent = Character
	CreateSound("http://roblox.com/asset/?id=175783708",Grenade.Handle,1,1)
	for i = 0, 1, 0.05 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(0)), .1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.1)
		if Torsovelocity > 2 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
		RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		elseif Torsovelocity < 1 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		end
	end
	local Beep = Instance.new("Sound")
	Beep.Name = "Beep"
	Beep.SoundId = "rbxassetid://146785518"
	Beep.Volume = 1
	Beep.Looped = true
	Beep.Pitch = 4
	Beep.Parent = Grenade.Handle
	Beep:Play()
	while wait() do
		if charge == true then
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(0)), .1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(200), math.rad(0), math.rad(-10)), 0.1)
		if Torsovelocity > 2 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
		RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		elseif Torsovelocity < 1 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		end
		elseif charge == false then
			break
		end
	end
	for i = 0, 1, 0.1 do
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(0)), .1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.7, 0) * angles(math.rad(200), math.rad(0), math.rad(-10)), 0.1)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		if Torsovelocity > 2 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
		RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		elseif Torsovelocity < 1 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		end
	end
    CreateSound("rbxassetid://320557413",LeftArm,1,1)
	Grenade.HandleWeld:remove()
	local BodyVelocity = Instance.new("BodyVelocity")
	BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	BodyVelocity.velocity = (mouse.Hit.p - Grenade.Handle.Position).unit * 200
	BodyVelocity.Parent = Grenade.Handle
	game:GetService("Debris"):AddItem(BodyVelocity, 0.1)
	game:GetService("Debris"):AddItem(Grenade, 10)
	wait()
	ExplodeCon = Grenade.Handle.Touched:connect(function(Hit)
		ExplodeCon:disconnect()
		Grenade.Parent = workspace
		CreateSound("rbxassetid://240036913",Grenade.Handle,1,1)
		if Hit.Parent == Grenade.Handle.Parent then
			return
		end
	for _, Part in pairs(Grenade:GetChildren()) do
		pcall(function()
			Part.CanCollide = true
		end)
	end
		local Weld = Instance.new("Weld")
		Weld.Part0 = Grenade.Handle
		Weld.Part1 = Hit
		Weld.C0 = Grenade.Handle.CFrame:inverse() * CFrame.new(Grenade.Handle.Position)
		Weld.C1 = Hit.CFrame:inverse() * CFrame.new(Grenade.Handle.Position)
		Weld.Parent = Grenade.Handle
		for i = 4, 10, 0.075 do 
			Beep.Pitch = i
			swait()
		end
		for i = 1, 5 do
			local Sound = Instance.new("Sound")
			Sound.Name = "Explode"
			Sound.SoundId = "rbxassetid://166221646"
			Sound.Volume = 1
			Sound.Pitch = math.random(700, 900) / 1000
			Sound.Parent = Grenade.Handle
			Sound:Play()
		end
			local S = Instance.new("Explosion", workspace)
			S.ExplosionType = "NoCraters"
			S.Position = Grenade.Handle.Position
			S.BlastPressure = 5
			S.BlastRadius = 10
			S.ExplosionType = 2
		Grenade:remove()
	end)
	for i = 0, 1, 0.05 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(0)), .1)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
		if Torsovelocity > 2 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
		RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
		elseif Torsovelocity < 1 then
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.1) * angles(math.rad(5), math.rad(0), math.rad(5)), 0.1)
		RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-2), math.rad(5), math.rad(0)), .1)
		end
	end
	attack = false
end

mouse.Button1Down:connect(function()
	if attack == false and CanThrow == true then
		charge = true
		ThrowGrenade()
	end
end)

mouse.Button1Up:connect(function()
	if charge == true and attack == true then
		charge = false
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == '' then

	end
end)

mouse.KeyUp:connect(function(k)
	k = k:lower()
	if attack == true and k == '' then
		
	end
end)

game:GetService'RunService'.Stepped:connect(function()
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .1)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(30)), .1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-30)), .1)
					RH.C0 = clerp(RH.C0, cn(1, -.9, -.3) * RHCF * angles(math.rad(3), math.rad(0), math.rad(0)), .1)
					LH.C0 = clerp(LH.C0, cn(-1, -.7, -.5) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(0)), .1)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .1)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .1)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(50)), .1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), .1)
					RH.C0 = clerp(RH.C0, cn(1, -1, -.3) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .1)
					LH.C0 = clerp(LH.C0, cn(-1, -.8, -.3) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), .1)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(5)), .3)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(-5)), .3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(5 + 3 * math.cos(sine / 25))), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5 - 3 * math.cos(sine / 25))), 0.3)
					RH.C0 = clerp(RH.C0, cn(1, -.9 - 0.1 * math.cos(sine / 25), 0) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .3)
					LH.C0 = clerp(LH.C0, cn(-1, -.9 - 0.1 * math.cos(sine / 25), 0) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + .1 * math.cos(sine / 3)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(5 * math.cos(sine / 5))), .2)
					Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(-5 * math.cos(sine / 5)) + RootPart.RotVelocity.Y / 9), .2)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50 * math.cos(sine / 4)), math.rad(0), math.rad(4 * math.cos(sine / 4))), .2)
					RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 3), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
					LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 3), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(sine / 4))), .3)
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
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
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
end)