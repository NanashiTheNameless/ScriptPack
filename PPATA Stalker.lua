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
local UIService=game:GetService'UserInputService'
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
	s.MaxDistance=200
	s.EmitterSize=20
	s.SoundId = 'rbxassetid://'..tostring(id)
	s:Play()
	if loop == false then
		wait(s.TimeLength)
		s:Destroy()
	end
end

Sound(rootPart,true,1,146309999)

newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
	return wld
end

function noOutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

local function Part(Name,Color, Material, Transparency,Shape, Size, CFrame,CanCollide,Anchored,parent)
	local partie = i_new("Part",parent)
	partie.Name=Name
	partie.BrickColor = BrickColor.new(Color)
	partie.Material = Material
	partie.Shape = Shape
	partie.Transparency = Transparency
	partie.Size = Size
	partie.CFrame = CFrame
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

function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local mesh = i_new(Mesh)
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		mesh.MeshId = meshid
	end
	mesh.Offset = offset
	mesh.Scale = scale
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
LA_Weld = newWeld(Torso, Left_Arm, -1.5, 0.5, 0)
Left_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5, 0.5, 0)
Right_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5, -1, 0)
Left_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Left_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
RL_Weld = newWeld(Torso, Right_Leg, 0.5, -1, 0)
Right_Leg.Weld.C1 = CFrame.new(0, 1, 0) -- Right_Leg.Weld.C1 = CFrame.new(0, 1, 0.15)
Torso_Weld = newWeld(rootPart, Torso, 0, -1, 0)
Torso.Weld.C1 = CFrame.new(0, -1, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5, 0)

for i,v in pairs(Character:GetChildren()) do
	if v:IsA('Accoutrement') or v:IsA('Shirt') or v:IsA('Pants') then
		v:Destroy()
	elseif v:IsA('Part') and v.Name=='Head' then
		v.face:Destroy()
	end
end

Character['Body Colors'].HeadColor=BrickColor.new('Really black')
Character['Body Colors'].TorsoColor=BrickColor.new('Really black')
Character['Body Colors'].RightArmColor=BrickColor.new('Really black')
Character['Body Colors'].LeftArmColor=BrickColor.new('Really black')
Character['Body Colors'].RightLegColor=BrickColor.new('Really black')
Character['Body Colors'].LeftLegColor=BrickColor.new('Really black')

Humanoid.DisplayDistanceType='None'

--Part(Name,Color, Material, Transparency,Shape, Size, CFrame,CanCollide,Anchored,parent)
--newWeld(wp0, wp1, wc0x, wc0y, wc0z)
local REye=Part('REye','Royal purple','Neon',0,'Ball',Vector3.new(.1,.1,.1),CFrame.new(0,0,0),false,false,Character)
newWeld(Head,REye,.2,.225,-.5)
local REGlow=Instance.new('SurfaceLight')
REGlow.Color=Color3.fromRGB(170,85,255)
REGlow.Range=6
REGlow.Brightness=10
REGlow.Parent=REye
local Glow=Instance.new('ParticleEmitter')
Glow.Color=ColorSequence.new(Color3.fromRGB(170,85,255),Color3.fromRGB(170,85,255))
Glow.Texture='rbxassetid://242292318'
Glow.Transparency=NumberSequence.new(.9)
Glow.Size=NumberSequence.new(.225)
Glow.Acceleration=Vector3.new(45,30,0)
Glow.LockedToPart=true
Glow.Lifetime=NumberRange.new(.25,.25)
Glow.Rate=1000
Glow.EmissionDirection='Bottom'
Glow.Speed=NumberRange.new(1,1)
Glow.ZOffset=2
Glow.Parent=REye
local LEye=Part('LEye','Royal purple','Neon',0,'Ball',Vector3.new(.1,.1,.1),CFrame.new(0,0,0),false,false,Character)
newWeld(Head,LEye,-.2,.225,-.5)
local LEGlow=Instance.new('SurfaceLight')
LEGlow.Color=Color3.fromRGB(170,85,255)
LEGlow.Range=6
LEGlow.Brightness=10
LEGlow.Parent=LEye
local Glow2=Instance.new('ParticleEmitter')
Glow2.Color=ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
Glow2.Texture='rbxassetid://242292318'
Glow2.Transparency=NumberSequence.new(.988)
Glow2.Size=NumberSequence.new(5)
Glow2.LockedToPart=false
Glow2.Lifetime=NumberRange.new(.5,.5)
Glow2.Rate=1000
Glow2.EmissionDirection='Top'
Glow2.Speed=NumberRange.new(1,1)
Glow2.VelocitySpread=Vector3.new(0,0,60)
Glow2.ZOffset=1
Glow2.Parent=Torso

