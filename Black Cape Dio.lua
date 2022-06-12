--[[Nocturna_A._Alteriano_Night.Owl.Inc]]--
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
---invinsible---
for i,v in pairs(Character:GetChildren()) do
    if v:IsA("Part") and v.Name ~= "HumanoidRootPart" and v.Name ~= "Head" then
        v.Transparency  = 1
    end
end
----cape---
-- Made by PPATTA/Cass/Inkyy/lynkss/h6IIow - I've returned!!, I took a little break from scripting but now im back. Enjoy. ---
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Model")
o5 = Instance.new("Part")
o6 = Instance.new("SpecialMesh")
o7 = Instance.new("Weld")
o8 = Instance.new("Part")
o9 = Instance.new("SpecialMesh")
o10 = Instance.new("Weld")
o11 = Instance.new("Part")
o12 = Instance.new("SpecialMesh")
o13 = Instance.new("Weld")
o14 = Instance.new("Part")
o15 = Instance.new("SpecialMesh")
o16 = Instance.new("Weld")
o17 = Instance.new("Part")
o18 = Instance.new("SpecialMesh")
o19 = Instance.new("Weld")
o20 = Instance.new("Part")
o21 = Instance.new("SpecialMesh")
o22 = Instance.new("Weld")
o23 = Instance.new("Part")
o24 = Instance.new("SpecialMesh")
o25 = Instance.new("Weld")
o26 = Instance.new("Part")
o27 = Instance.new("SpecialMesh")
o28 = Instance.new("Weld")
o29 = Instance.new("Part")
o30 = Instance.new("SpecialMesh")
o31 = Instance.new("Weld")
o32 = Instance.new("Part")
o33 = Instance.new("SpecialMesh")
o34 = Instance.new("Weld")
o35 = Instance.new("Part")
o36 = Instance.new("SpecialMesh")
o37 = Instance.new("Weld")
o38 = Instance.new("Part")
o39 = Instance.new("SpecialMesh")
o40 = Instance.new("Weld")
o41 = Instance.new("Part")
o42 = Instance.new("SpecialMesh")
o43 = Instance.new("Weld")
o44 = Instance.new("Part")
o45 = Instance.new("SpecialMesh")
o46 = Instance.new("Weld")
o47 = Instance.new("Part")
o48 = Instance.new("SpecialMesh")
o49 = Instance.new("Weld")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Weld")
o53 = Instance.new("Part")
o54 = Instance.new("SpecialMesh")
o55 = Instance.new("Weld")
o56 = Instance.new("Part")
o57 = Instance.new("SpecialMesh")
o58 = Instance.new("Weld")
o59 = Instance.new("Part")
o60 = Instance.new("SpecialMesh")
o61 = Instance.new("Weld")
o62 = Instance.new("Part")
o63 = Instance.new("SpecialMesh")
o64 = Instance.new("Weld")
o1.Name = "Head_"
o1.Parent = mas
o2.Name = "REF"
o2.Parent = o1
o2.Transparency = 1
o2.Position = Vector3.new(110.644409, 4.68007088, -60.6269913)
o2.Rotation = Vector3.new(180, 0.0199999996, -180)
o2.Anchored = false
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(2, 1, 1)
o2.CFrame = CFrame.new(110.644409, 4.68007088, -60.6269913, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Position = Vector3.new(110.644409, 4.68007088, -60.6269913)
o3.Parent = o2
o3.Scale = Vector3.new(1.25, 1.25, 1.25)
o4.Name = "Hat"
o4.Parent = o1


o56.Name = "NinjaHalfmask"
o56.Parent = o1
o56.Position = Vector3.new(110.62999, 4.40999889, -60.6299591)
o56.Rotation = Vector3.new(-180, 0, -180)
o56.Anchored = false
o56.FormFactor = Enum.FormFactor.Custom
o56.Size = Vector3.new(1.39999914, 0.80000025, 1.39999986)
o56.CFrame = CFrame.new(110.62999, 4.40999889, -60.6299591, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.TopSurface = Enum.SurfaceType.Smooth
o56.Position = Vector3.new(110.62999, 4.40999889, -60.6299591)
o57.Parent = o56
o57.MeshId = "http://www.roblox.com/asset/?id=72541091"
o57.Scale = Vector3.new(1, 1, 0.949999988)
o57.TextureId = "rbxassetid://0"
o57.VertexColor = Vector3.new(0, 0, 0)
o57.MeshType = Enum.MeshType.FileMesh
o58.Name = "Joint"
o58.Parent = o56
o58.C0 = CFrame.new(-0.0144195557, 0.270071983, -0.00296783447, 0.99999994, -1.23944917e-22, -0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, 0.000331714633, 1.09697344e-22, 0.99999994)
o58.Part0 = o56
o58.Part1 = o2
o61.Name = "Joint"
o61.Parent = o59
o61.C0 = CFrame.new(-0.0643463135, -1.15692234, -0.00032043457, 0.99999994, -1.23944917e-22, -0.000331714633, -6.51779555e-05, 0.980506241, -0.196488023, 0.000325248257, 0.196488023, 0.980506182)
o61.Part0 = o59
o61.Part1 = o2
o64.Name = "Joint"
o64.Parent = o61
o64.C0 = CFrame.new(-0.0451278687, 0.602211952, -0.865444183, 0.999979198, -1.23196559e-22, 0.00646429276, -0.000884826644, 0.990587771, 0.13687627, -0.00640344899, -0.136879131, 0.990567029)
o64.Part0 = o62
o64.Part1 = o2
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait()

Workspace["Head_"].Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character["Head_"].Name = "Familiar Head"

w = Instance.new("Weld", game.Players.LocalPlayer.Character["Head"])
w.Part0 = game.Players.LocalPlayer.Character["Head"]
w.Part1 = o2
w.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
game.Players.LocalPlayer.Character["Head"].Transparency = 0

for i,v in pairs (game.Players.LocalPlayer.Character["Familiar Head"]:GetChildren()) do
	if v.ClassName == "Part" then
	v.CanCollide = false
	v.Anchored = false
	end
end

for i,v in pairs (game.Players.LocalPlayer.Character["Familiar Head"].Hat:GetChildren()) do
	v.Anchored = false
	v.CanCollide = false
end


local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Script")
o3 = Instance.new("Model")
o4 = Instance.new("Part")
o5 = Instance.new("SpecialMesh")
o6 = Instance.new("Weld")
o7 = Instance.new("Part")
o8 = Instance.new("BlockMesh")
o9 = Instance.new("Weld")
o10 = Instance.new("Part")
o11 = Instance.new("SpecialMesh")
o12 = Instance.new("Weld")
o13 = Instance.new("Part")
o14 = Instance.new("BlockMesh")
o15 = Instance.new("Weld")
o16 = Instance.new("Part")
o17 = Instance.new("SpecialMesh")
o18 = Instance.new("Weld")
o19 = Instance.new("Part")
o20 = Instance.new("BlockMesh")
o21 = Instance.new("Weld")
o22 = Instance.new("Part")
o23 = Instance.new("SpecialMesh")
o24 = Instance.new("Weld")
o25 = Instance.new("Part")
o26 = Instance.new("BlockMesh")
o27 = Instance.new("Weld")
o28 = Instance.new("LocalScript")
o29 = Instance.new("IntValue")
o30 = Instance.new("IntValue")
o31 = Instance.new("IntValue")
o32 = Instance.new("IntValue")
o33 = Instance.new("IntValue")
o34 = Instance.new("IntValue")
o35 = Instance.new("IntValue")
o36 = Instance.new("Part")
o37 = Instance.new("SpecialMesh")
o38 = Instance.new("Script")
o39 = Instance.new("Weld")
o40 = Instance.new("Part")
o41 = Instance.new("SpecialMesh")
o42 = Instance.new("Script")
o43 = Instance.new("Weld")
o44 = Instance.new("Part")
o45 = Instance.new("SpecialMesh")
o46 = Instance.new("Script")
o47 = Instance.new("Weld")
o48 = Instance.new("Part")
o49 = Instance.new("CylinderMesh")
o50 = Instance.new("Script")
o51 = Instance.new("Weld")
o52 = Instance.new("Part")
o53 = Instance.new("SpecialMesh")
o54 = Instance.new("Weld")
o55 = Instance.new("Part")
o56 = Instance.new("SpecialMesh")
o57 = Instance.new("Weld")
o58 = Instance.new("Part")
o59 = Instance.new("SpecialMesh")
o60 = Instance.new("Weld")
o61 = Instance.new("Part")
o62 = Instance.new("SpecialMesh")
o63 = Instance.new("Weld")
o64 = Instance.new("Part")
o65 = Instance.new("BlockMesh")
o66 = Instance.new("Part")
o67 = Instance.new("SpecialMesh")
o68 = Instance.new("Weld")
o69 = Instance.new("Part")
o70 = Instance.new("SpecialMesh")
o71 = Instance.new("Weld")
o72 = Instance.new("Part")
o73 = Instance.new("BlockMesh")
o74 = Instance.new("Weld")
o75 = Instance.new("Part")
o76 = Instance.new("SpecialMesh")
o77 = Instance.new("Weld")
o78 = Instance.new("Part")
o79 = Instance.new("BlockMesh")
o80 = Instance.new("Weld")
o81 = Instance.new("Part")
o82 = Instance.new("BlockMesh")
o83 = Instance.new("Weld")
o84 = Instance.new("Part")
o85 = Instance.new("SpecialMesh")
o86 = Instance.new("Weld")
o87 = Instance.new("Part")
o88 = Instance.new("SpecialMesh")
o89 = Instance.new("Weld")
o90 = Instance.new("Part")
o91 = Instance.new("SpecialMesh")
o92 = Instance.new("Weld")
o93 = Instance.new("Part")
o94 = Instance.new("SpecialMesh")
o95 = Instance.new("Weld")
o96 = Instance.new("Part")
o97 = Instance.new("BlockMesh")
o98 = Instance.new("Weld")
o99 = Instance.new("Part")
o100 = Instance.new("SpecialMesh")
o101 = Instance.new("Weld")
o102 = Instance.new("Part")
o103 = Instance.new("BlockMesh")
o104 = Instance.new("Weld")
o1.Name = "Armor"
o1.Parent = mas
o2.Name = "Welds"
o2.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--Saz

--A new system which is a combination of fast-welds and hard-welds.
--Should be far, far better.

--When script.CreateNewWelds.Value == true, we create a new set of weld information on script run.
--This toggles off automatically afterwards, to prevent issues that fast-welds can cause.

--Cruder than I wanted it to be, but not like I intended for anyone but me to use it anyway.
--The fact that you're reading this means you should likely kill yourself. Immediately.

wait(.33)

Tool=script.Parent
Nib=Tool.Parent

running=0
jumping=0
clothinganim=function()
	
	torsovel=Nib.Torso.Velocity
	vely=torsovel.y
	velh=Vector3.new(torsovel.x,0,torsovel.z)
	
	coseff=math.cos(time()*2) / 18
	jumping=0
	if vely > 6 then
		jumping=1
		coseff=0
	elseif vely<-6 then
		jumping=-1
		coseff=0
	end
	running=0
	if velh.magnitude > 5 then
		running=1
		coseff=0
	end
	
	rundir=1
	dir=Nib.Torso.Velocity
	magfor=(dir-Nib.Torso.CFrame.lookVector*dir.magnitude).magnitude
	magback=(dir-Nib.Torso.CFrame.lookVector*-dir.magnitude).magnitude
	if magfor > magback then
		rundir=-1
	end
	
	runeff=(((velh.magnitude / math.pi / 9) * running) * rundir) * 1.1
	jumpeff=(math.abs(vely / 4) * jumping) / 9
	
	fluidback=-.2 + jumpeff - (runeff / 3)
	fluidback2=-.8 + coseff + runeff * 2 - jumpeff*2
	
	if fluidback > -.05 then
		fluidback=-.05
	end
	if fluidback < -math.rad(175) then
		fluidback=-math.rad(175)
	end
	if fluidback2 > 1.6 then
		fluidback2=1.6
	end
	if fluidback2 < -1.55 then
		fluidback2=-1.55
	end
	
	gottagofast=(dir-Vector3.new(0,0,0)).magnitude/10 + .08
	
	Tool.Cloak.CloakScript.Initial.Value = -6 - math.deg(fluidback*1.5) + (jumpeff)
	Tool.Cloak.CloakScript.Progression.Value = gottagofast*1.5 + - (jumpeff * 2) - 1
	
	Tool.Cloak.CloakScript.Right1.Value=40-gottagofast*17.5 + (jumpeff * 3)
	Tool.Cloak.CloakScript.Right2.Value=20-gottagofast*8 + (jumpeff * 4)
	Tool.Cloak.CloakScript.Left1.Value=40-gottagofast*17.5 + (jumpeff * 3)
	Tool.Cloak.CloakScript.Left2.Value=20-gottagofast*8 + (jumpeff * 4)
end

weldparts=function()
	print("Welding")
	lel={}
	function jarate(p)
		for i=1, #p do
			table.insert(lel,p[i])
			k=p[i]:children()
			if #k>0 then
				jarate(k)
			end
		end
	end
	for _,v in pairs(script.Parent:children()) do
		if v.Name~="Cloak" and v.className~="Script" then
			v:BreakJoints()
			jarate(v:children())
		end
	end
	for _,v in pairs(lel) do
		if v.className=="Weld" or v.className=="Motor6D" then
			v:Remove()
		end
	end
end
weldparts()

wait(.5)

LEL=game:GetService("RunService").Stepped:connect(clothinganim)
end,o2)
end))
o3.Name = "Cloak"
o3.Parent = o1
o4.Name = "Tier6L"
o4.Parent = o3
o4.Material = Enum.Material.SmoothPlastic
o4.BrickColor = BrickColor.new("Really black")
o4.Position = Vector3.new(61.7912445, 1.25607467, -7180.82422)
o4.Rotation = Vector3.new(-86.7399979, 5.03999996, 147.070007)
o4.CanCollide = false
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(0.200000003, 2.19999981, 0.600000024)
o4.CFrame = CFrame.new(61.7912445, 1.25607467, -7180.82422, -0.836119115, -0.541471124, 0.0878807157, 0.10452985, -1.06138032e-07, 0.994521618, -0.538504481, 0.840725243, 0.056600064)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o4.Position = Vector3.new(61.7912445, 1.25607467, -7180.82422)
o4.Orientation = Vector3.new(-84, 57.2200012, 90)
o4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o5.Parent = o4
o5.Scale = Vector3.new(0.550000012, 1, 1)
o5.MeshType = Enum.MeshType.Wedge
o5.Scale = Vector3.new(0.550000012, 1, 1)
o6.Name = "Joint"
o6.Parent = o4
o6.C0 = CFrame.new(-0.0329589844, 0.100097656, 2.759552, -4.52394415e-05, 0.99939096, 0.0348952115, 1, 4.41140946e-05, 3.30192197e-05, 3.14597382e-05, 0.0348952115, -0.999391079)
o6.Part0 = o4
o6.Part1 = o64
o7.Name = "Tier4"
o7.Parent = o3
o7.Material = Enum.Material.SmoothPlastic
o7.BrickColor = BrickColor.new("Really black")
o7.Position = Vector3.new(61.9097748, 3.12423563, -7180.62842)
o7.Rotation = Vector3.new(-86.1999969, 5.88000011, -122.980003)
o7.CanCollide = false
o7.FormFactor = Enum.FormFactor.Custom
o7.Size = Vector3.new(2.4000001, 0.200000003, 0.400000036)
o7.CFrame = CFrame.new(61.9097748, 3.12423563, -7180.62842, -0.541471064, 0.834458232, 0.102458574, 1.34532456e-08, -0.121869415, 0.992546022, 0.840725303, 0.537434757, 0.0659888163)
o7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o7.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o7.Position = Vector3.new(61.9097748, 3.12423563, -7180.62842)
o7.Orientation = Vector3.new(-83, 57.2200012, 180)
o7.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o8.Parent = o7
o8.Scale = Vector3.new(1, 0.550000012, 1)
o8.Scale = Vector3.new(1, 0.550000012, 1)
o9.Name = "Joint"
o9.Parent = o7
o9.C0 = CFrame.new(0, 0.00854492188, 0.880432129, 1, 4.40463482e-05, 3.28889328e-05, 4.46135346e-05, -0.99984777, -0.0174494404, 3.21153384e-05, 0.0174494442, -0.99984777)
o9.Part0 = o7
o9.Part1 = o64
o10.Name = "Tier6R"
o10.Parent = o3
o10.Material = Enum.Material.SmoothPlastic
o10.BrickColor = BrickColor.new("Really black")
o10.Position = Vector3.new(61.6828423, 1.25604415, -7180.65576)
o10.Rotation = Vector3.new(-86.7399979, 5.03999996, -32.9300003)
o10.CanCollide = false
o10.FormFactor = Enum.FormFactor.Custom
o10.Size = Vector3.new(0.200000003, 2.19999981, 0.600000024)
o10.CFrame = CFrame.new(61.6828423, 1.25604415, -7180.65576, 0.836119175, 0.541471064, 0.0878807157, -0.104529843, 1.12366251e-07, 0.994521618, 0.538504422, -0.840725303, 0.056600064)
o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o10.Position = Vector3.new(61.6828423, 1.25604415, -7180.65576)
o10.Orientation = Vector3.new(-84, 57.2200012, -90)
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o11.Parent = o10
o11.Scale = Vector3.new(0.550000012, 1, 1)
o11.MeshType = Enum.MeshType.Wedge
o11.Scale = Vector3.new(0.550000012, 1, 1)
o12.Name = "Joint"
o12.Parent = o10
o12.C0 = CFrame.new(0.0329589844, 0.100097656, 2.75958252, 4.51798369e-05, -0.99939096, -0.0348952152, -1, -4.40545264e-05, -3.30171388e-05, 3.14597382e-05, 0.0348952152, -0.999391079)
o12.Part0 = o10
o12.Part1 = o64
o13.Name = "Tier2"
o13.Parent = o3
o13.Material = Enum.Material.SmoothPlastic
o13.BrickColor = BrickColor.new("Really black")
o13.Position = Vector3.new(61.9512939, 3.51092005, -7180.60254)
o13.Rotation = Vector3.new(-85.9199982, 6.30000019, 56.9900017)
o13.CanCollide = false
o13.FormFactor = Enum.FormFactor.Custom
o13.Size = Vector3.new(2.4000001, 0.200000003, 0.400000036)
o13.CFrame = CFrame.new(61.9512939, 3.51092005, -7180.60254, 0.541472912, -0.833535492, 0.10973569, -1.20988261e-07, 0.13052462, 0.991444767, -0.840728939, -0.536840379, 0.0706755593)
o13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o13.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o13.Position = Vector3.new(61.9512939, 3.51092005, -7180.60254)
o13.Orientation = Vector3.new(-82.5, 57.2200012, 0)
o13.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o14.Parent = o13
o14.Scale = Vector3.new(1, 0.550000012, 1)
o14.Scale = Vector3.new(1, 0.550000012, 1)
o15.Name = "Joint"
o15.Parent = o13
o15.C0 = CFrame.new(-0.00048828125, -0.00268554688, 0.490692139, -1.00000405, -4.36902046e-05, -3.27304006e-05, -4.42266464e-05, 0.999965429, 0.00872571021, 3.24249268e-05, 0.00872471556, -0.999961913)
o15.Part0 = o13
o15.Part1 = o64
o16.Name = "Tier5L"
o16.Parent = o3
o16.Material = Enum.Material.SmoothPlastic
o16.BrickColor = BrickColor.new("Really black")
o16.Position = Vector3.new(62.5848083, 2.63398647, -7181.72168)
o16.Rotation = Vector3.new(93.5299988, -5.46000004, -127.550003)
o16.CanCollide = false
o16.FormFactor = Enum.FormFactor.Custom
o16.Size = Vector3.new(0.200000003, 0.200000003, 0.600000024)
o16.CFrame = CFrame.new(62.5848083, 2.63398647, -7181.72168, -0.606665313, 0.789254844, -0.0951735154, 0.106710076, -0.0377883092, -0.993571579, -0.787777841, -0.612922907, -0.0612967759)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o16.Position = Vector3.new(62.5848083, 2.63398647, -7181.72168)
o16.Orientation = Vector3.new(83.5, -122.779999, 109.5)
o16.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o17.Parent = o16
o17.Scale = Vector3.new(0.550000012, 1, 1)
o17.MeshType = Enum.MeshType.Wedge
o17.Scale = Vector3.new(0.550000012, 1, 1)
o18.Name = "Joint"
o18.Parent = o16
o18.C0 = CFrame.new(-0.414550781, -1.21582031, -1.37017822, -0.333852053, 0.94231075, 0.0246626958, -0.942634106, -0.33373633, -0.00876811519, -3.1657517e-05, -0.0261731111, 0.999657452)
o18.Part0 = o16
o18.Part1 = o64
o19.Name = "Tier5"
o19.Parent = o3
o19.Material = Enum.Material.SmoothPlastic
o19.BrickColor = BrickColor.new("Really black")
o19.Position = Vector3.new(61.8614883, 2.63791513, -7180.66016)
o19.Rotation = Vector3.new(93.5299988, -5.46000004, -57.0499992)
o19.CanCollide = false
o19.FormFactor = Enum.FormFactor.Custom
o19.Size = Vector3.new(2.4000001, 0.200000003, 0.600000024)
o19.CFrame = CFrame.new(61.8614883, 2.63791513, -7180.66016, 0.541470945, 0.835320532, -0.0951727629, -8.41937435e-08, -0.113203257, -0.993571639, -0.840725422, 0.537990034, -0.061296273)
o19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o19.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o19.Position = Vector3.new(61.8614883, 2.63791513, -7180.66016)
o19.Orientation = Vector3.new(83.5, -122.779999, -180)
o19.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o20.Parent = o19
o20.Scale = Vector3.new(1, 0.550000012, 1)
o20.Scale = Vector3.new(1, 0.550000012, 1)
o21.Name = "Joint"
o21.Parent = o19
o21.C0 = CFrame.new(-0.00048828125, 0.0185546875, -1.37005615, -1, -4.39487958e-05, -3.28037859e-05, 4.47923449e-05, -0.999657393, -0.0261740107, -3.16422302e-05, -0.0261740107, 0.999657393)
o21.Part0 = o19
o21.Part1 = o64
o22.Name = "Tier5R"
o22.Parent = o3
o22.Material = Enum.Material.SmoothPlastic
o22.BrickColor = BrickColor.new("Really black")
o22.Position = Vector3.new(61.1939087, 2.63406706, -7179.56299)
o22.Rotation = Vector3.new(93.5299988, -5.46000004, 13.4499998)
o22.CanCollide = false
o22.FormFactor = Enum.FormFactor.Custom
o22.Size = Vector3.new(0.200000003, 0.200000003, 0.600000024)
o22.CFrame = CFrame.new(61.1939087, 2.63406706, -7179.56299, 0.968161643, -0.231579393, -0.0951733962, -0.106710136, -0.0377878621, -0.993571639, 0.226493433, 0.972095311, -0.061296802)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o22.Position = Vector3.new(61.1939087, 2.63406706, -7179.56299)
o22.Orientation = Vector3.new(83.5, -122.779999, -109.5)
o22.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o23.Parent = o22
o23.Scale = Vector3.new(0.550000012, 1, 1)
o23.MeshType = Enum.MeshType.Wedge
o23.Scale = Vector3.new(0.550000012, 1, 1)
o24.Name = "Joint"
o24.Parent = o22
o24.C0 = CFrame.new(0.414672852, -1.21484375, -1.37014771, -0.333767116, -0.942340016, -0.0246845838, 0.942664266, -0.333653569, -0.00870657712, -3.17431986e-05, -0.0261731967, 0.999657452)
o24.Part0 = o22
o24.Part1 = o64
o25.Name = "Tier6"
o25.Parent = o3
o25.Material = Enum.Material.SmoothPlastic
o25.BrickColor = BrickColor.new("Really black")
o25.Position = Vector3.new(61.7986336, 1.95236802, -7180.70068)
o25.Rotation = Vector3.new(93.2600021, -5.03999996, -57.0699997)
o25.CanCollide = false
o25.FormFactor = Enum.FormFactor.Custom
o25.Size = Vector3.new(2.4000001, 0.200000003, 0.800000012)
o25.CFrame = CFrame.new(61.7986336, 1.95236802, -7180.70068, 0.541468561, 0.836115897, -0.0878793746, -4.34719283e-08, -0.104528502, -0.994521856, -0.840721488, 0.538502276, -0.0565988719)
o25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o25.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o25.Position = Vector3.new(61.7986336, 1.95236802, -7180.70068)
o25.Orientation = Vector3.new(84, -122.779999, -180)
o25.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o26.Parent = o25
o26.Scale = Vector3.new(1, 0.550000012, 1)
o26.Scale = Vector3.new(1, 0.550000012, 1)
o27.Name = "Joint"
o27.Parent = o25
o27.C0 = CFrame.new(-0.00048828125, 0.033203125, -2.05944824, -1.00000453, -4.39882278e-05, -3.27453017e-05, 4.51505184e-05, -0.999394894, -0.0348971263, -3.12998891e-05, -0.0348961428, 0.999390841)
o27.Part0 = o25
o27.Part1 = o64
o28.Name = "CloakScript"
o28.Parent = o3
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
--SazErenos
wait(1.2) --FOUL SORCERY

