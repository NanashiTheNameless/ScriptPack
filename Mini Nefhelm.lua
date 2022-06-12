--[[Snow thing by dooven]]--
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
local Create = LoadLibrary("RbxUtility").Create

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
	Part = {
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
	
	Mesh = {
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

	Weld = {
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

	Sound = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local Sound = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = "rbxassetid://" .. id,
					Parent = par or workspace,
				}
				Sound:play() 
				game:GetService("Debris"):AddItem(Sound, 10)
			end))
		end;
	};
	
	Decal = {
		Create = function(Color, Texture, Transparency, Name, Parent)
			local Decal = Create("Decal"){
				Color3 = Color,
				Texture = "rbxassetid://" .. Texture,
				Transparency = Transparency,
				Name = Name,
				Parent = Parent,
			}
			return Decal
		end;
	};
	
	BillboardGui = {
		Create = function(Parent, Image, Position, Size)
			local BillPar = CFuncs.Part.Create(Parent, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "BillboardGuiPart", Vector3.new(1, 1, 1))
			BillPar.CFrame = CFrame.new(Position)
			local Bill = Create("BillboardGui"){
				Parent = BillPar,
				Adornee = BillPar,
				Size = UDim2.new(1, 0, 1, 0),
				SizeOffset = Vector2.new(Size, Size),
			}
			local d = Create("ImageLabel", Bill){
				Parent = Bill,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = "rbxassetid://" .. Image,
			}
			return BillPar
		end
	};
	
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local Particle = Create("ParticleEmitter"){
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
			return Particle
		end;
	};
	
	CreateTemplate = {
		
	};
}

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

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	
---Fur--
Handle=CFuncs.Part.Create(m,Enum.Material.Slate,0,0,"Institutional white","Handle",Vector3.new(0.494282573, 0.756663501, 1.72998929))
HandleWeld=CFuncs.Weld.Create(m,Character["Head"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.185455322, 0.107635498, -0.254005432, 0.230769694, -0.358805418, 0.904435635, -0.256097645, 0.874352813, 0.412215084, -0.938700974, -0.326750666, 0.109884836))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=188635159",Vector3.new(0, 0, 0),Vector3.new(0.617853224, 0.61785388, 0.617853463))
Fur=CFuncs.Part.Create(m,Enum.Material.Slate,0,0,"Institutional white","Fur",Vector3.new(0.585444391, 0.578018546, 1.73405421))
FurWeld=CFuncs.Weld.Create(m,Handle,Fur,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.13684082, -0.18737793, -0.1875, -0.424909502, -0.905215859, -0.00599196553, -0.561115146, 0.268571258, -0.782955647, 0.710353017, -0.329323292, -0.622049034))
CFuncs.Mesh.Create("SpecialMesh",Fur,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=188635159",Vector3.new(0, 0, 0),Vector3.new(0.619305193, 0.619305253, 0.619305015))
--breathin--
kiss = New("Part",m,"kiss",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-14.128828, 1.30003333, -44.8742905, 0.999999881, 0.000382690108, -1.93715096e-07, -0.000382690225, 1, 3.49245965e-09, 1.78813934e-07, -3.49245965e-09, 1),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",kiss,"mot",{Part0 = kiss,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0.999999881, -0.000382690225, 1.78813934e-07, 0.000382690108, 1, -3.49245965e-09, -1.93715096e-07, 3.49245965e-09, 1),C1 = CFrame.new(-3.9100647e-05, -0.199961901, -0.5, -1, 0, 0, 0, 1, 0, 0, 0, -1),})


----LARM---
Handle=CFuncs.Part.Create(m,Enum.Material.Slate,0,0,"Institutional white","Handle",Vector3.new(0.700000167, 0.660000086, 1.04000008))
HandleWeld=CFuncs.Weld.Create(m,Character["Left Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.164344788, 0.729976654, -0.0137939453, -1, -0.000130010318, -0.000150341395, -0.000130017579, 1, 4.83928779e-05, 0.000150335109, 4.84124248e-05, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.09000015, 1.63999999, 1.06000006))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.185012817, -0.930379868, 0, 1, -1.40469858e-11, -1.45519152e-11, -1.40469858e-11, 1, 0, -1.45519152e-11, 0, 1))


--RARM--
Handle=CFuncs.Part.Create(m,Enum.Material.Slate,0,0,"Institutional white","Handle",Vector3.new(0.660000145, 0.7700001, 1.03999996))
HandleWeld=CFuncs.Weld.Create(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.185707092, 0.684171677, -0.00357055664, 0.999845028, 0.000134602698, 0.0176090486, -0.000135502938, 1, 4.99313028e-05, -0.0176090412, -5.23096423e-05, 0.999844968))
Part=CFuncs.Part.Create(m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.05000019, 1.66000009, 1.06000006))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175010681, -0.901453972, -6.10351563e-05, -0.999847651, 5.48511343e-06, 0.0174587313, 5.45742614e-06, 1, -1.63478035e-06, -0.0174587294, -1.53924702e-06, -0.999847591))


