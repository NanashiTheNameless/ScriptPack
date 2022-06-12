--[[Nemessis.Inc]]--
--[[Nemessis.Inc Members]]--
--[[Ki_tchen [Owner] ]]--
--[[Mewy23 CO-OWNER]]--
--[[Unknown]]--
--[[Unknown]]--
--[[Unknown]]--
--[[Unknown]]--
--[[Unknown]]--
--[[Unknown]]--
--[[Unknown]]--

--[[Every Script we release a new member will be shown.]]--

--[[Nemessis.Inc Out.]]--

wait(1 / 60)
-- Trail Made by Gallizur
--R15 Compatible in TrailSettings
local Player = game:GetService('Players').LocalPlayer
repeat wait() until Player.Character
local Character = Player.Character

--All The Settings for Trails in this Script
TrailSettings = {
	Lifetime = 0.5,
	Texture = 'rbxassetid://31270182',
	--Color1 is for UpperBody and Accessories, Color2 is for Lower Body
	Color1 = ColorSequence.new(BrickColor.new('Toothpaste').Color,BrickColor.new('Royal purple').Color),
	Color2 = ColorSequence.new(BrickColor.new('Institutional white').Color,BrickColor.new('Really black').Color),
	AllBody = true,
	UpperBodyOnly = false,
	LowerBodyOnly = false,
	Accessories = false,
	Extras = true,
	R15 = false, --Change to true if you're using R15
	R15Parts = {
		'UpperTorso',
		'LowerTorso',
	}
}

local Trail; --Making other Trails uses this in this Script

--UpperBody Function
UpperBody = function()
	if TrailSettings.R15 == false then
		A0 = Instance.new('Attachment',Character.Torso)
		A1 = Instance.new('Attachment',Character.Head)
	A2 = Instance.new('Attachment',Character['Right Arm'])
	A3 = Instance.new('Attachment',Character['Left Arm'])
Trail = Instance.new('Trail',Character)
Trail.Attachment0 = A0
Trail.Attachment1 = A1
Trail.Texture = TrailSettings.Texture
Trail.Color = TrailSettings.Color1
Trail.Lifetime = TrailSettings.Lifetime
local Trail2 = Trail:Clone()
Trail2.Parent = Character
Trail2.Attachment1 = A2
local Trail3 = Trail:Clone()
Trail3.Parent = Character
Trail3.Attachment1 = A3
local Trail6 = Trail:Clone()
Trail6.Parent = Character
Trail6.Attachment0 = A1
Trail6.Attachment1 = A2
local Trail7 = Trail:Clone()
Trail7.Parent = Character
Trail7.Attachment0 = A1
Trail7.Attachment1 = A3
	else
	A0 = Instance.new('Attachment',Character[TrailSettings.R15Parts[1]])
	A0R = Instance.new('Attachment',Character[TrailSettings.R15Parts[2]])
	A1 = Instance.new('Attachment',Character.Head)
	A2 = Instance.new('Attachment',Character['RightUpperArm'])
	A2R = Instance.new('Attachment',Character['RightLowerArm'])
	A3 = Instance.new('Attachment',Character['LeftUpperArm'])
	A3R = Instance.new('Attachment',Character['LeftLowerArm'])
Trail = Instance.new('Trail',Character)
Trail.Attachment0 = A0
Trail.Attachment1 = A1
Trail.Texture = TrailSettings.Texture
Trail.Color = TrailSettings.Color1
Trail.Lifetime = TrailSettings.Lifetime
local Trail2 = Trail:Clone()
Trail2.Parent = Character
Trail2.Attachment1 = A2
local Trail3 = Trail:Clone()
Trail3.Parent = Character
Trail3.Attachment1 = A3
local Trail6 = Trail:Clone()
Trail6.Parent = Character
Trail6.Attachment0 = A1
Trail6.Attachment1 = A2
local Trail7 = Trail:Clone()
Trail7.Parent = Character
Trail7.Attachment0 = A1
Trail7.Attachment1 = A3
--R15 Trails
local Trail1R = Trail:Clone()
Trail1R.Parent = Character
Trail1R.Attachment1 = A2R
local Trail2R = Trail:Clone()
Trail2R.Parent = Character
Trail2R.Attachment1 = A3R
local Trail6R = Trail:Clone()
Trail6.Parent = Character
Trail6.Attachment0 = A1
Trail6.Attachment1 = A2R
local Trail7R = Trail:Clone()
Trail7.Parent = Character
Trail7.Attachment0 = A1
Trail7.Attachment1 = A3R
end
end

--Lower Body Function
LowerBody = function()
	if TrailSettings.R15 == false then
		A4 = Instance.new('Attachment',Character['Right Leg'])
		A5 = Instance.new('Attachment',Character['Left Leg'])
local Trail4 = Trail:Clone()
Trail4.Parent = Character
Trail4.Attachment1 = A4
local Trail5 = Trail:Clone()
Trail5.Parent = Character
Trail5.Attachment1 = A5
local Trail8 = Trail:Clone()
Trail8.Parent = Character
Trail8.Attachment0 = A2
Trail8.Attachment1 = A4
Trail8.Color = TrailSettings.Color2
local Trail9 = Trail:Clone()
Trail9.Parent = Character
Trail9.Attachment0 = A3
Trail9.Attachment1 = A5
Trail9.Color = TrailSettings.Color2
local FT = Trail:Clone()
FT.Parent = Character
FT.Attachment0 = A4
FT.Attachment1 = A5
FT.Color = TrailSettings.Color2
else
		A4 = Instance.new('Attachment',Character['RightLowerLeg'])
		A4R = Instance.new('Attachment',Character['RightUpperLeg'])
		A5 = Instance.new('Attachment',Character['LeftLowerLeg'])
		A5R = Instance.new('Attachment',Character['LeftUpperLeg'])
		local Trail4 = Trail:Clone()