Tool=script.Parent --Ihaveaproblemsendhelp
Nub=game.Players.LocalPlayer.Character
Tier1M=Tool.Tier1
Tier2M=Tool.Tier2
--nope
Tier3M=Tool.Tier4
Tier4M=Tool.Tier5
Tier5M=Tool.Tier6

t1w,t2w,t3w,t4w,t5w,l1w,l2w,r1w,r2w,t4l,t4r,t5r,t5l,t6r,t6l=nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil

initialWeld=function()
	
	t1w=Instance.new("Motor6D",Tier1M)
	t1w.Name="TierWeld"
	t1w.Part0=Nub.Torso
	t1w.Part1=Tier1M
	t1w.C0=CFrame.new(0,1,0.8)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(-90),math.rad(-90))
	t1w.C1=CFrame.new(0,.32,0)*CFrame.fromEulerAnglesXYZ(math.rad(0),math.rad(0),math.rad(0))
	t1w.MaxVelocity=.08
	t1w.DesiredAngle=.08

	
	wait(.1)
	end
initialWeld()

wait(1)

while true do
	if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed <= 35 then
	t1w.DesiredAngle=math.rad(script.Initial.Value + game.Players.LocalPlayer.Character.Humanoid.WalkSpeed + script.Progression.Value + script.Hard.Value)
	end
	if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed >= 35 then
	t1w.DesiredAngle=math.rad(script.Initial.Value + 35 + script.Progression.Value + script.Hard.Value)
	end
	wait()