---LLEG--
Handle=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.300000012, 0.449999988, 0.5))
HandleWeld=CFuncs.Weld.Create(m,Character["Left Leg"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.358612061, 0.60500288, 0.0926361084, -0.0174646229, -8.85245299e-09, 0.999847472, 3.54139047e-08, 1, 9.47086676e-09, -0.999847531, 3.55757948e-08, -0.0174646247))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.04499996, 12321, 0.600000024))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.474853516, -0.0375113487, -0.0249710083, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.449999988, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.335693359, -0.123565674, -0.025138855, 0.707098842, -0.707114697, 4.73874825e-05, 0.707114637, 0.707098901, -9.04928311e-06, -2.71087538e-05, 3.99071214e-05, 1))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.5, 0.75, 0.200000018))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.556152344, -0.6275177, 0.424919128, 0.965973914, 0.258639157, 2.6255846e-05, -0.258639127, 0.965973973, -3.42088751e-05, -3.42112035e-05, 2.62546237e-05, 1))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.985000014, 1, 0.985000014))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.624969482, -0.0375165939, -0.0250396729, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0250244141, 0.337502003, -0.025100708, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.300000012, 0.449999988, 0.224999994))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0248718262, -0.123783112, -0.127738953, 1, -3.98499724e-05, 2.71604604e-05, 8.97788868e-06, 0.707182169, 0.707031369, -4.73825748e-05, -0.707031429, 0.707182109))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.04999995, 1.57999992, 1.06000006))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.34979248, -0.864995003, -0.0849685669, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.985000014, 1, 0.985000014))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.174865723, 0.337496281, -0.0249099731, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.324768066, -0.0375080109, -0.0251235962, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 12321, 0.5))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.03499997, 12321, 0.649999976))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.05499995, 12321, 0.449999988))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.449999988, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.229736328, -0.0176086426, -0.0249938965, 0.707098842, -0.707114697, 4.73874825e-05, 0.707114637, 0.707098901, -9.04928311e-06, -2.71087538e-05, 3.99071214e-05, 1))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(1.02999997, 0.5, 1.08000004))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.359832764, 0.175001621, -0.0649719238, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.449999988, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.441833496, -0.229736328, -0.0249938965, 0.707098842, -0.707114697, 4.73874825e-05, 0.707114637, 0.707098901, -9.04928311e-06, -2.71087538e-05, 3.99071214e-05, 1))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.300000012, 0.449999988, 0.224999994))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0249938965, -0.119873047, 0.123760223, 1, -1.64968187e-05, 5.05985554e-05, 4.74459157e-05, 0.707038581, -0.707175016, -2.41089892e-05, 0.707175016, 0.707038581))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.07949996, 12321, 0.324999988))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.324737549, 0.337491989, -0.0251235962, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))

--RLEG--


Handle=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.300000012, 0.449999988, 0.5))
HandleWeld=CFuncs.Weld.Create(m,Character["Right Leg"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.35824585, 0.60500288, 0.0726470947, -0.0174646229, -8.85245299e-09, 0.999847472, 3.54139047e-08, 1, 9.47086676e-09, -0.999847531, 3.55757948e-08, -0.0174646247))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.04499996, 12321, 0.600000024))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.474853516, -0.0375113487, -0.0249710083, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.449999988, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.335693359, -0.123565674, -0.0251312256, 0.707098842, -0.707114697, 4.73874825e-05, 0.707114637, 0.707098901, -9.04928311e-06, -2.71087538e-05, 3.99071214e-05, 1))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.5, 0.75, 0.200000018))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.556152344, -0.6275177, 0.424926758, 0.965973914, 0.258639157, 2.6255846e-05, -0.258639127, 0.965973973, -3.42088751e-05, -3.42112035e-05, 2.62546237e-05, 1))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.985000014, 1, 0.985000014))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.624969482, -0.0375165939, -0.0250396729, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0250244141, 0.337502003, -0.025100708, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.300000012, 0.449999988, 0.224999994))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0248718262, -0.123783112, -0.127738953, 1, -3.98499724e-05, 2.71604604e-05, 8.97788868e-06, 0.707182169, 0.707031369, -4.73825748e-05, -0.707031429, 0.707182109))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.04999995, 1.57999992, 1.06000006))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.34979248, -0.864995003, -0.0849685669, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.985000014, 1, 0.985000014))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.174865723, 0.337496758, -0.0249099731, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.324768066, -0.037507534, -0.0251235962, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 12321, 0.5))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.03499997, 12321, 0.649999976))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.05499995, 12321, 0.449999988))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.449999988, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.229736328, -0.0176086426, -0.0249862671, 0.707098842, -0.707114697, 4.73874825e-05, 0.707114637, 0.707098901, -9.04928311e-06, -2.71087538e-05, 3.99071214e-05, 1))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(1.02999997, 0.5, 1.08000004))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.359832764, 0.175001621, -0.0649642944, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.449999988, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.441833496, -0.229736328, -0.0249862671, 0.707098842, -0.707114697, 4.73874825e-05, 0.707114637, 0.707098901, -9.04928311e-06, -2.71087538e-05, 3.99071214e-05, 1))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 1, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.300000012, 0.449999988, 0.224999994))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0249938965, -0.119873047, 0.123767853, 1, -1.64968187e-05, 5.05985554e-05, 4.74459157e-05, 0.707038581, -0.707175016, -2.41089892e-05, 0.707175016, 0.707038581))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Really black","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.07949996, 12321, 0.324999988))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(0.200000018, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.324737549, 0.337492466, -0.0251235962, 0.99999994, -3.0514213e-05, 3.05622816e-05, 3.05151498e-05, 1, -3.05198373e-05, -3.05641443e-05, 3.05207686e-05, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.349999994, 0.5, 1.02499998))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.300000012, 0.449999988, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.99999994, -1.52056145e-12, -1.86264515e-09, -1.52056145e-12, 1, 1.88504767e-12, -1.86264515e-09, 1.88504767e-12, 1.00000012))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.06500006, 12321, 0.375))


--TORSO--

Handle=CFuncs.Part.Create(m,Enum.Material.Neon,0,0.5,"Institutional white","Handle",Vector3.new(0.200000003, 0.540000021, 0.540000021))
HandleWeld=CFuncs.Weld.Create(m,Character["Torso"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.42956543, -0.244716644, -0.0404968262, -2.22644303e-08, 9.06006608e-06, -1, 9.06001333e-06, 0.99999094, 1.01923215e-05, 0.999991059, -1.01921487e-05, 2.24972609e-08))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.016204834, 1.90734863e-06, -0.00498962402, -1, -1.13233727e-06, -4.48551134e-08, -1.13233727e-06, 1, 1.13214401e-06, 4.48538344e-08, 1.13214389e-06, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.5, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 1.13233727e-06, 4.48551134e-08, -1.13233727e-06, 1, 1.13214401e-06, -4.48538344e-08, -1.13214389e-06, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(1.97000003, 2.04999995, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0698242188, 0.262532234, 0.876037598, 0.000145332873, -0.000139034863, -0.999991059, -3.93417067e-05, 0.99999094, -0.00014017224, 1, 3.82292928e-05, 0.000145236307))
Part=CFuncs.Part.Create(m,Enum.Material.Slate,0,0,"Really black","Part",Vector3.new(2.08999991, 2.05999994, 1.01999998))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0698471069, 0.247550011, 0.436065674, 0.000145332873, -0.000139034863, -0.999991059, -3.93417067e-05, 0.99999094, -0.00014017224, 1, 3.82292928e-05, 0.000145236307))


