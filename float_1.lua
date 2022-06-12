script.Parent=nil

local Player, Character, Mouse  = game:service("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character, game:GetService("Players").LocalPlayer:GetMouse();
local Torso = Character:FindFirstChild("Torso")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local Humanoid = Character:FindFirstChild("Humanoid")
local Head = Character:FindFirstChild("Head")
local Right_Arm = Character:FindFirstChild("Right Arm")
local Left_Arm = Character:FindFirstChild("Left Arm")
local Right_Leg = Character:FindFirstChild("Right Leg")
local Left_Leg = Character:FindFirstChild("Left Leg")
local Right_Shoulder = Torso:FindFirstChild("Right Shoulder")
local Left_Shoulder = Torso:FindFirstChild("Left Shoulder")
local Right_Hip = Torso:FindFirstChild("Right Hip")
local Left_Hip = Torso:FindFirstChild("Left Hip")
local Neck = Torso:FindFirstChild("Neck")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local rootJoint = rootPart:FindFirstChild("RootJoint")
local CurrentIdle = "Idling1"
local Degree = 0.0175438596491228
local canremove = false
local debounce = false
_G.SongName = math.random(1,9025232)
sin = math.sin
Right_Leg.FormFactor 		= "Custom";
Left_Leg.FormFactor			= "Custom";
rootPart.Archivable 		= true;
rootJoint.Archivable 		= true;
c_new						= CFrame.new;
c_angles					= CFrame.Angles;
i_new = Instance.new
Humanoid:ClearAllChildren();
local isAttacking = false
local isSprinting = false
local Animations = false
local Angle = 0
local Axis = 0
local angleSpeed = 1
local axisSpeed = angleSpeed
local currentAnim
local levetatingheight = 3
local WalkType = "Ground"

function Sound(parent,loop,vol,id)
	local s =  Instance.new('Sound',parent)
	s.Looped = loop
	s.Volume = vol
	s.SoundId = 'rbxassetid://'..tostring(id)
	s.MaxDistance = 200
	s.EmitterSize = 25
	s:Play()
	if loop == false then
		wait(s.TimeLength)
		s:Destroy()
	end
end

Sound(Character.Head,true,0,362616899)

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z, wc0x2, wc0y2, wc0z2)
	wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z) * CFrame.Angles(wc0x2,wc0y2,wc0z2)
	return wld
end

function noOutline(part)
	Part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

local function Part(Color, Material, Transparency,Shape, Size,CanCollide,Anchored,parent,rotation)
	local partie = Instance.new("Part",parent)
	partie.BrickColor = BrickColor.new(Color)
	partie.Material = Material
	partie.Shape = Shape
	partie.Transparency = Transparency
	partie.Rotation = rotation
	partie.Size = Size
	partie.CanCollide = CanCollide
	partie.Anchored = Anchored
	return partie
end
	