Trail4.Parent = Character
Trail4.Attachment1 = A4
local Trail5 = Trail:Clone()
Trail5.Parent = Character
Trail5.Attachment1 = A5
local Trail8 = Trail:Clone()
Trail8.Parent = Character
Trail8.Attachment0 = A2
Trail8.Attachment1 = A4
Trail8.Color = TrailSettings.Color2
local Trail9 = Trail:Clone()
Trail9.Parent = Character
Trail9.Attachment0 = A3
Trail9.Attachment1 = A5
Trail9.Color = TrailSettings.Color2
local FT = Trail:Clone()
FT.Parent = Character
FT.Attachment0 = A4
FT.Attachment1 = A5
FT.Color = TrailSettings.Color2
--R15 Trails
local Trail3R = Trail:Clone()
Trail3R.Parent = Character
Trail3R.Attachment1 = A4R
local Trail4R = Trail:Clone()
Trail4R.Parent = Character
Trail4R.Attachment1 = A5R
local Trail8 = Trail:Clone()
Trail8.Parent = Character
Trail8.Attachment0 = A2R
Trail8.Attachment1 = A4R
Trail8.Color = TrailSettings.Color2
local Trail9 = Trail:Clone()
Trail9.Parent = Character
Trail9.Attachment0 = A3R
Trail9.Attachment1 = A5R
Trail9.Color = TrailSettings.Color2
local FT2R = Trail:Clone()
FT2R.Parent = Character
FT2R.Attachment0 = A4R
FT2R.Attachment1 = A5R
FT2R.Color = TrailSettings.Color2
end
end

--All Body Function calling Both Functions
AllBody = function()
	UpperBody()
	LowerBody()
end

--Checking to make sure that Only some Variables are Selected else do All Body
if TrailSettings.AllBody == true and TrailSettings.UpperBodyOnly == true and TrailSettings.LowerBodyOnly == true then
	TrailSettings.UpperBodyOnly = false
	TrailSettings.LowerBodyOnly = false
elseif TrailSettings.AllBody == true and TrailSettings.UpperBodyOnly == false and TrailSettings.LowerBodyOnly == true then
	TrailSettings.UpperBodyOnly = false
	TrailSettings.LowerBodyOnly = false
elseif TrailSettings.AllBody == true and TrailSettings.UpperBodyOnly == true and TrailSettings.LowerBodyOnly == false then
	TrailSettings.UpperBodyOnly = false
	TrailSettings.LowerBodyOnly = false
elseif TrailSettings.AllBody == false and TrailSettings.UpperBodyOnly == true and TrailSettings.LowerBodyOnly == true then
	TrailSettings.AllBody = true
	TrailSettings.UpperBodyOnly = false
	TrailSettings.LowerBodyOnly = false
end

--Call Trail Functions
if TrailSettings.UpperBodyOnly == true then
	UpperBody()
	print('Called Upper Body Trail')
elseif TrailSettings.LowerBodyOnly == true then
	LowerBody()
	print('Called Lower Body Trail')
elseif TrailSettings.AllBody == true then
	AllBody()
	print('Called Full Body Trail')
end

--Trails for Accessories
if TrailSettings.Accessories == true then
for Index,Item in pairs(Character:GetChildren()) do
	if Item:IsA'Accessory' then
		local AA = Instance.new('Attachment',Item.Handle)
		local ATrail = Trail:Clone()
		ATrail.Parent = Character
		ATrail.Attachment1 = AA
	end
end
end

--Extras
if TrailSettings.Extras == true then
	--Making an Invisible Platform Part
local a = Instance.new('Part',Character)
a.CanCollide = false
a.Size = Vector3.new(2,.2,2)
a.Transparency = 1

--Constantly putting it under your feet
if TrailSettings.R15 == false then
	spawn(function()
	game:GetService('RunService').RenderStepped:connect(function()
		a.CFrame = Character.Torso.CFrame * CFrame.new(0,-3,0)
	end)
end)
else
	spawn(function()
	game:GetService('RunService').RenderStepped:connect(function()
		a.CFrame = Character[TrailSettings.R15Parts[2]].CFrame * CFrame.new(0,-2,0)
	end)
end)
end

--Make a Trail from both feet to the Platform
spawn(function()
	repeat wait() until Trail
local AB = Instance.new('Attachment',a)
local ABT = Trail:Clone()
ABT.Parent = Character
ABT.Attachment0 = A4
ABT.Attachment1 = AB
ABT.Color = TrailSettings.Color2
local ABT2 = Trail:Clone()
ABT2.Parent = Character
ABT2.Attachment0 = A5
ABT2.Attachment1 = AB
ABT2.Color = TrailSettings.Color2
end)
end

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
local sick = Instance.new("Sound",Character.Torso)
sick.SoundId = "rbxassetid://869000977"
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



