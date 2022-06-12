--[[Nocturna_A._Alteriano_Night.Owl.Inc]]--
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

Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Instance.new('Motor', part0)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
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

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

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
}

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

local function GetNearest(obj, distance)
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

--[[ Credits to Kert109 (Ninja_Deer) for the Damage function. Fenrier for the Magnitude Damage ]]--

function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	for i, v in pairs(hit:GetChildren()) do 
		if v:IsA("Humanoid") and hit.Name ~= Character.Name then
			local find = v:FindFirstChild("DebounceHit")
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
					Name = "DebounceHit",
				}
				if HSound ~= nil and HPitch ~= nil then
					CFuncs["Sound"].Create(HSound, hit, 1, HPitch) 
				end
				game:GetService("Debris"):AddItem(bool, cooldown)
			end
		end
	end
end

function MagnitudeDamage(Part, magni, mindam, maxdam, Color1, Color2, HSound, HPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then 
					Damage(head.Parent, math.random(mindam, maxdam), 0.5, Color1, Color2, HSound, HPitch)
				end
			end
		end
	end
end

Handle = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Handle", Vector3.new(0.254003167, 1.64342403, 0.260198474))
HandleWeld = CFuncs["Weld"].Create(m, Character["Left Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.99836731, 0.0517368317, -0.0548477173, 0, 1, 0, 0, 0, -1, -1, 0, 0))
FakeHandle = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeHandle", Vector3.new(0.254003167, 1.14342403, 0.260198474))
FakeHandleWeld = CFuncs["Weld"].Create(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.81469727e-006, -0.0500059128, 0.0999984741, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.247808024, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.26589966, 0.00039100647, 0.000610351563, 0.000117000003, 1, 0.000118999997, 1, -0.000117000003, 0, 1.39229996e-008, 0.000118999997, -1))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.3753345, 0.185856044, 0.185856044))
Hitbox = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Really black", "Hitbox", Vector3.new(0.447807968, 5.13465595, 0.447808027))
HitboxWeld = CFuncs["Weld"].Create(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000743865967, -3.7444067, -0.000473022461, 0.707102835, 0, -0.707110822, 0, 1, 0, 0.707110822, 0, 0.707102835))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.242000014, 0.371712089))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.428066373, -1.24401093, -0.000930786133, -0.965926111, 0.25881803, 0, -0.25881803, -0.965926111, 0, 0, 0, 1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.242000014, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0868660212, -1.11515617, -0.000923156738, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.495616019, 0.247808158, 0.371712089))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000139713287, -0.681477547, -0.000900268555, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.272588789, 0.247808024, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0679831505, -1.17708778, -0.000923156738, -1, 0, 0, 0, -1, 0, 0, 0, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.297369599, 0.278784007, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.548965454, -1.05070114, -0.000900268555, -0.819151819, -0.573576868, 0, 0.573576868, -0.819151819, 0, 0, 0, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495616049, 0.242000014, 0.743424177))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000163078308, -0.867334366, -0.000854492188, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495616019, 0.242000014, 0.371712089))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000113010406, -0.867340088, -0.000900268555, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.242000014, 0.371712089))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.964140892, -0.531862259, -0.000915527344, -0.342021108, 0.939692378, 0, -0.939692378, -0.342021108, 0, 0, 0, 1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.23951149, -0.842378139, -0.122993469, -0.642788053, -0.76604414, 0, -0.76604414, 0.642788053, 0, 0, 0, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.247808024, 0.619520068))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.842347145, -0.487338066, -0.000900268555, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, 1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.495616019, 0.247808158, 0.371712089))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000148773193, -0.681489944, -0.000854492188, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.24780798, 1.61075222, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000148773193, 2.19345093e-005, -0.000885009766, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 1.11513627, 0.242000014))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.552087665, 0.015086174, -0.000900268555, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 1, 0.512000144))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.495616049, 0.242000014, 0.371712089))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000146865845, -0.991248131, -0.000907897949, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.743424058, 0.247808024, 0.743424177))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000150680542, -1.05320072, -0.000869750977, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.36342907, -0.842353344, 0.186752319, -0.642788053, -0.76604414, 0, -0.76604414, 0.642788053, 0, 0, 0, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.247808024, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.17704391, 0.000398516655, 0.000640869141, 0.000117000003, 1, 0.000118999997, 1, -0.000117000003, 0, 1.39229996e-008, 0.000118999997, -1))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.77182734, 0.371712089, 0.371712089))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.363412857, -0.842355251, -0.184997559, -0.642788053, -0.76604414, 0, -0.76604414, 0.642788053, 0, 0, 0, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.239536285, -0.842377186, 0.124786377, -0.642788053, -0.76604414, 0, -0.76604414, 0.642788053, 0, 0, 0, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.24780798, 1.7346561, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000743865967, -2.04440403, -0.000473022461, 0.707102835, 0, -0.707110822, 0, 1, 0, 0.707110822, 0, 0.707102835))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.619520068, 0.242000014, 0.619520068))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.810720444, -0.853779793, -0.000946044922, -0.642788053, 0.76604414, 0, -0.76604414, -0.642788053, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.242000014, 0.495616049))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.842340946, -0.301486015, -0.000900268555, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, 1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.842370033, -0.177565575, -0.000900268555, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414, 0, 0, 0, 1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 2.35417652, 0.242000014))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000858306885, -4.0888052, -0.000625610352, 0.707102835, 0, -0.707110822, 0, 1, 0, 0.707110822, 0, 0.707102835))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.768000126, 1, 0.768000185))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.5521034, -0.604457855, -0.000900268555, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.247808024, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.91172791, 0.000427365303, 0.00065612793, 0.000117000003, 1, 0.000118999997, 1, -0.000117000003, 0, 1.39229996e-008, 0.000118999997, -1))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.706252933, 0.247808024, 0.247808024))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.253172874, -0.853765488, -0.124824524, -0.642788053, 0.76604414, 0, -0.76604414, -0.642788053, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.377055168, -0.853793144, -0.186752319, -0.642788053, 0.76604414, 0, -0.76604414, -0.642788053, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.253149033, -0.853768349, 0.123001099, -0.642788053, 0.76604414, 0, -0.76604414, -0.642788053, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.552095771, -0.622245789, 0.000900268555, 1, 0, 0, 0, -1, 0, 0, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.254003167, 0.743424058, 0.260198474))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.247808024, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.377065659, -0.853788376, 0.184921265, -0.642788053, 0.76604414, 0, -0.76604414, -0.642788053, 0, 0, 0, 1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.433664054, 0.619520068))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.853796005, -0.593886375, 0.000907897949, 0.76604414, 0.642788053, 0, 0.642788053, -0.76604414, 0, 0, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.242000014, 0.495616049))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.853778839, -0.31512928, 0.000915527344, 0.76604414, 0.642788053, 0, 0.642788053, -0.76604414, 0, 0, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.242000014, 0.247808024))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.853791237, -0.191212654, 0.000900268555, 0.76604414, 0.642788053, 0, 0.642788053, -0.76604414, 0, 0, 0, -1))
CFuncs["Mesh"].Create("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.512000144, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.Neon, 0, 0, "Maroon", "Part", Vector3.new(0.309760034, 0.242000014, 0.242000014))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.309207916, -0.84986639, 0.00183868408, -0.642788053, -0.76604414, 0, -0.76604414, 0.642788053, 0, 0, 0, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 0.512000144))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.242000014, 0.242000014, 0.259851515))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00113677979, 0.00042617321, 1.05298805, 0.000346999994, -2.99999992e-005, -1, 1, -1.80000006e-005, 0.000347000547, -1.80104089e-005, -1, 2.99937492e-005))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.472203195, 0.48459357, 2.56607437))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.743424058, 0.247808024, 0.743424177))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.000146865845, -1.17708874, -0.000862121582, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.309760034, 0.242000014, 0.371712089))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.309185982, -0.84424448, 0.00513458252, -0.642788053, -0.76604414, 0, -0.76604414, 0.642788053, 0, 0, 0, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(0.309760034, 0.242000014, 0.272588819))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.309211731, -0.848698139, 0.00434875488, -0.642788053, -0.76604414, 0, -0.76604414, 0.642788053, 0, 0, 0, -1))
CFuncs["Mesh"].Create("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.512000144, 1))
Handle1=CFuncs["Part"].Create(m,Enum.Material.SmoothPlastic,0,0.5,"Maroon","Handle1",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handle1Weld=CFuncs["Weld"].Create(m,Character["HumanoidRootPart"],Handle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.89996433, -0.300001144, -3.81469727e-006, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs["Mesh"].Create("SpecialMesh",Handle1,Enum.MeshType.FileMesh,"rbxassetid://571013824",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 0.0299999993, 0.0299999993))
Handle2=CFuncs["Part"].Create(m,Enum.Material.SmoothPlastic,0,0.5,"Maroon","Handle2",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handle2Weld=CFuncs["Weld"].Create(m,Character["HumanoidRootPart"],Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.89996433, -0.300001144, 3.69999886, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs["Mesh"].Create("SpecialMesh",Handle2,Enum.MeshType.FileMesh,"rbxassetid://571013824",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 0.0299999993, 0.0299999993))
Handle3=CFuncs["Part"].Create(m,Enum.Material.SmoothPlastic,0,0.5,"Maroon","Handle3",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handle3Weld=CFuncs["Weld"].Create(m,Character["HumanoidRootPart"],Handle3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.89996433, -0.300001144, -3.80001068, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CFuncs["Mesh"].Create("SpecialMesh",Handle3,Enum.MeshType.FileMesh,"rbxassetid://571013824",Vector3.new(0, 0, 0),Vector3.new(0.0299999993, 0.0299999993, 0.0299999993))

Handle1.Transparency = 1
Handle2.Transparency = 1
Handle3.Transparency = 1

EffectModel = Instance.new("Model", Character)
EffectModel.Name = "Effects"

Effects = {
	["Block"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	
	["Sphere"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

	["Ring"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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


	["Wave"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

	["Break"] = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs["Part"].Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
}

function attackone()
	attack = true
	for i = 0, 1, 0.18 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(5.21097445e-006, 0, 1.39627514e-006, 0.500000238, 0, -0.866025388, 0, 1, 0, 0.866025388, 0, 0.500000238),
			CFrame.new(1.86264515e-007, 1.49999213, 1.11758709e-007, 0.500000238, -0.0754792839, 0.862729847, 0, 0.996194661, 0.087155968, -0.866025388, -0.0435780063, 0.498097569),
			CFrame.new(1.50000036, 0, 5.72204726e-006, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
			CFrame.new(-0.366784006, 0.731893659, -1.14485168, 0.356001496, -0.850091577, -0.388081908, -0.93399173, -0.337178171, -0.118196875, -0.0303746015, 0.404543579, -0.91401422),
			CFrame.new(0.904913902, -1.89649975, -0.0730408952, 0.571393132, -0.260298461, 0.77830261, 0.0871559978, 0.96225059, 0.257832885, -0.816035509, -0.0794901848, 0.572509944),
			CFrame.new(-0.528955996, -1.97384918, 0.0388401002, 0.342020601, -0.0571864806, 0.937950969, 0, 0.998146534, 0.0608565845, -0.939692676, -0.0208142027, 0.341386676),
		}, .4, false)
	end
	MagnitudeDamage(Hitbox, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	FakeHandleWeld.C0 = angles(math.rad(0), math.rad(0), math.rad(50))
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, 1.1)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-1.07485366e-005, -0, 9.40369318e-007, 0.642788053, 0, 0.76604414, 0, 1, 0, -0.76604414, 0, 0.642788053),
			CFrame.new(-1.71363354e-007, 1.49999213, 1.34110451e-007, 0.642788053, 0.0667653158, -0.763129056, 0, 0.996194661, 0.087155968, 0.76604414, -0.0560228154, 0.640341997),
			CFrame.new(1.50000405, 0, 3.81469772e-006, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
			CFrame.new(-1.64033329, 0.239580303, 0.32212162, 0.407846123, 0.871090412, 0.273611486, -0.883638024, 0.30112043, 0.358483493, 0.22988157, -0.387979686, 0.892539263),
			CFrame.new(0.710344791, -2.02141356, -0.196990728, 0.767721832, -0.023819983, -0.640340447, 0.103438981, 0.990809619, 0.0871588141, 0.632379293, -0.133149892, 0.763130188),
			CFrame.new(-0.815283537, -1.94957781, 0.0924245715, 0.824585378, 0.181777626, -0.535738766, -0.0773119852, 0.974296749, 0.211586341, 0.560430169, -0.133051991, 0.817444444),
		}, .5, false)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, -4, -6) * angles(math.rad(-5), math.rad(0), math.rad(0)), .7)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(-4, 0, -6) * angles(math.rad(0), math.rad(14), math.rad(-50)), .7)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(4, 0, -6) * angles(math.rad(0), math.rad(-14), math.rad(50)), .7)
	end
	attack = false
end

function attacktwo()
	attack = true
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, -0.163648605, -0, 0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, 0.342018992),
			CFrame.new(0, 1.49999201, 0, 0.342019022, 0, 0.939693093, 0, 1, 0, -0.939693093, 0, 0.342018992),
			CFrame.new(1.49999821, 0, 3.76999424e-006, 1.00000012, 0, -2.98023224e-008, 0, 1, 0, -2.98023224e-008, 0, 1.00000012),
			CFrame.new(-0.596759856, 0.740946412, -1.0552206, -0.0991426557, -0.715364814, 0.6916821, 0.933013022, -0.308467805, -0.185295463, 0.345915467, 0.626977801, 0.698026896),
			CFrame.new(0.649631023, -1.84416139, -0.257720411, 0.982567668, -0.137810081, -0.124777108, 0.160191998, 0.968212366, 0.192102879, 0.0943369716, -0.20874238, 0.973410189),
			CFrame.new(-0.804208517, -1.84453952, -0.127062395, 0.342019022, 0.123212501, 0.931580245, 0, 0.991366506, -0.131119937, -0.939693093, 0.0448455103, 0.339066178),
		}, .6, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .5)
	end
	MagnitudeDamage(Hitbox, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, 1.2)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0.049446106, -0.357643992, -0.0952380151, 0, 0, -1, 0.087155968, 0.996194661, 0, 0.996194661, -0.087155968, 0),
			CFrame.new(2.98023224e-007, 1.49999201, 0, 0, -0.173647881, 0.984807789, 0, 0.984807789, 0.173647881, -1, 0, 0),
			CFrame.new(1.49999797, -7.74860325e-007, 3.81469727e-006, 0.99999994, 0, 0, 0, 0.99999994, 0, 0, 0, 1),
			CFrame.new(-1.8979578, 0.483427346, -0.0369744599, 0.115391314, 0.989934027, 0.0819470882, 0.907972336, -0.071660988, -0.412857205, -0.402829081, 0.122045808, -0.90710181),
			CFrame.new(0.619603634, -1.63993931, -0.291756809, 0.982567668, -0.126410455, -0.136313275, 0.160191938, 0.947784781, 0.275757879, 0.0943370014, -0.292787015, 0.951512635),
			CFrame.new(-1.16031027, -1.79213738, -0.256672949, 0.342019439, 0.572495401, 0.745165527, -4.09781933e-008, 0.7929883, -0.609236777, -0.939692855, 0.208370775, 0.271217525),
		}, .65, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .6)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, -4, -6) * angles(math.rad(-5), math.rad(0), math.rad(0)), .7)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(-4, 0, -6) * angles(math.rad(0), math.rad(14), math.rad(-50)), .7)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(4, 0, -6) * angles(math.rad(0), math.rad(-14), math.rad(50)), .7)
	end
	attack = false