function swait(num)
	if num == 0 or num == nil then
		game:GetService("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:GetService("RunService").Stepped:wait(0)
		end
	end
end

function mesh(Mesh, part, meshtype, meshid, offset, scale,color)
	local mesh = i_new(Mesh)
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		mesh.MeshId = meshid
	end
	mesh.Offset = offset
	mesh.Scale = scale
	mesh.VertexColor=color
	return mesh
end

function rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants
	return game:GetService("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end

function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5/s 
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00-m11-m22+1) 
			local recip = 0.5/s 
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
		elseif i == 1 then 
			local s = math.sqrt(m11-m22-m00+1) 
			local recip = 0.5/s 
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
		elseif i == 2 then 
			local s = math.sqrt(m22-m00-m11+1) 
			local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
		end 
	end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w*xs, w*ys, w*zs 
	local xx = x*xs 
	local xy = x*ys 
	local xz = x*zs 
	local yy = y*ys 
	local yz = y*zs 
	local zz = z*zs 
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((1-t)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta  
		else 
			startInterp = 1-t 
			finishInterp = t 
		end 
	else 
		if (1+cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((t-1)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta 
		else 
			startInterp = t-1 
			finishInterp = t 
		end 
	end 
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function clerp(a, b, t) 
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end

swait()
LA_Weld = newWeld(Torso, Left_Arm, -1.5, 0.5, 0,math.rad(0),math.rad(0),math.rad(0))
Left_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5, 0.5, 0,math.rad(0),math.rad(0),math.rad(0))
Right_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5, -1, 0,math.rad(0),math.rad(0),math.rad(0))
Left_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Left_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
RL_Weld = newWeld(Torso, Right_Leg, 0.5, -1, 0,math.rad(0),math.rad(0),math.rad(0))
Right_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Right_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
Torso_Weld = newWeld(rootPart, Torso, 0, -1, 0,math.rad(0),math.rad(0),math.rad(0))
Torso.Weld.C1 = CFrame.new(0, -1, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5, 0,math.rad(0),math.rad(0),math.rad(0))

sine = 0
change = 1
Sprinting = false
Beam = false

Mouse.KeyDown:connect(function(key)
	if key:byte() == 48 then
		Sprinting = true
	end
	
	Mouse.KeyUp:connect(function(key2)
		if key:byte() == 48 then
			Sprinting = false
		end
	end)
end)

--rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants

Mouse.Button1Down:connect(function()
	if Beam == false then
		Beam = true
		Animations = true
		local ray = rayCast(Torso.CFrame.p,(Mouse.Hit.p-Torso.CFrame.p),60,char)
		local p1 = Part(tostring(Player.Character.Torso.BrickColor),'Neon',math.random(.5,.8),'Cylinder',Vector3.new(1,1,1),false,false,Character,Right_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
	end
	
	Mouse.Button1Up:connect(function()
		if Beam == true then
			Beam = false
			Animations = false
		end
	end)
end)

game:GetService("RunService").RenderStepped:connect(function()

	if Beam == false then
		--local function Part(Color, Material, Transparency,Shape, Size, pos,CanCollide,Anchored,parent,rotation)
		local p1 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(1,1,1),false,false,Character,Right_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p1,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		--newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
		newWeld(Right_Arm,p1,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		local p2 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(1,1,1),false,false,Character,Left_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p2,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		newWeld(Left_Arm,p2,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		wait(.2)
		p1:Destroy()
		p2:Destroy()
	else
		--mesh(Mesh, part, meshtype, meshid, offset, scale,color)
		--local function Part(Color, Material, Transparency,Shape, Size, pos,CanCollide,Anchored,parent,rotation)
		local p1 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(2,2,2),false,false,Character,Right_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p1,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		--newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
		newWeld(Right_Arm,p1,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		local p2 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(2,2,2),false,false,Character,Left_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p2,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		newWeld(Left_Arm,p2,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		--function rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants
		wait(.2)
		p1:Destroy()
		p2:Destroy()
	end
	
	Angle = (Angle % 100) + angleSpeed/10
	Axis = (Axis % 100) + axisSpeed/10
	walkingMagnitude = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z).magnitude
	jumpVel = Torso.Velocity.Y
	sine = change + sine

	if(Humanoid.Jump) and jumpVel > 1 then
		currentAnim = "Jumping"
	elseif walkingMagnitude < 2 then
		currentAnim = "Idling"
	elseif isSprinting == true then
		currentAnim = "Sprinting"
	elseif walkingMagnitude > 2 then
		currentAnim = "Walking"
	elseif isAttacking == true then
		currentAnim = "Attacking"
	end

	if currentAnim == "Jumping" and Animations == false then
		angleSpeed = 2
		axisSpeed = 2
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 2, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)	
	elseif currentAnim == "Idling" and Animations == false then
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(20)+math.sin(sine/40)/5, math.rad(0), math.rad(20)+math.sin(sine/40)/5), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(20)+math.sin(sine/40)/5, math.rad(0), math.rad(-20)+(-math.sin(sine/40)/5)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(30), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1+math.sin(sine/40)/1.5, 0) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-10)+math.sin(sine/80)/5, math.rad(0), math.rad(0)), 0.15)
	elseif currentAnim == "Walking" and Animations == false then
		if Sprinting == false then
			angleSpeed = 1
			axisSpeed = 1
			Humanoid.WalkSpeed = 16
			RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(10)+math.sin(sine/40)/5), 0.15)
			LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(-10)+(-math.sin(sine/40)/5)), 0.15)
			LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
			RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
			Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1, 0) * c_angles(math.rad(-20), math.rad(0), math.sin(rootPart.RotVelocity.Y/15)/2), 0.15)
			Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0.1) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
		else
			angleSpeed = 1
			axisSpeed = 1
			Humanoid.WalkSpeed = 32
			RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(10)+math.sin(sine/40)/5), 0.15)
			LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(-10)+(-math.sin(sine/40)/5)), 0.15)
			LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
			RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
			Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1, 0) * c_angles(math.rad(-40), math.rad(0), math.sin(rootPart.RotVelocity.Y/5)/2), 0.15)
			Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0.1) * c_angles(math.rad(30), math.rad(0), math.rad(0)), 0.15)
		end
	end
	if Beam == true then
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, -.3) * c_angles(math.rad(85), math.rad(0), math.rad(-30)), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, -.3) * c_angles(math.rad(85), math.rad(0), math.rad(30)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1, 0) * c_angles(math.rad(0), math.rad(0), math.sin(rootPart.RotVelocity.Y/20)/2), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
	end