end


end,o28)
end))
o29.Name = "Progression"
o29.Parent = o28
o29.Value = -1
o30.Name = "Right1"
o30.Parent = o28
o30.Value = 39
o31.Name = "Right2"
o31.Parent = o28
o31.Value = 19
o32.Name = "Left1"
o32.Parent = o28
o32.Value = 39
o33.Name = "Left2"
o33.Parent = o28
o33.Value = 19
o34.Name = "Initial"
o34.Parent = o28
o34.Value = 11
o35.Name = "Hard"
o35.Parent = o28
o35.Value = -2
o36.Name = "Tier10"
o36.Parent = o3
o36.Material = Enum.Material.Neon
o36.BrickColor = BrickColor.new("Royal purple")
o36.Position = Vector3.new(61.4215698, 2.85112214, -7180.03271)
o36.Rotation = Vector3.new(66.8899994, -20.6800003, -63.2299995)
o36.CanCollide = false
o36.FormFactor = Enum.FormFactor.Custom
o36.Size = Vector3.new(0.200000003, 0.200000003, 1.73100019)
o36.CFrame = CFrame.new(61.4215698, 2.85112214, -7180.03271, 0.421343029, 0.835325956, -0.353151202, -0.496777713, -0.113201156, -0.860463202, -0.75874579, 0.537987471, 0.367275447)
o36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o36.Color = Color3.new(0.384314, 0.145098, 0.819608)
o36.Position = Vector3.new(61.4215698, 2.85112214, -7180.03271)
o36.Orientation = Vector3.new(59.3699989, -43.8800011, -102.839996)
o36.Color = Color3.new(0.384314, 0.145098, 0.819608)
o37.Parent = o36
o37.Scale = Vector3.new(1, 0.100000001, 1)
o37.MeshType = Enum.MeshType.Sphere
o37.Scale = Vector3.new(1, 0.100000001, 1)
o38.Name = "Transparency script"
o38.Parent = o36
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()

while true do
SHE=script.Parent	
SHE.Transparency = 0.9
wait (0.1)
SHE.Transparency = 0.8
wait (0.1)
SHE.Transparency = 0.7
wait (0.1)
SHE.Transparency = 0.6
wait (0.1)
SHE.Transparency = 0.5
wait (0.1)
SHE.Transparency = 0.4
wait (0.1)
SHE.Transparency = 0.3
wait (0.1)
SHE.Transparency = 0.2
wait (0.1)
SHE.Transparency = 0.1
wait(0.1)
SHE.Transparency = 0.2
wait (0.1)
SHE.Transparency = 0.3
wait (0.1)
SHE.Transparency = 0.4
wait (0.1)
SHE.Transparency = 0.5
wait (0.1)
SHE.Transparency = 0.6
wait (0.1)
SHE.Transparency = 0.7
wait (0.1)
SHE.Transparency = 0.8
wait (0.1)
SHE.Transparency = 0.9
wait (0.1)
SHE.Transparency = 1
wait(1)
end

end,o38)
end))
o39.Name = "Joint"
o39.Parent = o36
o39.C0 = CFrame.new(0.08203125, 0.0725097656, -1.38867188, -0.866049051, -0.0131210685, 0.499792576, 3.97264957e-05, -0.999660254, -0.0261765383, 0.499966562, -0.0226496756, 0.865749478)
o39.Part0 = o36
o39.Part1 = o64
o40.Name = "Tier8"
o40.Parent = o3
o40.Material = Enum.Material.Neon
o40.BrickColor = BrickColor.new("Royal purple")
o40.Position = Vector3.new(61.7780037, 2.5119791, -7180.65088)
o40.Rotation = Vector3.new(91.8399963, -6.55000019, -57.2200012)
o40.CanCollide = false
o40.FormFactor = Enum.FormFactor.Custom
o40.Size = Vector3.new(0.200000003, 0.200000003, 1.85700011)
o40.CFrame = CFrame.new(61.7780037, 2.5119791, -7180.65088, 0.537817359, 0.835323751, -0.113999695, -0.0346577577, -0.11319986, -0.992967486, -0.842354715, 0.537985861, -0.0319304466)
o40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o40.Color = Color3.new(0.384314, 0.145098, 0.819608)
o40.Position = Vector3.new(61.7780037, 2.5119791, -7180.65088)
o40.Orientation = Vector3.new(83.1999969, -105.650002, -162.979996)
o40.Color = Color3.new(0.384314, 0.145098, 0.819608)
o41.Parent = o40
o41.Scale = Vector3.new(1, 0.100000001, 1)
o41.MeshType = Enum.MeshType.Sphere
o41.Scale = Vector3.new(1, 0.100000001, 1)
o42.Name = "Transparency script"
o42.Parent = o40
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()

while true do
SHE=script.Parent	
SHE.Transparency = 0.9
wait (0.1)
SHE.Transparency = 0.8
wait (0.1)
SHE.Transparency = 0.7
wait (0.1)
SHE.Transparency = 0.6
wait (0.1)
SHE.Transparency = 0.5
wait (0.1)
SHE.Transparency = 0.4
wait (0.1)
SHE.Transparency = 0.3
wait (0.1)
SHE.Transparency = 0.2
wait (0.1)
SHE.Transparency = 0.1
wait(0.1)
SHE.Transparency = 0.2
wait (0.1)
SHE.Transparency = 0.3
wait (0.1)
SHE.Transparency = 0.4
wait (0.1)
SHE.Transparency = 0.5
wait (0.1)
SHE.Transparency = 0.6
wait (0.1)
SHE.Transparency = 0.7
wait (0.1)
SHE.Transparency = 0.8
wait (0.1)
SHE.Transparency = 0.9
wait (0.1)
SHE.Transparency = 1
wait(1)
end

end,o42)
end))
o43.Name = "Joint"
o43.Parent = o40
o43.C0 = CFrame.new(0, 0.0690917969, -1.503479, -0.999392569, -0.000951845373, 0.034837883, 3.9577084e-05, -0.999657393, -0.0261774324, 0.0348508544, -0.0261601526, 0.99905014)
o43.Part0 = o40
o43.Part1 = o64
o44.Name = "Tier9"
o44.Parent = o3
o44.Material = Enum.Material.Neon
o44.BrickColor = BrickColor.new("Royal purple")
o44.Position = Vector3.new(62.2033043, 2.91456223, -7181.22656)
o44.Rotation = Vector3.new(118.82, 10.8599997, -58.2700005)
o44.CanCollide = false
o44.FormFactor = Enum.FormFactor.Custom
o44.Size = Vector3.new(0.200000003, 0.200000003, 1.67100012)
o44.CFrame = CFrame.new(62.2033043, 2.91456223, -7181.22656, 0.51650852, 0.835321009, 0.18832688, 0.496801734, -0.113197848, -0.86044991, -0.697434187, 0.53799057, -0.473456919)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.384314, 0.145098, 0.819608)
o44.Position = Vector3.new(62.2033043, 2.91456223, -7181.22656)
o44.Orientation = Vector3.new(59.3699989, 158.309998, 102.839996)
o44.Color = Color3.new(0.384314, 0.145098, 0.819608)
o45.Parent = o44
o45.Scale = Vector3.new(1, 0.100000001, 1)
o45.MeshType = Enum.MeshType.Sphere
o45.Scale = Vector3.new(1, 0.100000001, 1)
o46.Name = "Transparency script"
o46.Parent = o44
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()

while true do
SHE=script.Parent	
SHE.Transparency = 0.9
wait (0.1)
SHE.Transparency = 0.8
wait (0.1)
SHE.Transparency = 0.7
wait (0.1)
SHE.Transparency = 0.6
wait (0.1)
SHE.Transparency = 0.5
wait (0.1)
SHE.Transparency = 0.4
wait (0.1)
SHE.Transparency = 0.3
wait (0.1)
SHE.Transparency = 0.2
wait (0.1)
SHE.Transparency = 0.1
wait(0.1)
SHE.Transparency = 0.2
wait (0.1)
SHE.Transparency = 0.3
wait (0.1)
SHE.Transparency = 0.4
wait (0.1)
SHE.Transparency = 0.5
wait (0.1)
SHE.Transparency = 0.6
wait (0.1)
SHE.Transparency = 0.7
wait (0.1)
SHE.Transparency = 0.8
wait (0.1)
SHE.Transparency = 0.9
wait (0.1)
SHE.Transparency = 1
wait(1)
end

end,o46)
end))
o47.Name = "Joint"
o47.Parent = o44
o47.C0 = CFrame.new(-0.0244140625, 0.0690917969, -1.28125, -0.866000533, 0.0130518731, -0.499872804, 4.50308435e-05, -0.999657273, -0.0261794534, -0.500043154, -0.0226939265, 0.865703106)
o47.Part0 = o44
o47.Part1 = o64
o48.Name = "Tier11"
o48.Parent = o3
o48.Material = Enum.Material.Neon
o48.BrickColor = BrickColor.new("Royal purple")
o48.Position = Vector3.new(61.8991051, 3.72734714, -7180.61328)
o48.Rotation = Vector3.new(91.8399963, -6.55000019, -57.2200012)
o48.CanCollide = false
o48.FormFactor = Enum.FormFactor.Custom
o48.Size = Vector3.new(0.272999972, 0.200000003, 1.85700011)
o48.CFrame = CFrame.new(61.8991051, 3.72734714, -7180.61328, 0.537819922, 0.835326314, -0.113998443, -0.0346590541, -0.113197207, -0.992967665, -0.842357457, 0.537988663, -0.0319281556)
o48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o48.Color = Color3.new(0.384314, 0.145098, 0.819608)
o48.Position = Vector3.new(61.8991051, 3.72734714, -7180.61328)
o48.Orientation = Vector3.new(83.1999969, -105.650002, -162.979996)
o48.Color = Color3.new(0.384314, 0.145098, 0.819608)
o49.Parent = o48
o49.Scale = Vector3.new(1, 0.100000001, 1)
o49.Scale = Vector3.new(1, 0.100000001, 1)
o50.Name = "Transparency script"
o50.Parent = o48
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()

while true do
SHE=script.Parent	
SHE.Transparency = 0.9
wait (0.1)
SHE.Transparency = 0.8
wait (0.1)
SHE.Transparency = 0.7
wait (0.1)
SHE.Transparency = 0.6
wait (0.1)
SHE.Transparency = 0.5
wait (0.1)
SHE.Transparency = 0.4
wait (0.1)
SHE.Transparency = 0.3
wait (0.1)
SHE.Transparency = 0.2
wait (0.1)
SHE.Transparency = 0.1
wait(0.1)
SHE.Transparency = 0.2
wait (0.1)
SHE.Transparency = 0.3
wait (0.1)
SHE.Transparency = 0.4
wait (0.1)
SHE.Transparency = 0.5
wait (0.1)
SHE.Transparency = 0.6
wait (0.1)
SHE.Transparency = 0.7
wait (0.1)
SHE.Transparency = 0.8
wait (0.1)
SHE.Transparency = 0.9
wait (0.1)
SHE.Transparency = 1
wait(1)
end