---some future chest tinglol---

Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1.18999839, 1.59999871, 1))
HandleWeld=CFuncs.Weld.Create(m,Character["Torso"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0236663818, -0.0907719135, 0.317821503, 0.999962866, 0.000129007996, -0.00902621169, -0.000127925552, 1, 0.000120364391, 0.00902613625, -0.000119204378, 0.999959409))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=102606179 ",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.5))
Middle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Institutional white","Middle",Vector3.new(2, 2, 1))
MiddleWeld=CFuncs.Weld.Create(m,Handle,Middle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00523376465, 0.580596685, -0.170185089, 1.00000691, 7.90009835e-10, -5.96046448e-08, 7.90009835e-10, 1, 4.22005542e-10, -5.96046448e-08, 4.22005542e-10, 1))
CFuncs.Mesh.Create("BlockMesh",Middle,"","",Vector3.new(0, 0, 0),Vector3.new(0, 0, 0))
Cylinder=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Cylinder",Vector3.new(0.200000003, 0.200000003, 0.400000006))
CylinderWeld=CFuncs.Weld.Create(m,Handle,Cylinder,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.231455326, 0.269420624, 0.305145264, -0.000139283729, -1, -4.22972735e-05, -7.32941146e-07, -4.22971716e-05, 1, -1, 0.000139283758, -7.27049837e-07))
CFuncs.Mesh.Create("CylinderMesh",Cylinder,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.5))
Cylinder=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Cylinder",Vector3.new(0.200000003, 0.200000003, 0.400000006))
CylinderWeld=CFuncs.Weld.Create(m,Handle,Cylinder,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.231508732, 0.269851685, -0.294754028, -0.000139283729, -1, -4.22972735e-05, -7.32941146e-07, -4.22971716e-05, 1, -1, 0.000139283758, -7.27049837e-07))
CFuncs.Mesh.Create("CylinderMesh",Cylinder,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.5))
Cylinder=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Cylinder",Vector3.new(0.200000003, 0.200000003, 0.400000006))
CylinderWeld=CFuncs.Weld.Create(m,Handle,Cylinder,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.580579519, 0.26966095, 0.00581359863, -0.000139283729, -1, -4.22972735e-05, -7.32941146e-07, -4.22971716e-05, 1, -1, 0.000139283758, -7.27049837e-07))
CFuncs.Mesh.Create("CylinderMesh",Cylinder,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 0.5))
Cylinder=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Cylinder",Vector3.new(0.200000003, 0.200000003, 0.400000006))
CylinderWeld=CFuncs.Weld.Create(m,Handle,Cylinder,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.020678997, 0.429592133, 0.00504302979, -0.000139283729, -1, -4.22972735e-05, -7.32941146e-07, -4.22971716e-05, 1, -1, 0.000139283758, -7.27049837e-07))
CFuncs.Mesh.Create("CylinderMesh",Cylinder,"","",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1.00999999))