end

function attackthree()
	attack = true
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, -0.0985169411, -0, 0.819151819, 0, -0.573576868, 0, 1, 0, 0.573576868, 0, 0.819151819),
			CFrame.new(0, 1.49999177, 7.4505806e-009, 0.819151819, -0.0499906465, 0.571394205, 0, 0.996194661, 0.087155968, -0.573576868, -0.0713939667, 0.816034675),
			CFrame.new(1.4999963, 0, 0, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
			CFrame.new(-0.5402565, 0.0849503279, -0.942667186, -0.509596586, -0.76232785, -0.398958385, -0.854715168, 0.395236939, 0.336525917, -0.0988600105, 0.512488246, -0.852984548),
			CFrame.new(0.620955229, -1.94301522, -0.0566893369, 0.954188764, -0.0857283473, 0.286661357, 0.0702360272, 0.995480537, 0.0639168248, -0.290845275, -0.0408547521, 0.955897629),
			CFrame.new(-0.75884217, -1.89246368, -0.315178692, 0.832474053, 0.00791560486, 0.554007649, -0.0318369977, 0.998929381, 0.0335669406, -0.553148806, -0.0455815494, 0.831834674),
		}, .4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), .4)
	end
	MagnitudeDamage(Hitbox, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, 1.11)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0.0207173601, -0.306746304, 0.20341751, 0.573575675, 0, 0.819152594, 0, 1, 0, -0.819152594, 0, 0.573575675),
			CFrame.new(0.130482048, 1.47498262, -0.107875496, 0.635801435, 0.120137349, -0.762445867, -0.0116640013, 0.989195347, 0.146139294, 0.771764517, -0.0840224102, 0.630333066),
			CFrame.new(1.49998856, 0, 1.90734863e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(-1.65704942, 0.971492052, -0.357384115, -0.509596825, 0.778339386, -0.366740972, -0.85471487, -0.506908536, 0.111831158, -0.0988615155, 0.370447755, 0.923577309),
			CFrame.new(0.636499405, -1.75835907, -0.0842285156, 0.534027219, 0.0830666572, -0.841376901, 0.0805300027, 0.985639751, 0.148422226, 0.841623485, -0.147017568, 0.519669056),
			CFrame.new(-0.88678956, -1.74539149, -0.155863523, 0.753033161, 0.368772328, -0.544929385, -0.0551460199, 0.860640168, 0.506218791, 0.655667603, -0.351148844, 0.668426931),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .4)
	end
	attack = false
