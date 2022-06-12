--[[
	REANIMATED
		{ Never.. Give.. Up.. }
		Created by Quil_Cyndaquil (ROBLOX) [UserID 5719877]
				   MintyLatios (V3rmillion)
				   Nebula Zorua#1938
				   
				   
--]]
wait(3)
wait(1 / 60)
Effects = { }
local debugIt = false
local Player = game.Players.localPlayer
local Character = Player.Character
Character.Archivable=true
local FCharacter = Character:Clone()
Character.Archivable=false
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
	local w = Create('Weld'){
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
	LH.C1 = clerp(LH.C1,CFrame.new(0,0,0),speed)
	RH.C1 = clerp(RH.C1,CFrame.new(0,0,0),speed)
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

	CreateTemplate = {
	
	};
}

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

--[[FindNearestTorso = function(pos)
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
end]]
function FindNearestTorso(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Torso") then
				if v ~= Character then
					if (v.Torso.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
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
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

coroutine.wrap(function()
	while wait() do
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
																else
																	if Thing[2] == "Shatter" then
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
															Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
															Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
															Thing[6] = Thing[6] + Thing[5]
																	end
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
end)()
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

Humanoid.WalkSpeed = 0;

FCharacter.Parent = Character;

local FLeftArm = FCharacter["Left Arm"]
local FRightArm = FCharacter["Right Arm"]
local FLeftLeg = FCharacter["Left Leg"]
local FRightLeg = FCharacter["Right Leg"]

local FRW = newMotor(FCharacter.Torso, FRightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local FLW = newMotor(FCharacter.Torso, FLeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local FRH = newMotor(FCharacter.Torso, FRightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local FLH = newMotor(FCharacter.Torso, FLeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
local FRootPart = FCharacter.HumanoidRootPart
local FRootJoint = FRootPart.RootJoint
FRootJoint.C1 = CFrame.new(0, 0, 0)
FRootJoint.C0 = CFrame.new(0, 0, 0)
FCharacter.Torso.Neck.C1 = CFrame.new(0, 0, 0)
FCharacter.Torso.Neck.C0 = CFrame.new(0, 1.5, 0)
FRootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,10)

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	


local fgm = New("Model",FCharacter,"GunModel",{})
FHandle = New("Part",fgm,"FHandle",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(1.78105354, 1.21267569, 0.446083069),CFrame = CFrame.new(3.48884702, 1.89424598, -23.6011944, 0.0172098875, -7.30156898e-07, 0.999851942, 0.999853492, 1.19907781e-08, -0.0172098596, -1.80598714e-09, 1.00000083, 1.4975667e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
moter = New("Weld",FHandle,"mot",{Part0 = FLeftArm,Part1 = FHandle,})
moter.C0 = CFrame.new(0.0111980997, -1.6377027, -0.318750381, -0.0172109306, 0, -0.999851882, 0.999851882, 0, -0.0172109306, 0, -1, 0)
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.46324158, 2.55061626, -23.0996056, 0.0172099378, 1.26508749e-05, 0.999852061, 0.999856234, 0.000737910799, -0.0172098614, -0.000738026109, 1.00000215, 2.29468287e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.492160469, 0.24608025, 0.123040132),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098838, 0.999853015, -0.000738022442, 1.18836761e-05, 0.000737924012, 1.00000048, 0.999851942, -0.0172098614, 1.52736902e-06),C1 = CFrame.new(0.655831456, 0.501588821, -0.0368974209, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.270688266, 0.270688266),CFrame = CFrame.new(3.47537327, 1.11045444, -23.2953625, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.123040125, 1, 1),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.783906102, 0.305831909, 1.74045563e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.47648132, 0.221472263, 0.344512314),CFrame = CFrame.new(3.48828244, 1.86040294, -23.3093491, 0.0172099452, 3.70001203e-08, 0.999852061, 0.99985671, -3.59708352e-09, -0.0172098596, -4.18887769e-09, 1.0000025, 2.26488032e-06),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),C1 = CFrame.new(-0.0338476896, 0.291845322, 1.8119812e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.98432076, 0.200000003, 0.24608022),CFrame = CFrame.new(3.48404813, 1.61474013, -23.4433804, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.246080264, 1),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.279546618, 0.157814026, 1.21593475e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.984321058, 0.200000003, 0.200000003),CFrame = CFrame.new(3.36101127, 1.61687815, -23.4187717, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.492160618, 0.492160439),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.279526353, 0.182422638, -0.123043299, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.53706741, 2.54934502, -23.0996056, 0.0172099378, 1.26508749e-05, 0.999852061, 0.999856234, 0.000737910799, -0.0172098614, -0.000738026109, 1.00000215, 2.29468287e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.492160469, 0.246080235, 0.123040132),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098838, 0.999853015, -0.000738022442, 1.18836761e-05, 0.000737924012, 1.00000048, 0.999851942, -0.0172098614, 1.52736902e-06),C1 = CFrame.new(0.655830979, 0.501588821, 0.0369393826, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.47648132, 0.200000003, 0.200000003),CFrame = CFrame.new(3.48828554, 1.86097884, -23.1606178, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.7382406),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.0332717896, 0.440576553, 1.14440918e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Partss = New("Part",fgm,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.221472204, 0.221472189),CFrame = CFrame.new(3.47526526, 1.10428262, -23.2953568, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Partss,"Mesh",{Scale = Vector3.new(0.123040125, 1, 1),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Partss,"mot",{Part0 = Partss,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.790078878, 0.305837631, 1.57356262e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.49040294, 1.9837563, -23.5174713, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.615200579, 0.36912033, 0.24608025),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(0.0895236731, 0.0837230682, 1.52587891e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.295296252, 0.738240778, 0.369120389),CFrame = CFrame.new(3.49802279, 2.42631888, -23.8138046, 0.0172099452, 3.70001203e-08, 0.999852061, 0.99985671, -3.59708352e-09, -0.0172098596, -4.18887769e-09, 1.0000025, 2.26488032e-06),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),C1 = CFrame.new(0.532151103, -0.212610245, 1.74045563e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.344512314, 0.78745681, 0.344512314),CFrame = CFrame.new(3.49802279, 2.42631888, -23.8138046, 0.0172099452, 3.70001203e-08, 0.999852061, 0.99985671, -3.59708352e-09, -0.0172098596, -4.18887769e-09, 1.0000025, 2.26488032e-06),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),C1 = CFrame.new(0.532151103, -0.212610245, 1.74045563e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",fgm,"Part",{Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.984321058, 0.200000003, 0.200000003),CFrame = CFrame.new(3.60706425, 1.61264217, -23.4187698, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.492160618, 0.492160439),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.279527187, 0.182424545, 0.12304616, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",fgm,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.47672749, 1.18911982, -23.1232109, 0.999851942, 0.00638213893, 0.0159827713, -0.0172098316, 0.37065956, 0.928613782, 4.44045327e-06, -0.928749561, 0.370713741),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(0.24608025, 0.246080264, 0.615200639),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.999851882, -0.0172098316, 3.67313623e-06, 0.00638283044, 0.370658338, -0.928748012, 0.0159824342, 0.928610861, 0.370713145),C1 = CFrame.new(-0.705229163, 0.477983475, 1.76429749e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",fgm,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.344512254, 0.787456751, 0.200000003),CFrame = CFrame.new(3.50247502, 2.68478155, -23.8132839, 0.999851942, 1.0713723e-05, -0.0172099732, -0.0172098912, 0.000738376984, -0.999856234, 4.21693585e-06, 1.00000226, 0.000738456321),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.861280859),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.999851882, -0.0172098912, 3.44961882e-06, 9.9465251e-06, 0.000738390256, 1.0000006, -0.0172099192, -0.999853015, 0.000738452654),C1 = CFrame.new(0.790651679, -0.212089539, 2.07424164e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",fgm,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.4904809, 1.98827124, -23.5162678, -0.999852061, -0.0148990965, 0.00861407723, 0.0172099397, -0.865535975, 0.500560343, -4.36594746e-06, 0.500633478, 0.865662456),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(0.24608025, 0.369120389, 0.861280918),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, -0.999851942, 0.0172099397, -3.59863043e-06, -0.0148994327, -0.865533173, 0.500632644, 0.00861338526, 0.500558794, 0.865661025),C1 = CFrame.new(0.0940393209, 0.0849266052, 1.54972076e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",fgm,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.442944348, 0.200000003, 0.200000003),CFrame = CFrame.new(3.37415838, 2.37982368, -23.1609974, 0.0172098633, 1.48413446e-05, 0.999851882, 0.999856234, 0.0007376945, -0.0172097869, -0.000737846654, 1.00000215, 7.44058752e-08),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.492160529),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098093, 0.999853015, -0.000737842987, 1.40741467e-05, 0.000737707771, 1.00000048, 0.999851823, -0.0172097888, -6.92903996e-07),C1 = CFrame.new(0.483531356, 0.440196991, -0.12302804, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",fgm,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.61520052, 0.200000003, 0.200000003),CFrame = CFrame.new(3.35783243, 1.43252242, -23.1602993, 0.0172098633, 1.48413446e-05, 0.999851882, 0.999856234, 0.0007376945, -0.0172097869, -0.000737846654, 1.00000215, 7.44058752e-08),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.492160529),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.0172098093, 0.999853015, -0.000737842987, 1.40741467e-05, 0.000737707771, 1.00000048, 0.999851823, -0.0172097888, -6.92903996e-07),C1 = CFrame.new(-0.463909149, 0.440895081, -0.123048544, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",fgm,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.47648132, 0.200000003, 0.200000003),CFrame = CFrame.new(3.61130548, 1.85886192, -23.160614, -0.0172098689, 1.04156998e-05, -0.99985218, -0.999856234, 0.000738191127, 0.0172097925, 0.000738266157, 1.00000238, -4.55221243e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.492160529),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, -0.0172098149, -0.999853075, 0.00073826249, 9.64850187e-06, 0.00073820434, 1.00000072, -0.999852121, 0.0172097944, -3.78489494e-06),C1 = CFrame.new(-0.0332713127, 0.440580368, 0.123049498, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",fgm,"Wedge",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.36912033, 0.738240778, 0.200000003),CFrame = CFrame.new(3.50183868, 2.64789343, -23.8132629, 0.999851942, 1.0818032e-05, -0.017209895, -0.0172098186, 0.000737608876, -0.999856234, 4.13497901e-06, 1.00000238, 0.000737691764),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.738240719),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.999851882, -0.0172098186, 3.36766243e-06, 1.00508332e-05, 0.000737622147, 1.00000072, -0.0172098409, -0.999853015, 0.000737688097),C1 = CFrame.new(0.753758311, -0.212068558, 1.93119049e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",fgm,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.344512254, 0.787456751, 0.200000003),CFrame = CFrame.new(3.49357963, 2.16808391, -23.8129005, 0.999852061, -1.05647114e-05, 0.0172100067, -0.0172099303, -0.000737611321, 0.999856114, 4.36594746e-06, -1.00000226, -0.000737689785),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.861280859),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.999851942, -0.0172099303, 3.59863043e-06, -9.79751348e-06, -0.000737624592, -1.0000006, 0.0172099527, 0.999852955, -0.000737686118),C1 = CFrame.new(0.273878455, -0.211706161, 1.90734863e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",fgm,"Wedge",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.36912033, 0.738240659, 0.200000003),CFrame = CFrame.new(3.49420977, 2.20497489, -23.8129292, 0.999852061, -1.05647114e-05, 0.0172100067, -0.0172099303, -0.000737611321, 0.999856114, 4.36594746e-06, -1.00000226, -0.000737689785),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.738240719),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = FHandle,C0 = CFrame.new(0, 0, 0, 0.999851942, -0.0172099303, 3.59863043e-06, -9.79751348e-06, -0.000737624592, -1.0000006, 0.0172099527, 0.999852955, -0.000737686118),C1 = CFrame.new(0.310774684, -0.211734772, 1.43051147e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})

