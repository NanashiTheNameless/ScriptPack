--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder==]]--
--[[Not finished]]--
-------------------------
local Music = false
-------------------------
local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character
local Torso = Char["Torso"]
local Head = Char["Head"]
local Larm = Char["Left Arm"]
local Rarm = Char["Right Arm"]
local Lleg = Char["Left Leg"]
local Rleg = Char["Right Leg"]
local Humanoid = Char["Humanoid"]
local Neck = Torso["Neck"]
local LS = Torso["Left Shoulder"] 
local LH = Torso["Left Hip"] 
local RS = Torso["Right Shoulder"] 
local RH = Torso["Right Hip"] 
local Mouse = Player:GetMouse()
local root = Char.HumanoidRootPart
local cam = workspace.CurrentCamera
local HealLimit = 5
----------------------------------
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--
-------------------------
local Ter = workspace.Terrain
local Attacking = false
local flySpeed = 10
local MAX_FLY_SPEED = 500
local canFly = false
local flyToggled = false
local keysDown = {}
local rad = math.rad
local Sound = Instance.new("Sound",Char)
Sound.Volume = 0.3
Sound.Looped = false
Sound:Play()
local SoundIds = {"267979379","324976791","401059459"}
----------------------------------
local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
RW.Name="Right Shoulder"
RW.Part0=Torso 
RW.C0=cf(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0.15) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=Rarm 
RW.Parent=Torso
LW.Name="Left Shoulder"
LW.Part0=Torso
LW.C0=cf(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, -0.15) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=Larm 
LW.Parent=Torso
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
----------------------------------------------------
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--
-------------------------
--[[Morphing]]--
for i,v in pairs(Char:children()) do
    if v:IsA("Hat") or v:IsA("Pants") or v:IsA("Shirt") or v:IsA("CharacterMesh") then
        v:Destroy()
    end