--nelf--


Nelf = New("Model",Character,"Nelf",{})
Handle = New("Part",Nelf,"Handle",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.310000002, 1, 0.780000031),CFrame = CFrame.new(-52.9949875, 0.527622998, -57.190033, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Mesh = New("FileMesh",Handle,"Mesh",{Scale = Vector3.new(1.1193043, 1.11930454, 1.11930454),MeshId = "http://www.roblox.com/asset/?id=168892432",})
mot = New("Motor",Part,"mot",{Part0 = RootPart,Part1 = Handle,C0 = CFrame.Angles(0,math.rad(180),0)})


Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.1820412, 3.50769162, -58.470623, 0.0758723021, -0.226574257, 0.971034467, 0.981181562, -0.156447366, -0.113169432, 0.177557081, 0.961347163, 0.210440487),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(3.35791326, 3.35791373, 3.35791373),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0758723021, 0.981181562, 0.177557081, -0.226574257, -0.156447366, 0.961347163, 0.971034467, -0.113169432, 0.210440487),C1 = CFrame.new(2.81294632, 2.98006868, -1.28059006, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-47.8889122, 3.55663919, -57.9225693, -0.187439382, -0.22643964, 0.955820084, 0.975568593, -0.1564385, 0.15425092, 0.11459858, 0.961380303, 0.250230134),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(3.35791326, 3.35791373, 3.35791373),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.187439382, 0.975568593, 0.11459858, -0.22643964, -0.1564385, 0.961380303, 0.955820084, 0.15425092, 0.250230134),C1 = CFrame.new(5.10607529, 3.02901626, -0.732536316, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.3172951, 2.99810386, -58.1192741, 0.213871852, -0.106541649, 0.971034527, 0.804365993, 0.58325696, -0.113167986, -0.554305255, 0.805270493, 0.21044068),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(4.4772172, 2.98481226, 4.47721767),MeshType = Enum.MeshType.Cylinder,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.213871852, 0.804365993, -0.554305255, -0.106541649, 0.58325696, 0.805270493, 0.971034527, -0.113167986, 0.21044068),C1 = CFrame.new(2.67769241, 2.47048092, -0.92924118, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.4280663, 4.16519833, -57.5749207, -0.841101944, -0.0969311371, 0.532120585, 0.0950307697, 0.942023098, 0.321810395, -0.532463193, 0.321243256, -0.783125699),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.26854491, 1.26854503, 0.298481196),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.841101944, 0.0950307697, -0.532463193, -0.0969311371, 0.942023098, 0.321243256, 0.532120585, 0.321810395, -0.783125699),C1 = CFrame.new(3.56692123, 3.63757539, -0.384887695, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.0802078, 4.3748951, -58.0839653, 0.212348163, -0.0968667567, 0.972381353, 0.334798723, 0.942061722, 0.0207332373, -0.918051422, 0.321149349, 0.232475907),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(6.71582651, 6.71582747, 6.71582747),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.212348163, 0.334798723, -0.918051422, -0.0968667567, 0.942061722, 0.321149349, 0.972381353, 0.0207332373, 0.232475907),C1 = CFrame.new(3.91477966, 3.84727216, -0.893932343, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-48.9923859, 4.17392349, -57.4702454, -0.986369312, -0.0968504995, -0.133026481, -0.133985102, 0.942024887, 0.307631791, 0.0955198705, 0.321262121, -0.942160666),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.26854491, 1.26854503, 0.298481196),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.986369312, -0.133985102, 0.0955198705, -0.0968504995, 0.942024887, 0.321262121, -0.133026481, 0.307631791, -0.942160666),C1 = CFrame.new(4.00260162, 3.64630055, -0.280212402, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-47.9062805, 3.04954076, -57.5432129, 0.0276053511, -0.292654008, 0.955820084, 0.800393045, 0.579290509, 0.154251441, -0.598839641, 0.76077342, 0.250229776),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(4.4772172, 2.98481226, 4.47721767),MeshType = Enum.MeshType.Cylinder,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0276053511, 0.800393045, -0.598839641, -0.292654008, 0.579290509, 0.76077342, 0.955820084, 0.154251441, 0.250229776),C1 = CFrame.new(5.08870697, 2.52191782, -0.353179932, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.4450111, 2.51772857, -57.7885017, 0.213871852, -0.106541649, 0.971034527, 0.804365993, 0.58325696, -0.113167986, -0.554305255, 0.805270493, 0.21044068),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(4.4772172, 4.47721815, 4.47721767),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.213871852, 0.804365993, -0.554305255, -0.106541649, 0.58325696, 0.805270493, 0.971034527, -0.113167986, 0.21044068),C1 = CFrame.new(2.54997635, 1.99010563, -0.598468781, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.1027832, 4.53299284, -58.2848854, 0.971034527, -0.0758496076, 0.226581886, -0.113147303, -0.981184483, 0.156444624, 0.210452437, -0.177550286, -0.961345792),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(5.96962261, 2.98481226, 5.96962452),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.971034527, -0.113147303, 0.210452437, -0.0758496076, -0.981184483, -0.177550286, 0.226581886, 0.156444624, -0.961345792),C1 = CFrame.new(2.89220428, 4.00536966, -1.09485245, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-48.0849533, 4.57648516, -57.8025208, 0.95581764, 0.187414303, 0.226470977, 0.154220149, -0.975572526, 0.15644367, 0.250258654, -0.114605241, -0.961372137),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(0.746202886, 1.49240601, 0.746203005),MeshId = "http://www.roblox.com/asset/?id=9756362",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.95581764, 0.154220149, 0.250258654, 0.187414303, -0.975572526, -0.114605241, 0.226470977, 0.15644367, -0.961372137),C1 = CFrame.new(4.91003418, 4.04886198, -0.612487793, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-47.923027, 2.57146716, -57.1854515, -0.292656958, -0.0275736116, 0.955820084, 0.579202652, -0.800456703, 0.154251084, 0.760839224, 0.598756015, 0.250230014),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(0.470107824, 0.470107913, 0.470107913),MeshId = "http://www.roblox.com/asset/?id=1290033",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.292656958, 0.579202652, 0.760839224, -0.0275736116, -0.800456703, 0.598756015, 0.955820084, 0.154251084, 0.250230014),C1 = CFrame.new(5.07196045, 2.04384422, 0.00458145142, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.0802231, 4.37489319, -58.0839729, -0.972376943, -0.0968946517, 0.212356046, -0.0207269862, 0.942018867, 0.334919512, -0.232495397, 0.321266383, -0.918005347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(0.373101443, 0.373101503, 0.373101503),MeshId = "http://www.roblox.com/asset/?id=168892432",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.972376943, -0.0207269862, -0.232495397, -0.0968946517, 0.942018867, 0.321266383, 0.212356046, 0.334919512, -0.918005347),C1 = CFrame.new(3.9147644, 3.84727025, -0.893939972, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.1365356, 4.0936532, -58.3648262, 0.0758723021, -0.226574257, 0.971034467, 0.981181562, -0.156447366, -0.113169432, 0.177557081, 0.961347163, 0.210440487),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(4.4772172, 2.98481226, 4.47721767),MeshType = Enum.MeshType.Cylinder,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0758723021, 0.981181562, 0.177557081, -0.226574257, -0.156447366, 0.961347163, 0.971034467, -0.113169432, 0.210440487),C1 = CFrame.new(2.85845184, 3.56603026, -1.17479324, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.0802231, 4.37489319, -58.0839729, -0.972376943, -0.0968946517, 0.212356046, -0.0207269862, 0.942018867, 0.334919512, -0.232495397, 0.321266383, -0.918005347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(2.98481154, 2.98481202, 2.98481202),MeshId = "http://www.roblox.com/asset/?id=168892432",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.972376943, -0.0207269862, -0.232495397, -0.0968946517, 0.942018867, 0.321266383, 0.212356046, 0.334919512, -0.918005347),C1 = CFrame.new(3.9147644, 3.84727025, -0.893939972, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.0802231, 4.37489319, -58.0839729, -0.972376943, -0.0968946517, 0.212356046, -0.0207269862, 0.942018867, 0.334919512, -0.232495397, 0.321266383, -0.918005347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(0.746202886, 0.746203005, 0.746203005),MeshId = "http://www.roblox.com/asset/?id=168892432",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.972376943, -0.0207269862, -0.232495397, -0.0968946517, 0.942018867, 0.321266383, 0.212356046, 0.334919512, -0.918005347),C1 = CFrame.new(3.9147644, 3.84727025, -0.893939972, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-47.9230156, 2.571455, -57.1854935, 0.0276053511, -0.292654008, 0.955820084, 0.800393045, 0.579290509, 0.154251441, -0.598839641, 0.76077342, 0.250229776),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(4.4772172, 4.47721815, 4.47721767),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0276053511, 0.800393045, -0.598839641, -0.292654008, 0.579290509, 0.76077342, 0.955820084, 0.154251441, 0.250229776),C1 = CFrame.new(5.07197189, 2.04383206, 0.00453948975, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-48.0849533, 4.57648516, -57.8025208, 0.95581764, 0.187414303, 0.226470977, 0.154220149, -0.975572526, 0.15644367, 0.250258654, -0.114605241, -0.961372137),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(5.96962261, 2.98481226, 5.96962452),MeshType = Enum.MeshType.Sphere,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.95581764, 0.154220149, 0.250258654, 0.187414303, -0.975572526, -0.114605241, 0.226470977, 0.15644367, -0.961372137),C1 = CFrame.new(4.91003418, 4.04886198, -0.612487793, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.0802231, 4.37489319, -58.0839729, -0.972376943, -0.0968946517, 0.212356046, -0.0207269862, 0.942018867, 0.334919512, -0.232495397, 0.321266383, -0.918005347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(2.2386086, 2.23860908, 2.23860908),MeshId = "http://www.roblox.com/asset/?id=168892432",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.972376943, -0.0207269862, -0.232495397, -0.0968946517, 0.942018867, 0.321266383, 0.212356046, 0.334919512, -0.918005347),C1 = CFrame.new(3.9147644, 3.84727025, -0.893939972, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
eye = New("Part",Nelf,"eye",{BrickColor = BrickColor.new("Cyan"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.4361267, 4.16019058, -57.5626183, -0.841101944, -0.0969311371, 0.532120585, 0.0950307697, 0.942023098, 0.321810395, -0.532463193, 0.321243256, -0.783125699),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0156863, 0.686275, 0.92549),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(1.1193043, 0.677552342, 0.298481196),MeshType = Enum.MeshType.Sphere,})
SpotLight = New("SpotLight",eye,"SpotLight",{Color = Color3.new(0, 0.666667, 1),Angle = 36,Brightness = 100,Range = 24,Shadows = true,})
mot = New("Motor",eye,"mot",{Part0 = eye,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.841101944, 0.0950307697, -0.532463193, -0.0969311371, 0.942023098, 0.321243256, 0.532120585, 0.321810395, -0.783125699),C1 = CFrame.new(3.55886078, 3.63256764, -0.372585297, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.0802231, 4.37489319, -58.0839729, -0.972376943, -0.0968946517, 0.212356046, -0.0207269862, 0.942018867, 0.334919512, -0.232495397, 0.321266383, -0.918005347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(2.61171031, 2.61171055, 2.61171055),MeshId = "http://www.roblox.com/asset/?id=168892432",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.972376943, -0.0207269862, -0.232495397, -0.0968946517, 0.942018867, 0.321266383, 0.212356046, 0.334919512, -0.918005347),C1 = CFrame.new(3.9147644, 3.84727025, -0.893939972, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.0802231, 4.37489319, -58.0839729, -0.972376943, -0.0968946517, 0.212356046, -0.0207269862, 0.942018867, 0.334919512, -0.232495397, 0.321266383, -0.918005347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(1.86550725, 1.8655076, 1.86550748),MeshId = "http://www.roblox.com/asset/?id=168892432",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.972376943, -0.0207269862, -0.232495397, -0.0968946517, 0.942018867, 0.321266383, 0.212356046, 0.334919512, -0.918005347),C1 = CFrame.new(3.9147644, 3.84727025, -0.893939972, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
han = New("Part",Nelf,"han",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Transparency = 1,Transparency = 1,Size = Vector3.new(0.746202886, 0.746203005, 0.746203005),CFrame = CFrame.new(-47.923027, 2.57146716, -57.1854515, -0.292656958, -0.0275736116, 0.955820084, 0.579202652, -0.800456703, 0.154251084, 0.760839224, 0.598756015, 0.250230014),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
mot = New("Motor",han,"mot",{Part0 = han,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.292656958, 0.579202652, 0.760839224, -0.0275736116, -0.800456703, 0.598756015, 0.955820084, 0.154251084, 0.250230014),C1 = CFrame.new(5.07196045, 2.04384422, 0.00458145142, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
particle2 = New("Part",Nelf,"particle2",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-48.0009613, 4.13931561, -57.8541145, -0.187439382, -0.22643964, 0.955820084, 0.975568593, -0.1564385, 0.15425092, 0.11459858, 0.961380303, 0.250230134),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("SpecialMesh",particle2,"Mesh",{Scale = Vector3.new(4.4772172, 2.98481226, 4.47721767),MeshType = Enum.MeshType.Cylinder,})
mot = New("Motor",particle2,"mot",{Part0 = particle2,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.187439382, 0.975568593, 0.11459858, -0.22643964, -0.1564385, 0.961380303, 0.955820084, 0.15425092, 0.250230134),C1 = CFrame.new(4.99402618, 3.61169267, -0.664081573, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
particle1 = New("Part",Nelf,"particle1",{BrickColor = BrickColor.new("Cyan"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.746202886, 0.200000003, 0.746203005),CFrame = CFrame.new(-49.0222168, 3.81171012, -58.275589, -0.972376943, -0.0968946517, 0.212356046, -0.0207269862, 0.942018867, 0.334919512, -0.232495397, 0.321266383, -0.918005347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0156863, 0.686275, 0.92549),})
Mesh = New("BlockMesh",particle1,"Mesh",{Scale = Vector3.new(1, 0.149240628, 1),})
mot = New("Motor",particle1,"mot",{Part0 = particle1,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.972376943, -0.0207269862, -0.232495397, -0.0968946517, 0.942018867, 0.321266383, 0.212356046, 0.334919512, -0.918005347),C1 = CFrame.new(3.97277069, 3.28408718, -1.08555603, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.1027832, 4.53299284, -58.2848854, 0.971034527, -0.0758496076, 0.226581886, -0.113147303, -0.981184483, 0.156444624, 0.210452437, -0.177550286, -0.961345792),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(0.746202886, 1.49240601, 0.746203005),MeshId = "http://www.roblox.com/asset/?id=9756362",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.971034527, -0.113147303, 0.210452437, -0.0758496076, -0.981184483, -0.177550286, 0.226581886, 0.156444624, -0.961345792),C1 = CFrame.new(2.89220428, 4.00536966, -1.09485245, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.0802231, 4.37489319, -58.0839729, -0.972376943, -0.0968946517, 0.212356046, -0.0207269862, 0.942018867, 0.334919512, -0.232495397, 0.321266383, -0.918005347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.972376943, -0.0207269862, -0.232495397, -0.0968946517, 0.942018867, 0.321266383, 0.212356046, 0.334919512, -0.918005347),C1 = CFrame.new(3.9147644, 3.84727025, -0.893939972, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
eye = New("Part",Nelf,"eye",{BrickColor = BrickColor.new("Cyan"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-48.9904785, 4.16957474, -57.4560623, -0.986369312, -0.0968504995, -0.133026481, -0.133985102, 0.942024887, 0.307631791, 0.0955198705, 0.321262121, -0.942160666),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0156863, 0.686275, 0.92549),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(1.1193043, 0.677552342, 0.298481196),MeshType = Enum.MeshType.Sphere,})
SpotLight = New("SpotLight",eye,"SpotLight",{Color = Color3.new(0, 0.666667, 1),Angle = 36,Brightness = 100,Range = 24,Shadows = true,})
mot = New("Motor",eye,"mot",{Part0 = eye,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.986369312, -0.133985102, 0.0955198705, -0.0968504995, 0.942024887, 0.321262121, -0.133026481, 0.307631791, -0.942160666),C1 = CFrame.new(4.00450897, 3.6419518, -0.266029358, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-50.4450111, 2.51772857, -57.7885017, 0.213871852, -0.106541649, 0.971034527, 0.804365993, 0.58325696, -0.113167986, -0.554305255, 0.805270493, 0.21044068),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(0.470107824, 0.470107913, 0.470107913),MeshId = "http://www.roblox.com/asset/?id=1290033",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.213871852, 0.804365993, -0.554305255, -0.106541649, 0.58325696, 0.805270493, 0.971034527, -0.113167986, 0.21044068),C1 = CFrame.new(2.54997635, 1.99010563, -0.598468781, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Part = New("Part",Nelf,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-49.0802231, 4.37489319, -58.0839729, -0.972376943, -0.0968946517, 0.212356046, -0.0207269862, 0.942018867, 0.334919512, -0.232495397, 0.321266383, -0.918005347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("FileMesh",Part,"Mesh",{Scale = Vector3.new(1.49240577, 1.49240601, 1.49240601),MeshId = "http://www.roblox.com/asset/?id=168892432",})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.972376943, -0.0207269862, -0.232495397, -0.0968946517, 0.942018867, 0.321266383, 0.212356046, 0.334919512, -0.918005347),C1 = CFrame.new(3.9147644, 3.84727025, -0.893939972, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
han = New("Part",Nelf,"han",{BrickColor = BrickColor.new("Pastel light blue"),Material = Enum.Material.Sand,Transparency = 1,Transparency = 1,Size = Vector3.new(0.746202886, 0.746203005, 0.746203005),CFrame = CFrame.new(-50.4450302, 2.51771688, -57.7885132, 0.213871852, -0.106541649, 0.971034527, 0.804365993, 0.58325696, -0.113167986, -0.554305255, 0.805270493, 0.21044068),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.686275, 0.866667, 1),})
mot = New("Motor",han,"mot",{Part0 = han,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.213871852, 0.804365993, -0.554305255, -0.106541649, 0.58325696, 0.805270493, 0.971034527, -0.113167986, 0.21044068),C1 = CFrame.new(2.54995728, 1.99009395, -0.598480225, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

--Breath--
local introo = Instance.new("ParticleEmitter",kiss)
introo.Color = ColorSequence.new(Color3.new(.5, 1, 1), Color3.new(.8, 1, 1))
introo.LightEmission = .5
introo.Size = NumberSequence.new(0.2)
introo.Texture = "http://www.roblox.com/asset/?id=99210382"
aas = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1.54)})
asd = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
introo.Transparency = asd
introo.Size = aas
introo.ZOffset = 0
introo.Acceleration = Vector3.new(0, 0, 0)
introo.LockedToPart = true
introo.EmissionDirection = "Back" -- y back xd
introo.Lifetime = NumberRange.new(2,3)
introo.Rate = 5
introo.Rotation = NumberRange.new(-100, 100)
introo.RotSpeed = NumberRange.new(-100, 100)
introo.Speed = NumberRange.new(1.4)
introo.VelocitySpread = 20
introo.Enabled=true


--other--

local introos = Instance.new("ParticleEmitter",particle1)
introos.Color = ColorSequence.new(Color3.new(.5, 1, 1), Color3.new(.8, 1, 1))
introos.LightEmission = 1
introos.Size = NumberSequence.new(1)
introos.Texture = "http://www.roblox.com/asset/?id=31727915"
--aas = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1.54)})
asd = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.2, 0),NumberSequenceKeypoint.new(0.8, 0),NumberSequenceKeypoint.new(1, 1)})
introos.Transparency = asd
--introos.Size = aas
introos.ZOffset = 0
introos.Acceleration = Vector3.new(0, 0, 0)
introos.LockedToPart = true
introos.EmissionDirection = "Bottom"
introos.Lifetime = NumberRange.new(1)
introos.Rate = 100000
introos.Rotation = NumberRange.new(-360, 500)
introos.RotSpeed = NumberRange.new(-180, 189)
introos.Speed = NumberRange.new(4)
introos.VelocitySpread = 1
introos.Enabled=true

local introoss = Instance.new("ParticleEmitter",particle2)
introoss.Color = ColorSequence.new(Color3.new(.5, 1, 1), Color3.new(.8, 1, 1))
introoss.LightEmission = 1
--introoss.Size = NumberSequence.new(1)
introoss.Texture = "http://www.roblox.com/asset/?id=320043786"
aas = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5),NumberSequenceKeypoint.new(1, .5)})
asd = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.2, 0),NumberSequenceKeypoint.new(0.8, 0),NumberSequenceKeypoint.new(1, 1)})
introoss.Transparency = asd
introos.Size = aas
introoss.ZOffset = 0
introoss.Acceleration = Vector3.new(0, 0, 0)
introoss.LockedToPart = true
introoss.EmissionDirection = "Bottom"
introoss.Lifetime = NumberRange.new(1)
introoss.Rate = 20
introoss.Rotation = NumberRange.new(-360, 360)
introoss.RotSpeed = NumberRange.new(-180, 180)
introoss.Speed = NumberRange.new(4)
introoss.VelocitySpread = 180
introoss.Enabled=true