for _,v in pairs(m:children()) do
if v:IsA("Part") then
v.CanCollide = false
end
end

local knife = Instance.new("Part", FCharacter)
knife.Locked = true
knife.Name ="Knife"
knife.CanCollide = false
knife.CFrame = FCharacter.Torso.CFrame
knife.Size = Vector3.new(2.4,1,1)
local sbox = Instance.new("SelectionBox",knife)
sbox.Adornee=knife
sbox.Transparency = 1
local mesh = Instance.new("SpecialMesh",knife)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.TextureId = "rbxassetid://430991793"
mesh.MeshId = "rbxassetid://430991742" 
mesh.Scale = Vector3.new(0.3,0.3,0.3)
local holder = Instance.new("Part",FCharacter)
holder.BrickColor = BrickColor.new("Brown")
holder.TopSurface,holder.BottomSurface = "SmoothNoOutlines" ,"SmoothNoOutlines"
holder.Size = Vector3.new(.2,2,.6)
holder.CanCollide = false
local knifweld = Instance.new("Weld",FCharacter)
knifweld.Part1 = holder
knifweld.Part0 = knife
knifweld.C0 = CFrame.new(-.3,0,0) * CFrame.Angles(math.rad(90),0,math.rad(-90))
local holderweld = Instance.new("Weld",FCharacter)
holderweld.Part0 = holder
holderweld.Part1 = FCharacter['Left Leg']
holderweld.C0 = CFrame.new(0.5,-0.5,-0.5) * CFrame.Angles(math.rad(50),0,0)
wait()
FRootPart.Anchored = true
RootPart.Anchored = true
wait(1)
if debugIt == false then
	for i = 0,1,0.1 do
		local speed = .3
		local table = {
	         CFrame.new(0, 2.98023224e-08, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(7.62939453e-06, 1.49997091, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(1.49999273, 0.120001435, 0, 0.949446321, -0.313935041, 0, 0.313935041, 0.949446321, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(-1.80998349, 0.550002098, 0, -0.0958094522, 0.995400369, 0, -0.995401978, -0.0958093852, 0, -0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(0.659994006, -1.99997091, 0, 0.985384941, -0.170343637, 0, 0.170343637, 0.985384941, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(-0.619998693, -1.99998927, -0, 0.970477402, 0.241212875, 0, -0.24121283, 0.970477402, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
		}
		FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
		FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
		FRW.C0 = clerp(FRW.C0, table[3], speed) 
		FLW.C0 = clerp(FLW.C0, table[4], speed) 
		FRH.C0 = clerp(FRH.C0, table[5], speed) 
		FLH.C0 = clerp(FLH.C0, table[6], speed) 
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(90), 0, 0), 0.3)
		swait()
	end
	
	wait(1)
	coroutine.wrap(function()
	    Effects.Block.Create(BrickColor.new("Bright red"), Partss.CFrame, 2, 2, 2, 0.9, 0.9, 0.9, 0.05)
	    Effects.Block.Create(BrickColor.new("Deep orange"), Partss.CFrame, 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
	    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136523485", Character, 1, .5)
		for i = 0,1,0.1 do
			local speed = .3
			local table = {
		         CFrame.new(0, 2.98023224e-08, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(7.62939453e-06, 1.49997091, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(1.49999273, 0.120001435, 0, 0.949446321, -0.313935041, 0, 0.313935041, 0.949446321, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-1.80998576, 0.949998736, -0, -0.743379056, 0.668870509, 0, -0.668870509, -0.743379056, 0, -0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(0.659994006, -1.99997091, 0, 0.985384941, -0.170343637, 0, 0.170343637, 0.985384941, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-0.619998693, -1.99998927, -0, 0.970477402, 0.241212875, 0, -0.24121283, 0.970477402, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
			}
			FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
			FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
			FRW.C0 = clerp(FRW.C0, table[3], speed) 
			FLW.C0 = clerp(FLW.C0, table[4], speed) 
			FRH.C0 = clerp(FRH.C0, table[5], speed) 
			FLH.C0 = clerp(FLH.C0, table[6], speed) 
			moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(90), 0, 0), 0.3)
			swait()
		end
		wait()
		for i = 0,1,0.1 do
			local speed = .3
			local table = {
		         CFrame.new(0, 2.98023224e-08, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(7.62939453e-06, 1.49997091, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(1.49999273, 0.120001435, 0, 0.949446321, -0.313935041, 0, 0.313935041, 0.949446321, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-1.80998349, 0.550002098, 0, -0.0958094522, 0.995400369, 0, -0.995401978, -0.0958093852, 0, -0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(0.659994006, -1.99997091, 0, 0.985384941, -0.170343637, 0, 0.170343637, 0.985384941, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-0.619998693, -1.99998927, -0, 0.970477402, 0.241212875, 0, -0.24121283, 0.970477402, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
			}
			FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
			FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
			FRW.C0 = clerp(FRW.C0, table[3], speed) 
			FLW.C0 = clerp(FLW.C0, table[4], speed) 
			FRH.C0 = clerp(FRH.C0, table[5], speed) 
			FLH.C0 = clerp(FLH.C0, table[6], speed) 
			moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(90), 0, 0), 0.3)
			swait()
		end
	end)()
	
	
	
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
	     CFrame.new(0, -2.53465056, -3.14089251, 1, 0, 0, 0, -0.026162995, 0.99965775, 0, -0.99965775, -0.026162995) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(7.62939453e-06, 1.49996197, -5.48362777e-06, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(1.76997232, 0.969703615, 0.0185622945, -0.825149953, -0.564913094, 2.90976971e-07, 0.56491369, -0.825144649, -7.52694905e-06, 4.50573862e-06, -5.99585474e-06, 1.00000489) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-1.80998182, 0.310005337, -2.61630303e-05, 0.918722868, 0.394903064, 1.61788887e-06, -0.394903064, 0.918722928, -3.44775617e-06, -2.84798443e-06, 2.52947211e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(0.819993675, -1.99995661, -8.79401341e-06, 0.950523973, -0.310651302, 8.76989304e-07, 0.310651362, 0.950523973, -4.51132655e-06, 5.69038093e-07, 4.56348062e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-0.659999847, -1.99995279, -8.66005939e-06, 0.972906768, 0.231197968, 2.30545061e-06, -0.231197998, 0.972906768, -6.87874854e-06, -3.83378938e-06, 6.15976751e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	wait(1)
	for i = 0,1,.1 do
		local speed = .3
		local table = {
			CFrame.new(-0, -0, -0, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(7.62939453e-06, 1.50001144, 4.03896783e-28, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.6600095, -2.38418579e-06, -4.63128478e-15, 0.987662673, -0.156602472, 1.49340781e-15, 0.156602204, 0.987670064, 4.79616347e-14, 5.55111512e-16, 2.13162821e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.54000187, -1.44541264e-06, 1.69182539e-13, 0.990279555, 0.13909173, 1.10008167e-13, -0.139091685, 0.990279555, 8.2600593e-14, -9.75886039e-14, -9.50350909e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.499999404, -2.00002313, 6.14590166e-17, 0.997888803, -0.064946577, 1.11021297e-16, 0.0649465844, 0.997888744, 0, 1.66533454e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.500009298, -2.00002384, -8.40476912e-17, 0.998180985, 0.060290534, -5.55106748e-17, -0.0602905415, 0.998180926, 0, 2.22044605e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}
		FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
		FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
		FRW.C0 = clerp(FRW.C0, table[3], speed) 
		FLW.C0 = clerp(FLW.C0, table[4], speed) 
		FRH.C0 = clerp(FRH.C0, table[5], speed) 
		FLH.C0 = clerp(FLH.C0, table[6], speed) 
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(90), 0, 0), 0.3)
		swait()
	end
	
	wait(1)
	for i = 0, 1, .1 do
		local speed = .3
		local table = {
			CFrame.new(-0, -0, -0, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(7.62939453e-06, 1.50001144, 4.03896783e-28, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.289989859, -3.27825546e-07, -0.770015359, 0.282591939, 0.951313019, 0.123073883, -0.569866359, 0.269702584, -0.776217401, -0.771619499, 0.14921695, 0.618335962) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.54000187, -1.44541264e-06, 1.69182539e-13, 0.990279555, 0.13909173, 1.10008167e-13, -0.139091685, 0.990279555, 8.2600593e-14, -9.75886039e-14, -9.50350909e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.499999404, -2.00002313, 6.14590166e-17, 0.997888803, -0.064946577, 1.11021297e-16, 0.0649465844, 0.997888744, 0, 1.66533454e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.500009298, -2.00002384, -8.40476912e-17, 0.998180985, 0.060290534, -5.55106748e-17, -0.0602905415, 0.998180926, 0, 2.22044605e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}
	    swait()
		FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
		FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
		FRW.C0 = clerp(FRW.C0, table[3], speed) 
		FLW.C0 = clerp(FLW.C0, table[4], speed) 
		FRH.C0 = clerp(FRH.C0, table[5], speed) 
		FLH.C0 = clerp(FLH.C0, table[6], speed) 
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(90), 0, 0), 0.3)
	end
	
	knifweld.Part1 = FCharacter['Right Arm']
	knifweld.C0 = CFrame.new(1,1,0)*CFrame.Angles(0,math.rad(-90),0)
	for i = 0,1,.1 do
		local speed = .3
		local table = {
			CFrame.new(-0, -0, -0, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(7.62939453e-06, 1.50001144, 4.03896783e-28, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.6600095, -2.38418579e-06, -4.63128478e-15, 0.987662673, -0.156602472, 1.49340781e-15, 0.156602204, 0.987670064, 4.79616347e-14, 5.55111512e-16, 2.13162821e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.54000187, -1.44541264e-06, 1.69182539e-13, 0.990279555, 0.13909173, 1.10008167e-13, -0.139091685, 0.990279555, 8.2600593e-14, -9.75886039e-14, -9.50350909e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.499999404, -2.00002313, 6.14590166e-17, 0.997888803, -0.064946577, 1.11021297e-16, 0.0649465844, 0.997888744, 0, 1.66533454e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.500009298, -2.00002384, -8.40476912e-17, 0.998180985, 0.060290534, -5.55106748e-17, -0.0602905415, 0.998180926, 0, 2.22044605e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}
		FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
		FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
		FRW.C0 = clerp(FRW.C0, table[3], speed) 
		FLW.C0 = clerp(FLW.C0, table[4], speed) 
		FRH.C0 = clerp(FRH.C0, table[5], speed) 
		FLH.C0 = clerp(FLH.C0, table[6], speed) 
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111980997, -1.6377027, -0.318750381, -0.0172109306, 0, -0.999851882, 0.999851882, 0, -0.0172109306, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		swait()
	end
	
	wait(1)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
	     CFrame.new(0, -2.24408007, -3.19489694, 1, 0, 0, 0, 0.452725112, 0.891650259, 0, -0.891650259, 0.452725112) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(7.62939453e-06, 1.4999584, -3.81469818e-06, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(1.61997747, 0.704635978, -0.635224581, -0.825147271, -0.352566004, 0.441395015, 0.496845663, -0.0810818374, 0.864043713, -0.268842638, 0.932268381, 0.242075145) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-1.80998445, 0.192538664, -0.186033189, 0.494757533, 0.782224536, -0.378605217, -0.853971958, 0.518376589, -0.0449554324, 0.161094487, 0.345559716, 0.924467504) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(0.819988847, -1.93866265, 0.717127383, 0.950523973, -0.310651302, 8.76989304e-07, 0.273218215, 0.835988283, 0.475894451, -0.147837952, -0.452348769, 0.879502594) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-0.659997702, -1.93866444, 0.717128515, 0.972906768, 0.231197968, 2.30545061e-06, -0.203340545, 0.855674803, 0.475892335, 0.110023372, -0.462999344, 0.879503667) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	wait(1)
	for i = 0,1,.1 do
		local speed = .3
		local table = {
			CFrame.new(-0, -0, -0, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(7.62939453e-06, 1.50001144, 4.03896783e-28, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.798612654, 0.382908493, -0.976742506, 0.486478955, 0.828752995, -0.276598603, 0.346117944, -0.473492295, -0.809942782, -0.802209854, 0.298284382, -0.517190278) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.54000938, 5.51342964e-07, 1.6918319e-13, 0.990279555, 0.13909173, 1.10008167e-13, -0.139091685, 0.990279555, 8.2600593e-14, -9.75886039e-14, -9.50350909e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.499999404, -2.0000236, 6.14590166e-17, 0.997888803, -0.064946577, 1.11021297e-16, 0.0649465844, 0.997888744, 0, 1.66533454e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.500009298, -2.00002384, -8.40476912e-17, 0.998180985, 0.060290534, -5.55106748e-17, -0.0602905415, 0.998180926, 0, 2.22044605e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}
	end
	coroutine.wrap(function()
		for i = 1, 11,.1 do
			sine = sine + 1
			local speed = .3
			FRootPart.CFrame = FRootPart.CFrame * CFrame.new(0,0,-.1)
			local table = {		
				CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0- .08 * math.cos((sine) / 5), 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-0.0595112406, 1.55331731, -0.0425721854, 0.999631822, -0.0248252042, -0.010953242, 0.0262294486, 0.987443328, 0.155781403, 0.00694842171, -0.156010598, 0.987731278) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(1.54809988, 0.041232653, 1.35168499e-08, 0.996376455, -0.0850530341, -3.41060513e-13, 0.0850530341, 0.996376455, 4.47034836e-07, 2.78823862e-08, 3.26637689e-07, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
				CFrame.new(-1.53598976, 0.0413191095, -1.86092848e-06, 0.995650649, 0.0931596532, -2.61508148e-07, -0.0931649953, 0.995651186, -1.00695124e-05, -7.49969331e-07, 1.08217946e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
				CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
				CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
			}
			FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
			FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
			FRW.C0 = clerp(FRW.C0, table[3], speed) 
			FLW.C0 = clerp(FLW.C0, table[4], speed) 
			FRH.C0 = clerp(FRH.C0, table[5], speed) 
			FLH.C0 = clerp(FLH.C0, table[6], speed) 
			moter.C0 = clerp(moter.C0, CFrame.new(0.0111980997, -1.6377027, -0.318750381, -0.0172109306, 0, -0.999851882, 0.999851882, 0, -0.0172109306, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
			swait()
		end
		for i = 0,1,.1 do
			local speed = .3
			local table = {
				CFrame.new(-0, -0, -0, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(7.62939453e-06, 1.50001144, 4.03896783e-28, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(1.6600095, -2.38418579e-06, -4.63128478e-15, 0.987662673, -0.156602472, 1.49340781e-15, 0.156602204, 0.987670064, 4.79616347e-14, 5.55111512e-16, 2.13162821e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-1.54000187, -1.44541264e-06, 1.69182539e-13, 0.990279555, 0.13909173, 1.10008167e-13, -0.139091685, 0.990279555, 8.2600593e-14, -9.75886039e-14, -9.50350909e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(0.499999404, -2.00002313, 6.14590166e-17, 0.997888803, -0.064946577, 1.11021297e-16, 0.0649465844, 0.997888744, 0, 1.66533454e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				CFrame.new(-0.500009298, -2.00002384, -8.40476912e-17, 0.998180985, 0.060290534, -5.55106748e-17, -0.0602905415, 0.998180926, 0, 2.22044605e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}
			FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
			FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
			FRW.C0 = clerp(FRW.C0, table[3], speed) 
			FLW.C0 = clerp(FLW.C0, table[4], speed) 
			FRH.C0 = clerp(FRH.C0, table[5], speed) 
			FLH.C0 = clerp(FLH.C0, table[6], speed) 
			moter.C0 = clerp(moter.C0, CFrame.new(0.0111980997, -1.6377027, -0.318750381, -0.0172109306, 0, -0.999851882, 0.999851882, 0, -0.0172109306, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
			swait()
		end
	end)()
	wait(3)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
	     CFrame.new(0, -1.61013091, -2.7208631, 1, 0, 0, 0, 0.784842849, 0.619694889, 0, -0.619694889, 0.784842849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(7.62939453e-06, 1.49995804, -3.81469727e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(1.6199764, 0.0526405573, -0.633618712, -0.825147271, -0.352566004, 0.441395015, 0.338357478, 0.317245364, 0.885929346, -0.452378333, 0.880371392, -0.142481118) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-1.48999131, 0.159032702, -0.689792395, -0.925652206, 0.121316604, 0.35839963, 0.3763749, 0.392493248, 0.839220524, -0.038858071, 0.911718965, -0.40897283) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(0.81999141, -1.66318786, 0.698954165, 0.950523973, -0.310651302, 8.76989304e-07, 0.186064735, 0.56931895, 0.800784588, -0.24876529, -0.761164725, 0.598952591) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-0.65999639, -1.66319084, 0.698958337, 0.972906768, 0.231197968, 2.30545061e-06, -0.138478845, 0.582726359, 0.800783157, 0.185138091, -0.779087663, 0.598954439) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	
	wait(2)
	for i = 0,1,.1 do
		local speed = .3
		local table = {
	    	CFrame.new(-0, -0, -0, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	    	CFrame.new(7.62939453e-06, 1.50001144, 4.03896783e-28, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	    	CFrame.new(0.798612654, 0.382908493, -0.976742506, 0.486478955, 0.828752995, -0.276598603, 0.346117944, -0.473492295, -0.809942782, -0.802209854, 0.298284382, -0.517190278) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	    	CFrame.new(-1.54000938, 5.51342964e-07, 1.6918319e-13, 0.990279555, 0.13909173, 1.10008167e-13, -0.139091685, 0.990279555, 8.2600593e-14, -9.75886039e-14, -9.50350909e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	    	CFrame.new(0.499999404, -2.0000236, 6.14590166e-17, 0.997888803, -0.064946577, 1.11021297e-16, 0.0649465844, 0.997888744, 0, 1.66533454e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	    	CFrame.new(-0.500009298, -2.00002384, -8.40476912e-17, 0.998180985, 0.060290534, -5.55106748e-17, -0.0602905415, 0.998180926, 0, 2.22044605e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}
		FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
		FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
		FRW.C0 = clerp(FRW.C0, table[3], speed) 
		FLW.C0 = clerp(FLW.C0, table[4], speed) 
		FRH.C0 = clerp(FRH.C0, table[5], speed) 
		FLH.C0 = clerp(FLH.C0, table[6], speed) 
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111980997, -1.6377027, -0.318750381, -0.0172109306, 0, -0.999851882, 0.999851882, 0, -0.0172109306, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		swait()
	end
	wait(0.5)
	for i = 0,.7,.1 do
		local speed = .3
		local table = {
			CFrame.new(-0, -0, -0, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(7.62939453e-06, 1.50001144, 4.03896783e-28, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.1415039, -0.250491381, -0.976747632, -0.180687964, 0.704339802, 0.686481893, 0.569043994, 0.644152701, -0.51113236, -0.802209973, 0.298282892, -0.517191052) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.54000938, 5.51342964e-07, 1.6918319e-13, 0.990279555, 0.13909173, 1.10008167e-13, -0.139091685, 0.990279555, 8.2600593e-14, -9.75886039e-14, -9.50350909e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.499999404, -2.0000236, 6.14590166e-17, 0.997888803, -0.064946577, 1.11021297e-16, 0.0649465844, 0.997888744, 0, 1.66533454e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.500009298, -2.00002384, -8.40476912e-17, 0.998180985, 0.060290534, -5.55106748e-17, -0.0602905415, 0.998180926, 0, 2.22044605e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}
		FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
		FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
		FRW.C0 = clerp(FRW.C0, table[3], speed) 
		FLW.C0 = clerp(FLW.C0, table[4], speed) 
		FRH.C0 = clerp(FRH.C0, table[5], speed) 
		FLH.C0 = clerp(FLH.C0, table[6], speed) 
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(90), 0, 0), 0.3)
		swait()
	end
	knife.Parent = Character
	knifweld.Parent = Character
	knifweld.Part0 = knife
	knifweld.Part1 = Torso
	knifweld.C0 = CFrame.new(-1,0,0)*CFrame.Angles(0,math.rad(90),0)
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
	     CFrame.new(0, -2.53465056, -3.14089251, 1, 0, 0, 0, -0.026162995, 0.99965775, 0, -0.99965775, -0.026162995) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(7.62939453e-06, 1.49996197, -5.48362777e-06, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(1.76997232, 0.969703615, 0.0185622945, -0.825149953, -0.564913094, 2.90976971e-07, 0.56491369, -0.825144649, -7.52694905e-06, 4.50573862e-06, -5.99585474e-06, 1.00000489) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-1.80998182, 0.310005337, -2.61630303e-05, 0.918722868, 0.394903064, 1.61788887e-06, -0.394903064, 0.918722928, -3.44775617e-06, -2.84798443e-06, 2.52947211e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(0.819993675, -1.99995661, -8.79401341e-06, 0.950523973, -0.310651302, 8.76989304e-07, 0.310651362, 0.950523973, -4.51132655e-06, 5.69038093e-07, 4.56348062e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-0.659999847, -1.99995279, -8.66005939e-06, 0.972906768, 0.231197968, 2.30545061e-06, -0.231197998, 0.972906768, -6.87874854e-06, -3.83378938e-06, 6.15976751e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	for i = 0,1,.1 do
		local speed = .3
		local table = {
			CFrame.new(-0, -0, -0, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(7.62939453e-06, 1.50001144, 4.03896783e-28, 1, 0, 5.29395592e-23, 0, 1, 0, 5.29395592e-23, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.6600095, -2.38418579e-06, -4.63128478e-15, 0.987662673, -0.156602472, 1.49340781e-15, 0.156602204, 0.987670064, 4.79616347e-14, 5.55111512e-16, 2.13162821e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.54000187, -1.44541264e-06, 1.69182539e-13, 0.990279555, 0.13909173, 1.10008167e-13, -0.139091685, 0.990279555, 8.2600593e-14, -9.75886039e-14, -9.50350909e-14, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.499999404, -2.00002313, 6.14590166e-17, 0.997888803, -0.064946577, 1.11021297e-16, 0.0649465844, 0.997888744, 0, 1.66533454e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.500009298, -2.00002384, -8.40476912e-17, 0.998180985, 0.060290534, -5.55106748e-17, -0.0602905415, 0.998180926, 0, 2.22044605e-16, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}
		FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
		FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
		FRW.C0 = clerp(FRW.C0, table[3], speed) 
		FLW.C0 = clerp(FLW.C0, table[4], speed) 
		FRH.C0 = clerp(FRH.C0, table[5], speed) 
		FLH.C0 = clerp(FLH.C0, table[6], speed) 
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(90), 0, 0), 0.3)
		swait()
	end
	wait(1)
	for i = 0,1,.1 do
		local speed = .3
		local table = {
			CFrame.new(-1.13150174e-08, -0.233643144, -0.531754971, 1, 4.6356714e-08, 1.40138434e-08, -4.84286318e-08, 0.957217097, 0.289371043, -5.41235154e-16, -0.289371043, 0.957217097) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(7.62939453e-06, 1.50000799, 0, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.52783501, 0.00880410615, -0.0600301139, 0.985311627, -0.17076619, 1.32775563e-06, 0.170766205, 0.985311747, -3.87430191e-07, -1.24797225e-06, 5.96046448e-07, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.54000914, -4.91738319e-07, -7.69009716e-07, 0.990279853, 0.139089808, -5.03203808e-07, -0.139089808, 0.990279853, -2.68220901e-07, 4.58210707e-07, 3.27825546e-07, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.500001609, -2.00094748, 0.514751852, 0.997889757, -0.0544961505, -0.0353313722, 0.0621684566, 0.95890981, 0.276820749, 0.0187938847, -0.278432727, 0.96027267) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.499998927, -1.73762023, -0.356294215, 0.998180985, 0.0602904856, -5.96745882e-16, -0.0577110909, 0.955475867, -0.289371043, -0.0174463224, 0.288844645, 0.957217097) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}
		FRootJoint.C0 = clerp(FRootJoint.C0, table[1], speed) 
		FCharacter.Torso.Neck.C0 = clerp(FCharacter.Torso.Neck.C0, table[2], speed) 
		FRW.C0 = clerp(FRW.C0, table[3], speed) 
		FLW.C0 = clerp(FLW.C0, table[4], speed) 
		FRH.C0 = clerp(FRH.C0, table[5], speed) 
		FLH.C0 = clerp(FLH.C0, table[6], speed) 
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0.25) * CFrame.Angles(math.rad(90), 0, 0), 0.3)
		swait()
	end
	wait(1)
	coroutine.wrap(function()
		FRootJoint.C0 = CFrame.new(0,0,0)
		for i = 1, 500 do
			FRootJoint.C0 = FRootJoint.C0 * CFrame.new(0,3,0)
			swait()
		end
	end)()
	wait(2)
	FCharacter:destroy()
	wait(2)
	local Fire = Instance.new("Sound",Character.Torso)
	Fire.SoundId = "rbxassetid://192104941"
	Fire.Looped = true
	Fire.Pitch = 1
	Fire.Volume = 1
	Fire.Name = "cackle cackle"
	Fire:play()
	local fire = Instance.new("ParticleEmitter", Character.Torso)
	fire.Lifetime = NumberRange.new(0.5)
	fire.Speed = NumberRange.new(1, 3)
	fire.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3.564, 2.521), NumberSequenceKeypoint.new(1, 3.534, 2.521)})
	fire.Rate = 1000
	fire.Name = "FireParticie"
	fire.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.627, 0.587), NumberSequenceKeypoint.new(1, 1)})
	fire.LightEmission = 0.6
	fire.Texture = "http://www.roblox.com/asset/?id=242911609"
	fire.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(1, 0.666667, 0))
	wait(3)
	for i = 0,4,.1 do
		RootJoint.C0 = RootJoint.C0 * CFrame.new(0,0,-.1)
		swait()
	end
	wait(5)
end
if FCharacter then
	FCharacter:destroy()
end
local s = Instance.new("Sound",Character)
s.Name = "Reanimate"
s.Volume = 5
s.Pitch = 0.66
s.Looped = true
s.SoundId = "rbxassetid://450193952"
s:Play()


local hideName = Head:Clone()
hideName.Parent = Character
hideName.Name = "Hide"

hideName.BrickColor = BrickColor.new("Really black")
hideName:FindFirstChildOfClass"Decal":destroy()
Head:FindFirstChildOfClass"Decal":destroy()
for i,v in next, Character:children() do
	if v:IsA"BasePart" and v ~= RootPart then
		v.Transparency = 0.5
		v.BrickColor = BrickColor.new"Really black"
	end
end
Head.Transparency = 1

local nametag = Instance.new("BillboardGui",Character.Head)
nametag.StudsOffset = Vector3.new(0,2,0)
nametag.Adornee = Character.Head
nametag.Size = UDim2.new(0,200,0,50)

local text = Instance.new("TextLabel",nametag)
text.Size = UDim2.new(0,200,0,50)
text.BackgroundTransparency = 1
text.Text = "The Reanimated"
text.TextColor3 = Color3.new(180/255,0,0)
text.TextStrokeColor3 = Color3.new(0,0,0)
text.Font = Enum.Font.Fantasy
text.TextScaled = true
text.TextStrokeTransparency = 0
coroutine.wrap(function()
	while wait() do
		wait(3)
		text.Text = "GIVE UP"
		wait()
		text.Text = "The Reanimated";
		wait(2)
		local str = ""
		for i = 1, math.random(3,25) do
			str = str..string.char(math.random(65,122))
		end
		text.Text = str
		wait()
		str = ""
		for i = 1, math.random(12,25) do
			str = str..string.char(math.random(48,122))
		end
		wait()
		text.Text = str
		wait()
		text.Text = "The Reanimated";
		wait(1)
		text.Text = "BE GONE THOT"
		wait()
		text.Text = "Burn in hell."
		wait()
		text.Text = "The Reanimated";
		wait(2)
		text.Text = "You made me do this.";
		wait()
		text.Text = "edgy";
		wait()
		for i = 1, math.random(12,25) do
			str = str..string.char(math.random(48,57))
		end
		text.Text = str
		wait()
		text.Text = "The Reanimated";
		wait(2)
	end
end)()
New("Weld",hideName,"Weld",{Part0=hideName,Part1=Head})
local BodyColors =  Character:FindFirstChildOfClass"BodyColors"
if BodyColors then
	BodyColors.HeadColor = BrickColor.new"Really black"
	BodyColors.TorsoColor = BrickColor.new"Really black"
	BodyColors.LeftArmColor = BrickColor.new"Really black"
	BodyColors.RightArmColor = BrickColor.new"Really black"
	BodyColors.LeftLegColor = BrickColor.new"Really black"
	BodyColors.RightLegColor = BrickColor.new"Really black"
end
local fire;
local Fire;
if Character.Torso:FindFirstChild"FireParticie" then
	fire = Character.Torso:FindFirstChild"FireParticie"
end
if Character.Torso:FindFirstChild"cackle cackle" then
	Fire = Character.Torso:FindFirstChild"cackle cackle"
end
wait(1)
for i = 0, 1, 0.1 do
	swait()
	PlayAnimationFromTable({
     CFrame.new(-0, 0, 0, 1, 2.74374239e-42, 0, -4.14784345e-43, 1, 3.94815568e-21, 0, -3.94815568e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
     CFrame.new(4.11561359e-42, 1.5, 0, 1, 2.74374239e-42, 0, 2.74374239e-42, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
     CFrame.new(1.70000088, -1.07288361e-06, -1.90953349e-22, 0.976871967, -0.213825449, 1.12325362e-22, 0.213825434, 0.976871967, 4.79021585e-25, -1.09829936e-22, 2.35504137e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
     CFrame.new(-1.68000042, 1.1920929e-06, -2.14759493e-22, 0.960208833, 0.279283047, -1.27832979e-22, -0.279283017, 0.960208833, 2.26565901e-23, 1.29073825e-22, 1.39469598e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
     CFrame.new(0.810000062, -1.99999988, 8.44388509e-23, 0.977508307, -0.210897148, 7.18926177e-24, 0.210897148, 0.977508307, 4.51306188e-23, -1.65455308e-23, -4.25998015e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
     CFrame.new(-0.760003924, -1.99999833, 8.66891997e-23, 0.958771527, 0.284177125, -5.31260585e-24, -0.284177125, 0.958771527, 4.5364475e-23, 1.79848674e-23, -4.19834551e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	}, .3, false)
end
wait(2)
for i = 1, 3 do
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, 0, 0, 1, 2.74374239e-42, 0, -4.14784345e-43, 1, 3.94815568e-21, 0, -3.94815568e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.46917455e-25, 1.5, 5.57377561e-26, 0.845658779, -9.794497e-26, -0.533723354, 6.01806207e-26, 1, -8.32027374e-26, 0.533723354, 3.71585041e-26, 0.845658779) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70000088, -1.07288361e-06, -1.90953349e-22, 0.976871967, -0.213825449, 1.12325362e-22, 0.213825434, 0.976871967, 4.79021585e-25, -1.09829936e-22, 2.35504137e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.68000042, 1.1920929e-06, -2.14759493e-22, 0.960208833, 0.279283047, -1.27832979e-22, -0.279283017, 0.960208833, 2.26565901e-23, 1.29073825e-22, 1.39469598e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.810000062, -1.99999988, 8.44388509e-23, 0.977508307, -0.210897148, 7.18926177e-24, 0.210897148, 0.977508307, 4.51306188e-23, -1.65455308e-23, -4.25998015e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.760003924, -1.99999833, 8.66891997e-23, 0.958771527, 0.284177125, -5.31260585e-24, -0.284177125, 0.958771527, 4.5364475e-23, 1.79848674e-23, -4.19834551e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	wait()
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0, 0, 0, 1, 2.74374239e-42, 0, -4.14784345e-43, 1, 3.94815568e-21, 0, -3.94815568e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.48432068e-25, 1.5, 5.99786723e-26, 0.533723056, -9.8954712e-26, 0.845658302, 8.05774083e-26, 1, 6.07864659e-26, -0.845658302, 3.99857816e-26, 0.533723056) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70000088, -1.07288361e-06, -1.90953349e-22, 0.976871967, -0.213825449, 1.12325362e-22, 0.213825434, 0.976871967, 4.79021585e-25, -1.09829936e-22, 2.35504137e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.68000042, 1.1920929e-06, -2.14759493e-22, 0.960208833, 0.279283047, -1.27832979e-22, -0.279283017, 0.960208833, 2.26565901e-23, 1.29073825e-22, 1.39469598e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.810000062, -1.99999988, 8.44388509e-23, 0.977508307, -0.210897148, 7.18926177e-24, 0.210897148, 0.977508307, 4.51306188e-23, -1.65455308e-23, -4.25998015e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.760003924, -1.99999833, 8.66891997e-23, 0.958771527, 0.284177125, -5.31260585e-24, -0.284177125, 0.958771527, 4.5364475e-23, 1.79848674e-23, -4.19834551e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
end

wait(1)
coroutine.wrap(function()
	if fire then
		for i = fire.Rate, 0, -5 do
			fire.Rate = i
			wait()
		end
		fire:destroy()
	end
	if Fire then
		Fire:Stop()
		Fire:destroy()
	end
end)()

if knife and knifweld then
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
	     CFrame.new(-0, 0, 0, 1, 2.74374239e-42, 0, -4.14784345e-43, 1, 3.94815568e-21, 0, -3.94815568e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(6.27267406e-22, 1.5, 5.14489943e-21, 1, 4.18178271e-22, -7.99910562e-22, -4.18178271e-22, 1, -3.42993309e-21, 7.99910562e-22, 3.42993309e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(1.70000088, -1.07288361e-06, -1.90953349e-22, 0.976871967, -0.213825449, 1.12325362e-22, 0.213825434, 0.976871967, 4.79021585e-25, -1.09829936e-22, 2.35504137e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-0.850000083, 0.490011454, 1.23001456, 0.713302493, -0.651785433, 0.25761947, 0.0951224491, 0.454213858, 0.885803401, -0.694377124, -0.607336044, 0.385999024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(0.810000062, -1.99999988, 8.44388509e-23, 0.977508307, -0.210897148, 7.18926177e-24, 0.210897148, 0.977508307, 4.51306188e-23, -1.65455308e-23, -4.25998015e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-0.760003924, -1.99999833, 8.66891997e-23, 0.958771527, 0.284177125, -5.31260585e-24, -0.284177125, 0.958771527, 4.5364475e-23, 1.79848674e-23, -4.19834551e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
		
	knifweld.Part1 = LeftArm;
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
	     CFrame.new(-0, 0, 0, 1, 2.74374239e-42, 0, -4.14784345e-43, 1, 3.94815568e-21, 0, -3.94815568e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(6.272668e-22, 1.49999857, 5.14489458e-21, 1, 4.18178271e-22, -7.99910562e-22, -4.18178271e-22, 1, -3.42993309e-21, 7.99910562e-22, 3.42993309e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(1.70000052, 7.74860382e-07, -1.90953299e-22, 0.976871967, -0.213825449, 1.12325362e-22, 0.213825434, 0.976871967, 4.79021585e-25, -1.09829936e-22, 2.35504137e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-1.86429644, 0.490001321, 0.353379637, 0.43522808, 0.781304598, -0.447369784, 0.0951220244, 0.454214871, 0.885799527, 0.895281255, -0.428079516, 0.123367772) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(0.810000479, -2.00000167, 8.44389392e-23, 0.977508307, -0.210897148, 7.18926177e-24, 0.210897148, 0.977508307, 4.51306188e-23, -1.65455308e-23, -4.25998015e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-0.759997129, -2.00000238, 8.66894142e-23, 0.958771527, 0.284177125, -5.31260585e-24, -0.284177125, 0.958771527, 4.5364475e-23, 1.79848674e-23, -4.19834551e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		knifweld.C0 = clerp(knifweld.C0, CFrame.new(0.719429076, -0.636934459, -0.303826034, -0.694375217, 0.0951220244, -0.713298857, -0.607333899, 0.454214871, 0.651793361, 0.385990798, 0.885799527, -0.257624656):inverse(), 0.3) 
	end
	wait(1)
	for i = 0, 0.3, 0.1 do
		swait()
		PlayAnimationFromTable({
	     CFrame.new(-0, 0, 0, 1, 2.74374239e-42, 0, -4.14784345e-43, 1, 3.94815568e-21, 0, -3.94815568e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(6.272668e-22, 1.49999857, 5.14489458e-21, 1, 4.18178271e-22, -7.99910562e-22, -4.18178271e-22, 1, -3.42993309e-21, 7.99910562e-22, 3.42993309e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(1.70000052, 7.74860382e-07, -1.90953299e-22, 0.976871967, -0.213825449, 1.12325362e-22, 0.213825434, 0.976871967, 4.79021585e-25, -1.09829936e-22, 2.35504137e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-1.6177212, 0.490001768, -0.561156034, -0.897470236, 0.424123824, -0.121104449, 0.0951220244, 0.45421502, 0.885799348, 0.4306961, 0.783458829, -0.447987944) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(0.810000479, -2.00000167, 8.44389392e-23, 0.977508307, -0.210897148, 7.18926177e-24, 0.210897148, 0.977508307, 4.51306188e-23, -1.65455308e-23, -4.25998015e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	     CFrame.new(-0.759997129, -2.00000238, 8.66894142e-23, 0.958771527, 0.284177125, -5.31260585e-24, -0.284177125, 0.958771527, 4.5364475e-23, 1.79848674e-23, -4.19834551e-23, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .7, false)
	end
	knifweld:destroy()
	knife.CanCollide = true
	knife.Velocity = Vector3.new(0,3,0) + Torso.CFrame.lookVector * 150 
	knife.Touched:connect(function(o)
		if o and o.Parent and o.Parent:FindFirstChildOfClass"Humanoid" and o.Parent ~= Character then
			o.Parent:BreakJoints()
		end
	end)	
	game:service'Debris':AddItem(knife,3)
	wait(1)
end
local spike = Instance.new("Part",Character)
spike.Size = Vector3.new(1,5,1)
spike.BrickColor = BrickColor.new"Really black"
spike.CanCollide=false
local mesh = Instance.new("SpecialMesh",spike)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.Scale = Vector3.new(0.5,0,0.5)
mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
local w = Instance.new("Weld",spike)
w.Part0 = spike;
w.Part1 = RightArm
w.C0 = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(180),0,0)
for i = 0, 5, .2 do
	mesh.Scale = Vector3.new(0.5,i,0.5)
	wait()
end
Humanoid.Name = "..?"
Humanoid.MaxHealth = 6666
wait()
Humanoid.Health = 6666
local sitting = false
RootPart.Anchored = false
Humanoid.WalkSpeed = 16


Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'n' then
		sitting = not sitting
	end
end)

Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == '\\' then
		attack = true
		for i = 0, 1, .1 do
			PlayAnimationFromTable({
         		CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         		CFrame.new(-3.12924385e-06, 1.49999845, -0.190008759, 0.830971599, -3.46708561e-07, -0.556314826, 0.432258785, 0.629496157, 0.645667791, 0.350197822, -0.777003586, 0.523093581) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         		CFrame.new(0.229988158, 0.77000308, -0.809998631, 0.526497126, 0.849815786, 0.024786748, 0.125237852, -0.0486874878, -0.990931571, -0.840902209, 0.524826705, -0.132062897) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         		CFrame.new(-1.58000278, 0.540002823, -0.709999025, 0.270906031, 0.962609172, 4.37134879e-08, -0.962609172, 0.270906031, -1.83186105e-12, -1.18440182e-08, -4.20786073e-08, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         		CFrame.new(0.729982853, -1.99999952, -3.19085629e-08, 0.986256778, -0.165219754, 4.37113883e-08, 0.165219754, 0.986256778, 0, -4.31106528e-08, 7.22198479e-09, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         		CFrame.new(-0.66998899, -1.99999726, 2.92861486e-08, 0.986263514, 0.165178567, 4.37112391e-08, -0.165178567, 0.986263514, 4.9156893e-14, -4.31107914e-08, -7.22021065e-09, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .3, false)
		end
		for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 30)) do
			if v:FindFirstChild('Torso') and v:FindFirstChildOfClass"Humanoid" then
				if v:FindFirstChildOfClass"Humanoid".Health > 0 then
					v:BreakJoints()
				end
			end
		end
		wait(3)
		attack = false
	end
end)
Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'z' then
		attack=true
		local grab = nil
		local Grabbed = false
		for i, v in pairs(FindNearestTorso(spike.CFrame.p, 5)) do
			if v:FindFirstChild('Torso') and v:FindFirstChildOfClass"Humanoid" then
				if v:FindFirstChildOfClass"Humanoid".Health > 0 then
					Grabbed = true
					grab = v
				end
			end
		end
		coroutine.wrap(function()
			if grab then
				while wait() do
					if not grab then break end
					if grab:FindFirstChild"Torso" then
						grab.Torso.CFrame = spike.CFrame * CFrame.new(0,4,0)
					end
				end
			end
		end)()
		for i = 0, 1, 0.1 do
			swait()
			PlayAnimationFromTable({
	         CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(0.929986954, 0.769999504, -0.809990883, 0.814206779, 0.580045819, 0.0247832965, 0.0966590643, -0.0933407471, -0.990931332, -0.572472274, 0.809218228, -0.132065386) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(-1.57999754, 0.0700003654, 6.90638799e-08, 0.987661004, 0.156606853, 4.37113883e-08, -0.156606853, 0.987661004, 0, -4.31720331e-08, -6.84550283e-09, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(0.729982853, -1.99999952, -3.19085629e-08, 0.986256778, -0.165219754, 4.37113883e-08, 0.165219754, 0.986256778, 0, -4.31106528e-08, 7.22198479e-09, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
	         CFrame.new(-0.66998899, -1.99999726, 2.92861486e-08, 0.986263514, 0.165178567, 4.37112391e-08, -0.165178567, 0.986263514, 4.9156893e-14, -4.31107914e-08, -7.22021065e-09, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			}, .8, false)
		end
		wait(2)
		if grab then
			grab:BreakJoints()
			grab = nil
		end
		attack = false
	end
end)

local stomps = Instance.new("Sound", Character)
stomps.SoundId = "http://www.roblox.com/asset/?id=198360408"
stomps.Looped = true
stomps.Volume = 10
local footsteps = false

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
	local RightLeg = CFrame.new(0.5,-1,0)
	local LeftLeg = CFrame.new(-0.5,-1,0)

	local lefth = (Torso.CFrame*LeftLeg)
	local righth = (Torso.CFrame*RightLeg)

	local speed = Vector3.new(Torso.Velocity.X,0,Torso.Velocity.Z)

	local TiltOnAxis = (Torso.CFrame-Torso.CFrame.p):vectorToObjectSpace(speed/100)

	local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
	local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
	
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				PlayAnimationFromTable({
		         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-0.0579944476, 1.48445117, -0.000906195492, 0.999631822, -0.0259140469, -0.00804444961, 0.0262291897, 0.998776913, 0.0419151038, 0.0069484422, -0.0421099029, 0.999089062) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(1.68067598, 0.167780995, 5.50026158e-08, 0.965881884, -0.258982956, -3.41060513e-13, 0.258982956, 0.965881884, 4.47034836e-07, 8.49010675e-08, 3.16640808e-07, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-1.67620921, 0.188169807, -3.04922651e-07, 0.95698452, 0.290146649, -2.61441073e-07, -0.290146649, 0.95698452, -1.0069979e-05, -2.89639524e-06, 1.04542296e-05, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(0.537238836, -1.93797374, 0.176598221, 0.998698533, -0.0506777391, -0.00574572897, 0.0510024093, 0.992341697, 0.112511501, -6.35704041e-08, -0.112657718, 0.993634105) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-0.536944568, -1.94808352, 0.126473114, 0.998626292, 0.0520468242, 0.00521374354, -0.0523067154, 0.993665218, 0.0995327011, -3.84102691e-07, -0.099668026, 0.995023906) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
				LH.C1 = clerp(LH.C1,CFrame.new(0,0,0),1)
				RH.C1 = clerp(RH.C1,CFrame.new(0,0,0),1)
				RW.C1 = clerp(RW.C1,CFrame.new(0,0,0),1)
				LW.C1 = clerp(LW.C1,CFrame.new(0,0,0),1)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				PlayAnimationFromTable({
		         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-0.0576509275, 1.50532985, -0.129091382, 0.999631822, -0.0231846143, -0.0140984114, 0.0262298863, 0.958684564, 0.283279002, 0.00694822101, -0.283544153, 0.958935201) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(1.68622994, 0.21415168, 7.02040666e-08, 0.881990671, -0.471266806, -3.41060513e-13, 0.471266806, 0.881990671, 4.47034836e-07, 1.54493137e-07, 2.89139166e-07, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-1.72513735, 0.240890861, 2.54038241e-07, 0.814108491, 0.58071363, -2.61430017e-07, -0.580713034, 0.814108849, -1.00698489e-05, -6.08482924e-06, 8.98058715e-06, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(0.536720514, -1.92783141, 0.223740995, 0.998698533, -0.0498600565, -0.0107376017, 0.0510031059, 0.976314366, 0.210260883, -3.04512355e-07, -0.210534185, 0.977587521) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		         CFrame.new(-0.535922825, -1.92850935, 0.222419083, 0.99863112, 0.0512506701, 0.0104565797, -0.0523065142, 0.978474379, 0.199629858, -3.7062793e-07, -0.199902818, 0.97981596) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
				LH.C1 = clerp(LH.C1,CFrame.new(0,0,0),1)
				RH.C1 = clerp(RH.C1,CFrame.new(0,0,0),1)
				RW.C1 = clerp(RW.C1,CFrame.new(0,0,0),1)
				LW.C1 = clerp(LW.C1,CFrame.new(0,0,0),1)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				if sitting then
					PlayAnimationFromTable({
			        	CFrame.new(0, -1.79429209, 1.46916926, 1, 0, 0, 0, 0.686436713, -0.72718966, 0, 0.72718966, 0.686436713) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			        	CFrame.new(0, 1.49587059, -0.388922036, 1, 0, 0, 0, 0.926760077, 0.37564832, 0, -0.37564832, 0.926760077) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			        	CFrame.new(1.57999742, 0.115062252, 0.493130147, 0.905118704, -0.402649224, -0.136505559, 0.309478283, 0.403816581, 0.860903978, -0.291519076, -0.821465731, 0.49011308) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			        	CFrame.new(-1.57999468, -0.083268106, 0.472244143, 0.913947523, 0.383825779, 0.131824896, -0.312791735, 0.45925644, 0.831411481, 0.258575737, -0.801100194, 0.539793789) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			        	CFrame.new(0.729981065, -1.6900773, -0.349870145, 0.94077301, -0.296055317, 0.165220842, 0.326471359, 0.659609675, -0.677002609, 0.0914489403, 0.690846324, 0.717195749) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			        	CFrame.new(-0.669989347, -1.66948545, -0.371685445, 0.98626411, 0.00139324146, -0.165173233, -0.11338535, 0.732872367, -0.67085284, 0.120116085, 0.68036586, 0.722963512) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					}, .3, false)
				else
					change = 1
					PlayAnimationFromTable({
			        	CFrame.new(-0, -0, 0, 1, 0, 0, 0, 1, 3.94815568e-21, 0, -3.94815568e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			        	CFrame.new(0, 1.5, 5.92223352e-21, 1, 0, 0, 0, 1, -3.94815568e-21, 0, 3.94815568e-21, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			        	CFrame.new(1.57999372, 0.0500014573, -6.90637165e-08, 0.987661004, -0.156606853, 4.37113883e-08, 0.156606853, 0.987661004, -3.94815568e-21, -4.31720331e-08, 6.84550283e-09, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) * CFrame.Angles(0, 0, 0+0.05*math.cos(sine/22)), 
			        	CFrame.new(-1.57999754, 0.0700003654, 6.90638799e-08, 0.987661004, 0.156606853, 4.37113883e-08, -0.156606853, 0.987661004, -3.94815568e-21, -4.31720331e-08, -6.84550283e-09, 1) * CFrame.new(0-0.05*math.cos(sine/22), 0, 0) * CFrame.Angles(0, 0, 0-0.05*math.cos(sine/22)), 
			        	CFrame.new(0.729982853, -1.99999952, -3.19085629e-08, 0.986256778, -0.165219754, 4.37113883e-08, 0.165219754, 0.986256778, -3.94815568e-21, -4.31106528e-08, 7.22198479e-09, 1) * CFrame.new(0+0.05*math.cos(sine/22), 0, 0) * CFrame.Angles(0, 0, 0+0.05*math.cos(sine/22)), 
			        	CFrame.new(-0.66998899, -1.99999726, 2.92861486e-08, 0.986263514, 0.165178567, 4.37112391e-08, -0.165178567, 0.986263514, 4.91568896e-14, -4.31107914e-08, -7.22021065e-09, 1) * CFrame.new(0-0.05*math.cos(sine/22), 0, 0) * CFrame.Angles(0, 0, 0-0.05*math.cos(sine/22)), 
					}, .3, false)
					LH.C1 = clerp(LH.C1,CFrame.new(0,0,0),1)
					RH.C1 = clerp(RH.C1,CFrame.new(0,0,0),1)
					RW.C1 = clerp(RW.C1,CFrame.new(0,0,0),1)
					LW.C1 = clerp(LW.C1,CFrame.new(0,0,0),1)
				end
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+RootPart.RotVelocity.Y/30, math.rad(0)+RootPart.RotVelocity.Y/30), 0.4)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+RootPart.RotVelocity.Y/30)), 0.4)
				RW.C1 = clerp(RW.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/2), -math.sin(sine/4)/4)*CFrame.Angles(math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(-10-7*math.cos(sine/2))+RootPart.RotVelocity.Y/30)), 0.4)
				LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				RH.C0 = RH.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-RootPart.RotVelocity.Y/20),0.8)
				RH.C1 = RH.C1:lerp(CFrame.new(0, 1, 0),.8)
				
				--RH.C0 = clerp(RH.C0, CFrame.new(.5, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = LH.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-RootPart.RotVelocity.Y/20),0.8)
				LH.C1 = LH.C1:lerp(CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				
				--LH.C0 = clerp(LH.C0, CFrame.new(-.5, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		end
	if Anim == "Walk" then
		stomps.Pitch = 1.1
		if stomps.Playing == false then
			stomps:Play()
		end
	elseif Anim == "Idle" then
		stomps:Stop()
	end
end