end

function attackfour()
	attack = true
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, -0, -0, 0.173647985, 0, -0.984807849, 0, 1, 0, 0.984807849, 0, 0.173647985),
			CFrame.new(0, 1.49999201, 0, 0.173647985, 0, 0.984807849, 0, 1, 0, -0.984807849, 0, 0.173647985),
			CFrame.new(1.50000596, 0, 0, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
			CFrame.new(-0.999148726, 0.382699579, -0.500299215, 0.42100966, -0.0871576667, 0.902859092, 0.906307876, -7.69787164e-007, -0.422618002, 0.0368350856, 0.996194661, 0.0789913535),
			CFrame.new(0.74952966, -1.94998085, 0.00131799281, 0.862729669, -0.118769139, 0.491519749, 0.0871560052, 0.992404103, 0.0868223459, -0.498098016, -0.0320653133, 0.866527796),
			CFrame.new(-0.595148206, -1.94053876, 0.0258702934, 0.81569773, 0.0818991661, 0.572651625, -0.0841870308, 0.996194661, -0.0225553289, -0.572319865, -0.0298115127, 0.819488525),
		}, .7, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .6)
	end
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, 1)
	MagnitudeDamage(Hitbox, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	for i = 0, 1, 0.4 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0.0428132191, 1.49011612e-007, -0.00181728927, 0.087155968, 0, -0.996194661, 0, 1, 0, 0.996194661, 0, 0.087155968),
			CFrame.new(0, 1.49999177, -9.31322575e-010, 0.087155968, 0.0868243128, 0.992403805, 0, 0.996194661, -0.087155968, -0.996194661, 0.00759616261, 0.0868243128),
			CFrame.new(1.50000513, 0, 0, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994),
			CFrame.new(-1.76935673, 0.961719513, -0.0700234175, 0.488265216, 0.862728775, -0.131514639, 0.784885108, -0.500001848, -0.365996838, -0.381513596, 0.0754796565, -0.92127645),
			CFrame.new(0.74952966, -1.94998085, 0.00131799281, 0.862729669, -0.118769139, 0.491519749, 0.0871560052, 0.992404103, 0.0868223459, -0.498098016, -0.0320653133, 0.866527796),
			CFrame.new(-0.595148206, -1.94053876, 0.0258702934, 0.81569773, 0.0818991661, 0.572651625, -0.0841870308, 0.996194661, -0.0225553289, -0.572319865, -0.0298115127, 0.819488525),
		}, .6, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .6)
	end
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, -0, -0, 0.173647985, 0, -0.984807849, 0, 1, 0, 0.984807849, 0, 0.173647985),
			CFrame.new(0, 1.49999201, 0, 0.173647985, 0, 0.984807849, 0, 1, 0, -0.984807849, 0, 0.173647985),
			CFrame.new(1.50000548, 0, 0, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
			CFrame.new(-0.904156804, 0.38269943, -0.704008639, 0, -0.422618032, 0.906307995, 1, 0, 0, 0, 0.906307995, 0.422618032),
			CFrame.new(0.749530554, -1.94998074, 0.00131964684, 0.862729669, -0.118769139, 0.491519749, 0.0871560052, 0.992404103, 0.0868223459, -0.498098016, -0.0320653133, 0.866527796),
			CFrame.new(-0.595149279, -1.94053888, 0.0258687288, 0.81569773, 0.0818991661, 0.572651625, -0.0841870308, 0.996194661, -0.0225553289, -0.572319865, -0.0298115127, 0.819488525),
		}, .7, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .6)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, 0, 6) * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(4, 0, 6) * angles(math.rad(0), math.rad(40), math.rad(-50)), .5)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(-4, 0, 6) * angles(math.rad(0), math.rad(-40), math.rad(50)), .5)
	end
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, 1.2)
	MagnitudeDamage(Hitbox, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	for i = 0, 1, 0.4 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0.0428132191, 1.49011612e-007, -0.00181728927, 0.087155968, 0, -0.996194661, 0, 1, 0, 0.996194661, 0, 0.087155968),
			CFrame.new(0, 1.49999189, 0, 0.087155968, 0, 0.996194661, 0, 1, 0, -0.996194661, 0, 0.087155968),
			CFrame.new(1.5000056, 0, 0, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994),
			CFrame.new(-1.8970145, 0.497903526, -0.102461994, 0.0368336067, 0.996194661, 0.0789901763, 0.906308293, 0, -0.422617137, -0.421008945, 0.087155968, -0.902859509),
			CFrame.new(0.74952966, -1.94998085, 0.00131799281, 0.862729669, -0.118769139, 0.491519749, 0.0871560052, 0.992404103, 0.0868223459, -0.498098016, -0.0320653133, 0.866527796),
			CFrame.new(-0.595148206, -1.94053876, 0.0258702934, 0.81569773, 0.0818991661, 0.572651625, -0.0841870308, 0.996194661, -0.0225553289, -0.572319865, -0.0298115127, 0.819488525),
		}, .6, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .6)
	end
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, -0, -0, 0.173647985, 0, -0.984807849, 0, 1, 0, 0.984807849, 0, 0.173647985),
			CFrame.new(0, 1.49999201, 0, 0.173647985, 0, 0.984807849, 0, 1, 0, -0.984807849, 0, 0.173647985),
			CFrame.new(1.50000501, 0, 0, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
			CFrame.new(-0.904156744, 0.382699311, -0.704011559, -0.33682391, -0.407246172, 0.84894067, 0.939692736, -0.0885211155, 0.330365896, -0.0593910702, 0.909018576, 0.412502289),
			CFrame.new(0.749530554, -1.94998074, 0.00131964684, 0.862729669, -0.118769139, 0.491519749, 0.0871560052, 0.992404103, 0.0868223459, -0.498098016, -0.0320653133, 0.866527796),
			CFrame.new(-0.595150828, -1.94053876, 0.0258698314, 0.81569773, 0.0818991661, 0.572651625, -0.0841870308, 0.996194661, -0.0225553289, -0.572319865, -0.0298115127, 0.819488525),
		}, .7, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .6)
	end
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, 1)
	MagnitudeDamage(Hitbox, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	for i = 0, 1, 0.4 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0.0428170189, 1.49011612e-007, -0.00181695679, 0.087155968, 0, -0.996194661, 0, 1, 0, 0.996194661, 0, 0.087155968),
			CFrame.new(-8.94069672e-008, 1.49999213, -5.58793545e-009, 0.087155968, -0.172987193, 0.981060326, 0, 0.984807849, 0.173647985, -0.996194661, -0.0151344584, 0.0858318806),
			CFrame.new(1.50000536, 0, -1.90734852e-006, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994),
			CFrame.new(-1.79739583, 0.157904625, -0.0937451124, -0.196843892, 0.962250113, 0.18795532, 0.875426531, 0.258819312, -0.408216953, -0.441453218, 0.0841860473, -0.893326342),
			CFrame.new(0.74952966, -1.94998085, 0.00131799281, 0.862729669, -0.118769139, 0.491519749, 0.0871560052, 0.992404103, 0.0868223459, -0.498098016, -0.0320653133, 0.866527796),
			CFrame.new(-0.595148206, -1.94053876, 0.0258702934, 0.81569773, 0.0818991661, 0.572651625, -0.0841870308, 0.996194661, -0.0225553289, -0.572319865, -0.0298115127, 0.819488525),
		}, .6, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .6)
	end
	for i = 0, 1, 0.5 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, -0, -0, 0.173647985, 0, -0.984807849, 0, 1, 0, 0.984807849, 0, 0.173647985),
			CFrame.new(0, 1.49999201, 0, 0.173647985, 0, 0.984807849, 0, 1, 0, -0.984807849, 0, 0.173647985),
			CFrame.new(1.50000596, 0, 0, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
			CFrame.new(-0.999148726, 0.382699579, -0.500299215, 0.42100966, -0.0871576667, 0.902859092, 0.906307876, -7.69787164e-007, -0.422618002, 0.0368350856, 0.996194661, 0.0789913535),
			CFrame.new(0.74952966, -1.94998085, 0.00131799281, 0.862729669, -0.118769139, 0.491519749, 0.0871560052, 0.992404103, 0.0868223459, -0.498098016, -0.0320653133, 0.866527796),
			CFrame.new(-0.595148206, -1.94053876, 0.0258702934, 0.81569773, 0.0818991661, 0.572651625, -0.0841870308, 0.996194661, -0.0225553289, -0.572319865, -0.0298115127, 0.819488525),
		}, .7, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .6)
	end
	attack = false