end,o50)
end))
o51.Name = "Joint"
o51.Parent = o48
o51.C0 = CFrame.new(0.0087890625, 0.0852050781, -0.281646729, -0.999396324, -0.000952661037, 0.0348390788, 4.05609608e-05, -0.999660611, -0.0261805691, 0.0348521098, -0.0261624437, 0.999050021)
o51.Part0 = o48
o51.Part1 = o64
o52.Name = "Tier7R1"
o52.Parent = o3
o52.Material = Enum.Material.SmoothPlastic
o52.BrickColor = BrickColor.new("Really black")
o52.Position = Vector3.new(60.942131, 1.06799221, -7179.03271)
o52.Rotation = Vector3.new(93.25, -5.03999996, 3.93000007)
o52.CanCollide = false
o52.FormFactor = Enum.FormFactor.Custom
o52.Size = Vector3.new(0.200000003, 0.400000215, 1)
o52.CFrame = CFrame.new(60.942131, 1.06799221, -7179.03271, 0.993798077, -0.0682692677, -0.0878834128, -0.0914257318, -0.0506294779, -0.994522989, 0.0634447858, 0.996391952, -0.0565572046)
o52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o52.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o52.Position = Vector3.new(60.942131, 1.06799221, -7179.03271)
o52.Orientation = Vector3.new(84, -122.760002, -118.980003)
o52.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o53.Parent = o52
o53.Scale = Vector3.new(0.550000012, 1, 1)
o53.MeshType = Enum.MeshType.Wedge
o53.Scale = Vector3.new(0.550000012, 1, 1)
o54.Name = "Joint"
o54.Parent = o52
o54.C0 = CFrame.new(0.69329834, -1.74853516, -2.91992188, -0.484728932, -0.874136567, -0.0305380616, 0.874670923, -0.484432995, -0.0169308037, 6.03124499e-06, -0.0349161252, 0.99938947)
o54.Part0 = o52
o54.Part1 = o64
o55.Name = "Tier1L"
o55.Parent = o3
o55.Material = Enum.Material.SmoothPlastic
o55.BrickColor = BrickColor.new("Really black")
o55.Position = Vector3.new(62.4946327, 3.99739218, -7181.32227)
o55.Rotation = Vector3.new(94.3499985, -6.71999979, -146.960007)
o55.CanCollide = false
o55.FormFactor = Enum.FormFactor.Custom
o55.Size = Vector3.new(0.200000003, 0.600000024, 0.600000024)
o55.CFrame = CFrame.new(62.4946327, 3.99739218, -7181.32227, -0.832543492, 0.541470706, -0.117003933, 0.139170229, -1.9466097e-07, -0.99026823, -0.536201179, -0.840725541, -0.0753564909)
o55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o55.Position = Vector3.new(62.4946327, 3.99739218, -7181.32227)
o55.Orientation = Vector3.new(82, -122.779999, 90)
o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o56.Parent = o55
o56.Scale = Vector3.new(0.550000012, 1, 1)
o56.MeshType = Enum.MeshType.Wedge
o56.Scale = Vector3.new(0.550000012, 1, 1)
o57.Name = "Joint"
o57.Parent = o55
o57.C0 = CFrame.new(0.000244140625, -0.899902344, 0.000366210938, -4.37498093e-05, 1, 7.4505806e-09, -1, -4.36902046e-05, -3.26558948e-05, -3.26484442e-05, 3.7252903e-09, 0.99999994)
o57.Part0 = o55
o57.Part1 = o64
o58.Name = "Tier7R2"
o58.Parent = o3
o58.Material = Enum.Material.SmoothPlastic
o58.BrickColor = BrickColor.new("Really black")
o58.Position = Vector3.new(60.8807182, 0.37198472, -7179.07275)
o58.Rotation = Vector3.new(-86.75, 5.03999996, -3.93000007)
o58.CanCollide = false
o58.FormFactor = Enum.FormFactor.Custom
o58.Size = Vector3.new(0.200000003, 0.400000215, 0.400000006)
o58.CFrame = CFrame.new(60.8807182, 0.37198472, -7179.07275, 0.993798077, 0.0682692677, 0.0878834128, -0.0914257318, 0.0506294779, 0.994522989, 0.0634447858, -0.996391952, 0.0565572046)
o58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o58.Position = Vector3.new(60.8807182, 0.37198472, -7179.07275)
o58.Orientation = Vector3.new(-84, 57.2400017, -61.0200005)
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Parent = o58
o59.Scale = Vector3.new(0.550000012, 1, 1)
o59.MeshType = Enum.MeshType.Wedge
o59.Scale = Vector3.new(0.550000012, 1, 1)
o60.Name = "Joint"
o60.Parent = o58
o60.C0 = CFrame.new(0.693237305, 1.74804688, 3.61978149, -0.484728932, -0.874136567, -0.0305380616, -0.874670923, 0.484432995, 0.0169308037, -6.03124499e-06, 0.0349161252, -0.99938947)
o60.Part0 = o58
o60.Part1 = o64
o61.Name = "Tier1R"
o61.Parent = o3
o61.Material = Enum.Material.SmoothPlastic
o61.BrickColor = BrickColor.new("Really black")
o61.Position = Vector3.new(61.519886, 3.99742651, -7179.80908)
o61.Rotation = Vector3.new(94.3499985, -6.71999979, 33.0400009)
o61.CanCollide = false
o61.FormFactor = Enum.FormFactor.Custom
o61.Size = Vector3.new(0.200000003, 0.600000024, 0.600000024)
o61.CFrame = CFrame.new(61.519886, 3.99742651, -7179.80908, 0.832543492, -0.541470706, -0.117003933, -0.139170229, 1.9466097e-07, -0.99026823, 0.536201179, 0.840725541, -0.0753564909)
o61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o61.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o61.Position = Vector3.new(61.519886, 3.99742651, -7179.80908)
o61.Orientation = Vector3.new(82, -122.779999, -90)
o61.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o62.Parent = o61
o62.Scale = Vector3.new(0.550000012, 1, 1)
o62.MeshType = Enum.MeshType.Wedge
o62.Scale = Vector3.new(0.550000012, 1, 1)
o63.Name = "Joint"
o63.Parent = o61
o63.C0 = CFrame.new(0, -0.899902344, 0.000366210938, 4.37498093e-05, -1, -7.4505806e-09, 1, 4.36902046e-05, 3.26558948e-05, -3.26484442e-05, 3.7252903e-09, 0.99999994)
o63.Part0 = o61
o63.Part1 = o64
o64.Name = "Tier1F"
o64.Parent = o3
o64.Material = Enum.Material.SmoothPlastic
o64.BrickColor = BrickColor.new("Really black")
o64.Position = Vector3.new(62.0071144, 3.99706364, -7180.56592)
o64.Rotation = Vector3.new(94.3499985, -6.71999979, 123.040001)
o64.CanCollide = false
o64.FormFactor = Enum.FormFactor.Custom
o64.Size = Vector3.new(1.19999981, 0.200000003, 0.600000024)
o64.CFrame = CFrame.new(62.0071144, 3.99706364, -7180.56592, -0.541430533, -0.832567155, -0.117021613, 2.64523806e-05, 0.139170229, -0.99026829, 0.84075141, -0.536164403, -0.0753290504)
o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o64.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o64.Position = Vector3.new(62.0071144, 3.99706364, -7180.56592)
o64.Orientation = Vector3.new(82, -122.769997, 0.00999999978)
o64.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o65.Parent = o64
o65.Scale = Vector3.new(1, 0.550000012, 1)
o65.Scale = Vector3.new(1, 0.550000012, 1)
o66.Name = "Tier1L"
o66.Parent = o3
o66.Material = Enum.Material.SmoothPlastic
o66.BrickColor = BrickColor.new("Really black")
o66.Transparency = 1
o66.Position = Vector3.new(62.1119499, 4.8883028, -7180.49805)
o66.Rotation = Vector3.new(180, 32.7799988, -172)
o66.CanCollide = false
o66.FormFactor = Enum.FormFactor.Custom
o66.Size = Vector3.new(0.200000003, 0.600000024, 0.600000024)
o66.CFrame = CFrame.new(62.1119499, 4.8883028, -7180.49805, -0.832540989, 0.117010318, 0.541474938, 0.139169142, 0.990268528, -1.42618228e-05, -0.53620708, 0.0753448084, -0.840723932)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o66.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o66.Position = Vector3.new(62.1119499, 4.8883028, -7180.49805)
o66.Orientation = Vector3.new(0, 147.220001, 8)
o66.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o67.Parent = o66
o67.Scale = Vector3.new(0.550000012, 1, 1)
o67.MeshType = Enum.MeshType.Wedge
o67.Scale = Vector3.new(0.550000012, 1, 1)
o68.Name = "Joint"
o68.Parent = o66
o68.C0 = CFrame.new(-0.000244140625, -0.899963379, 0.00048828125, -5.0008297e-05, 1.00000095, 1.23679638e-06, 1.9364059e-05, 9.9465251e-07, -1.00000012, -1.00000095, -4.99784946e-05, -1.93342566e-05)
o68.Part0 = o66
o68.Part1 = o64
o69.Name = "Tier1R"
o69.Parent = o3
o69.Material = Enum.Material.SmoothPlastic
o69.BrickColor = BrickColor.new("Really black")
o69.Transparency = 1
o69.Position = Vector3.new(61.901619, 3.10601306, -7180.63379)
o69.Rotation = Vector3.new(180, 32.7799988, 8)
o69.CanCollide = false
o69.FormFactor = Enum.FormFactor.Custom
o69.Size = Vector3.new(0.200000003, 0.600000024, 0.600000024)
o69.CFrame = CFrame.new(61.901619, 3.10601306, -7180.63379, 0.832540989, -0.117010318, 0.541474938, -0.139169142, -0.990268528, -1.42618228e-05, 0.53620708, -0.0753448084, -0.840723932)
o69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o69.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o69.Position = Vector3.new(61.901619, 3.10601306, -7180.63379)
o69.Orientation = Vector3.new(0, 147.220001, -172)
o69.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o70.Parent = o69
o70.Scale = Vector3.new(0.550000012, 1, 1)
o70.MeshType = Enum.MeshType.Wedge
o70.Scale = Vector3.new(0.550000012, 1, 1)
o71.Name = "Joint"
o71.Parent = o69
o71.C0 = CFrame.new(0.000244140625, -0.899841309, 0, 5.0008297e-05, -1.00000095, -1.23679638e-06, -1.9364059e-05, -9.9465251e-07, 1.00000012, -1.00000095, -4.99784946e-05, -1.93342566e-05)
o71.Part0 = o69
o71.Part1 = o64
o72.Name = "Tier1"
o72.Parent = o3
o72.Material = Enum.Material.SmoothPlastic
o72.BrickColor = BrickColor.new("Really black")
o72.Transparency = 1
o72.Position = Vector3.new(62.0073242, 3.9970901, -7180.56592)
o72.Rotation = Vector3.new(180, 32.7799988, 98)
o72.CanCollide = false
o72.FormFactor = Enum.FormFactor.Custom
o72.Size = Vector3.new(1.19999981, 0.200000003, 0.600000024)
o72.CFrame = CFrame.new(62.0073242, 3.9970901, -7180.56592, -0.116992086, -0.832546175, 0.541471183, -0.990274668, 0.13912642, -4.66114434e-05, -0.0752942115, -0.536210358, -0.840726376)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o72.Position = Vector3.new(62.0073242, 3.9970901, -7180.56592)
o72.Orientation = Vector3.new(0, 147.220001, -82)
o72.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o73.Parent = o72
o73.Scale = Vector3.new(1, 0.550000012, 1)
o73.Scale = Vector3.new(1, 0.550000012, 1)
o74.Name = "Joint"
o74.Parent = o72
o74.C0 = CFrame.new(6.10351563e-05, 0.000244140625, 0, 1.32992864e-05, -4.41484153e-05, 1.00000024, -5.0008297e-05, 1.00000107, 4.43905592e-05, -1.00000095, -5.0008297e-05, 1.33290887e-05)
o74.Part0 = o72
o74.Part1 = o64
o75.Name = "Tier6L4"
o75.Parent = o3
o75.Material = Enum.Material.SmoothPlastic
o75.BrickColor = BrickColor.new("Really black")
o75.Position = Vector3.new(62.5524025, 0.74961257, -7181.93213)
o75.Rotation = Vector3.new(-86.7399979, 5.03999996, 127.57)
o75.CanCollide = false
o75.FormFactor = Enum.FormFactor.Custom
o75.Size = Vector3.new(0.200006768, 0.600020528, 0.400013566)
o75.CFrame = CFrame.new(62.5524025, 0.74961257, -7181.93213, -0.607381761, -0.789548516, 0.0878630728, 0.0985275507, 0.0348783582, 0.994521856, -0.788287938, 0.612713575, 0.0566079617)
o75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o75.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o75.Position = Vector3.new(62.5524025, 0.74961257, -7181.93213)
o75.Orientation = Vector3.new(-84, 57.2099991, 70.5100021)
o75.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o76.Parent = o75
o76.Scale = Vector3.new(0.550000012, 1, 1)
o76.MeshType = Enum.MeshType.Wedge
o76.Scale = Vector3.new(0.550000012, 1, 1)
o77.Name = "Joint"
o77.Parent = o75
o77.C0 = CFrame.new(-0.42578125, 1.38085938, 3.25909424, -0.33389321, 0.942041874, 0.03288785, 0.942616999, 0.33368814, 0.0116998889, 4.76539135e-05, 0.034905687, -0.999389768)
o77.Part0 = o75
o77.Part1 = o64
o78.Name = "Tier6L3"
o78.Parent = o3
o78.Material = Enum.Material.SmoothPlastic
o78.BrickColor = BrickColor.new("Really black")
o78.Position = Vector3.new(62.5971031, 1.24478269, -7181.9043)
o78.Rotation = Vector3.new(93.2600021, -5.03999996, 142.429993)
o78.CanCollide = false
o78.FormFactor = Enum.FormFactor.Custom
o78.Size = Vector3.new(0.600020349, 0.200006768, 0.600020349)
o78.CFrame = CFrame.new(62.5971031, 1.24478269, -7181.9043, -0.789519489, -0.607415795, -0.0878888816, 0.0349066034, 0.0985290408, -0.994520783, 0.612749457, -0.788261473, -0.0565879531)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o78.Position = Vector3.new(62.5971031, 1.24478269, -7181.9043)
o78.Orientation = Vector3.new(84, -122.779999, 19.5100002)
o78.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o79.Parent = o78
o79.Scale = Vector3.new(1, 0.550000012, 1)
o79.Scale = Vector3.new(1, 0.550000012, 1)
o80.Name = "Joint"
o80.Parent = o78
o80.C0 = CFrame.new(1.38183594, -0.425292969, -2.76107788, 0.942631483, 0.333648652, 0.0116658174, -0.3338525, 0.942056239, 0.0328883603, -1.68606639e-05, -0.0348947793, 0.999390244)
o80.Part0 = o78
o80.Part1 = o64
o81.Name = "Tier6LMain"
o81.Parent = o3
o81.Material = Enum.Material.SmoothPlastic
o81.BrickColor = BrickColor.new("Really black")
o81.Position = Vector3.new(62.5012169, 1.94748783, -7181.7417)
o81.Rotation = Vector3.new(93.2600021, -5.03999996, 142.429993)
o81.CanCollide = false
o81.FormFactor = Enum.FormFactor.Custom
o81.Size = Vector3.new(0.200006768, 0.200006768, 0.800027072)
o81.CFrame = CFrame.new(62.5012169, 1.94748783, -7181.7417, -0.789519489, -0.607415795, -0.0878888816, 0.0349066034, 0.0985290408, -0.994520783, 0.612749457, -0.788261473, -0.0565879531)
o81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o81.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o81.Position = Vector3.new(62.5012169, 1.94748783, -7181.7417)
o81.Orientation = Vector3.new(84, -122.779999, 19.5100002)
o81.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o82.Parent = o81
o82.Scale = Vector3.new(1, 0.550000012, 1)
o82.Scale = Vector3.new(1, 0.550000012, 1)
o83.Name = "Joint"
o83.Parent = o81
o83.C0 = CFrame.new(1.18212891, -0.424804688, -2.0614624, 0.942631483, 0.333648652, 0.0116658174, -0.3338525, 0.942056239, 0.0328883603, -1.68606639e-05, -0.0348947793, 0.999390244)
o83.Part0 = o81
o83.Part1 = o64
o84.Name = "Tier6L2"
o84.Parent = o3
o84.Material = Enum.Material.SmoothPlastic
o84.BrickColor = BrickColor.new("Really black")
o84.Position = Vector3.new(62.737011, 1.93674994, -7181.92578)
o84.Rotation = Vector3.new(93.2600021, -5.03999996, -127.57)
o84.CanCollide = false
o84.FormFactor = Enum.FormFactor.Custom
o84.Size = Vector3.new(0.200006768, 0.400013745, 0.800027072)
o84.CFrame = CFrame.new(62.737011, 1.93674994, -7181.92578, -0.607381761, 0.789548516, -0.0878630728, 0.0985275507, -0.0348783582, -0.994521856, -0.788287938, -0.612713575, -0.0566079617)
o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o84.Position = Vector3.new(62.737011, 1.93674994, -7181.92578)
o84.Orientation = Vector3.new(84, -122.790001, 109.489998)
o84.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o85.Parent = o84
o85.Scale = Vector3.new(0.550000012, 1, 1)
o85.MeshType = Enum.MeshType.Wedge
o85.Scale = Vector3.new(0.550000012, 1, 1)
o86.Name = "Joint"
o86.Parent = o84
o86.C0 = CFrame.new(-0.42578125, -1.48144531, -2.06188965, -0.33389321, 0.942041874, 0.03288785, -0.942616999, -0.33368814, -0.0116998889, -4.76539135e-05, -0.034905687, 0.999389768)
o86.Part0 = o84
o86.Part1 = o64
o87.Name = "Tier7L1"
o87.Parent = o3
o87.Material = Enum.Material.SmoothPlastic
o87.BrickColor = BrickColor.new("Really black")
o87.Position = Vector3.new(62.962429, 1.06780791, -7182.16992)
o87.Rotation = Vector3.new(93.2600021, -5.03999996, -118.07)
o87.CanCollide = false
o87.FormFactor = Enum.FormFactor.Custom
o87.Size = Vector3.new(0.200000003, 0.400000215, 1)
o87.CFrame = CFrame.new(62.962429, 1.06780791, -7182.16992, -0.468739659, 0.878966868, -0.0878643394, 0.0914138556, -0.0506663397, -0.994522154, -0.878604114, -0.474205911, -0.0566005707)
o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o87.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o87.Position = Vector3.new(62.962429, 1.06780791, -7182.16992)
o87.Orientation = Vector3.new(84, -122.790001, 119)
o87.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o88.Parent = o87
o88.Scale = Vector3.new(0.550000012, 1, 1)
o88.MeshType = Enum.MeshType.Wedge
o88.Scale = Vector3.new(0.550000012, 1, 1)
o89.Name = "Joint"
o89.Parent = o87
o89.C0 = CFrame.new(-0.693847656, -1.7487793, -2.92007446, -0.484890431, 0.874047995, 0.0305117071, -0.874581456, -0.484593689, -0.0169628896, -4.07546759e-05, -0.0349086337, 0.999389648)
o89.Part0 = o87
o89.Part1 = o64
o90.Name = "Tier7L2"
o90.Parent = o3
o90.Material = Enum.Material.SmoothPlastic
o90.BrickColor = BrickColor.new("Really black")
o90.Position = Vector3.new(62.9009933, 0.372151852, -7182.20898)
o90.Rotation = Vector3.new(-86.7399979, 5.03999996, 118.07)
o90.CanCollide = false
o90.FormFactor = Enum.FormFactor.Custom
o90.Size = Vector3.new(0.200000003, 0.400000215, 0.400000006)
o90.CFrame = CFrame.new(62.9009933, 0.372151852, -7182.20898, -0.468739659, -0.878961146, 0.0879217535, 0.0914138556, 0.0507313088, 0.994518816, -0.878604114, 0.474209636, 0.0565695837)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o90.Position = Vector3.new(62.9009933, 0.372151852, -7182.20898)
o90.Orientation = Vector3.new(-84, 57.2400017, 60.9700012)
o90.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o91.Parent = o90
o91.Scale = Vector3.new(0.550000012, 1, 1)
o91.MeshType = Enum.MeshType.Wedge
o91.Scale = Vector3.new(0.550000012, 1, 1)
o92.Name = "Joint"
o92.Parent = o90
o92.C0 = CFrame.new(-0.693359375, 1.7487793, 3.61941528, -0.484890431, 0.874047995, 0.0305117071, 0.874581456, 0.484595925, 0.0168975964, -1.63801014e-05, 0.0348769873, -0.999390781)
o92.Part0 = o90
o92.Part1 = o64
o93.Name = "Tier6R4"
o93.Parent = o3
o93.Material = Enum.Material.SmoothPlastic
o93.BrickColor = BrickColor.new("Really black")
o93.Position = Vector3.new(60.9893341, 0.749352932, -7179.50488)
o93.Rotation = Vector3.new(-86.75, 5.03999996, -13.4300003)
o93.CanCollide = false
o93.FormFactor = Enum.FormFactor.Custom
o93.Size = Vector3.new(0.200000003, 0.600000203, 0.400000036)
o93.CFrame = CFrame.new(60.9893341, 0.749352932, -7179.50488, 0.968900442, 0.231356189, 0.0878930613, -0.0985364318, 0.0348387659, 0.994522333, 0.227025986, -0.972256124, 0.0565524623)
o93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o93.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o93.Position = Vector3.new(60.9893341, 0.749352932, -7179.50488)
o93.Orientation = Vector3.new(-84, 57.2400017, -70.5299988)
o93.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o94.Parent = o93
o94.Scale = Vector3.new(0.550000012, 1, 1)
o94.MeshType = Enum.MeshType.Wedge
o94.Scale = Vector3.new(0.550000012, 1, 1)
o95.Name = "Joint"
o95.Parent = o93
o95.C0 = CFrame.new(0.425170898, 1.38037109, 3.2593689, -0.333719164, -0.942103028, -0.0329053067, -0.94267869, 0.333515167, 0.0116652027, -1.52401626e-05, 0.0349105448, -0.999389589)
o95.Part0 = o93
o95.Part1 = o64
o96.Name = "Tier6R3"
o96.Parent = o3
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Really black")
o96.Position = Vector3.new(61.0336609, 1.24466634, -7179.47656)
o96.Rotation = Vector3.new(93.2600021, -5.03999996, -76.5699997)
o96.CanCollide = false
o96.FormFactor = Enum.FormFactor.Custom
o96.Size = Vector3.new(0.600000024, 0.200000003, 0.600000024)
o96.CFrame = CFrame.new(61.0336609, 1.24466634, -7179.47656, 0.231317252, 0.968910336, -0.087885499, 0.0348755084, -0.0985349268, -0.994521201, -0.972264171, 0.226983964, -0.0565842204)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o96.Position = Vector3.new(61.0336609, 1.24466634, -7179.47656)
o96.Orientation = Vector3.new(84, -122.779999, 160.509995)
o96.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o97.Parent = o96
o97.Scale = Vector3.new(1, 0.550000012, 1)
o97.Scale = Vector3.new(1, 0.550000012, 1)
o98.Name = "Joint"
o98.Parent = o96
o98.C0 = CFrame.new(1.38037109, 0.424682617, -2.76123047, -0.942664385, 0.33355701, 0.0116339773, -0.333759815, -0.942088544, -0.0329047963, -1.5553087e-05, -0.034899652, 0.999389946)
o98.Part0 = o96
o98.Part1 = o64
o99.Name = "Tier6R2"
o99.Parent = o3
o99.Material = Enum.Material.SmoothPlastic
o99.BrickColor = BrickColor.new("Really black")
o99.Position = Vector3.new(61.071785, 1.93672037, -7179.33887)
o99.Rotation = Vector3.new(93.25, -5.03999996, 13.4300003)
o99.CanCollide = false
o99.FormFactor = Enum.FormFactor.Custom
o99.Size = Vector3.new(0.200000003, 0.400000215, 0.800000012)
o99.CFrame = CFrame.new(61.071785, 1.93672037, -7179.33887, 0.968900442, -0.231356189, -0.0878930613, -0.0985364318, -0.0348387659, -0.994522333, 0.227025986, 0.972256124, -0.0565524623)
o99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o99.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o99.Position = Vector3.new(61.071785, 1.93672037, -7179.33887)
o99.Orientation = Vector3.new(84, -122.760002, -109.470001)
o99.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o100.Parent = o99
o100.Scale = Vector3.new(0.550000012, 1, 1)
o100.MeshType = Enum.MeshType.Wedge
o100.Scale = Vector3.new(0.550000012, 1, 1)
o101.Name = "Joint"
o101.Parent = o99
o101.C0 = CFrame.new(0.424682617, -1.48095703, -2.06188965, -0.333719164, -0.942103028, -0.0329053067, 0.94267869, -0.333515167, -0.0116652027, 1.52401626e-05, -0.0349105448, 0.999389589)
o101.Part0 = o99
o101.Part1 = o64
o102.Name = "Tier6RMain"
o102.Parent = o3
o102.Material = Enum.Material.SmoothPlastic
o102.BrickColor = BrickColor.new("Really black")
o102.Position = Vector3.new(61.1413612, 1.94756675, -7179.63037)
o102.Rotation = Vector3.new(93.2600021, -5.03999996, -76.5699997)
o102.CanCollide = false
o102.FormFactor = Enum.FormFactor.Custom
o102.Size = Vector3.new(0.200000003, 0.200000003, 0.800000012)
o102.CFrame = CFrame.new(61.1413612, 1.94756675, -7179.63037, 0.231317252, 0.968910336, -0.087885499, 0.0348755084, -0.0985349268, -0.994521201, -0.972264171, 0.226983964, -0.0565842204)
o102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o102.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o102.Position = Vector3.new(61.1413612, 1.94756675, -7179.63037)
o102.Orientation = Vector3.new(84, -122.779999, 160.509995)
o102.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o103.Parent = o102
o103.Scale = Vector3.new(1, 0.550000012, 1)
o103.Scale = Vector3.new(1, 0.550000012, 1)
o104.Name = "Joint"
o104.Parent = o102
o104.C0 = CFrame.new(1.18115234, 0.424560547, -2.06143188, -0.942664385, 0.33355701, 0.0116339773, -0.333759815, -0.942088544, -0.0329047963, -1.5553087e-05, -0.034899652, 0.999389946)
o104.Part0 = o102
o104.Part1 = o64
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game.Players.LocalPlayer.Character
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
wait(1)