----rarm----

Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.20000000298023,"Black","Handle",Vector3.new(0.5625, 0.200000003, 0.5625))
HandleWeld=CFuncs.Weld.Create(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.851722717, 1.10561752, -0.00168609619, 0.470270246, -0.882519305, 0.0023733438, -0.882508159, -0.470276207, -0.00445381179, 0.00504670199, 0, -0.999987364))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5625, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.100000113, 0.490000099, 1.01999998))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.180709839, 2.04907203, 0.000366210938, 0.470276177, -0.882519305, 0, -0.882519305, -0.470276207, 0, -0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","Part",Vector3.new(1.02999997, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00463867188, -1.84852219, -0.850482941, -0, 0, -1, 0.291499913, 0.956570923, 0, 0.956570923, -0.291499913, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1.00999999, 0.600000024, 1.00999999))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.575714111, 0.564062595, -0.00463867188, 0.470276177, -0.882519305, 0, -0.882519305, -0.470276207, 0, -0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.449999988, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00463867188, 0.554020643, 0.255722046, 0, 0, 1, -0.882519305, -0.470276207, 0, 0.470276177, -0.882519305, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.13999939, 0.504084587, -0.299934387, 0.470276177, -0.882519305, 0, -0.882519305, -0.470276207, 0, -0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1.01000011, 0.579999983, 1.00999999))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.575714111, 2.01406956, -0.00463867188, 0.470276177, -0.882519305, 0, -0.882519305, -0.470276207, 0, -0, 0, -1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.13999939, 0.504084587, 0.300064087, 0.470276177, -0.882519305, 0, -0.882519305, -0.470276207, 0, -0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.13999939, 0.504084587, 4.57763672e-05, 0.470276177, -0.882519305, 0, -0.882519305, -0.470276207, 0, -0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00463867188, -2.06848907, -1.07044983, -0, 0, -1, 0.291499913, 0.956570923, 0, 0.956570923, -0.291499913, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00463867188, 0.624020576, 0.695724487, 0, 0, 1, -0.882519305, -0.470276207, 0, 0.470276177, -0.882519305, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(1.02999997, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00463867188, -1.84853363, -1.07049561, -0, 0, -1, 0.291499913, 0.956570923, 0, 0.956570923, -0.291499913, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.24000001, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00463867188, 0.654026508, 0.475715637, 0, 0, 1, -0.882519305, -0.470276207, 0, 0.470276177, -0.882519305, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.379999995, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00463867188, 0.584041595, 0.915710449, 0, 0, 1, -0.882519305, -0.470276207, 0, 0.470276177, -0.882519305, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(1.02999997, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00463867188, -2.06853485, -0.850494385, -0, 0, -1, 0.291499913, 0.956570923, 0, 0.956570923, -0.291499913, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RFHitbox=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","RFHitbox",Vector3.new(1.37, 2.26999998, 1.10000002))
RFHitboxWeld=CFuncs.Weld.Create(m,Handle,RFHitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.60017395, 1.22661018, -0.000686645508, -0.470276177, 0.882519305, 0, -0.882519305, -0.470276207, 0, 0, 0, 1))
part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
partWeld=CFuncs.Weld.Create(m,Handle,part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00560760498, 0.0023765564, -3.81469727e-06, -0, 0, -1, -1, -2.98023224e-08, 0, 2.98023224e-08, 1, 0))
CFuncs.Mesh.Create("SpecialMesh",part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.393749982, 0.393749982, 0.393749982))
part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
partWeld=CFuncs.Weld.Create(m,Handle,part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00560760498, 0.0023765564, -3.81469727e-06, -0, 0, -1, -1, -2.98023224e-08, 0, 2.98023224e-08, 1, 0))
CFuncs.Mesh.Create("SpecialMesh",part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.506249964, 0.506249964, 0.506249964))
part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
partWeld=CFuncs.Weld.Create(m,Handle,part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00560760498, 0.0023765564, -3.81469727e-06, -0, 0, -1, -1, -2.98023224e-08, 0, 2.98023224e-08, 1, 0))
CFuncs.Mesh.Create("SpecialMesh",part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.28125, 0.28125, 0.28125))
part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
partWeld=CFuncs.Weld.Create(m,Handle,part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00560760498, 0.0023765564, -3.81469727e-06, -0, 0, -1, -1, -2.98023224e-08, 0, 2.98023224e-08, 1, 0))
CFuncs.Mesh.Create("SpecialMesh",part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.337500006, 0.337500006, 0.337500006))
part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
partWeld=CFuncs.Weld.Create(m,Handle,part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00560760498, 0.0023765564, -3.81469727e-06, -0, 0, -1, -1, -2.98023224e-08, 0, 2.98023224e-08, 1, 0))
CFuncs.Mesh.Create("SpecialMesh",part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.5625, 0.5625, 0.5625))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.00999999, 0.670000017, 0.409999996))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0026473999, 1.54413247, 0.275726318, 0, 0, 1, -0.882519305, -0.470276207, 0, 0.470276177, -0.882519305, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.00999999, 0.230000004, 1.00999999))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0026473999, 1.62406158, 0.575714111, 0, 0, 1, -0.882519305, -0.470276207, 0, 0.470276177, -0.882519305, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.01999998, 1.01999998, 0.709999979))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0026473999, -0.57572937, 0.624048471, 0, 0, 1, -0.470276177, 0.882519305, 0, -0.882519305, -0.470276207, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1, 0.479999989, 0.75999999))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0026473999, 0.224089146, 0.645721436, 0, 0, 1, -0.882519305, -0.470276207, 0, 0.470276177, -0.882519305, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.01999998, 0.479999989, 0.709999979))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0026473999, -0.00249481201, 0.544101715, 0, 0, 1, -0.999762774, 0.0217780173, 0, -0.0217780471, -0.999762833, 0))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","d",Vector3.new(0.200000003, 2.07999992, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0026473999, 1.2640996, -0.0157165527, -0, 0, -1, -0.882519305, -0.470276207, 0, -0.470276177, 0.882519305, 0))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","d",Vector3.new(0.200000003, 0.519999981, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.302642822, -0.423362732, 2.30372047, -0, 0, -1, 0.685295701, -0.728264928, 0, -0.728264987, -0.685295761, 0))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","d",Vector3.new(0.200000003, 0.519999981, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0026473999, -0.423362732, 2.30372047, -0, 0, -1, 0.685295701, -0.728264928, 0, -0.728264987, -0.685295761, 0))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","d",Vector3.new(0.200000003, 0.519999981, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.297370911, -0.423362732, 2.30372047, -0, 0, -1, 0.685295701, -0.728264928, 0, -0.728264987, -0.685295761, 0))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","d",Vector3.new(0.200000003, 1.10000002, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.302642822, 1.75408459, -0.0157165527, -0, 0, -1, -0.882519305, -0.470276207, 0, -0.470276177, 0.882519305, 0))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","d",Vector3.new(0.200000003, 1.10000002, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.297355652, 1.75408459, -0.0157165527, -0, 0, -1, -0.882519305, -0.470276207, 0, -0.470276177, 0.882519305, 0))
---larm---

Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
HandleWeld=CFuncs.Weld.Create(m,Character["Left Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00811767578, -0.855991364, 1.11441803, 0.00504670199, 0, -0.999987364, 0.470269799, 0.882519484, 0.00237334147, 0.882508337, -0.47027573, 0.00445381273))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.393749982, 0.393749982, 0.393749982))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.5625, 0.5625, 0.5625))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.28125, 0.28125, 0.28125))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.506249964, 0.506249964, 0.506249964))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.99999994, 0, 0, 0, 0.99999994))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.337500006, 0.337500006, 0.337500006))
Infected=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.20000000298023,"Black","Infected",Vector3.new(0.5625, 0.200000003, 0.5625))
InfectedWeld=CFuncs.Weld.Create(m,Handle,Infected,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0023727417, 7.62939453e-06, 0.00561523438, 0, -0.99999994, 0, 0, 0, 0.99999994, -1, 0, -0))
CFuncs.Mesh.Create("SpecialMesh",Infected,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5625, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.24000001, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0102539063, 0.65192318, 0.476837158, -1, 0, -0, 0, 0.882519484, -0.47027573, 0, -0.47027573, -0.882519484))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.141113281, 0.501981974, 0.294425964, 0, -0.47027573, -0.882519484, 0, 0.882519484, -0.47027573, 1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102539063, -2.06778336, -1.06818008, 1, 0, 0, 0, -0.29150036, 0.956570745, 0, -0.956570745, -0.29150036))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.449999988, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0102539063, 0.551918268, 0.256835938, -1, 0, -0, 0, 0.882519484, -0.47027573, 0, -0.47027573, -0.882519484))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.141113281, 0.501981974, -0.0055770874, 0, -0.47027573, -0.882519484, 0, 0.882519484, -0.47027573, 1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.300000012, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0102539063, 0.621917725, 0.696838379, -1, 0, -0, 0, 0.882519484, -0.47027573, 0, -0.47027573, -0.882519484))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.141113281, 0.501981974, -0.305580139, 0, -0.47027573, -0.882519484, 0, 0.882519484, -0.47027573, 1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.579999983, 1.00999999))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.581832886, 2.01196575, -0.0102539063, 0, -0.47027573, -0.882519484, 0, 0.882519484, -0.47027573, 1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(1.02999997, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102539063, -1.84783173, -1.06821442, 1, 0, 0, 0, -0.29150036, 0.956570745, 0, -0.956570745, -0.29150036))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.02999997, 0.379999995, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0102539063, 0.581938982, 0.916824341, -1, 0, -0, 0, 0.882519484, -0.47027573, 0, -0.47027573, -0.882519484))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(1.02999997, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102539063, -2.06782913, -0.84821701, 1, 0, 0, 0, -0.29150036, 0.956570745, 0, -0.956570745, -0.29150036))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","Part",Vector3.new(1.02999997, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0102539063, -1.84781265, -0.848209381, 1, 0, 0, 0, -0.29150036, 0.956570745, 0, -0.956570745, -0.29150036))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1.00999999, 0.600000024, 1.00999999))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.576828003, 0.561959505, -0.0102539063, 0, -0.47027573, -0.882519484, 0, 0.882519484, -0.47027573, 1, 0, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.01999998, 1.01999998, 0.709999979))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00826263428, -0.576843262, 0.621945381, -1, 0, -0, 0, 0.47027573, 0.882519484, 0, 0.882519484, -0.47027573))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.00999999, 0.230000004, 1.00999999))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00826263428, 1.62195778, 0.576828003, -1, 0, -0, 0, 0.882519484, -0.47027573, 0, -0.47027573, -0.882519484))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1, 0.479999989, 0.75999999))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00826263428, 0.221988678, 0.646835327, -1, 0, -0, 0, 0.882519484, -0.47027573, 0, -0.47027573, -0.882519484))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.00999999, 0.670000017, 0.409999996))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00826263428, 1.54202843, 0.27684021, -1, 0, -0, 0, 0.882519484, -0.47027573, 0, -0.47027573, -0.882519484))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.01999998, 0.479999989, 0.709999979))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00826263428, -0.0048789978, 0.544052124, -1, 0, -0, 0, 0.999762774, 0.0217780173, 0, 0.0217780173, -0.999762774))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","d",Vector3.new(0.200000003, 0.519999981, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00826263428, -0.4217453, 2.30198288, 1, 0, 0, 0, -0.685295343, -0.728265285, 0, 0.728265285, -0.685295343))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","d",Vector3.new(0.200000003, 0.519999981, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.291732788, -0.4217453, 2.30198288, 1, 0, 0, 0, -0.685295343, -0.728265285, 0, 0.728265285, -0.685295343))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","d",Vector3.new(0.200000003, 0.519999981, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.308265686, -0.4217453, 2.30198288, 1, 0, 0, 0, -0.685295343, -0.728265285, 0, 0.728265285, -0.685295343))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","d",Vector3.new(0.200000003, 2.07999992, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00826263428, 1.26199555, -0.0168457031, 1, 0, 0, 0, 0.882519484, -0.47027573, 0, 0.47027573, 0.882519484))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","d",Vector3.new(0.200000003, 1.10000002, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.291732788, 1.75198078, -0.0168457031, 1, 0, 0, 0, 0.882519484, -0.47027573, 0, 0.47027573, 0.882519484))
d=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","d",Vector3.new(0.200000003, 1.10000002, 0.200000003))
dWeld=CFuncs.Weld.Create(m,Handle,d,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.308265686, 1.75198078, -0.0168457031, 1, 0, 0, 0, 0.882519484, -0.47027573, 0, 0.47027573, 0.882519484))
LfHitbox=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","LfHitbox",Vector3.new(1.23000014, 2.07999992, 1.08000004))
LfHitboxWeld=CFuncs.Weld.Create(m,Handle,LfHitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.486152649, 1.3195107, -0.0055847168, 0, -0.47027573, -0.882519484, 0, 0.882519484, -0.47027573, 1, 0, 0))