end

local Hit = false

function Trip()
	attack = true
	C = Hitbox.Touched:connect(function(hit)
		local ht = hit.Parent  
		if Hit == true then
			local aim = CFrame.new(RootPart.Position, ht.Torso.Position)
			local direction = aim.lookVector
			local headingA = math.atan2(direction.x, direction.z)
			headingA = math.deg(headingA)
			Humanoid.AutoRotate = false
			RootPart.CFrame = CFrame.new(RootPart.Position) * angles(math.rad(0), math.rad(headingA - 180), math.rad(0))		
		else
			Humanoid.AutoRotate = true	
		end        
		local hum1 = ht:FindFirstChild('Humanoid')
		if hum1 ~= nil then
			hum1.PlatformStand = true
			Hit = true
		elseif hum1 == nil then
			C:disconnect()
			wait()
			return
		end
	end)
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, -0.426051617, -0, 0.422617137, 0, -0.906308293, 0, 1, 0, 0.906308293, 0, 0.422617137),
			CFrame.new(-0.0630682111, 1.48772204, -0.0294090882, 0.422617137, -0.157378614, 0.892539501, 0, 0.984807849, 0.173647985, -0.906308293, -0.073386617, 0.416196674),
			CFrame.new(1.50000191, 0, 7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(-0.919264436, 0.12311548, -0.624238074, 0.516651094, -0.377079159, -0.768689156, -0.735126793, 0.264892399, -0.624035716, 0.43893072, 0.887492776, -0.140344039),
			CFrame.new(0.513289869, -1.60863566, 0.205697268, 0.865536034, -0.247152239, 0.435618281, -0.16815795, 0.675872982, 0.717578351, -0.471773684, -0.694342494, 0.543431818),
			CFrame.new(-0.901781201, -1.63680637, 0.2045044, 0.429914564, 0.0743026882, 0.899807036, -0.172986984, 0.984923244, 0.00131936965, -0.88614279, -0.156222105, 0.436286241),
		}, .6, false)
	end
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, 1.5)
	for i = 0, 1, 0.16 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0.0408475623, -0.426052004, 0.0603616908, 0.906306684, 0, -0.422620863, 0, 1, 0, 0.422620863, 0, 0.906306684),
			CFrame.new(-0.0630673766, 1.48772216, -0.0294110179, 0.868577838, -0.081988126, 0.488723695, 0.0133890044, 0.989741206, 0.142243251, -0.495372236, -0.11700578, 0.86076498),
			CFrame.new(1.50000036, 0, 1.90734909e-006, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
			CFrame.new(-1.7693671, 0.746011198, 0.39081946, -0.139732093, 0.953093112, 0.268493772, -0.91827333, -0.226178944, 0.324988157, 0.370471537, -0.20113939, 0.906804323),
			CFrame.new(0.807715058, -1.71601295, 0.784099519, 0.86553514, -0.247153565, 0.435619444, -0.168158039, 0.675872862, 0.717578351, -0.471775442, -0.694342196, 0.543430805),
			CFrame.new(-0.74334991, -1.54656363, 0.0653702915, 0.769908607, 0.0743027925, 0.633813858, -0.15622206, 0.984923244, 0.0743028447, -0.618737102, -0.15622212, 0.769908547),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), .5)
	end
	if Hit == true then
		Humanoid.WalkSpeed = 0
		for i = 0, 1, 0.2 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(1.37835741e-006, -0.103859015, 0.0389065333, 0.173647091, 2.58754245e-008, -0.984808028, -0.085832037, 0.996194661, -0.0151343821, 0.981060445, 0.087156117, 0.172986314),
				CFrame.new(1.78813934e-006, 1.49999022, -3.85940075e-006, 0.0871547759, -0.25783357, 0.962250471, -1.22468919e-007, 0.965925992, 0.258818418, -0.996194959, -0.0225573815, 0.0841850266),
				CFrame.new(1.5000124, 3.68803825e-007, 1.14217419e-005, 1, 7.4505806e-009, -1.49011612e-008, 7.4505806e-009, 1, -9.31322575e-010, -1.49011612e-008, -9.31322575e-010, 1.00000012),
				CFrame.new(-0.713331223, 0.788114727, -1.03047037, -0.265583962, -0.66341424, 0.699533343, 0.852868617, -0.49999994, -0.150384307, 0.449533701, 0.556670368, 0.698597014),
				CFrame.new(0.750142574, -1.91980267, -0.044842422, 0.753090441, -0.164227694, 0.637090564, 0.139625281, 0.986181498, 0.0891676992, -0.642930686, 0.0218026005, 0.765614152),
				CFrame.new(-0.729832411, -1.99010432, 0.0847709179, 0.710772157, -0.109478712, 0.694850743, 0.0133900419, 0.989741087, 0.142243952, -0.703295052, -0.0917989537, 0.70494628),
			}, .4, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), .4)
		end
		MagnitudeDamage(Hitbox, 15, 35, 40, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
		CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, .8)
		for i = 0, 1, 0.13 do
			swait()
			PlayAnimationFromTable({
				CFrame.new(0.018863678, -0, -0.0360527039, 0, 0, -1, 0, 1, 0, 1, 0, 0),
				CFrame.new(-5.96046448e-007, 1.49999022, -5.58793545e-008, 0.087155968, -0.257833004, 0.962250531, 0, 0.96592623, 0.258817881, -0.996194661, -0.022557525, 0.0841862261),
				CFrame.new(1.50001335, 0, 1.14440918e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1),
				CFrame.new(-1.7250247, -0.0197904408, -0.0353719592, -0.485968232, 0.854477465, -0.18358463, 0.751700342, 0.515810132, 0.410958141, 0.44584921, 0.0617119633, -0.892978311),
				CFrame.new(0.638420582, -1.99999511, -0.0645403862, 0.762714267, -0.0789890736, 0.641893923, 0.0841850266, 0.99619478, 0.0225573145, -0.641233265, 0.0368330702, 0.766461551),
				CFrame.new(-0.729839563, -1.99010265, 0.084770143, 0.70441699, 0.0616290979, 0.707105815, -0.0871559978, 0.996194661, -5.85242276e-007, -0.704415023, -0.0616280958, 0.707107842),
			}, .5, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .5)
		end
		Humanoid.AutoRotate = true	
	end
	C:disconnect()
	Hit = false
	attack = false