end)
Ceirios:l/script.Parent=nil

local Player, Character, Mouse  = game:service("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character, game:GetService("Players").LocalPlayer:GetMouse();
local Torso = Character:FindFirstChild("Torso")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local Humanoid = Character:FindFirstChild("Humanoid")
local Head = Character:FindFirstChild("Head")
local Right_Arm = Character:FindFirstChild("Right Arm")
local Left_Arm = Character:FindFirstChild("Left Arm")
local Right_Leg = Character:FindFirstChild("Right Leg")
local Left_Leg = Character:FindFirstChild("Left Leg")
local Right_Shoulder = Torso:FindFirstChild("Right Shoulder")
local Left_Shoulder = Torso:FindFirstChild("Left Shoulder")
local Right_Hip = Torso:FindFirstChild("Right Hip")
local Left_Hip = Torso:FindFirstChild("Left Hip")
local Neck = Torso:FindFirstChild("Neck")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local rootJoint = rootPart:FindFirstChild("RootJoint")
local CurrentIdle = "Idling1"
local Degree = 0.0175438596491228
local canremove = false
local debounce = false
_G.SongName = math.random(1,9025232)
sin = math.sin
Right_Leg.FormFactor 		= "Custom";
Left_Leg.FormFactor			= "Custom";
rootPart.Archivable 		= true;
rootJoint.Archivable 		= true;
c_new						= CFrame.new;
c_angles					= CFrame.Angles;
i_new = Instance.new
Humanoid:ClearAllChildren();
local isAttacking = false
local isSprinting = false
local Animations = false
local Angle = 0
local Axis = 0
local angleSpeed = 1
local axisSpeed = angleSpeed
local currentAnim
local levetatingheight = 3
local WalkType = "Ground"

function Sound(parent,loop,vol,id)
	local s =  Instance.new('Sound',parent)
	s.Looped = loop
	s.Volume = vol
	s.SoundId = 'rbxassetid://'..tostring(id)
	s.MaxDistance = 200
	s.EmitterSize = 25
	s:Play()
	if loop == false then
		wait(s.TimeLength)
		s:Destroy()
	end
end

Sound(Character.Head,true,0,362616899)

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z, wc0x2, wc0y2, wc0z2)
	wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z) * CFrame.Angles(wc0x2,wc0y2,wc0z2)
	return wld
end

function noOutline(part)
	Part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

local function Part(Color, Material, Transparency,Shape, Size,CanCollide,Anchored,parent,rotation)
	local partie = Instance.new("Part",parent)
	partie.BrickColor = BrickColor.new(Color)
	partie.Material = Material
	partie.Shape = Shape
	partie.Transparency = Transparency
	partie.Rotation = rotation
	partie.Size = Size
	partie.CanCollide = CanCollide
	partie.Anchored = Anchored
	return partie
end
	