sine = 0
change = 1
sprint=false
local punches={
	a=false,
	b=false,
	c=false
}

UIService.InputBegan:connect(function(Input,GUIProcessed)
	if not GUIProcessed and Input.UserInputType==Enum.UserInputType.MouseButton1 then
		if punches.a==false then
			punches.a=true wait(.4) punches.a=false
		else
			punches.a=true
			print('a ',punches.a)
			if punches.b==false then
				punches.b=true wait(.4) punches.b=false
			else
				punches.b=true
				print('b ',punches.b)
				if punches.c==false then
					punches.c=true wait(.4) punches.c=false
				else
					punches.c=true
					print('c ',punches.c)
					print('a ',punches.a,'b ',punches.b,'c ',punches.c)
				end
			end
		end
	elseif not GUIProcessed and Input.KeyCode==Enum.KeyCode.LeftShift then
		sprint=true
	end
end)

UIService.InputEnded:connect(function(Input,GUIProcessed)
	if not GUIProcessed and Input.KeyCode==Enum.KeyCode.LeftShift then
		sprint=false
	end
end)

game:GetService("RunService").RenderStepped:connect(function()
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
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)	
	elseif currentAnim == "Idling" and Animations == false then
		angleSpeed = 1
		axisSpeed = 1
		change = 0.5
		RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, .5, 0) * c_angles(math.rad(45), math.rad(-3), math.rad(-10)), 0.15)
		LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(45), math.rad(5), math.rad(20)), 0.15)
		LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(85), math.rad(0), math.rad(-20)), 0.15)
		RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(85), math.rad(0), math.rad(30)), 0.15)
		Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, -2.5, 0) * c_angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
		Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)), 0.15)
	elseif currentAnim == "Walking" and Animations == false then
		if sprint==false then
			angleSpeed = 1
			axisSpeed = 1
			Humanoid.WalkSpeed = 16
			RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(0), -math.sin((rootPart.RotVelocity.X/5))/2, math.sin((-rootPart.RotVelocity.Y/5))/2), 0.15)
			LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(0), math.sin((rootPart.RotVelocity.X/5))/2, -math.sin((-rootPart.RotVelocity.Y/5))/2), 0.15)
			LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.sin(sine/2)/1.5, math.sin((rootPart.RotVelocity.Y/5))/2, -math.sin((rootPart.RotVelocity.Y/5))/2), 0.15)
			RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(-math.sin(sine/2)/1.5, -math.sin((rootPart.RotVelocity.Y/5))/2, math.sin((-rootPart.RotVelocity.Y/5))/2), 0.15)
			Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.sin((rootPart.RotVelocity.Y/30))/2), 0.15)
			Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.sin((rootPart.RotVelocity.Y/2.5))/2, math.rad(0)), 0.15)	
		else
			angleSpeed = 10
			axisSpeed = 10
			Humanoid.WalkSpeed = 60
			RA_Weld.C0		= clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(math.rad(-40)+(-math.sin(sine/20)/5), -math.sin((rootPart.RotVelocity.X/3))/2, math.sin((-rootPart.RotVelocity.Y/3))/2), 0.15)
			LA_Weld.C0		= clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(math.rad(-40)+(-math.sin(sine/20)/5), math.sin((rootPart.RotVelocity.X/3))/2, -math.sin((-rootPart.RotVelocity.Y/3))/2), 0.15)
			LL_Weld.C0		= clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.sin(sine/1)/1, math.sin((rootPart.RotVelocity.Y/3))/2, -math.sin((rootPart.RotVelocity.Y/3))/2), 0.15)
			RL_Weld.C0 		= clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(-math.sin(sine/1)/1, -math.sin((rootPart.RotVelocity.Y/3))/2, math.sin((-rootPart.RotVelocity.Y/3))/2), 0.15)
			Torso_Weld.C0 	= clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.sin((rootPart.RotVelocity.Y/15))/2), 0.15)
			Head_Weld.C0 	= clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(0), math.sin((rootPart.RotVelocity.Y/1))/2, math.rad(0)), 0.15)	
		end
	end
end)



wait(0)

local Parts = {

  game.Players.LocalPlayer.Character.Torso

}

local w = {}