end

function SpinnySpin()
	attack = true
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0.0868273079, -0.415078044, -0.0855018646, 0.754405975, 0.17364797, -0.633022964, -0.019382, 0.969846368, 0.242945299, 0.656121969, -0.171010137, 0.735023439),
			CFrame.new(4.17232513e-007, 1.49999261, -9.76026058e-007, 0.634484649, 0.0109135956, 0.7728585, 0.0874809176, 0.992461562, -0.0858328491, -0.767968893, 0.12207, 0.628746927),
			CFrame.new(1.4999963, 1.4305117e-006, -8.94067398e-008, 1.00000012, 0, -5.96046448e-008, 0, 1.00000012, 0, -5.96046448e-008, 0, 1),
			CFrame.new(-0.998655558, 0.191747338, -0.976686478, 0.573573887, -0.346188843, -0.742405891, -0.671010733, 0.321274191, -0.668227255, 0.469848454, 0.881439924, -0.0480219424),
			CFrame.new(0.450002939, -1.78906703, 0.0548554659, 0.925418735, 0.173647404, -0.336818904, 0.126459017, 0.69636333, 0.706460416, 0.357223272, -0.696365356, 0.622468293),
			CFrame.new(-0.704551339, -1.57170856, -0.514510214, 0.806708276, -0.0917121023, 0.583790064, 0.173647195, 0.981060565, -0.0858313739, -0.564861596, 0.170614377, 0.807355106),
		}, .4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), .4)
	end
	Humanoid.Jump = true
	RootPart.Velocity = Vector3.new(0, 60, 0)
	RootPart.Velocity = RootPart.CFrame.lookVector * 120
	for i = 1, 2 do
		MagnitudeDamage(Hitbox, 25, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
		CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, .8)
		for i = 0, 1, 0.13 do
			swait()
			Effects["Sphere"].Create(BrickColor.new("Crimson"), Hitbox.CFrame, 1, 6, 1, 1, 6, 1, .25)
			PlayAnimationFromTable({
				CFrame.new(7.62939453e-006, -5.49852848e-006, 0, 0, 1, 0, -1, 0, -0, 0, 0, 1) * CFrame.new (-2, 0, 0) * CFrame.Angles(0, 6 * i, 0),
				CFrame.new(0.0254868045, 1.48261905, -0.0951254517, 0.965925872, 0.0449433438, -0.254886985, -0, 0.984807849, 0.173647806, 0.258818984, -0.167730898, 0.951251388),
				CFrame.new(1.50000095, -3.81469727e-006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
				CFrame.new(-1.78178596, 0.556488693, 0.278665841, 0.0103119966, 0.868719101, 0.495197833, -0.998181641, -0.0204700269, 0.0566964298, 0.0593899786, -0.494882047, 0.866928279),
				CFrame.new(0.417056501, -1.8933146, -0.0417003036, 0.958333015, 0.128958657, -0.254887134, -0.0858319998, 0.981060386, 0.173647746, 0.27245301, -0.144534901, 0.951251388),
				CFrame.new(-0.50000757, -1.480389, -0.300002158, 0.984807849, 1.1006091e-006, 0.173647985, -0.0868249908, 0.866025269, 0.492404163, -0.150382981, -0.500000417, 0.852868497),
			}, .5, false)
			FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .5)
		end
	end
	attack = false