---mask---
Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Black","Handle",Vector3.new(2, 1, 1))
HandleWeld=CFuncs.Weld.Create(m,Character["Head"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00959014893, -0.0100078583, -0.0161743164, 1.00000024, 1.04075298e-06, -1.49011612e-07, 1.24424696e-06, 1.00000179, -1.82539225e-07, -9.68575478e-08, -1.45286322e-07, 1))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 1.29999995, 1.29999995))
eye1=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","eye1",Vector3.new(0.200000003, 0.200000003, 0.299999982))
eye1Weld=CFuncs.Weld.Create(m,Handle,eye1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.202543259, 0.260498047, -0.480056763, -2.22446602e-06, -1.00000358, 3.27825916e-07, -1.00000048, -2.37487484e-06, 2.3841875e-07, 2.4586933e-07, 3.39001815e-07, -1))
CFuncs.Mesh.Create("SpecialMesh",eye1,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
eye2=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","eye2",Vector3.new(0.200000003, 0.200000003, 0.299999982))
eye2Weld=CFuncs.Weld.Create(m,Handle,eye2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.200016022, -0.259521484, -0.480041504, -2.22446602e-06, -1.00000358, 3.27825916e-07, -1.00000048, -2.37487484e-06, 2.3841875e-07, 2.4586933e-07, 3.39001815e-07, -1))
CFuncs.Mesh.Create("SpecialMesh",eye2,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
eye_socket1=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","eye_socket1",Vector3.new(0.519999981, 0.980000079, 0.729999959))
eye_socket1Weld=CFuncs.Weld.Create(m,Handle,eye_socket1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0625762939, -0.15536499, -0.232467651, -0.538142323, 0.842838645, 0.00519485073, 0.837110639, 0.535188675, -0.113251075, -0.0982320756, -0.0565964989, -0.993552864))
CFuncs.Mesh.Create("SpecialMesh",eye_socket1,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
eye_socket2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","eye_socket2",Vector3.new(0.519999981, 0.980000079, 0.729999959))
eye_socket2Weld=CFuncs.Weld.Create(m,Handle,eye_socket2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0577087402, -0.16293335, -0.231582642, -0.538146138, -0.842841029, -0.00519459369, -0.837108254, 0.53518492, -0.11325068, 0.098232314, -0.0565960407, -0.993552804))
CFuncs.Mesh.Create("SpecialMesh",eye_socket2,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

------torso-------

Handle=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(2, 2, 1))
HandleWeld=CFuncs.Weld.Create(m,Character["Torso"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0197257996, -0.0298519135, -0.0399780273, -1, -8.73095886e-16, 2.22044605e-16, -8.7309578e-16, -1, -0, -2.22044605e-16, 0, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000003, 0.200000003, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.656627655, -1.2978878, -0.199947357, 0.258856535, -0.96591562, -1.31116764e-07, -0.96591562, -0.258856535, -8.59356248e-08, 8.98305785e-08, 1.59811691e-07, -0.99999994))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.200000003, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.65722084, -1.29779625, 0.400058746, 0.258856535, -0.96591562, -1.31116764e-07, -0.96591562, -0.258856535, -8.59356248e-08, 8.98305785e-08, 1.59811691e-07, -0.99999994))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.200000003, 0.379999995))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.65666008, -1.29777145, 0.289943695, -0.258856535, 0.96591562, 1.31116764e-07, -0.96591562, -0.258856535, -8.59356248e-08, -8.98305785e-08, -1.59811691e-07, 0.99999994))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.400000006, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0920143127, -0.600203037, 1.15934753, -0.500000119, 1.31116366e-07, 0.866025209, -3.3717617e-05, -1, -1.93154829e-05, 0.866025269, -3.88580556e-05, 0.500000119))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.200000003, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.184165955, 0.700547218, 1.16730785, -0.258818805, -1.31116394e-07, -0.965925813, 3.750006e-05, 1, -1.01838477e-05, 0.965925813, -3.88580556e-05, -0.258818924))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.200000003, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.65722084, -1.29779625, -0.110050201, -0.258856535, 0.96591562, 1.31116764e-07, -0.96591562, -0.258856535, -8.59356248e-08, -8.98305785e-08, -1.59811691e-07, 0.99999994))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.400000006, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.184165955, -0.600203276, 1.16731167, 0.258818805, 1.31116394e-07, 0.965925813, -3.750006e-05, -1, 1.01838477e-05, 0.965925813, -3.88580556e-05, -0.258818924))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.49000001, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.18416214, -0.355574131, 1.16732025, 0.258818805, 1.31116394e-07, 0.965925813, -3.750006e-05, -1, 1.01838477e-05, 0.965925813, -3.88580556e-05, -0.258818924))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.200000003, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.657043457, -1.29774857, -0.200046539, -0.258856535, 0.96591562, 1.31116764e-07, -0.96591562, -0.258856535, -8.59356248e-08, -8.98305785e-08, -1.59811691e-07, 0.99999994))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.400000006, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0920143127, -0.730635881, 1.1593399, -0.500000119, 1.31116366e-07, 0.866025209, -3.3717617e-05, -1, -1.93154829e-05, 0.866025269, -3.88580556e-05, 0.500000119))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.470000029, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.092010498, -0.365336895, 1.15935516, -0.500000119, 1.31116366e-07, 0.866025209, -3.3717617e-05, -1, -1.93154829e-05, 0.866025269, -3.88580556e-05, 0.500000119))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.400000006, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.184165955, 0.800333977, 1.16730404, -0.258818805, -1.31116394e-07, -0.965925813, 3.750006e-05, 1, -1.01838477e-05, 0.965925813, -3.88580556e-05, -0.258818924))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.200000003, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.32121253, -0.400020599, 1.00101852, -0.258856565, -0.96591574, 1.31109118e-07, 1.32052534e-07, -1.71125066e-07, -0.99999994, 0.96591574, -0.258856565, 1.2964702e-07))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.600000024, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.32121253, 3.05175781e-05, 1.00101852, 0.258856565, 0.96591574, -1.31109118e-07, -1.32052534e-07, 1.71125066e-07, 0.99999994, 0.96591574, -0.258856565, 1.2964702e-07))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.710000038, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.320425749, 0.0549621582, 1.00091362, -0.258856565, -0.96591574, 1.31109118e-07, 1.32052534e-07, -1.71125066e-07, -0.99999994, 0.96591574, -0.258856565, 1.2964702e-07))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.200000018, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.321165562, -0.199951172, 1.00084305, 0.258856565, 0.96591574, -1.31109118e-07, -1.32052534e-07, 1.71125066e-07, 0.99999994, 0.96591574, -0.258856565, 1.2964702e-07))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.200000018, 0.200000003))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.320604563, -0.399963379, 1.00086594, 0.258856565, 0.96591574, -1.31109118e-07, -1.32052534e-07, 1.71125066e-07, 0.99999994, 0.96591574, -0.258856565, 1.2964702e-07))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
CloakPartL2=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","CloakPartL2",Vector3.new(0.200000033, 0.200000003, 0.400000006))
CloakPartL2Weld=CFuncs.Weld.Create(m,Handle,CloakPartL2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.65666008, -1.29777145, 0.0999412537, -0.258856535, 0.96591562, 1.31116764e-07, -0.96591562, -0.258856535, -8.59356248e-08, -8.98305785e-08, -1.59811691e-07, 0.99999994))
CFuncs.Mesh.Create("SpecialMesh",CloakPartL2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 1, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.501219988, -3.05175781e-05, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0.00999999978, -0.0149999997, -0.0199999996),Vector3.new(1, 1.00999999, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700134277, 1.05004764, -0.400028229, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.100000001, 0),Vector3.new(1, 0.800000012, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 0.200000003, 0.600000024))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000183105469, 0.450000763, -0.590329885, -1, -1.74619167e-15, -4.4408921e-16, -4.37113883e-08, 4.37113954e-08, -1, 4.37113847e-08, -1, -4.37113954e-08))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000215, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.700256348, 0.100101471, 0.950245142, 0.99999547, 3.06827168e-08, 4.31590997e-05, 4.31591361e-05, 3.26357804e-05, -0.999994695, -3.20906111e-08, 0.999991953, 3.26493537e-05))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 2, 0.400000006))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.950257063, 0.000183105469, -0.500003815, 1.74619167e-15, 1, 1.93866208e-31, -1, -1.74619167e-15, -4.4408921e-16, -4.37113883e-08, -3.81642292e-23, 1))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, 0, -0.0299999993),Vector3.new(0.430000007, 1, 0.430000007))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.400000006, 2))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.43322754e-05, 0.80005002, 0, -4.4408921e-16, -1.93866208e-31, -1, 1.74619167e-15, 1, 1.93866208e-31, 1, 1.74619167e-15, 4.4408921e-16))
CFuncs.Mesh.Create("CylinderMesh",Part,"","",Vector3.new(0, -0.174999997, 0),Vector3.new(1.25, 0.899999976, 1.25))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 1, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-05, -0.499269009, -3.05175781e-05, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.00999999978, -0.0199999996),Vector3.new(1.00999999, 1, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 1, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-05, 0.500730991, -3.05175781e-05, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0.00999999978, -0.0149999997, 0.0199999996),Vector3.new(1, 1.00999999, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-05, 1.10009408, -3.43322754e-05, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.100000001, 0.0199999996),Vector3.new(1, 0.200000003, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.700198174, -3.05175781e-05, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.100000001, 0),Vector3.new(1.01999998, 1, 1.01999998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-05, 1.10046124, -3.43322754e-05, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.100000001, -0.0199999996),Vector3.new(1, 0.200000003, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.900089025, -3.05175781e-05, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.100000001, 0),Vector3.new(1.03999996, 1.20000005, 1.03999996))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(2, 1, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-05, -0.499269009, -3.05175781e-05, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.00999999978, 0.0199999996),Vector3.new(1.00999999, 1, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000215, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699394226, 0.100128174, 0.950000048, 0.99999547, 3.06827168e-08, 4.31590997e-05, 4.31591361e-05, 3.26357804e-05, -0.999994695, -3.20906111e-08, 0.999991953, 3.26493537e-05))
CFuncs.Mesh.Create("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699645996, 1.05040908, -0.400028229, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.100000001, 0),Vector3.new(1, 0.800000012, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.600000024, 0.600000024))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.900085449, 0.500056982, -3.05175781e-05, 1, 1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, 1.93866208e-31, 4.4408921e-16, 1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.27999997, 1.27999997))
---------Right Arm------
Handle=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,9,"Really red","Handle",Vector3.new(1, 2, 1))
HandleWeld=CFuncs.Weld.Create(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0194206238, 0.0144739151, -0.0400657654, 1, 8.73095886e-16, -2.22044605e-16, 8.7309578e-16, 0.99999994, 0, -2.22044605e-16, 0, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1.08500004, 1.01999998, 1.08500004))
PartF=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel yellow","PartF",Vector3.new(1, 0.200000003, 0.200000003))
PartFWeld=CFuncs.Weld.Create(m,Handle,PartF,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.67028809e-05, 0.900081158, -0.199951172, -4.4408921e-16, -1.93866208e-31, 0.99999994, 1.74619167e-15, 0.99999994, -1.93866208e-31, -1, -1.74619167e-15, 4.4408921e-16))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(1, 0.200000003, 0.200000003))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.900080204, 0.199768066, -1.89554541e-08, 5.96045844e-08, 0.999999166, 8.94069672e-08, -0.999998927, -1.98523347e-23, 0.999999166, 5.96046412e-08, 4.00288585e-08))
Part=CFuncs.Part.Create(m,Enum.Material.Ice,0.33000001311302,0,"Medium lilac","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000549316406, 0.299980164, 2.67028809e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 0.999999881, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 0.999999881))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.125, 0.800000012, 1.125))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0.5,0,"Medium stone grey","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000732421875, 0.299980164, 2.67028809e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 0.999999881, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 0.999999881))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.08500004, 1.25, 1.08500004))
Part=CFuncs.Part.Create(m,Enum.Material.Marble,0.5,0,"Medium lilac","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000549316406, 0.299980164, 2.67028809e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 0.999999881, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 0.999999881))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.01999998, 1.10000002))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.400000036, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0999755859, 0.900081158, -2.67028809e-05, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 0.99999994, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Ice,0.33000001311302,0,"Medium lilac","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000549316406, -0.0999138355, 2.67028809e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 0.999999881, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 0.999999881))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.125, 0.800000012, 1.125))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400024414, 0.800107956, -0.400020599, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 0.99999994, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.400000006, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400024414, 0.800107956, 0.399997711, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 0.99999994, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399780273, 0.499873161, -2.67028809e-05, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 0.99999994, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Marble,0.5,0,"Medium lilac","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000610351563, 0.300167084, 2.67028809e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 0.999999881, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 0.999999881))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.11500001, 0.899999976, 1.11500001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0.5,0,"Medium stone grey","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000732421875, -0.0999138355, 2.67028809e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 0.999999881, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 0.999999881))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.08500004, 1.25, 1.08500004))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399536133, 0.900081158, -2.67028809e-05, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 0.99999994, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.0399999991, 0),Vector3.new(1.20000005, 0.800000012, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.800000012, 0.400000006, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.100097656, 0.600034952, -2.67028809e-05, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 0.99999994, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Marble,0.5,0,"Medium lilac","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000610351563, -0.0999138355, 2.67028809e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 0.999999881, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 0.999999881))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.11500001, 0.899999976, 1.11500001))
Part=CFuncs.Part.Create(m,Enum.Material.Marble,0.5,0,"Medium lilac","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000549316406, -0.0999138355, 2.67028809e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 0.999999881, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 0.999999881))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1.01999998, 1.10000002))
PartF=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel yellow","PartF",Vector3.new(0.200000003, 0.200000003, 1))
PartFWeld=CFuncs.Weld.Create(m,Handle,PartF,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400024414, 0.900081158, -2.67028809e-05, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 0.99999994, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -0.99999994))
CFuncs.Mesh.Create("BlockMesh",PartF,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PartF=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel yellow","PartF",Vector3.new(0.200000003, 0.400000006, 0.600000024))
PartFWeld=CFuncs.Weld.Create(m,Handle,PartF,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.400024414, 0.800107956, -2.67028809e-05, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 0.99999994, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -0.99999994))
CFuncs.Mesh.Create("BlockMesh",PartF,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PartF=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel yellow","PartF",Vector3.new(1, 1.39999998, 1))
PartFWeld=CFuncs.Weld.Create(m,Handle,PartF,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.30005002, -2.67028809e-05, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 0.99999994, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -0.99999994))
CFuncs.Mesh.Create("BlockMesh",PartF,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
-----left arm-----
Handle=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Really black","Handle",Vector3.new(1, 2, 1))
HandleWeld=CFuncs.Weld.Create(m,Character["Left Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0204582214, -0.0298519135, -0.0400390625, -1, 1.43836631e-09, 1.8936451e-10, -1.43836809e-09, -1, 5.06639481e-07, 1.89364774e-10, 5.06639481e-07, 1))
CFuncs.Mesh.Create("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.259768009, 3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0900000036, -0.0199999996),Vector3.new(1.08000004, 0.600000024, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0599379539, 3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0199999996, 0.0199999996),Vector3.new(1.04999995, 1, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, -0.359677076, -2.67028809e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0399999991, 0.0199999996),Vector3.new(1.10000002, 1.04999995, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0599379539, 3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0199999996, -0.0199999996),Vector3.new(1.04999995, 1, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-06, -0.359924078, 3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0399999991, -0.0199999996),Vector3.new(1.10000002, 1.04999995, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.259768009, 3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0900000036, 0.0199999996),Vector3.new(1.08000004, 0.600000024, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.600000024, 0.350000024, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.20098877, 0.825013161, -6.10351563e-05, -1, -1.43836898e-09, 1.89364552e-10, 1.43836532e-09, -0.99999994, 5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, -0.0401620865, -2.67028809e-05, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1.01999998))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000549316406, 0.559935808, -2.67028809e-05, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 1, 1.02999997))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, -0.31964016, -2.67028809e-05, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.08000004, 1, 1.08000004))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, 0.360047817, -2.67028809e-05, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01499999, 1, 1.01499999))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, -0.220276117, -2.67028809e-05, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 1, 1.05999994))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.360047817, -2.67028809e-05, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.160092831, 0, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 1, 1.05999994))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000671386719, 0.160706043, 0, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0.0199999996, 0, 0),Vector3.new(1.05999994, 1, 1.05999994))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Royal purple","Part",Vector3.new(1, 0.200000003, 0.200000033))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000671386719, 0.16052103, -0.199996948, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0.0199999996, 0, 0),Vector3.new(1.05999994, 1, 1.05999994))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.159970999, -2.67028809e-05, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1.00999999))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel yellow","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.001039505, 0.550048113, -2.67028809e-05, -1, -1.43836898e-09, 1.89364552e-10, 1.43836532e-09, -0.99999994, 5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.16052103, 0, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.07000005, 0.550000012, 1.07000005))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.159970999, 0, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.100000001, 0),Vector3.new(1.07000005, 0.119999997, 1.07000005))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000244140625, 0.160092831, 0, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.100000001, 0),Vector3.new(1.07000005, 0.125, 1.07000005))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.340270042, 3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0199999996, 0.0199999996),Vector3.new(1.04999995, 1, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.400000036))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000671386719, 0.160092831, -0.100006104, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0.0199999996, 0.0900000036, 0),Vector3.new(1.07000005, 0.119999997, 1.07000005))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.30065918, 0.161252975, 0, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0.0399999991, 0, -0.0900000036),Vector3.new(1.08000004, 1, 0.300000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.320000142, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000246047974, -0.559875965, -2.67028809e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836543e-09, 1, -4.76837158e-07, 1.8936476e-10, 4.76837158e-07, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.05999994, 1, 1.04999995))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(1, 0.200000003, 0.400000036))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000671386719, 0.160706043, -0.100006104, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0.0199999996, 0, 0),Vector3.new(1.07000005, 0.449999988, 1.07000005))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.339999974, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.770323992, -3.43322754e-05, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.08500004, 1.01999998, 1.08500004))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.400000036))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000671386719, 0.16052103, -0.100006104, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0.0199999996, -0.0900000036, 0),Vector3.new(1.07000005, 0.125, 1.07000005))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.400000066, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.740236044, -3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0199999996, -0.0199999996),Vector3.new(1.12, 1, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.540158987, 3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0199999996, -0.0199999996),Vector3.new(1.07000005, 1, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.340270042, 3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0199999996, -0.0199999996),Vector3.new(1.04999995, 1, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.540158987, 3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0199999996, 0.0199999996),Vector3.new(1.07000005, 1, 0.100000001))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.400000036, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.298950195, 0.700198174, -6.10351563e-05, -1, -1.43836898e-09, 1.89364552e-10, 1.43836532e-09, -0.99999994, 5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0250000004, 0),Vector3.new(1, 0.75, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0.15000000596046,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487323761, 0.159727573, -0.263889313, 0.995279193, 4.91641927e-08, 0.0970532, -4.9177757e-08, 1, -2.2521931e-09, -0.0970532, -2.5313418e-09, 0.995279193))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.0799999982, 0),Vector3.new(1, 0.200000003, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0.15000000596046,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487323761, 0.263889313, 0.160092592, 0.995279193, 4.91641927e-08, 0.0970532, 0.0970532, 2.5313418e-09, -0.995279193, -4.9177757e-08, 1, -2.2521931e-09))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0799999982, 0),Vector3.new(1, 0.200000003, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0.15000000596046,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487323761, -0.263889313, -0.160520792, 0.995279193, 4.91641927e-08, 0.0970532, -0.0970532, -2.5313418e-09, 0.995279193, 4.9177757e-08, -1, 2.2521931e-09))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0799999982, 0),Vector3.new(1, 0.200000003, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.399999976, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.30065918, 0.161252975, -0.199996948, 1, 1.88737914e-15, 4.71844785e-16, 1.88737914e-15, 1, -2.72376255e-19, 4.71844785e-16, -2.72376255e-19, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0.0399999991, 0, -0.0900000036),Vector3.new(1.20000005, 1.10000002, 0.5))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0.15000000596046,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487323761, 0.15997076, -0.263889313, 0.995279193, 4.91641927e-08, 0.0970532, -4.9177757e-08, 1, -2.2521931e-09, -0.0970532, -2.5313418e-09, 0.995279193))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0799999982, 0),Vector3.new(1, 0.200000003, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel yellow","Part",Vector3.new(0.200000003, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399169922, 0.900089025, -6.10351563e-05, -1, -1.43836898e-09, 1.89364552e-10, 1.43836532e-09, -0.99999994, 5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0.15000000596046,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.487323761, -0.263889313, -0.160705805, 0.995279193, 4.91641927e-08, 0.0970532, -0.0970532, -2.5313418e-09, 0.995279193, 4.9177757e-08, -1, 2.2521931e-09))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0.0399999991, 0),Vector3.new(1, 1, 0.200000003))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Pastel yellow","Wedge",Vector3.new(1, 0.200000003, 0.200000003))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.48498535e-05, 0.90008378, -0.199035645, 5.95299616e-06, -4.47034125e-07, -0.999997258, -5.23046406e-09, -0.999994099, 1.78804015e-07, -0.999996781, -1.49651713e-09, -5.97830831e-06))
Wedge=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Black","Wedge",Vector3.new(1, 0.200000003, 0.200000003))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-05, -0.899901628, 0.198913574, -1.76470074e-08, -5.81145173e-07, -0.999999821, -1.43836454e-09, 0.999999404, -3.42726423e-07, 0.999999464, 2.09723709e-07, -4.63468481e-08))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.400000066, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000427246094, 0.740236044, -3.05175781e-05, 1, 1.43836898e-09, -1.89364552e-10, -1.43836532e-09, 0.99999994, -5.06639424e-07, 1.89364718e-10, 5.06639424e-07, 0.99999994))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.0199999996, 0.0199999996),Vector3.new(1.12, 1, 0.100000001))
---------Right Leg---------
Handle=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Really black","Handle",Vector3.new(1, 2, 1))
HandleWeld=CFuncs.Weld.Create(m,Character["Right Leg"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0202140808, 0.0298557281, -0.0399780273, 1, 8.73095886e-16, -2.22044605e-16, 8.7309578e-16, 1, 0, -2.22044605e-16, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000366210938, 1.100155, -3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, -0.0599999987),Vector3.new(0.600000024, 1, 1.03999996))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00048828125, 1.09978902, -3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 1.12, 1.05999994))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.400000036, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.799983144, 0, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0.00499999989),Vector3.new(1.00999999, 1, 1.02999997))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000366210938, 1.09978902, -3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0.0199999996),Vector3.new(0.800000012, 1, 1.03999996))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00048828125, 1.09978902, -3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, -0.0500000007),Vector3.new(0.800000012, 1, 1.03999996))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.59967041, -0.0511490107, -3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(-0.140000001, -0.100000001, 0),Vector3.new(1, 1, 0.899999976))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.399999976, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.59967041, 0.24901998, -3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(-0.159999996, 0, 0),Vector3.new(1, 1, 0.850000024))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000366210938, 1.100155, 0.399963379, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.00999999978, 0.349999994),Vector3.new(2, 1.05999994, 5.5))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.59967041, -0.301090002, -3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(-0.140000001, 0, 0),Vector3.new(0.699999988, 1, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1.60000002, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.200013995, 0, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.59967041, -0.501223922, -3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(-0.119999997, 0, 0),Vector3.new(0.600000024, 1, 0.800000012))