end
local H = Instance.new("Hat",Char)
local P = Instance.new("Part",H)
local M = Instance.new("SpecialMesh",P)
M.MeshId = "http://www.roblox.com/asset/?id=346578029"
M.TextureId = "http://www.roblox.com/asset/?id=134207168"
P.Locked = true
H.AttachmentPos = Vector3.new(0, 0, 0)
P.formFactor = 0
P.Size = Vector3.new(2,2,2) 
P.Position = Head.Position
local cor = Instance.new("Part", Char.Hat)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = Head
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", Char.Hat)
weld1.Part0 = cor
weld1.Part1 = Char.Hat.Part
weld1.C0 = CFrame.new(0, 0.56, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
local S = Instance.new("Shirt",Char)
S.ShirtTemplate = "http://www.roblox.com/asset/?id=151958439"
local P = Instance.new("Pants",Char)
P.PantsTemplate = "http://www.roblox.com/asset/?id=119143689"
 
function clerp(a,b,t) 
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
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
------------------------------------------------------
function Particle(Part)
	local P = Instance.new("ParticleEmitter",Part)
	C = Color3.new(0,0,0)
	P.Color = ColorSequence.new(C,C)
	P.Lifetime = NumberRange.new(0.1,0.4)
	P.Size = NumberSequence.new(0.5)
	P.Speed = NumberRange.new(1)
	P.Acceleration = Vector3.new(0,-10,0)
	P.Texture = "http://www.roblox.com/asset/?id=341277531"
end
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--
-------------------------
function PT(Part,Time)
	local P = Instance.new("ParticleEmitter",Part)
	C = Color3.new(0,0,0)
	P.Color = ColorSequence.new(C,C)
	P.Lifetime = NumberRange.new(0.1,0.4)
	P.Size = NumberSequence.new(0.5)
	P.Speed = NumberRange.new(1)
	P.Acceleration = Vector3.new(0,-10,0)
	P.Texture = "http://www.roblox.com/asset/?id=341277531"
	game:GetService("Debris"):AddItem(P, Time)
end
function Heal ()
	for i,Part in pairs(Char:GetChildren()) do
		if Part:IsA("Part") then
			Particle(Part)
		end
	end
	Humanoid.Health = Humanoid.MaxHealth
end
function SetupHeal ()
	for i,Part in pairs(Char:GetChildren()) do
		if Part:IsA("Part") then
			Particle(Part)
		end
	end
	Humanoid.MaxHealth = 5000
	Humanoid.WalkSpeed = 30
	Humanoid.JumpPower = 100
	Humanoid.Health = Humanoid.MaxHealth
	wait(5)
	for i,Part in pairs(Char:GetChildren()) do
		if Part:IsA("Part") then
			if Part:findFirstChild("ParticleEmitter") then
				Part.ParticleEmitter:remove()
			end
		end
	end
end
function Destroy(hit,Damage)
	if Damage == nil then Damage = 1 end
	if hit and hit.Parent and hit.Parent:IsA("Model") and hit.Parent ~= Player.Character and hit.Parent:findFirstChild("Hit") == nil  then
		if hit.Parent:findFirstChild("Torso") then
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
			rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
			rl.Parent=hit
			local M = Instance.new("Model",hit.Parent)
			M.Name = "Hit"
			game:GetService("Debris"):AddItem(rl,.5)
			if hit.Parent:findFirstChild("Humanoid") then
				hit.Parent.Humanoid.MaxHealth = 100
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - Damage
			end
			for i,Part in pairs(hit.Parent:GetChildren()) do
				if Part:IsA("Part") then
					Part.BrickColor = BrickColor.new("Black")
					PT(Part,2)
				end
			end
			swait()
			M:remove()
		end
	end
end
function BeamHit(hit)
	if hit and hit.Parent and hit.Parent:IsA("Model") and hit.Parent ~= Player.Character and hit.Parent:findFirstChild("Hit") == nil then
		if hit.Parent:findFirstChild("Torso") then
			rl=Instance.new("BodyAngularVelocity")
			rl.P=3000
			rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
			rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
			rl.Parent=hit
			local M = Instance.new("Model",hit.Parent)
			M.Name = "Hit"
			game:GetService("Debris"):AddItem(rl,1)
			if hit.Parent:findFirstChild("Humanoid") then
				hit.Parent.Humanoid.MaxHealth = 100
				hit.Parent.Humanoid.PlatformStand = true
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 5
			end
			for i,Part in pairs(hit.Parent:GetChildren()) do
				if Part:IsA("Part") then
					PT(Part,2)
				end
			end
		end
	end
end
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--
-------------------------
function Blast ()
	Attacking = true
	for i=0,1,0.1 do
        swait()
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(190),math.rad(0),math.rad(0)),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(190),math.rad(0),math.rad(0)),.3)
    end
	for i=0,1,0.1 do
        swait()
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(190),math.rad(0),math.rad(50)),.5)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(190),math.rad(0),math.rad(-50)),.5)
    end
    swait(1)
    ypcall(function()
	    local Ball = Instance.new("Part",Char)
		Ball.Shape = 0
		Ball.CFrame = Torso.CFrame -- Starting Place
		Ball.Transparency = 0.1
		Ball.BrickColor = BrickColor.new("Black")
		Ball.Reflectance = 0.1
		Ball.Material = "Neon"
		Ball.Anchored = true
		Ball.CanCollide = false
		Ball.Size = Vector3.new(3,3,3)
		Ball.Locked = true
		Ball.Touched:connect(Destroy)
		local HB = Instance.new("Part",Char)
		HB.Name = "Ball Hitbox"
		HB.Transparency = 1
		HB.Anchored = true
		HB.CanCollide = false
		HB.Shape = 0
		HB.Size = Vector3.new(6,6,6)
		HB.Locked = true
		z = Instance.new("Sound",HB)
		z.SoundId = "rbxassetid://237035051"
		z.Volume = 1
		z.Pitch = .9
		z:Play()
		for i = 0, 260, 8 do
			wait()
			Ball.Touched:connect(Destroy)
			HB.Touched:connect(Destroy)
			Ball.CFrame = Ball.CFrame * CFrame.new(0, 0, -4.2 -(i/18)) * CFrame.Angles(0, 0, math.rad(0))-- Make The Ball Go Forward
			HB.CFrame = Ball.CFrame
			HB.Touched:connect(Destroy)
			Ball.Touched:connect(Destroy)
		end
		swait()
		Ball:remove()
		z:Stop()
		HB:remove()
		swait(1)
		for i=0,1,0.1 do
	        swait()
	        RW.C0=cf(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
	        LW.C0=cf(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, -0.15)
    	end
    	Attacking = false
	end)
end
Mouse.KeyDown:connect(function(key)
	keysDown[key] = true
	key = key:lower()
	if Attacking == false then
		if key == "q" then
			Blast()
		elseif key == "g" then
			Puddle()
		elseif key == "r" then
			Beam()
		elseif key == "y" then
			NuclearBlast()
		end
	end
	if key == "e" then
		ypcall(function()
			flyToggled = not flyToggled
			if not flyToggled then
				floatBP.Parent = nil
	            flyBV.Parent = nil
	            turnBG.Parent = nil
	            Humanoid.PlatformStand = false
			end
		end)
	elseif key == "t" then
		Boost()
	end
end)
function NuclearBlast()

end
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--
-------------------------
function Boost()
	Attacking = true
	for i=0,1,0.1 do
        swait()
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(5,100,100),.3)
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(5,-100,-100),.3)
    end
   	Head.Velocity=Torso.CFrame.lookVector*300
   	RW.C0=cf(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
   	LW.C0=cf(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, -0.15)
	Attacking = false
end
function Beam()
	Attacking = true
	for i=0,1,0.1 do
        swait()
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(5,100,-10),.3)
    end
    swait(2)
    for i=0,1,0.1 do
        swait()
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(5,250,-10),.3)
    end
    for i=0,1,0.1 do
        swait()
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(5,5,-10),.3)
    end
    for i=0,1,0.1 do
        swait()
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(5,5,10),.3)
    end
    local P = Instance.new("Part",Torso)
    P.Name = "Circle"
    P.Size = Vector3.new(0.5,0.5,0.5)
    P.Shape = 0
    P.TopSurface = "Smooth"
    P.BottomSurface = "Smooth"
    P.CFrame = Rarm.CFrame
    P.CanCollide = false
    P.Anchored = true
    P.Transparency = 0.4
    P.BrickColor = BrickColor.new("Black")
    P.Material = "Neon"
    for i=1,200 do
    	P.CFrame = Rarm.CFrame
    	swait()
		P.Size = Vector3.new(P.Size.X + 0.02,P.Size.Y + 0.02,P.Size.Z + 0.02)
    end
    P.Shape = 1
    P.Size = Vector3.new(3.5,3.5,3.5)
    P.Touched:connect(Destroy,80)
    for i=1,350 do
	    local ray = Ray.new(Rarm.CFrame.p, (Mouse.Hit.p - Rarm.CFrame.p).unit * 450)
	    local part, position = workspace:FindPartOnRay(ray, Char, false, true)
	    local distance = (Rarm.CFrame.p - position).magnitude
		P.Size = Vector3.new(P.Size.X, P.Size.Y, distance)
		P.Touched:connect(BeamHit)
		P.CFrame = CFrame.new(Rarm.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
 		P.Touched:connect(BeamHit)
 		swait()
 		if part then
 		if part.Parent then
		local humanoid = part.Parent:FindFirstChild("Humanoid")
		if not humanoid and part.Parent.Parent then
			humanoid = part.Parent.Parent:FindFirstChild("Humanoid")
		end
		if humanoid then
			if humanoid.Parent:findFirstChild("Torso") then
				rl=Instance.new("BodyAngularVelocity")
				rl.P=3000
				rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
				rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				rl.Parent = humanoid.Parent.Torso
				game:GetService("Debris"):AddItem(rl,.5)
				humanoid.MaxHealth = 100
				humanoid.Health = humanoid.Health - 5
				PT(humanoid.Parent.Torso,0.1)
			end
		end
	end
	end
    end
    for i=1,60 do
		P.Transparency = P.Transparency + 0.01
		P.Touched:connect(BeamHit)
		swait()
    end
    P:remove()
    RW.C0=cf(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0.15)
    Attacking = false
end
Mouse.KeyUp:connect(function(key)
	keysDown[key] = nil
end)
function Puddle()
	Attacking = true
	local P = Instance.new("Part",Char)
	P.Size = Vector3.new(1,0.1,1)
	P.CFrame = CFrame.new(Torso.CFrame.X,Torso.CFrame.Y - 2.7,Torso.CFrame.Z)
	P.Anchored = true
	P.BrickColor = BrickColor.new("Black")
	Instance.new("CylinderMesh",P)
	P.Name = "Puddle"
	P.CanCollide = false
	P.Touched:connect(Destroy)
	for i=1,200 do
		swait(0.1)
		P.CFrame = CFrame.new(Torso.CFrame.X,Torso.CFrame.Y - 2.7,Torso.CFrame.Z)
		P.Touched:connect(Destroy)
		P.Size = Vector3.new(P.Size.X + 0.1,P.Size.Y,P.Size.Z + 0.1)
		P.Touched:connect(Destroy)
		P.CFrame = CFrame.new(Torso.CFrame.X,Torso.CFrame.Y - 2.7,Torso.CFrame.Z)
	end
	Attacking = false
	P:Remove()
end
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--
-------------------------
function Click()
	Attacking = true
	for i=0,1,0.1 do
        swait()
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(5,100,50),.2)
    end
    for i=0,1,0.1 do
        swait()
        RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(5,-100,-550),.2)
    end
    local ray = Ray.new(Rarm.CFrame.p, (Mouse.Hit.p - Rarm.CFrame.p).unit * 300)
	local part, position = workspace:FindPartOnRay(ray, Char, false, true)
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("Really black")
	beam.FormFactor = "Custom"
	beam.Material = "Neon"
	beam.Touched:connect(Destroy)
	beam.Transparency = 0.25
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
	z = Instance.new("Sound",beam)
    z.SoundId = "rbxassetid://169380525"
    z.Pitch = 1.3
    z.Volume = 1
	local distance = (Rarm.CFrame.p - position).magnitude
	beam.Size = Vector3.new(0.3, 0.3, distance)
	beam.Touched:connect(Destroy)
	beam.CFrame = CFrame.new(Rarm.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
 	beam.Touched:connect(Destroy)
	game:GetService("Debris"):AddItem(beam, 0.2)
	if part then
		local humanoid = part.Parent:FindFirstChild("Humanoid")
		if not humanoid then
			humanoid = part.Parent.Parent:FindFirstChild("Humanoid")
		end
		if humanoid then
			if humanoid.Parent:findFirstChild("Torso") then
				rl=Instance.new("BodyAngularVelocity")
				rl.P=3000
				rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
				rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				rl.Parent = humanoid.Parent.Torso
				game:GetService("Debris"):AddItem(rl,.5)
				humanoid.MaxHealth = 100
				humanoid.Health = humanoid.Health - 80
			end
		end
	end
	beam.Touched:connect(Destroy)
	z:Play()
    Attacking = false
end
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--
-------------------------
function Click2()
	Attacking = true
	for i=0,1,0.1 do
        swait()
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(5,100,50),.2)
    end
    for i=0,1,0.1 do
        swait()
        LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(5,-100,-550),.2)
    end
    local ray = Ray.new(Larm.CFrame.p, (Mouse.Hit.p - Larm.CFrame.p).unit * 300)
	local part, position = workspace:FindPartOnRay(ray, Char, false, true)
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("Really black")
	beam.FormFactor = "Custom"
	beam.Material = "Neon"
	beam.Transparency = 0.25
	beam.Anchored = true
	beam.Locked = true
	z = Instance.new("Sound",beam)
    z.SoundId = "rbxassetid://169380525"
    z.Pitch = 1.3
    z.Volume = 1
	beam.CanCollide = false
	local distance = (Larm.CFrame.p - position).magnitude
	beam.Touched:connect(Destroy)
	beam.Size = Vector3.new(0.3, 0.3, distance)
	beam.CFrame = CFrame.new(Larm.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
 	beam.Touched:connect(Destroy)
	game:GetService("Debris"):AddItem(beam, 0.2)
	if part then
		local humanoid = part.Parent:FindFirstChild("Humanoid")
		if not humanoid then
			humanoid = part.Parent.Parent:FindFirstChild("Humanoid")
		end
		if humanoid then
			if humanoid.Parent:findFirstChild("Torso") then
				rl=Instance.new("BodyAngularVelocity")
				rl.P=3000
				rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
				rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				rl.Parent = humanoid.Parent.Torso
				game:GetService("Debris"):AddItem(rl,.5)
				humanoid.MaxHealth = 100
				humanoid.Health = humanoid.Health - 80
			end
		end
	end
	beam.Touched:connect(Destroy)
	z:Play()
    Attacking = false
end
Mouse.Button1Down:connect(function()
	if Attacking == false then
		Click2()
	end
end)
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--
-------------------------
local function updateFly()
	ypcall(function()
	        if not flyToggled then return end
	
	        lastForward = forward
	        lastSide = side
	
	        forward = 0
	        side = 0
	
	        if keysDown.w then
	                forward = forward + 1
	        end
	        if keysDown.s then
	                forward = forward - 1
	        end
	        if keysDown.a then
	                side = side - 1
	        end
	        if keysDown.d then
	                side = side + 1
	        end
	
	        canFly = (forward ~= 0 or side ~= 0)
	
	        if canFly then
	                stanceToggle = "Floating"
	                turnBG.Parent = root
	                floatBP.Parent = nil
	                flyBV.Parent = root
	
	                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
	                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
	        else
	                floatBP.position = root.Position
	                floatBP.Parent = root
	
	                flySpeed = flySpeed - 1
	                if flySpeed < 0 then flySpeed = 0 end
	        end
	
	        local camCF = cam.CoordinateFrame
	        local in_forward = canFly and forward or lastForward
	        local in_side = canFly and side or lastSide
	
	        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
	in_forward * 0.2, 0).p) - camCF.p) * flySpeed
	
	        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
	0)
end)
end
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--
-------------------------
Mouse.Button2Down:connect(function()
	if Attacking == false then
		Click()
	end
end)
game:GetService("RunService").RenderStepped:connect(function()
	if Humanoid.Health ~= Humanoid.MaxHealth and HealLimit > 0 then
		HealLimit = HealLimit - 1
		Heal()
		wait(2)
		for i,Part in pairs(Char:GetChildren()) do
			if Part:IsA("Part") then
				if Part:findFirstChild("ParticleEmitter") then
					Part.ParticleEmitter:remove()
				end
			end
		end
	end
	if flyToggled then
		Humanoid.PlatformStand = true
	end
	updateFly()
	if Sound.IsPlaying == false and Music == true then
		Soundid = SoundIds[math.random(1,#SoundIds)]
		Sound.SoundId = "http://www.roblox.com/asset/?id="..Soundid
		Sound:Play()
	end
end)
SetupHeal()
-------------------------
--[[Made by PointCoded]]--
--[[Private Script, Do Not Leek!]]--
--[[==The Darkness Wielder ==]]--
--[[Not finished]]--