end

function Testy()
	attack = true
	Handle1.Transparency = 0.5
	Handle2.Transparency = 0.5
	Handle3.Transparency = 0.5
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle1.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle2.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle3.CFrame, 1, 6, 1, 3, 6, 3, .1)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, -0.180291891, -0, 0.984807849, 0, -0.173647985, 0, 1, 0, 0.173647985, 0, 0.984807849),
			CFrame.new(1.18240714e-005, 1.49997199, -7.4505806e-008, 0.965925872, -0.022557538, 0.257834196, 0, 0.99619478, 0.0871556103, -0.258819073, -0.0841858685, 0.962250233),
			CFrame.new(1.5000155, -1.01327896e-006, 4.76837215e-007, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
			CFrame.new(-0.447810113, 0.518174291, -0.913273036, 0.342020571, -0.769750178, -0.538986802, -0.936116755, -0.229110137, -0.2668221, 0.0818990245, 0.595813155, -0.798936367),
			CFrame.new(0.465754628, -1.83153605, 0.243922144, 0.980150282, 0.00806577504, -0.198092476, 0.02535001, 0.985871851, 0.16557236, 0.196629256, -0.167307436, 0.966097951),
			CFrame.new(-0.622918487, -1.87279665, -0.111466706, 0.953385651, 0.0850866139, 0.289510459, -0.088893041, 0.996041179, -1.49906975e-006, -0.28836444, -0.0257340297, 0.957175016),
		}, .4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), .5)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, 0, 6) * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(4, 0, 6) * angles(math.rad(0), math.rad(40), math.rad(-50)), .5)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(-4, 0, 6) * angles(math.rad(0), math.rad(-40), math.rad(50)), .5)
	end
	MagnitudeDamage(Handle1, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	MagnitudeDamage(Handle2, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	MagnitudeDamage(Handle3, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, .8)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=299439036", Handle1, 1, .8)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=299439036", Handle2, 1, .7)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=299439036", Handle3, 1, .82)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0.0179506578, -0.380292028, 0.134073228, 0.76604414, 0, 0.642788053, 0, 1, 0, -0.642788053, 0, 0.76604414),
			CFrame.new(1.26026571e-005, 1.49997222, -2.12714076e-006, 0.764292061, 0.0442237556, -0.64335233, -0.0157020073, 0.998626232, 0.049991399, 0.644679248, -0.0281061027, 0.76393646),
			CFrame.new(1.50001931, -9.53674316e-007, -1.90734886e-006, 1.00000012, 0, 0, 0, 1, 0, 0, 0, 1.00000012),
			CFrame.new(-1.8131299, 0.274920315, -0.286728144, 0.185567051, 0.851651728, -0.490157425, -0.901894689, 0.345629245, 0.259087801, 0.390065312, 0.393992186, 0.832237601),
			CFrame.new(0.907179058, -1.66526854, -0.139867902, 0.623507261, -0.060100507, -0.77950424, 0.125846967, 0.991754591, 0.0241968501, 0.771622598, -0.113185152, 0.625929594),
			CFrame.new(-0.584807515, -1.67914259, -0.143811375, 0.783990502, 0.190572634, -0.590797067, -0.0509870276, 0.968264461, 0.244671807, 0.61867547, -0.161697388, 0.768826902),
		}, .4, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), .5)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, -4, -6) * angles(math.rad(-5), math.rad(0), math.rad(0)), .7)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(-4, 0, -6) * angles(math.rad(0), math.rad(14), math.rad(-50)), .7)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(4, 0, -6) * angles(math.rad(0), math.rad(-14), math.rad(50)), .7)
	end
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle1.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle2.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle3.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Handle1.Transparency = 1
	Handle2.Transparency = 1
	Handle3.Transparency = 1
	attack = false