function swait(num)
	if num == 0 or num == nil then
		game:GetService("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:GetService("RunService").Stepped:wait(0)
		end
	end
end

function mesh(Mesh, part, meshtype, meshid, offset, scale,color)
	local mesh = i_new(Mesh)
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		mesh.MeshId = meshid
	end
	mesh.Offset = offset
	mesh.Scale = scale
	mesh.VertexColor=color
	return mesh
end

function rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants
	return game:GetService("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end

function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5/s 
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00-m11-m22+1) 
			local recip = 0.5/s 
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
		elseif i == 1 then 
			local s = math.sqrt(m11-m22-m00+1) 
			local recip = 0.5/s 
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
		elseif i == 2 then 
			local s = math.sqrt(m22-m00-m11+1) 
			local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
		end 
	end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w*xs, w*ys, w*zs 
	local xx = x*xs 
	local xy = x*ys 
	local xz = x*zs 
	local yy = y*ys 
	local yz = y*zs 
	local zz = z*zs 
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((1-t)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta  
		else 
			startInterp = 1-t 
			finishInterp = t 
		end 
	else 
		if (1+cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((t-1)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta 
		else 
			startInterp = t-1 
			finishInterp = t 
		end 
	end 
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function clerp(a, b, t) 
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end

swait()
LA_Weld = newWeld(Torso, Left_Arm, -1.5, 0.5, 0,math.rad(0),math.rad(0),math.rad(0))
Left_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5, 0.5, 0,math.rad(0),math.rad(0),math.rad(0))
Right_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5, -1, 0,math.rad(0),math.rad(0),math.rad(0))
Left_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Left_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
RL_Weld = newWeld(Torso, Right_Leg, 0.5, -1, 0,math.rad(0),math.rad(0),math.rad(0))
Right_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Right_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
Torso_Weld = newWeld(rootPart, Torso, 0, -1, 0,math.rad(0),math.rad(0),math.rad(0))
Torso.Weld.C1 = CFrame.new(0, -1, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5, 0,math.rad(0),math.rad(0),math.rad(0))

sine = 0
change = 1
Sprinting = false
Beam = false

Mouse.KeyDown:connect(function(key)
	if key:byte() == 48 then
		Sprinting = true
	end
	
	Mouse.KeyUp:connect(function(key2)
		if key:byte() == 48 then
			Sprinting = false
		end
	end)
end)

--rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants

Mouse.Button1Down:connect(function()
	if Beam == false then
		Beam = true
		Animations = true
		local ray = rayCast(Torso.CFrame.p,(Mouse.Hit.p-Torso.CFrame.p),60,char)
		local p1 = Part(tostring(Player.Character.Torso.BrickColor),'Neon',math.random(.5,.8),'Cylinder',Vector3.new(1,1,1),false,false,Character,Right_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
	end
	
	Mouse.Button1Up:connect(function()
		if Beam == true then
			Beam = false
			Animations = false
		end
	end)
end)

game:GetService("RunService").RenderStepped:connect(function()

	if Beam == false then
		--local function Part(Color, Material, Transparency,Shape, Size, pos,CanCollide,Anchored,parent,rotation)
		local p1 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(1,1,1),false,false,Character,Right_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p1,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		--newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
		newWeld(Right_Arm,p1,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		local p2 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(1,1,1),false,false,Character,Left_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p2,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		newWeld(Left_Arm,p2,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		wait(.2)
		p1:Destroy()
		p2:Destroy()
	else
		--mesh(Mesh, part, meshtype, meshid, offset, scale,color)
		--local function Part(Color, Material, Transparency,Shape, Size, pos,CanCollide,Anchored,parent,rotation)
		local p1 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(2,2,2),false,false,Character,Right_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p1,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		--newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
		newWeld(Right_Arm,p1,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		local p2 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(2,2,2),false,false,Character,Left_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p2,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		newWeld(Left_Arm,p2,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		--function rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants
		wait(.2)
		p1:Destroy()
		p2:Destroy()
	end
	
	Angle = (Angle % 100) + angleSpeed/10
	Axis = (Axis % 100) + axisSpeed/10
	walkingMagnitude = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z).magnitude
	jumpVel = Torso.Velocity.Y
	sine = change + sine

	if(Humanoid.Jump) and jumpVel > 1 then
		currentAnim = "Jumping"
	elseif walkingMagnitude < 2 then
		currentAnim = "Idling"
	elseif isSprinting == true then
		currentAnim = "Sprinting"
	elseif walkingMagnitude > 2 then
		currentAnim = "Walking"
	elseif isAttacking == true then
		currentAnim = "Attacking"
	end

	if currentAnim == "Jumping" and Animations == false then
		angleSpeed = 2
		axisSpeed = 2
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 2, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)	
	elseif currentAnim == "Idling" and Animations == false then
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(20)+math.sin(sine/40)/5, math.rad(0), math.rad(20)+math.sin(sine/40)/5), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(20)+math.sin(sine/40)/5, math.rad(0), math.rad(-20)+(-math.sin(sine/40)/5)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(30), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1+math.sin(sine/40)/1.5, 0) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-10)+math.sin(sine/80)/5, math.rad(0), math.rad(0)), 0.15)
	elseif currentAnim == "Walking" and Animations == false then
		if Sprinting == false then
			angleSpeed = 1
			axisSpeed = 1
			Humanoid.WalkSpeed = 16
			RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(10)+math.sin(sine/40)/5), 0.15)
			LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(-10)+(-math.sin(sine/40)/5)), 0.15)
			LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
			RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
			Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1, 0) * c_angles(math.rad(-20), math.rad(0), math.sin(rootPart.RotVelocity.Y/15)/2), 0.15)
			Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0.1) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
		else
			angleSpeed = 1
			axisSpeed = 1
			Humanoid.WalkSpeed = 32
			RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(10)+math.sin(sine/40)/5), 0.15)
			LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(-10)+(-math.sin(sine/40)/5)), 0.15)
			LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
			RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
			Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1, 0) * c_angles(math.rad(-40), math.rad(0), math.sin(rootPart.RotVelocity.Y/5)/2), 0.15)
			Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0.1) * c_angles(math.rad(30), math.rad(0), math.rad(0)), 0.15)
		end
	end
	if Beam == true then
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, -.3) * c_angles(math.rad(85), math.rad(0), math.rad(-30)), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, -.3) * c_angles(math.rad(85), math.rad(0), math.rad(30)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1, 0) * c_angles(math.rad(0), math.rad(0), math.sin(rootPart.RotVelocity.Y/20)/2), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
	end