--------Left Leg-------
Handle=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,1,"Really black","Handle",Vector3.new(1, 2, 1))
HandleWeld=CFuncs.Weld.Create(m,Character["Left Leg"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0204582214, 0.0625728369, -0.0400085449, 1, 8.73095886e-16, -2.22044605e-16, 8.7309578e-16, 1, 0, -2.22044605e-16, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.399999976, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600158691, 0.248775899, 0, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(-0.159999996, 0, 0),Vector3.new(1, 1, 0.850000024))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599914551, -0.501222014, 0, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(-0.119999997, 0, 0),Vector3.new(0.600000024, 1, 0.800000012))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000244140625, 1.099913, -3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, -0.0599999987),Vector3.new(0.600000024, 1, 1.03999996))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000427246094, 1.0997299, 0, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.02999997, 1.12, 1.05999994))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000244140625, 1.0997299, 0, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0.0199999996),Vector3.new(0.800000012, 1, 1.03999996))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600158691, -0.301149011, 0, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(-0.140000001, 0, 0),Vector3.new(0.699999988, 1, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000244140625, 1.099913, 0.399993896, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, -0.00999999978, 0.349999994),Vector3.new(2, 1.05999994, 5.5))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.400000036, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-05, 0.799985051, 3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0.00499999989),Vector3.new(1.00999999, 1, 1.02999997))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000427246094, 1.0997299, 0, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, -0.0500000007),Vector3.new(0.800000012, 1, 1.03999996))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.600036621, -0.051025033, 0, -1, -1.74619167e-15, 4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, 4.4408921e-16, 1.93866208e-31, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(-0.140000001, -0.100000001, 0),Vector3.new(1, 1, 0.899999976))
Part=CFuncs.Part.Create(m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1, 1.60000002, 1))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-05, -0.200014114, 3.05175781e-05, 1, 1.74619167e-15, -4.4408921e-16, 1.74619167e-15, 1, -1.93866208e-31, -4.4408921e-16, -1.93866208e-31, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

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
	for i = 0, 2, 0.3 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 0.806190252, -0.187311426, -0.561223507, 6.62613184e-06, 0.94856596, -0.31657964, 0.591656446, 0.255219638, 0.764725924) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0407527871, 1.50693643, -0.222932622, 0.978482485, 0.186281174, 0.0887908041, -0.19066751, 0.980685592, 0.0437201113, -0.0789308846, -0.0597088039, 0.99509275) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.78002524, 1.11400044, -0.457782924, 0.707048655, -0.498457879, 0.501619399, 0.350302994, -0.369315952, -0.860751748, 0.614304423, 0.784312248, -0.0865130872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.43853712, 0.0750626996, 0.22486937, 0.572081506, 0.244721666, 0.782837331, -0.443345338, 0.895264447, 0.044120267, -0.690049291, -0.372307688, 0.620660365) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.627915263, -1.89379621, 0.643143058, 0.951368988, 6.62613184e-06, 0.308059663, -0.0975313932, 0.94856596, 0.301182032, -0.292212963, -0.31657964, 0.902436912) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.840924203, -1.99235249, 0.347892702, 0.806190252, 0.150273055, 0.572257936, -0.187311426, 0.982287288, 0.00593562424, -0.561223507, -0.111978531, 0.820060134) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .35, false)
	end

