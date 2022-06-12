function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.CanCollide = Coll
	p.Anchored = Anch
	p.BrickColor = BrickColor.new(Col)
	p.formFactor = "Custom"
	p.Size = Vector3.new(X,Y,Z)
	p.Parent = P
	p.Locked = true
	p:BreakJoints()
	return p
end

function Weld(P0, P1, X, Y, Z, A, B, C)
	local w = Instance.new("Weld")
	w.Part0 = P0
	w.Part1 = P1
	w.C1 = CN(X, Y, Z) * CA(A, B, C)
	w.Parent = P0
	return w
end

CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge

Asset = "http://www.roblox.com/asset/?id="
Noob = nil

function MakeMotor(torso, p1, c0, c1)
	local mot = Instance.new("Motor6D")
	mot.C0 = c0
	mot.C1 = c1
	mot.Part0 = torso
	mot.Part1 = p1
	mot.Parent = torso
	return mot
end

function Set(tab)
	for _,v in pairs(tab) do
		local motor = v[1]
		local vel = v[2]
		local des = v[3]
		motor.MaxVelocity = vel
		motor.DesiredAngle = des
	end
end

function Animate(Hum, RSH, LSH, RH, LH)
	local pose = "Standing"
	local function sit()
		pose = "Seated"
	end
	local function jump()
		pose = "Jumping"
	end
	local function died()
		pose = "Dead"
	end
	local function falling()
		pose = "Falling"
	end
	local function climbing()
		pose = "Climbing"
	end
	local function run(speed)
		if speed > 0.5 then
			pose = "Running"
		else
			pose = "Standing"
		end
	end
	local function move(tiem)
		local amplitude, frequency
		if pose == "Seated" then
			Set({{RSH, 0.15, math.pi/2}, {LSH, 0.15, -math.pi/2}, {LH, 0.15, math.pi/2}, {RH, 0.15, -math.pi/2}})
			return
		end
		if pose == "Jumping" then
			Set({{RSH, 0.3, math.pi}, {LSH, 0.3, -math.pi}, {LH, 0.3, 0}, {RH, 0.3, 0}})
			return
		end
		if pose == "Falling" then
			Set({{RSH, 0.35, math.pi}, {LSH, 0.35, -math.pi}, {LH, 0.35, 0}, {RH, 0.35, 0}})
			return
		end
		local climb = 0
		if pose == "Running" then
			RSH.MaxVelocity = 0.15
			LSH.MaxVelocity = 0.15
			amplitude = 1
			frequency = 8
		elseif pose == "Climbing" then
			RSH.MaxVelocity = 0.3
			LSH.MaxVelocity = 0.3
			amplitude = 1
			frequency = 8
			climb = math.pi
		else
			amplitude = 0.1
			frequency = 1
		end
		des = amplitude * math.sin(tiem*frequency)
		RSH.DesiredAngle = des + climb
		LSH.DesiredAngle = des - climb
		RH.DesiredAngle = -des
		LH.DesiredAngle = -des
	end
	Hum.Jumping:connect(jump)
	Hum.Running:connect(run)
	Hum.Seated:connect(sit)
	Hum.Died:connect(died)
	Hum.FreeFalling:connect(falling)
	Hum.Climbing:connect(climbing)
	coroutine.resume(coroutine.create(function()
		while pose ~= "Dead" do
			local _, time = wait(0.1)
			move(time)
		end
	end))
end

function MakeNoob(pos, scale)
	local Nub = Instance.new("Model")
	Nub.Name = "Narb"
	Noob = Nub
	local Torso = Part(Nub, false, false, 0, 0, "Bright blue", 2*scale, 2*scale, 1*scale)
	Torso.Name = "Torso"
	local Head = Part(Nub, false, false, 0, 0, "Bright yellow", 2*scale, 1*scale, 1*scale)
	Head.Name = "Head"
	local Neck = MakeMotor(Torso, Head, CN(0, 1*scale, 0), CN(0, -0.5*scale, 0))
	local HeadMesh = Instance.new("SpecialMesh",Head)
	HeadMesh.Scale = V3(1.25, 1.25, 1.25)
	local Face = Instance.new("Decal",Head)
	Face.Face = "Front"
	Face.Texture = Asset..(13038247)
	local Rarm = Part(Nub, false, false, 0, 0, "Bright yellow", 1*scale, 2*scale, 1*scale)
	Rarm.Name = "Right Arm"
	local Larm = Part(Nub, false, false, 0, 0, "Bright yellow", 1*scale, 2*scale, 1*scale)
	Larm.Name = "Left Arm"
	local Rleg = Part(Nub, false, false, 0, 0, "Br. yellowish green", 1*scale, 2*scale, 1*scale)
	Rleg.Name = "Right Leg"
	local Lleg = Part(Nub, false, false, 0, 0, "Br. yellowish green", 1*scale, 2*scale, 1*scale)
	Lleg.Name = "Left Leg"
	local RSH = MakeMotor(Torso, Rarm, CN(1*scale, 0.5*scale, 0) * CA(0, MR(90), 0), CN(-0.5*scale, 0.5*scale, 0) * CA(0, MR(90), 0))
	local LSH = MakeMotor(Torso, Larm, CN(-1*scale, 0.5*scale, 0) * CA(0, MR(-90), 0), CN(0.5*scale, 0.5*scale, 0) * CA(0, MR(-90), 0))
	local RH = MakeMotor(Torso, Rleg, CN(0.5*scale, -1*scale, 0) * CA(0, MR(-90), 0), CN(0, 1*scale, 0) * CA(0, MR(-90), 0))
	local LH = MakeMotor(Torso, Lleg, CN(-0.5*scale, -1*scale, 0) * CA(0, MR(90), 0), CN(0, 1*scale, 0) * CA(0, MR(90), 0))
	local Hum = Instance.new("Humanoid")
	Hum.MaxHealth = 40+(scale*60)
	Hum.Health = 100
	Hum.Parent = Nub
	Nub.Parent = workspace
	Nub:MakeJoints()
	Nub:MoveTo(pos)
	Animate(Hum,RSH,LSH,RH,LH)
	Hum.Died:connect(function()
		wait(6)
		Nub:remove()
		wait(4)
		MakeNoob(pos, scale)
	end)
	return Nub
end
for i = 1, 11 do
local nub = MakeNoob(V3(MRA(-20, 20),10,MRA(-20, 20)), 1)
end