end)
Ceirios:l/script.Parent=nil

local Player, Character, Mouse  = game:service("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character, game:GetService("Players").LocalPlayer:GetMouse();
local Torso = Character:FindFirstChild("Torso")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local Humanoid = Character:FindFirstChild("Humanoid")
local Head = Character:FindFirstChild("Head")
local Right_Arm = Character:FindFirstChild("Right Arm")
local Left_Arm = Character:FindFirstChild("Left Arm")
local Right_Leg = Character:FindFirstChild("Right Leg")
local Left_Leg = Character:FindFirstChild("Left Leg")
local Right_Shoulder = Torso:FindFirstChild("Right Shoulder")
local Left_Shoulder = Torso:FindFirstChild("Left Shoulder")
local Right_Hip = Torso:FindFirstChild("Right Hip")
local Left_Hip = Torso:FindFirstChild("Left Hip")
local Neck = Torso:FindFirstChild("Neck")
local rootPart = Character:FindFirstChild("HumanoidRootPart")
local rootJoint = rootPart:FindFirstChild("RootJoint")
local CurrentIdle = "Idling1"
local Degree = 0.0175438596491228
local canremove = false
local debounce = false
_G.SongName = math.random(1,9025232)
sin = math.sin
Right_Leg.FormFactor 		= "Custom";
Left_Leg.FormFactor			= "Custom";
rootPart.Archivable 		= true;
rootJoint.Archivable 		= true;
c_new						= CFrame.new;
c_angles					= CFrame.Angles;
i_new = Instance.new
Humanoid:ClearAllChildren();
local isAttacking = false
local isSprinting = false
local Animations = false
local Angle = 0
local Axis = 0
local angleSpeed = 1
local axisSpeed = angleSpeed
local currentAnim
local levetatingheight = 3
local WalkType = "Ground"

function Sound(parent,loop,vol,id)
	local s =  Instance.new('Sound',parent)
	s.Looped = loop
	s.Volume = vol
	s.SoundId = 'rbxassetid://'..tostring(id)
	s.MaxDistance = 200
	s.EmitterSize = 25
	s:Play()
	if loop == false then
		wait(s.TimeLength)
		s:Destroy()
	end
end

Sound(Character.Head,true,0,362616899)

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z, wc0x2, wc0y2, wc0z2)
	wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z) * CFrame.Angles(wc0x2,wc0y2,wc0z2)
	return wld