EffectModel = Create("Model"){
	Parent = Character,
	Name = "Effects",
}

Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
			local prt = CFuncs.Part..Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 2)
			Effects[#Effects + 1] = {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3
			}
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
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(1.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(-1.5, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(0.5, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			CFrame.new(-0.5, -2, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
		}, .3, false)
	end
	attack = false
end

function How_to_live_avi()
	attack = true
	Humanoid.WalkSpeed = 1
	for i = 0, 3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, -1.03615987, -0.321301371, 1, 0, 0, 0, 0.766212463, 0.642587364, 0, -0.642587364, 0.766212463) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.55075097, -0.201079994, 1, 0, 0, 0, 0.928164721, 0.372169584, 0, -0.372169584, 0.928164721) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.60673702, -0.0154295918, 0.104641199, 0.583110213, -0.806256592, -0.0996639654, 0.812393069, 0.578700125, 0.0715808272, -3.69548798e-05, -0.122705847, 0.992443144) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.68533659, -0.036477834, 0.232782185, 0.598335326, 0.784392118, 0.163481146, -0.80124712, 0.585750222, 0.12207219, -6.70552254e-06, -0.204027355, 0.978967488) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.424130619, -0.599340916, -0.89095664, 0.996774673, 0.012246226, 0.0793405771, 0.0441683494, 0.741622627, -0.669363678, -0.0670379251, 0.670709252, 0.738686264) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.652507722, -1.94315124, 0.513518453, 0.978214204, 0.200444415, -0.0540676638, -0.154227883, 0.875958264, 0.457072139, 0.138978034, -0.438775092, 0.887786567) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .05, false)
	end
	CFuncs["Sound"].Create("200632211", Torso, 1, .6)
	Effects.Wave.Create(BrickColor.new("White"), RootPart.CFrame* CFrame.new(0,-3.5,0)*CFrame.Angles(0,0,0), 2, 1.4, 2, 1.5, 0.6, 1.5, 0.05)
	Humanoid.Jump = true
    Torso.Velocity = Vector3.new(0, 400, 0)
	for i = 0, 5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0.000592137396, 0.0243320614, 1, 0, -0, 0, 0.998815119, -0.0486660115, 0, 0.0486660078, 0.998815119) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49255788, 0.0580787957, 1, 0, -0, 0, 0.991898537, -0.127052188, -0, 0.127052188, 0.991898537) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.77745748, 0.0644446909, 0.6576069, 0.444794923, -0.699619889, -0.559186816, 0.895632386, 0.347450435, 0.277707279, -4.32133675e-07, -0.624347925, 0.781146765) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.74996197, 0.110267356, 0.44159767, 0.353478432, 0.848394156, 0.394056529, -0.93215698, 0.354735166, 0.0724315718, -0.0783351958, -0.392925411, 0.916228056) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.564538479, -1.08948302, -0.169450268, 0.999277413, -0.0380095579, 1.31532767e-08, 0.0373679549, 0.982409656, 0.182961941, -0.00695431605, -0.182829753, 0.983120024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.587307692, -1.9104619, 0.29412967, 0.994682372, 0.102991022, -1.53875547e-07, -0.0993663296, 0.959675372, 0.262962759, 0.0270829555, -0.261564374, 0.96480602) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	RootPart.Anchored = true
	ref = New("Part",m,"ref",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-72.7290878, 28.5900459, 2.38004827, 0.99999994, 0.000383002043, -5.96046448e-08, -0.000383001927, 1, 1.16415322e-09, 4.47034836e-08, -1.39698386e-09, 1),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	mot = New("Motor",ref,"mot",{Part0 = ref,Part1 = RootPart,C0 = CFrame.new(0, 0, 0, 0.99999994, -0.000383001927, 4.47034836e-08, 0.000383002043, 1, -1.39698386e-09, -5.96046448e-08, 1.16415322e-09, 1),C1 = CFrame.new(-0.0108718872, 28.6000443, -2.38418579e-07, -1, 0, 0, 0, 1, 0, 0, 0, -1),})

	CFuncs["Sound"].Create("214876666", Character, 1.5, .7)
	for i = 0, 6, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0.00170694385, 0.0412697122, 1, 0, -0, 0, 0.996587992, -0.0825380012, 0, 0.0825380012, 0.996587992) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.35443878, 0.157845795, 1, 0, -0, 0, 0.936196327, -0.351494998, -0, 0.351494998, 0.936196327) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.59617484, 1.19478106, -0.175431296, 0.97810787, -0.194577187, 0.0738007948, -0.160195485, -0.930362523, -0.329793394, 0.132831812, 0.310750633, -0.941164196) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.77782011, 0.0086527206, 0.483837992, 0.408382565, 0.838138402, 0.361603439, -0.912810922, 0.374976844, 0.161780298, 3.15159559e-06, -0.396144301, 0.918190956) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.57985276, -1.93068719, 0.293669045, 0.995965481, -0.0878097862, -0.0184999984, 0.0897372141, 0.974572957, 0.205324233, 9.35979187e-08, -0.206156105, 0.978520691) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.594926953, -1.87837791, 0.3280527, 0.992015719, 0.119715877, 0.0396601185, -0.126114279, 0.941686928, 0.311963469, -4.36790287e-07, -0.314474404, 0.949266076) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .15, false)
	Effects.Lightning.Create(RightArm.Position,ref.Position,5,5,BrickColor.new("Cyan"),.7,.5,0.1)
	Effects.Block.Create(BrickColor.new("Cyan"), ref.CFrame, 2, 2, 2, 3, 3, 3, 0.06)
	end	
	refs = New("Part",m,"ref",{Anchored = true,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = ref.CFrame,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
    aa = New("BlockMesh",refs,"aa",{Scale = Vector3.new(1,0,1)})
    ok1 = New("Decal",refs,"k",{Face = "Top",Texture = "http://www.roblox.com/asset/?id=823334464"})
    ok2 = New("Decal",refs,"k",{Face = "Bottom",Texture = "http://www.roblox.com/asset/?id=823334464"})
	Humanoid.WalkSpeed = 16
	wait(.1)
	ref:Remove()
	local val = 100
coroutine.wrap(function()
while wait() and refs and refs.Reflectance <= 1 do
	val = val - 1
	refs.Reflectance = refs.Reflectance + .01
	aa.Scale = aa.Scale + Vector3.new(val,0,val)
end
end)()
	for i = 0, 3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0.00170670624, 0.0412697308, 1, 0, -0, 0, 0.996587992, -0.0825380012, 0, 0.0825380012, 0.996587992) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.38451409, -0.272948891, 1, 0, 0, 0, 0.881881952, 0.471470267, -0, -0.471470267, 0.881882012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.332121313, 0.253666043, -0.662508011, -0.195479095, 0.92218256, 0.333717972, 0.920646012, 0.289811462, -0.261574864, -0.33793506, 0.256103426, -0.905655622) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.617085814, 0.39823994, -0.825249493, -0.00209266553, -0.783531249, -0.62135005, -0.934353113, 0.222947314, -0.277993411, 0.356344759, 0.579977095, -0.732561052) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.57985276, -1.93068719, 0.293669045, 0.995965481, -0.0878097862, -0.0184999984, 0.0897372141, 0.974572957, 0.205324233, 9.35979187e-08, -0.206156105, 0.978520691) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.594926953, -1.87837791, 0.3280527, 0.992015719, 0.119715877, 0.0396601185, -0.126114279, 0.941686928, 0.311963469, -4.36790287e-07, -0.314474404, 0.949266076) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
	end
	refs1 = New("Part",m,"ref",{Anchored = true,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = refs.CFrame,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	refs2 = New("Part",m,"ref",{Anchored = true,BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = refs.CFrame,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})

	Effects.Sphere.Create(BrickColor.new("Cyan"), RootPart.CFrame, 5, 5, 5, 10, 10, 10, 0.04)
	CFuncs["Sound"].Create("138079095", Character, 1.5, .4)
coroutine.wrap(function()
	for i = 1,100 do
		swait(1)
		refs1.CFrame = refs.CFrame * CFrame.new(math.random(-200,200),0,math.random(-200,200))
		refs2.CFrame = refs.CFrame * CFrame.new(math.random(-200,200),-420,math.random(-200,200))
		Effects.Lightning.Create(refs1.Position,refs2.Position,5,5,BrickColor.new("Cyan"),5,.5,0.1)
	Effects.Block.Create(BrickColor.new("Cyan"), refs2.CFrame, 2, 2, 2, 15, 15, 15, 0.07)
	Effects.Block.Create(BrickColor.new("Cyan"), refs2.CFrame, 2, 2, 2, 15, 15, 15, 0.07)
	MagnitudeDamage(refs2, 25, 20, 40, math.random(1, 5), "Snare", "", 1)
	CFuncs["Sound"].Create("427582855", refs2, 3, 1.2)
	
	end
end)()
	for i = 0, 20, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, -0.00170670624, 0.0412697308, 1, 0, -0, 0, 0.996587992, -0.0825380012, 0, 0.0825380012, 0.996587992) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.38187397, 0.24372232, 1, 0, -0, 0, 0.936117887, -0.351686984, -0, 0.351686984, 0.936117887) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.94593441, 0.568508446, 0.229167357, 0.0108728549, -0.954202771, -0.29896301, 0.959349692, -0.074366644, 0.272246838, -0.282011509, -0.289770067, 0.914605498) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.96323562, 0.571394145, 0.42302075, -0.00208615814, 0.909483552, 0.415736109, -0.934352875, -0.149918631, 0.323280126, 0.356344342, -0.387769997, 0.850090027) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.57985276, -1.93068719, 0.293669045, 0.995965481, -0.0878097862, -0.0184999984, 0.0897372141, 0.974572957, 0.205324233, 9.35979187e-08, -0.206156105, 0.978520691) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.594926953, -1.87837791, 0.3280527, 0.992015719, 0.119715877, 0.0396601185, -0.126114279, 0.941686928, 0.311963469, -4.36790287e-07, -0.314474404, 0.949266076) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	RootPart.Anchored = false
	attack = false