--headlol----
Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Brown","Handle",Vector3.new(1, 0.800000012, 2))
HandleWeld=CFuncs.Weld.Create(m,Character["Head"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0050201416, -0.737044811, 0.0650024414, -0.999626577, 5.26573444e-21, -0.0273229256, 5.2506392e-21, 1, 6.24212331e-22, 0.0273229256, 4.80515498e-22, -0.999626577))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=11185882",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.800000012))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0264434814, -0.524188995, -0.543628693, -0.999751627, 5.25372174e-21, 0.0222777594, -0.0194845516, -0.484811008, -0.874401748, 0.0108005032, -0.874619007, 0.484690607))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=118974072 ",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1, 1))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0264434814, -0.524188995, -0.543628693, -0.999751627, 5.25372174e-21, 0.0222777594, -0.0194845516, -0.484811008, -0.874401748, 0.0108005032, -0.874619007, 0.484690607))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=118974072 ",Vector3.new(0, 0, 0),Vector3.new(1.14999998, 0.99000001, 0.99000001))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.89999997615814,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.016456604, 0.539620876, 0.465080261, -0.999751627, 5.25372174e-21, 0.0222777594, 5.26573444e-21, 1, 4.80515498e-22, -0.0222777594, 5.97705948e-22, -0.999751627))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=134030318 ",Vector3.new(0, 0, 0),Vector3.new(1.03999996, 1.03999996, 1.03999996))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.89999997615814,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.016456604, 0.539620876, 0.465080261, -0.999751627, 5.25372174e-21, 0.0222777594, 5.26573444e-21, 1, 4.80515498e-22, -0.0222777594, 5.97705948e-22, -0.999751627))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=134030318 ",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.01999998, 1.01999998))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.60000002384186,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.016456604, 0.539620876, 0.465080261, -0.999751627, 5.25372174e-21, 0.0222777594, 5.26573444e-21, 1, 4.80515498e-22, -0.0222777594, 5.97705948e-22, -0.999751627))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=134030318 ",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))