end

function noOutline(part)
	Part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

local function Part(Color, Material, Transparency,Shape, Size,CanCollide,Anchored,parent,rotation)
	local partie = Instance.new("Part",parent)
	partie.BrickColor = BrickColor.new(Color)
	partie.Material = Material
	partie.Shape = Shape
	partie.Transparency = Transparency
	partie.Rotation = rotation
	partie.Size = Size
	partie.CanCollide = CanCollide
	partie.Anchored = Anchored
	return partie
end
	


function swait(num)
	if num == 0 or num == nil then
		game:GetService("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:GetService("RunService").Stepped:wait(0)
		end
	end
end

function mesh(Mesh, part, meshtype, meshid, offset, scale,color)
	local mesh = i_new(Mesh)
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		mesh.MeshId = meshid
	end
	mesh.Offset = offset
	mesh.Scale = scale
	mesh.VertexColor=color
	return mesh
end

function rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants
	return game:GetService("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end

function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5/s 
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00-m11-m22+1) 
			local recip = 0.5/s 
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
		elseif i == 1 then 
			local s = math.sqrt(m11-m22-m00+1) 
			local recip = 0.5/s 
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
		elseif i == 2 then 
			local s = math.sqrt(m22-m00-m11+1) 
			local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
		end 
	end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w*xs, w*ys, w*zs 
	local xx = x*xs 
	local xy = x*ys 
	local xz = x*zs 
	local yy = y*ys 
	local yz = y*zs 
	local zz = z*zs 
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((1-t)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta  
		else 
			startInterp = 1-t 
			finishInterp = t 
		end 
	else 
		if (1+cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((t-1)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta 
		else 
			startInterp = t-1 
			finishInterp = t 
		end 
	end 
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function clerp(a, b, t) 
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end

swait()
LA_Weld = newWeld(Torso, Left_Arm, -1.5, 0.5, 0,math.rad(0),math.rad(0),math.rad(0))
Left_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5, 0.5, 0,math.rad(0),math.rad(0),math.rad(0))
Right_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5, -1, 0,math.rad(0),math.rad(0),math.rad(0))
Left_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Left_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
RL_Weld = newWeld(Torso, Right_Leg, 0.5, -1, 0,math.rad(0),math.rad(0),math.rad(0))
Right_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Right_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
Torso_Weld = newWeld(rootPart, Torso, 0, -1, 0,math.rad(0),math.rad(0),math.rad(0))
Torso.Weld.C1 = CFrame.new(0, -1, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5, 0,math.rad(0),math.rad(0),math.rad(0))

sine = 0
change = 1
Sprinting = false
Beam = false

Mouse.KeyDown:connect(function(key)
	if key:byte() == 48 then
		Sprinting = true
	end
	
	Mouse.KeyUp:connect(function(key2)
		if key:byte() == 48 then
			Sprinting = false
		end
	end)
end)

--rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants

Mouse.Button1Down:connect(function()
	if Beam == false then
		Beam = true
		Animations = true
		local ray = rayCast(Torso.CFrame.p,(Mouse.Hit.p-Torso.CFrame.p),60,char)
		local p1 = Part(tostring(Player.Character.Torso.BrickColor),'Neon',math.random(.5,.8),'Cylinder',Vector3.new(1,1,1),false,false,Character,Right_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
	end
	
	Mouse.Button1Up:connect(function()
		if Beam == true then
			Beam = false
			Animations = false
		end
	end)
end)

game:GetService("RunService").RenderStepped:connect(function()

	if Beam == false then
		--local function Part(Color, Material, Transparency,Shape, Size, pos,CanCollide,Anchored,parent,rotation)
		local p1 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(1,1,1),false,false,Character,Right_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p1,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		--newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
		newWeld(Right_Arm,p1,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		local p2 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(1,1,1),false,false,Character,Left_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p2,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		newWeld(Left_Arm,p2,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		wait(.2)
		p1:Destroy()
		p2:Destroy()
	else
		--mesh(Mesh, part, meshtype, meshid, offset, scale,color)
		--local function Part(Color, Material, Transparency,Shape, Size, pos,CanCollide,Anchored,parent,rotation)
		local p1 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(2,2,2),false,false,Character,Right_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p1,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		--newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
		newWeld(Right_Arm,p1,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		local p2 = Part(Color3.fromRGB(252,0,84),'Neon',math.random(.5,.8),'Block',Vector3.new(2,2,2),false,false,Character,Left_Arm.Rotation+Vector3.new(math.random(45,90),math.random(45,90),math.random(45,90)))
		mesh('SpecialMesh',p2,'FileMesh','rbxassetid://514529431',Vector3.new(0,0,0),Vector3.new(p1.Size.X,p1.Size.Y,p1.Size.Z),Vector3.new(252,0,84))
		newWeld(Left_Arm,p2,0,-2+math.sin(sine/20)/3,0,math.rad(math.random(45,90)),math.rad(math.random(45,90)),math.rad(math.random(45,90)))
		--function rayCast(Pos, Dir, Max, Ignore) -- Origin Position, Direction, MaxDistance, IgnoreDescendants
		wait(.2)
		p1:Destroy()
		p2:Destroy()
	end
	
	Angle = (Angle % 100) + angleSpeed/10
	Axis = (Axis % 100) + axisSpeed/10
	walkingMagnitude = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z).magnitude
	jumpVel = Torso.Velocity.Y
	sine = change + sine

	if(Humanoid.Jump) and jumpVel > 1 then
		currentAnim = "Jumping"
	elseif walkingMagnitude < 2 then
		currentAnim = "Idling"
	elseif isSprinting == true then
		currentAnim = "Sprinting"
	elseif walkingMagnitude > 2 then
		currentAnim = "Walking"
	elseif isAttacking == true then
		currentAnim = "Attacking"
	end

	if currentAnim == "Jumping" and Animations == false then
		angleSpeed = 2
		axisSpeed = 2
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 2, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)	
	elseif currentAnim == "Idling" and Animations == false then
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(20)+math.sin(sine/40)/5, math.rad(0), math.rad(20)+math.sin(sine/40)/5), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(20)+math.sin(sine/40)/5, math.rad(0), math.rad(-20)+(-math.sin(sine/40)/5)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(30), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1+math.sin(sine/40)/1.5, 0) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-10)+math.sin(sine/80)/5, math.rad(0), math.rad(0)), 0.15)
	elseif currentAnim == "Walking" and Animations == false then
		if Sprinting == false then
			angleSpeed = 1
			axisSpeed = 1
			Humanoid.WalkSpeed = 16
			RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(10)+math.sin(sine/40)/5), 0.15)
			LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(-10)+(-math.sin(sine/40)/5)), 0.15)
			LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
			RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
			Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1, 0) * c_angles(math.rad(-20), math.rad(0), math.sin(rootPart.RotVelocity.Y/15)/2), 0.15)
			Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0.1) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
		else
			angleSpeed = 1
			axisSpeed = 1
			Humanoid.WalkSpeed = 32
			RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(10)+math.sin(sine/40)/5), 0.15)
			LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-40)+math.sin(sine/40)/5, math.rad(0), math.rad(-10)+(-math.sin(sine/40)/5)), 0.15)
			LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
			RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
			Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1, 0) * c_angles(math.rad(-40), math.rad(0), math.sin(rootPart.RotVelocity.Y/5)/2), 0.15)
			Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0.1) * c_angles(math.rad(30), math.rad(0), math.rad(0)), 0.15)
		end
	end
	if Beam == true then
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, -.3) * c_angles(math.rad(85), math.rad(0), math.rad(-30)), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, -.3) * c_angles(math.rad(85), math.rad(0), math.rad(30)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -.9, -.05) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -.7, -.3) * c_angles(math.rad(-30), math.rad(0), math.rad(0)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, 1, 0) * c_angles(math.rad(0), math.rad(0), math.sin(rootPart.RotVelocity.Y/20)/2), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
	end
end)