for i = 0, 2, 0.3 do
		swait()
PlayAnimationFromTable({
         CFrame.new(-0, 0, 0, 0.881656945, 0.0199221503, 0.471480906, -0.158535972, 0.953550041, 0.256167442, -0.444475293, -0.300592929, 0.843853176) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.148410931, 1.53110158, 0.0643833578, 0.965264976, -0.0912804902, -0.244808733, 0.088367641, 0.995825887, -0.0228805244, 0.245875075, 0.000453487039, 0.969302654) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.10165071, 0.648932338, -1.12831473, 0.573108494, 0.369820178, 0.731284738, 0.612841427, 0.399010122, -0.682069421, -0.544033527, 0.839061975, 0.00203369558) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.79198205, 0.0215666089, -0.21331051, 0.916679978, 0.372236937, -0.145427167, -0.394452631, 0.901182175, -0.179693967, 0.0641659647, 0.222088978, 0.972915471) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.753449559, -1.90016341, -0.268158644, 0.69710958, -0.0750149488, -0.713035822, -0.0756366402, 0.981274784, -0.177183479, 0.712969542, 0.177447319, 0.678380549) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.559347212, -2.21165109, 0.0788616836, 0.881656945, -0.0484239236, -0.469411433, 0.0199221503, 0.997659326, -0.0654963702, 0.471480906, 0.0483982414, 0.88054961) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .35, false)
	end
	attack = false
end