--torsoa----


Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
HandleWeld=CFuncs.Weld.Create(m,Character["Torso"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0299911499, -0.493329048, 0.770057678, -0.999987364, 0, -0.00504670199, 0, 1, 0, 0.00504670199, 0, -0.999987364))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.600000024, 0.600000024))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.800000012))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.5, 0.5))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 0.699999988, 0.699999988))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 0.899999976))
f=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","f",Vector3.new(0.200000003, 0.200000003, 0.200000003))
fWeld=CFuncs.Weld.Create(m,Handle,f,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",f,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Infected=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.20000000298023,"Black","Infected",Vector3.new(1, 0.200000003, 1))
InfectedWeld=CFuncs.Weld.Create(m,Handle,Infected,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00417709351, -2.28881836e-05, 0.0100097656, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Infected,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.340003967, 0.355865002, 0.809951782, 0, 0, 1, 0, 1, 0, -1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.311040044, 0.311040044))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.343719482, 0.148796082, 0.128662109, 0, 0, 1, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.311040044, 0.311040044))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.343719482, -0.193378448, 0.128658295, 0, 0, 1, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.200000003, 0.311040044, 0.311040044))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.343719482, 0.148769379, -0.213489532, 0, 0, 1, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(2.00999999, 1.13, 0.620000005))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0342407227, 0.055727005, -0.559654236, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.311040044, 0.311040044))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.343719482, -0.193340302, -0.213474274, 0, 0, 1, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.340003967, -0.224153996, -0.71006012, 0, 0, 1, 0, 1, 0, -1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.340003967, -0.224153996, 0.81993103, 0, 0, 1, 0, 1, 0, -1, 0, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.01999998, 0.400000006, 0.610000014))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.782676697, 0.765777588, -0.204174995, 0, 0, 1, 1, 0, 0, 0, 1, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(1.01999998, 0.400000006, 0.610000014))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.792671204, 0.844223022, -0.204174995, 0, 0, -1, -1, 0, 0, 0, 1, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.340003967, 0.355865002, -0.71006012, 0, 0, 1, 0, 1, 0, -1, 0, 0))

---rightleg---
Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
HandleWeld=CFuncs.Weld.Create(m,Character["Right Leg"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00577545166, 0.163275599, 0.527420044, 0.999987364, 0, 0.00504670199, 0, 1, 0, -0.00504670199, 0, 0.999987364))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.379687488, 0.379687488, 0.379687488))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.2109375, 0.2109375, 0.2109375))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.253125012, 0.253125012, 0.253125012))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.295312494, 0.295312494, 0.295312494))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.421875, 0.421875, 0.421875))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.337500006, 0.337500006, 0.337500006))
Infected=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.20000000298023,"Black","Infected",Vector3.new(0.421875, 0.200000003, 0.421875))
InfectedWeld=CFuncs.Weld.Create(m,Handle,Infected,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00174897909, -3.05175781e-05, 0.00421905518, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Infected,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.421875, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.410000026, 1.01999998))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.404953003, -0.835816026, 0.530357361, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406188965, -0.930737019, -0.277801514, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406188965, -0.740772009, -0.617797852, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0.5,"Bright blue","Part",Vector3.new(0.200000003, 0.540000021, 0.540000021))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100349426, -0.000846028328, -0.00495147705, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.200000003, 0.5, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100349426, -0.000846028328, -0.00495147705, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.03999996, 0.338, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00506591797, 0.364208221, -0.519493103, 1, 0, 0, 0, 0.848048866, -0.529917955, 0, 0.529917955, 0.848048866))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406188965, -0.740772009, -0.447799683, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.03999996, 0.224999994, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00506591797, 0.416698456, -0.189483643, 1, 0, 0, 0, 0.848048866, -0.529917955, 0, 0.529917955, 0.848048866))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406188965, -0.930737019, -0.447799683, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0.5,"Bright blue","Part",Vector3.new(0.200000003, 0.519999981, 0.519999981))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100349426, -0.000846028328, -0.00495147705, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(1.01999998, 0.200000003, 1.01999998))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00503540039, -0.180850029, 0.530357361, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406188965, -0.930737019, -0.787796021, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406188965, -0.740772009, -0.787796021, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406188965, -0.740772009, -0.277801514, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000033))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406188965, -0.930737019, -0.617797852, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.03999996, 0.284999996, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00506591797, 0.386646271, -0.024520874, 1, 0, 0, 0, 0.848048866, -0.529917955, 0, 0.529917955, 0.848048866))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.03999996, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00506591797, 0.439151764, -0.354492188, 1, 0, 0, 0, 0.848048866, -0.529917955, 0, 0.529917955, 0.848048866))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.950370789, 0.0944480896, 0.094493866, 0, 0, -1, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.950370789, 0.314418793, 0.314464569, 0, 0, -1, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.950370789, 0.314434052, 0.0945091248, 0, 0, -1, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.950370789, 0.0944519043, 0.31451416, 0, 0, -1, -0.707106829, 0.707106829, 0, 0.707106829, 0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1.02999997, 1.02999997, 1.02999997))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00503540039, 0.289182007, 0.530357361, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(1.04999995, 0.25, 0.670000017))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0100402832, -1.0478363, -0.287506104, 1, 0, 0, -0, -0.173650086, 0.984807491, 0, -0.984807491, -0.173650086))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(0.25999999, 0.389999986, 0.5))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.147018433, -0.465834022, 0.250045776, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(1.04999995, 0.200000003, 1.04999995))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0100402832, 0.714154005, 0.527000427, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(0.25999999, 0.389999986, 0.5))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.147018433, -0.465834022, 0.249954224, 0, 0, 1, 0, 1, 0, -1, 0, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(0.25999999, 0.389999986, 0.5))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.137023926, -0.415816069, 0.249969482, 0, 0, 1, 0, 1, 0, -1, 0, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(0.25999999, 0.389999986, 0.5))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.137023926, -0.415816069, 0.250045776, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(1.04999995, 0.25, 0.370000005))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0100402832, -0.772094727, -0.486150742, 1, 0, 0, -0, -0.173650086, 0.984807491, 0, -0.984807491, -0.173650086))