for i = 2, 24 do

  Parts[i] = Instance.new("Part", game.Players.LocalPlayer.Character)

  Parts[i].BrickColor = BrickColor.Black()

  Parts[i].Material = "Granite"

  Parts[i].CanCollide = false

  Parts[i].Locked = false

  Parts[i].formFactor = "Symmetric"

  Parts[i].Size = Vector3.new(1.5, 3, 3)

  function onTouched(part)

    local h = Parts[i].Parent:findFirstChild("Humanoid")

    if h ~= nil then

      h.Health = h.Health - 0

      wait(0)

    end

  end

  Parts[i].Touched:connect(onTouched)

  Mesh = Instance.new("BlockMesh", Parts[i])

  Mesh.Name = "Mesh"

  if i > 75 then

    mult = (i - 25) / 1

  else

    mult = 0

  end

  Mesh.Scale = Vector3.new(math.abs(0.5 - (i - 0) / 50) + 0 + mult, 0.3 - (i - 0.15) / 69, 0.6)

  w[i - 1] = Instance.new("Weld", Parts[i])

  w[i - 1].Part0 = Parts[i - 1]

  w[i - 1].Part1 = Parts[i]

  w[i - 1].C0 = CFrame.new(0, 0, 0.75)

  w[i - 1].C1 = CFrame.new(0, 0, -0.75)

end

w[1].C0 = CFrame.new(0, -0.35, 0)

function Smooth(WhereTo0, Welds)

  local CR0 = CFrame.new(Welds[1].C1:toEulerAnglesXYZ()).p

  local CR1 = CFrame.new(WhereTo0).p

  local AddTo0 = (CR1 - CR0) / 6.9

  for a = 1, #Welds do

    Welds[a].C1 = Welds[a].C1 * CFrame.fromEulerAnglesXYZ(AddTo0.x, AddTo0.y, AddTo0.z)

  end

end

local scr = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)

local absx = scr.AbsoluteSize.X

local absy = scr.AbsoluteSize.Y

scr:Destroy()

local mouse = game.Players.LocalPlayer:GetMouse()

game:GetService("RunService").RenderStepped:connect(function()

  local r = CFrame.new(Vector3.new((mouse.Y - absy / 2) / absy, (mouse.X - absx / 2) / absx, 0.025)).p

  local y = r.y

  local x = r.x

  local z = r.z

  Smooth(Vector3.new(y, x, -z), w)

end)

wait(0)

local Parts = {

  game.Players.LocalPlayer.Character.Torso

}

local w = {}

for i = 2, 24 do

  Parts[i] = Instance.new("Part", game.Players.LocalPlayer.Character)

  Parts[i].BrickColor = BrickColor.Black()

  Parts[i].Material = "Granite"

  Parts[i].CanCollide = false

  Parts[i].Locked = false

  Parts[i].formFactor = "Symmetric"

  Parts[i].Size = Vector3.new(1.1, 0.9, 2.5)

  function onTouched(part)

    local h = Parts[i].Parent:findFirstChild("Humanoid")

    if h ~= nil then

      h.Health = h.Health - 0

      wait(0)

    end

  end

  Parts[i].Touched:connect(onTouched)

  Mesh = Instance.new("BlockMesh", Parts[i])

  Mesh.Name = "Mesh"

  if i > 75 then

    mult = (i - 25) / 1

  else

    mult = 0

  end

  Mesh.Scale = Vector3.new(math.abs(0.5 - (i - 0) / 50) + 0 + mult, 0.3 - (i - 0.15) / 99, 0.6)

  w[i - 1] = Instance.new("Weld", Parts[i])

  w[i - 1].Part0 = Parts[i - 1]

  w[i - 1].Part1 = Parts[i]

  w[i - 1].C0 = CFrame.new(0, 0, 0.69)

  w[i - 1].C1 = CFrame.new(0, 0, -0.69)

end

w[1].C0 = CFrame.new(0, -0.35, 0)

function Smooth(WhereTo0, Welds)

  local CR0 = CFrame.new(Welds[1].C1:toEulerAnglesXYZ()).p

  local CR1 = CFrame.new(WhereTo0).p

  local AddTo0 = (CR1 - CR0) / 6.9

  for a = 1, #Welds do

    Welds[a].C1 = Welds[a].C1 * CFrame.fromEulerAnglesXYZ(AddTo0.x, AddTo0.y, AddTo0.z)

  end

end

local scr = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)

local absx = scr.AbsoluteSize.X

local absy = scr.AbsoluteSize.Y

scr:Destroy()

local mouse = game.Players.LocalPlayer:GetMouse()

game:GetService("RunService").RenderStepped:connect(function()

  local r = CFrame.new(Vector3.new((mouse.Y - absy / 2) / absy, (mouse.X - absx / 2) / absx, 0.025)).p

  local y = r.y

  local x = r.x

  local z = r.z

  Smooth(Vector3.new(y, x, -z), w)

end)