function attacktwo()
	attack = true
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0401472747, -0.0776893198, 0.599089265, 0.906307757, -2.36338082e-07, 0.422618419, -0.0733869821, 0.984807611, 0.157379389, -0.416197896, -0.173648834, 0.892538786) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-2.79394953e-07, 1.49999011, 1.47520529e-06, 0.906307757, -1.86264515e-07, -0.422618419, -2.36338082e-07, 0.99999994, -9.68575478e-07, 0.422618419, 9.83476639e-07, 0.906307757) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.5365181, 0.452499926, -0.44780767, 0.66570574, 0.0800317824, 0.741910338, 0.662861288, 0.393195033, -0.637191117, -0.342710942, 0.915965438, 0.208702192) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.41615206, 0.733605146, -1.08826351, 0.408651799, -0.87111479, 0.272328794, -0.101544857, -0.339922726, -0.934955239, 0.907024026, 0.354417443, -0.227367252) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.786783695, -1.89999688, -0.40957579, 0.70710063, -0.0616273247, -0.704422355, -1.46403909e-06, 0.996194839, -0.0871548876, 0.707112968, 0.0616283193, 0.704409957) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.915488064, -1.58430302, 0.380059779, 0.904960036, 0.423912108, -0.0366865322, -0.166366011, 0.431871921, 0.886458695, 0.391624451, -0.796106339, 0.461351365) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .35, false)
	end
	CFuncs.Sound.Create("200632211", LeftLeg, 1, 0.9)
	for i = 0, 1, 0.15 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.00997152925, -0.169988424, -0.639737129, 0.707106054, -1.36977135e-07, -0.707107484, -0.241844028, 0.939693153, -0.241843715, 0.664464056, 0.342018902, 0.664462626) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.51991844e-06, 1.4999913, -1.78813934e-06, 0.707106054, -0.183011726, 0.683013737, -1.36977135e-07, 0.96592629, 0.258817554, -0.707107484, -0.183011532, 0.683012247) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.53634262, 0.417389512, -0.485609144, 0.669262946, -0.0573756099, 0.740807056, 0.691225588, 0.413819224, -0.592419565, -0.272569776, 0.90854919, 0.316613376) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.458741903, 0.651507795, -1.17922783, 0.646084905, -0.763260484, -0.00277221203, -0.392018795, -0.328715384, -0.859225094, 0.654901266, 0.556218982, -0.511590362) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.752643228, -1.81142533, 0.0469251275, 0.883172512, -0.23524794, -0.405788302, 0.382152557, 0.862514496, 0.331706583, 0.271964401, -0.448027343, 0.851650655) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.24916911, -1.25704479, -0.899724364, 0.517213285, 0.744817019, 0.421588689, 0.254890531, 0.336192816, -0.90664041, -0.817019761, 0.576389611, -0.0159641877) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
	end
	for i = 0, 1, 0.2 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0211362243, -0.592728972, -0.289742768, 0.939692974, 4.90088098e-07, -0.34201932, 0.144543007, 0.906308055, 0.397131175, 0.309974998, -0.422617853, 0.851651192) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.02818012e-06, 1.5, -2.65240669e-06, 0.906309307, 0.109381072, 0.408217251, 1.02445483e-06, 0.965928435, -0.258821666, -0.422614902, 0.234573007, 0.875430942) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.68638015, 0.349812239, -0.205563948, 0.787529767, -0.608583331, 0.0970736146, 0.444218874, 0.451393723, -0.773895025, 0.427161187, 0.652587175, 0.625830293) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.95912081, 0.35575074, -1.16827404, 0.701581001, -0.325640708, -0.633831382, -0.541859984, 0.333870173, -0.771309674, 0.462787241, 0.884584069, 0.0577853322) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.20272303, -1.58237672, -0.692816734, 0.767121434, -0.569021404, 0.296209067, 0.640670776, 0.656062961, -0.398902327, 0.0326521657, 0.495779037, 0.867834926) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.659768999, -1.26831281, -0.571824849, 0.805588603, 0.1710127, 0.567260146, -0.157380521, 0.98481071, -0.0733886361, -0.571193457, -0.030154705, 0.820261776) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .35, false)
	end
	CFuncs.Sound.Create("200632211", RightLeg, 1, 1)
	for i = 0, 1, 0.14 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * 30
		PlayAnimationFromTable({
         CFrame.new(0.0427529812, -1.01647234, 0.0382894874, 0.608423054, -0.308392853, 0.731242239, 0.590780079, 0.791239679, -0.157856733, -0.529906034, 0.528047025, 0.663600802) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.239828199, 1.55644977, -0.102763057, 0.654372454, 0.417491734, -0.630474091, -0.163175046, 0.892088652, 0.421369225, 0.738356769, -0.172854722, 0.65188241) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.35250616, 0.574251592, -0.780133188, 0.729189336, 0.0936879814, 0.677868485, 0.659103572, 0.17023471, -0.732531786, -0.184026167, 0.980939746, 0.0623831451) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.55241454, 0.101470411, 0.416705519, 0.782442451, 0.559200406, 0.274005085, -0.622187197, 0.72027117, 0.306745201, -0.0258259773, -0.410492837, 0.91149801) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.33279347, -1.18506634, -1.29755318, 0.664636016, -0.551376104, 0.504225612, 0.743997991, 0.426297754, -0.514526308, 0.0687472075, 0.717115462, 0.693555474) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.45184055, -1.30273223, -0.522340298, 0.984808266, 0.167729184, 0.0449442267, -0.173646316, 0.951249778, 0.254893839, -5.96046448e-08, -0.258825898, 0.965924144) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
	end
	attack = false
end

function attackthree()
	attack = true
	local num = 0
	for i = 0, 1, 0.12 do
		swait()
		num = num + 30
		PlayAnimationFromTable({
         CFrame.new(0.0270765573, -0.480181754, 0.623972237, 0.0885479972, -0.0368319117, -0.995390773, -0.246802002, 0.967343748, -0.0577491187, 0.965012014, 0.25077796, 0.0765661672) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0936929584, 1.56362581, -0.221688136, 0.198214546, -0.303651899, 0.931937277, -0.112229116, 0.937517703, 0.329340428, -0.973712623, -0.169870481, 0.151751041) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.616549373, 0.803341627, -0.853695095, 0.000168037135, 0.977870464, 0.209211498, 0.317776114, 0.198314935, -0.927194536, -0.948165834, 0.0666382164, -0.310710579) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.72370553, 0.470241874, 0.0900587738, 0.427007556, 0.9034549, 0.0378694758, -0.577917337, 0.304876894, -0.757008433, -0.695468485, 0.301362872, 0.652306795) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.00983441, -1.51885021, 0.00175639987, 0.831895053, -0.470998526, 0.293447107, 0.353552341, 0.857425869, 0.373927385, -0.427728206, -0.207319468, 0.879811049) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.648116469, -1.73901522, 0.0786070824, 0.637448072, -0.321517438, 0.700206876, 0.056631811, 0.925868869, 0.373580039, -0.768411398, -0.198483318, 0.608400881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	
	for i = 0, 1, 0.12 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * 40
		PlayAnimationFromTable({
         CFrame.new(0.196603, -0.338400722, -1.27753866, -0.0832840055, -0.0449440107, 0.995511889, -0.171010017, 0.984807849, 0.0301541463, -0.981743097, -0.167731151, -0.0897046104) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.10106373e-06, 1.49999094, -1.4975667e-06, 0.25881961, 0.0841866285, -0.962250113, -1.94832683e-06, 0.996194899, 0.0871559083, 0.965925753, -0.0225557946, 0.257834941) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.03781581, 0.761166036, -0.0255699158, 0.0435950756, -0.980553567, 0.191348687, 0.226166934, -0.17687194, -0.957896292, 0.973112643, 0.0850362927, 0.214058042) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.730051398, 0.724053264, -1.08925915, 0.62698853, -0.766749799, 0.137768731, -0.325902462, -0.418791056, -0.847586036, 0.707582593, 0.486527413, -0.512462795) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.753033757, -1.6778574, -0.188403368, 0.704032898, 0.0244275928, -0.709747434, -0.0104273558, 0.999655604, 0.0240626931, 0.710090935, -0.00954016298, 0.704045177) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.942696929, -1.88443923, 0.182805941, 0.799882233, 0.242965713, -0.548777461, -0.141007245, 0.964875162, 0.221660614, 0.583357692, -0.099920705, 0.806045771) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .5, false)
	end
	attack = false
end

function attackfour()
	attack = true
	local num = 0
	for i = 0, 1, 0.12 do
		swait()
		num = num + 1
		PlayAnimationFromTable({
         CFrame.new(0.120528281, -0.3674438, 0.575273573, 0.422617197, -2.01519555e-07, -0.906308293, 0.157379076, 0.984807789, 0.073386617, 0.892539442, -0.173648417, 0.416196704) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.06530706e-06, 1.49999368, -5.04337095e-07, 0.4226197, 1.86264515e-06, 0.906308174, -6.03729347e-07, 1.00000119, -1.59442425e-06, -0.906307101, 2.01165676e-07, 0.422620177) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.70849216, 0.0731495917, -0.938899159, 0.478839219, 0.797380328, -0.367284328, -0.877902687, 0.435119689, -0.199895144, 0.000420168042, 0.418157458, 0.908374488) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.853200793, 0.697818339, -0.894996405, 0.703306079, -0.697911978, -0.13520211, -0.467338622, -0.310601294, -0.827720761, 0.535682321, 0.645326018, -0.544608891) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.598105133, -1.97398674, 0.098479867, 0.996195614, -0.08583197, -0.0151341856, 0.087156117, 0.981061995, 0.172987998, 3.27825546e-07, -0.17364879, 0.98480767) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849928856, -1.54139125, -0.303964674, 0.902859867, 0.0127288699, 0.429747015, -0.0789928585, 0.987457275, 0.136708945, -0.422616571, -0.157375962, 0.892540693) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .35, false)
	end	
attack = false
end

Mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attackone()
		attacktwo()
		attackthree()
	end
end)

Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == '' then
	
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
         CFrame.new(0.0910044834, -0.0212218389, -0.290148675, 0.906307876, 0.144543499, -0.397131115, 0, 0.939692974, 0.34201926, 0.422617942, -0.30997476, 0.851651132) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(4.58583236e-06, 1.49999106, -3.9562583e-06, 0.906305909, -0.0368335694, 0.421014428, 1.20326877e-06, 0.996195018, 0.0871522725, -0.422622561, -0.0789860487, 0.902857542) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.62809968, 0.36838299, -0.0488751307, 0.837752223, -0.535142601, 0.108598322, 0.438317716, 0.540427864, -0.718202949, 0.325651407, 0.649276674, 0.68730706) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.719258964, 0.453769118, -0.945979238, 0.616730452, -0.732880354, -0.287280023, -0.433378577, -0.0114596039, -0.90113914, 0.65713501, 0.680261075, -0.324682146) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.647790611, -1.97252965, -0.165546358, 0.950998306, -0.170692414, -0.257828951, 0.147570908, 0.983283281, -0.106663942, 0.271723986, 0.0633881688, 0.960291505) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.472385287, -1.29772818, -0.483824134, 0.951249003, -0.0158600435, 0.308013976, 0.0760087669, 0.979929924, -0.184282333, -0.298909426, 0.198710352, 0.933362842) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				PlayAnimationFromTable({
         CFrame.new(0.0489542931, 0.104930215, 0.155088484, 0.86602509, 3.93595684e-07, -0.500000656, -0.0435780026, 0.99619478, -0.0754783824, 0.498098046, 0.0871552005, 0.862729549) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(3.44216824e-06, 1.49999261, 7.1823597e-06, 0.86602509, -0.129409686, 0.482963651, 3.93595684e-07, 0.965926111, 0.258818358, -0.500000656, -0.224142954, 0.836516201) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.59346819, 0.267683983, -0.447158337, 0.795529485, -0.441654861, 0.414818197, 0.598595083, 0.678955376, -0.425092638, -0.093898803, 0.58648175, 0.804501235) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.771429956, 0.638814509, -1.08084881, 0.700645328, -0.645384133, -0.304262489, -0.35109067, 0.0593907982, -0.93445611, 0.621153414, 0.761545837, -0.184976429) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.65004766, -1.8006779, -0.403632969, 0.981060386, -0.152096748, -0.119946599, 0.114679649, 0.955114424, -0.273139238, 0.156106353, 0.254210591, 0.954467297) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.558068693, -1.23924315, -0.631402612, 0.98526454, 0.100213602, 0.138604999, -0.0560424253, 0.954789221, -0.291953772, -0.161596328, 0.279883921, 0.946335852) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
		PlayAnimationFromTable({
         CFrame.new(-0, -0, 0, 1, 0, 0, 0, 0.996194482, 0.087155953, 0, -0.087155953, 0.996194482) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0, 1.49428594, 0.130734086, 1, 0, 0, 0, 0.99785018, 0.0655330718, 0, -0.0655330718, 0.99785018) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.200001255, 0.160628825, -0.68862325, 0.258804321, 0.965929866, 0, -0.962253928, 0.257819474, -0.087155953, -0.0841865316, 0.0225563403, 0.996194482) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.199998796, 0.0522936322, -0.597718954, 0.173645377, -0.984808207, 0, 0.981060505, 0.17298457, -0.087155953, 0.0858318955, 0.0151342284, 0.996194482) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.5, -2.00981688, 0.0249271393, 1, 0, 0, 0, 0.996194422, 0.0871559456, 0, -0.0871559456, 0.996194422) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.600003362, -1.99238527, -0.174311593, 0.996194661, 0.087155968, 0, -0.0868242979, 0.992403626, -0.087155953, -0.00759616168, 0.0868242979, 0.996194482) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end

		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
			PlayAnimationFromTable({		
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0- .08 * math.cos((sine) / 5), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0595112406, 1.55331731, -0.0425721854, 0.999631822, -0.0248252042, -0.010953242, 0.0262294486, 0.987443328, 0.155781403, 0.00694842171, -0.156010598, 0.987731278) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.54809988, 0.041232653, 1.35168499e-08, 0.996376455, -0.0850530341, -3.41060513e-13, 0.0850530341, 0.996376455, 4.47034836e-07, 2.78823862e-08, 3.26637689e-07, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
         CFrame.new(-1.53598976, 0.0413191095, -1.86092848e-06, 0.995650649, 0.0931596532, -2.61508148e-07, -0.0931649953, 0.995651186, -1.00695124e-05, -7.49969331e-07, 1.08217946e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
         CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
         CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
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