----leftleg----
Handle=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
HandleWeld=CFuncs.Weld.Create(m,Character["Left Leg"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00580596924, 0.18327564, 0.52255249, 0.999987364, 0, 0.00504670199, 0, 1, 0, -0.00504670199, 0, 0.999987364))
CFuncs.Mesh.Create("SpecialMesh",Handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.337500006, 0.337500006, 0.337500006))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.253125012, 0.253125012, 0.253125012))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.379687488, 0.379687488, 0.379687488))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.295312494, 0.295312494, 0.295312494))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.421875, 0.421875, 0.421875))
F=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.69999998807907,"Toothpaste","F",Vector3.new(0.200000003, 0.200000003, 0.200000003))
FWeld=CFuncs.Weld.Create(m,Handle,F,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs.Mesh.Create("SpecialMesh",F,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.2109375, 0.2109375, 0.2109375))
Infected=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0.20000000298023,"Black","Infected",Vector3.new(0.421875, 0.200000003, 0.421875))
InfectedWeld=CFuncs.Weld.Create(m,Handle,Infected,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00174897909, -3.05175781e-05, 0.00421142578, 0, -1, 0, 0, 0, 1, -1, 0, 0))
CFuncs.Mesh.Create("SpecialMesh",Infected,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.421875, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0.5,"Bright blue","Part",Vector3.new(0.200000003, 0.540000021, 0.540000021))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100334167, -0.000846028328, -0.00495147705, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.03999996, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00506591797, 0.43914032, -0.354473114, 1, 0, 0, 0, 0.848048866, -0.529917955, 0, 0.529917955, 0.848048866))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.900000036, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.03999996, 0.224999994, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00506591797, 0.416690826, -0.189472198, 1, 0, 0, 0, 0.848048866, -0.529917955, 0, 0.529917955, 0.848048866))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0.5,"Bright blue","Part",Vector3.new(0.200000003, 0.519999981, 0.519999981))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100334167, -0.000846028328, -0.00495147705, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.03999996, 0.338, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00506591797, 0.364192963, -0.519462585, 1, 0, 0, 0, 0.848048866, -0.529917955, 0, 0.529917955, 0.848048866))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(1.01999998, 0.200000003, 1.01999998))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0050201416, -0.180850029, 0.530334473, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(0.200000003, 0.5, 0.5))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.100334167, -0.000846028328, -0.00495147705, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(1.03999996, 0.284999996, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00506591797, 0.386638641, -0.0245018005, 1, 0, 0, 0, 0.848048866, -0.529917955, 0, 0.529917955, 0.848048866))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.75))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Electric blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.950317383, -0.0944595337, -0.314498901, 0, 0, -1, 0.707106829, -0.707106829, -0, -0.707106829, -0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.230000004, 1.01999998))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0713348389, -0.872953892, 0.530334473, -0.996194899, -0.0871539935, 0, -0.087154001, 0.996194899, 0, 0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(1.02999997, 1.02999997, 1.02999997))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0050201416, 0.289182007, 0.530334473, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Part",Vector3.new(1.02999997, 0.200000003, 1.02999997))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0713348389, -0.872953892, 0.530334473, -0.996194899, -0.0871539935, 0, -0.087154001, 0.996194899, 0, 0, 0, -1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright green","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.950317383, -0.314414978, -0.314460754, 0, 0, -1, 0.707106829, -0.707106829, -0, -0.707106829, -0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright yellow","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.950317383, -0.0944480896, -0.094493866, 0, 0, -1, 0.707106829, -0.707106829, -0, -0.707106829, -0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CFuncs.Weld.Create(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.950317383, -0.31445694, -0.0945014954, 0, 0, -1, 0.707106829, -0.707106829, -0, -0.707106829, -0.707106829, 0))
CFuncs.Mesh.Create("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(1.04999995, 0.200000003, 1.04999995))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0100402832, 0.714154005, 0.526977539, -1, 0, 0, 0, 1, 0, 0, 0, -1))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(0.25999999, 0.389999986, 0.5))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.137008667, -0.415816009, 0.250045776, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(1.04999995, 0.25, 0.370000005))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0100402832, -0.77205658, -0.486157417, 1, 0, 0, -0, -0.173650086, 0.984807491, 0, -0.984807491, -0.173650086))
Wedge=CFuncs.Part.Create(m,Enum.Material.Plastic,0,0,"Really black","Wedge",Vector3.new(0.25999999, 0.389999986, 0.5))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.137008667, -0.415816009, 0.249969482, 0, 0, 1, 0, 1, 0, -1, 0, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(0.25999999, 0.389999986, 0.5))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.147003174, -0.465833962, 0.250045776, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(1.04999995, 0.25, 0.670000017))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0100402832, -1.0477829, -0.287514687, 1, 0, 0, -0, -0.173650086, 0.984807491, 0, -0.984807491, -0.173650086))
Wedge=CFuncs.Part.Create(m,Enum.Material.Neon,0,0,"Bright blue","Wedge",Vector3.new(0.25999999, 0.389999986, 0.5))
WedgeWeld=CFuncs.Weld.Create(m,Handle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.147003174, -0.465833962, 0.249954224, 0, 0, 1, 0, 1, 0, -1, 0, 0))



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

Mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attackone()
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
         CFrame.new(0.0305537544, 0.101244226, -0.110436231, 0.751921654, -2.69948202e-07, 0.659252584, 2.48371833e-07, 1, 1.26191509e-07, -0.659252584, 6.88536517e-08, 0.751921654) * CFrame.new(0, -0.1 + .1 * math.cos(sine / 20), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.133692384, 1.49995291, -0.122152172, 0.751921654, 0.118821487, -0.648456573, -2.85284614e-07, 0.983623922, 0.18023634, 0.659252584, -0.135523424, 0.739608109) * CFrame.Angles(math.rad(0 + 1 * math.cos(sine / 20)), 0, 0),  
         CFrame.new(1.56342208, 0.082565181, 0.184068531, 0.944978952, -0.210362762, -0.250524461, 0.217591718, 0.976039171, 0.00118678785, 0.244271994, -0.0556335375, 0.968109608) * CFrame.new(0, 0, 0 - 0.1 * math.cos(sine / 20)) * CFrame.Angles(0 + 0.1 * math.cos(sine / 20), 0, 0), 
         CFrame.new(-1.43761444, 0.138237804, 0.339363664, 0.86690402, 0.278344274, 0.413524032, -0.320227653, 0.946727693, 0.0340739228, -0.3820104, -0.161960647, 0.909855604) * CFrame.new(0, 0, 0) * CFrame.new(0, 0, 0 - 0.1 * math.cos(sine / 20)) * CFrame.Angles(0 + 0.1 * math.cos(sine / 20), 0, 0), 
         CFrame.new(0.620094717, -1.99999762, -0.161182314, 0.97460556, -0.0876395851, -0.206067026, 0.0712375641, 0.993768871, -0.0857243761, 0.21229586, 0.0688677281, 0.974775851) * CFrame.new(0, 0, 0) * CFrame.new(0 - 0.01 * math.cos(sine / 20), 0 - .1 * math.cos(sine / 20), 0) * CFrame.Angles(0 + 0.02 * math.cos(sine / 20), 0, 0 - 0.01 * math.cos(sine / 20)), 
         CFrame.new(-0.646371901, -1.99999869, 0.0849364698, 0.992579937, 0.118687555, 0.0264309049, -0.120671012, 0.988230288, 0.0940183029, -0.0149610043, -0.0965101048, 0.995219648) * CFrame.new(0 + 0.01 * math.cos(sine / 20), 0 - .1 * math.cos(sine / 20), 0) * CFrame.Angles(0 - 0.02 * math.cos(sine / 20), 0, 0 + 0.01 * math.cos(sine / 20)),
		}, .3, false)
	end
		
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
			Character.Humanoid.WalkSpeed = 100
PlayAnimationFromTable({
CFrame.new(0, -0.0193441566, -0.137761548, 1, 0, 0, 0, 0.961308897, 0.275472969, 0, -0.275472969, 0.961308897) * CFrame.new(0, 0+ .1 * math.cos((sine) / 2), 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(0, 1.44159341, 0.0451771915, 1, 0, 0, 0, 0.98646307, -0.163984656, 0, 0.163984656, 0.98646307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
CFrame.new(1.63363111, 0.0754526258, -2.72151652e-007, 0.985570133, -0.16926825, 1.56980732e-007, 0.16926825, 0.985570133, 2.38418579e-007, -1.86264515e-007, -1.49011612e-007, 1.00000024) * CFrame.new(0-.2+.5 * math.cos((sine) / 4), 0.2+ .65 * math.cos((sine) / 2), 0+ 1.1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0- 120 * math.cos((sine) / 4)),0, math.rad(0+ 60 * math.cos((sine) / 4))), 
CFrame.new(-1.61827064, 0.111134544, 1.51569429e-006, 0.978242338, 0.207465827, 7.76345075e-007, -0.207465842, 0.978242397, -2.41398811e-006, -1.25542283e-006, 2.20537186e-006, 1.00000012) * CFrame.new(0.2+.5 * math.cos((sine) / 4), 0.2+ .65 * math.cos((sine) / 2), 0- 1.1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0+ 120 * math.cos((sine) / 4)), 0, math.rad(0+ 60 * math.cos((sine) / 4))), 
CFrame.new(0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 + 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 - 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)),
CFrame.new(-0.5, -2.00000334, 2.67028881e-005, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0+ .4 * math.cos((sine) / 2), 0 - 1 * math.cos((sine) / 4)) * CFrame.Angles(math.rad(0 + 50 * math.cos((sine) / 4)), math.rad(0), math.rad(0)), 
}, .9, false)
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