end

function Testy2()
	attack = true
	Handle1.Transparency = 0.5
	Handle2.Transparency = 0.5
	Handle3.Transparency = 0.5
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle1.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle2.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle3.CFrame, 1, 6, 1, 3, 6, 3, .1)
	for i = 0, 1, 0.08 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(0, -0, -9.53674316e-007, 0, 0, -1, 0, 1, 0, 1, 0, 0),
			CFrame.new(2.83122063e-007, 1.49999225, 2.42143869e-008, 0.087154977, -0.0868239701, 0.992403984, 0, 0.99619478, 0.0871556103, -0.99619478, -0.0075960462, 0.0868233293),
			CFrame.new(1.5000031, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(-0.764261544, 0.684002519, -0.825130582, 0.115805067, -0.564863205, 0.81701827, 0.951251566, -0.173647583, -0.254886448, 0.285849184, 0.806707025, 0.517217696),
			CFrame.new(0.760251999, -1.98473239, -0.0149175525, 0.586671054, -0.0574441403, 0.807785451, 0.0493380055, 0.998163462, 0.0351497643, -0.808321118, 0.019233169, 0.588427722),
			CFrame.new(-0.649721146, -1.99021912, 0.0874764621, 0.498949945, 0.0323918872, 0.866025329, -0.0647849888, 0.997899354, 7.27124757e-007, -0.864205897, -0.0561058037, 0.500000298),
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), .5)
	end
	MagnitudeDamage(Hitbox, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	MagnitudeDamage(Handle1, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	MagnitudeDamage(Handle2, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	MagnitudeDamage(Handle3, 15, 15, 20, BrickColor.new("Really black"), BrickColor.new("Crimson"), " ", 0)
	Effects["Wave"].Create(BrickColor.new("Crimson"), RootPart.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), .5, .5, .5, 1, 1, 1, .06)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=356430004", Hitbox, 1, .4)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=299440437", Handle1, .5, 1)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=299440437", Handle1, .5, 1.1)
	CFuncs["Sound"].Create("http://roblox.com/asset/?id=299440437", Handle1, .5, 1.2)
	for i = 0, 1, 0.1 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * 90
		Effects["Wave"].Create(BrickColor.new("Crimson"), Hitbox.CFrame * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(180)), .2, .6, .2, .2, .6, .2, .1)
		Effects["Sphere"].Create(BrickColor.new("Crimson"), Hitbox.CFrame, 1, 6, 1, 1, 6, 1, .1)
		PlayAnimationFromTable({
			CFrame.new(0, -0.398699045, -0.135920882, 0, 0, -1, 0.258818984, 0.965925872, 0, 0.965925872, -0.258818984, 0),
			CFrame.new(-2.38418579e-007, 1.49999094, -4.48897481e-007, 0.0871546194, 0.17298834, 0.981060326, -2.84984708e-007, 0.984807611, -0.173649132, -0.99619478, 0.0151340403, 0.0858305842),
			CFrame.new(1.50000286, 9.53674316e-007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(-1.81020629, 0.776545882, -0.160674587, 0.273203164, 0.961741209, 0.0203480646, 0.85831809, -0.234163672, -0.456571579, -0.434338897, 0.1422019, -0.889453948),
			CFrame.new(1.0560205, -1.83496344, 0.208897829, 0.586671054, -0.330260158, 0.739422321, 0.0493385643, 0.925944328, 0.374423385, -0.808320999, -0.183181271, 0.559519291),
			CFrame.new(-0.307119489, -1.65432382, 0.260093659, 0.498950422, -0.4049595, 0.766196072, -0.0647853762, 0.864206195, 0.498949468, -0.864205599, -0.298589319, 0.404960573),
		}, .5, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .5)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, -4, -6) * angles(math.rad(-5), math.rad(0), math.rad(0)), .4)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(-4, 0, -6) * angles(math.rad(0), math.rad(14), math.rad(-50)), .4)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(4, 0, -6) * angles(math.rad(0), math.rad(-14), math.rad(50)), .4)
	end
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle1.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle2.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Effects["Sphere"].Create(BrickColor.new("Crimson"), Handle3.CFrame, 1, 6, 1, 3, 6, 3, .1)
	Handle1.Transparency = 1
	Handle2.Transparency = 1
	Handle3.Transparency = 1
	attack = false