for i = 1,100 do
	swait()
	ok1.Transparency = ok1.Transparency + 0.01
	ok2.Transparency = ok2.Transparency + 0.01
	aa.Scale = aa.Scale + Vector3.new(10,0,10)	
end
refs:Remove()
refs1:Remove()
refs2:Remove()

end
Mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attackone()
	end
end)

Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'q' then
	How_to_live_avi()
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
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.5, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.5, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				RH.C0 = clerp(RH.C0, CFrame.new(.5, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, CFrame.new(-.5, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
					PlayAnimationFromTable({
         CFrame.new(0, -0, -0, 0.974372447, 0, -0.224940956, 0, 1, 0, 0.224941015, 0, 0.974372387) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.1920929e-07, 1.49999416, -2.08616257e-07, 0.920513809, -0.0204478577, 0.390176117, 1.86964701e-08, 0.998630404, 0.0523349345, -0.390711427, -0.0481749773, 0.919252574) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), -- <-- (+/-) [number] * math.cos([number]/[number])     cough cough
         CFrame.new(1.68044662, 0.0500002615, -0.100577071, 0.985486329, -0.16919525, -0.0138741881, 0.168487713, 0.984809339, -0.0420071632, 0.0207707137, 0.0390598364, 0.999020934) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58900392, -0.010000065, 0.141046837, 0.967111886, 0.118746817, 0.224941015, -0.121870048, 0.992548466, 0, -0.223264799, -0.0274135657, 0.974372387) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.690335035, -2.00001669, 0.0561553538, 0.987111211, -0.0335469171, 0.156496003, 0.0346383005, 0.999395728, -0.00425298186, -0.156258017, 0.00961896125, 0.987671435) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.514178514, -1.99999702, -0.00445482135, 0.933586121, 0, 0.358358383, 0, 1, 0, -0.358358324, 0, 0.93358618) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		 }, .3, false)
	end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
							PlayAnimationFromTable({
CFrame.new(0, -0.0193441566, -0.137761548, 1, 0, 0, 0, 0.961308897, 0.275472969, 0, -0.275472969, 0.961308897) * CFrame.new(0, 0- .1 * math.cos((sine) / 2), 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.44159341, 0.0451771915, 1, 0, 0, 0, 0.98646307, -0.163984656, 0, 0.163984656, 0.98646307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.63363111, 0.0754526258, -2.72151652e-007, 0.985570133, -0.16926825, 1.56980732e-007, 0.16926825, 0.985570133, 2.38418579e-007, -1.86264515e-007, -1.49011612e-007, 1.00000024) * CFrame.new(0, 0, 0+ 0.5 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0- 20 * math.cos((sine) / 4)),  0, 0), 
CFrame.new(-1.61827064, 0.111134544, 1.51569429e-006, 0.978242338, 0.207465827, 7.76345075e-007, -0.207465842, 0.978242397, -2.41398811e-006, -1.25542283e-006, 2.20537186e-006, 1.00000012) * CFrame.new(0, 0, 0- 0.5 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0+ 20 * math.cos((sine) / 4)), 0, 0), 
CFrame.new(0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 + 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 - 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)),
CFrame.new(-0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 - 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 + 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)), 
}, .3, false)
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