end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
	elseif attack == false and attacktype == 3 then
		attacktype = 4
		attackthree()
	elseif attack == false and attacktype == 4 then
		attacktype = 1
		attackfour()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'z' then
		Trip()
	elseif attack == false and k == 'x' then
		SpinnySpin()
	elseif attack == false and k == 'c' then
		Testy()
	elseif attack == false and k == 'v' then
		Testy2()
	end
end)

while true do
	swait()
	if Hit == false then
		Humanoid.WalkSpeed = 30
	end
	RightArm.Transparency = 1
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
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, -.1) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.7, 0.5, .3) * angles(math.rad(-30), math.rad(0), math.rad(50)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.7, 0.5, .3) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.5, -.9, -.3) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.5, -1, -.2) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(-20)), .3)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, 0, 6) * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(4, 0, 6) * angles(math.rad(0), math.rad(40), math.rad(-50)), .5)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(-4, 0, 6) * angles(math.rad(0), math.rad(-40), math.rad(50)), .5)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, -.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.9, 0.9, .3) * angles(math.rad(-30), math.rad(0), math.rad(80)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.9, 0.9, .3) * angles(math.rad(-30), math.rad(0), math.rad(-80)), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.5, -1.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(5)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.5, -1.8, -.2) * angles(math.rad(-10), math.rad(0), math.rad(-5)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(-20)), .3)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, 0, 6) * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(4, 0, 6) * angles(math.rad(0), math.rad(40), math.rad(-50)), .5)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(-4, 0, 6) * angles(math.rad(0), math.rad(-40), math.rad(50)), .5)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, -.15, 0) * angles(math.rad(0), math.rad(-40), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(40), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, -0.7) * angles(math.rad(50), math.rad(-50), math.rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.7, -1.9, 0.2) * angles(math.rad(-10), math.rad(40), math.rad(10)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.74, -1.9, -0.2) * angles(math.rad(0), math.rad(40), math.rad(-4)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(-20)), .3)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, 0, 6) * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(4, 0, 6) * angles(math.rad(0), math.rad(40), math.rad(-50)), .5)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(-4, 0, 6) * angles(math.rad(0), math.rad(-40), math.rad(50)), .5)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				change = 3
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, -.15, 0) * angles(math.rad(-20), math.rad(-30 + 4 * math.cos(sine / 10)), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(10), math.rad(30 - 4 * math.cos(sine / 10)), math.rad(-5)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.7) * angles(math.rad(80), math.rad(-60), math.rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.52, -1.85 - 0.5 * math.cos(sine / 8) / 2, 0 + 3 *  math.sin(sine / 8) / 2) * angles(math.rad(-80 *  math.sin(sine / 8)), math.rad(0), math.rad(2)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.52, -1.85 + 0.5 * math.cos(sine / 8) / 2, 0 - 3 * math.sin(sine / 8) / 2) * angles(math.rad(80 *  math.sin(sine / 8)), math.rad(0), math.rad(-2)), .3)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(-20)), .3)
		Handle1Weld.C0 = clerp(Handle1Weld.C0, CFrame.new(0, 0, 6) * angles(math.rad(-20), math.rad(0), math.rad(0)), .5)
		Handle2Weld.C0 = clerp(Handle2Weld.C0, CFrame.new(4, 0, 6) * angles(math.rad(0), math.rad(40), math.rad(-50)), .5)
		Handle3Weld.C0 = clerp(Handle3Weld.C0, CFrame.new(-4, 0, 6) * angles(math.rad(0), math.rad(-40), math.rad(50)), .5)
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