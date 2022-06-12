--[[
=============================]}
//{Script: Tenebris
//{User: Citrus
=============================]}
//{Controls:              
// X - Void Hook
// F - Void Grip
// C - Implosion
// Shift - Sprint
=============================]}
//{Key combos:              
// ssw - Lock-on Strike
=============================]}
--]]

--[[This is still a WIP. Significant changes may occur.]]--

--[[PHOENIX_WEAPONRY]]--
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
cn = CFrame.new
local NeckCF = cn(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
cam=workspace.CurrentCamera
RocketTarget=nil
Targetting=false
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
local antirun = false
local mhitsounds = {"199149137","199149186","199149221","199149235","199149269","199149297"}

--[[if Humanoid:findFirstChild("Animator") then
  Humanoid:findFirstChild("Animator").Parent = Animstore
end
if Character:findFirstChild("Animate") then
  Character:findFirstChild("Animate").Parent = Animstore]]

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1



local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
local fenframe=it("Frame") 
fenframe.Parent=fengui
fenframe.BackgroundColor3=Color3.new(255,255,255) 
fenframe.BackgroundTransparency=1 
fenframe.BorderColor3=Color3.new(17,17,17) 
fenframe.Size=UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position=UDim2.new(0.4,0,0.1,0)
local fenbarmana1=it("TextLabel") 
fenbarmana1.Parent=fenframe 
fenbarmana1.Text=" " 
fenbarmana1.BackgroundTransparency=0 
fenbarmana1.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana1.SizeConstraint="RelativeXY" 
fenbarmana1.TextXAlignment="Center" 
fenbarmana1.TextYAlignment="Center" 
fenbarmana1.Position=UDim2.new(0,0,0,0)
fenbarmana1.Size=UDim2.new(4,0,0.2,0)
local fenbarmana2=it("TextLabel") 
fenbarmana2.Parent=fenframe 
fenbarmana2.Text=" " 
fenbarmana2.BackgroundTransparency=0 
fenbarmana2.BackgroundColor3=Color3.new(0.5,0,255)
fenbarmana2.SizeConstraint="RelativeXY" 
fenbarmana2.TextXAlignment="Center" 
fenbarmana2.TextYAlignment="Center" 
fenbarmana2.Position=UDim2.new(0,0,0,0)
fenbarmana2.Size=UDim2.new(4*mana/100,0,0.2,0)
local fenbarmana3=it("TextLabel") 
fenbarmana3.Parent=fenframe 
fenbarmana3.Text=" " 
fenbarmana3.BackgroundTransparency=0 
fenbarmana3.BackgroundColor3=Color3.new(Col1,Col2,Col3)
fenbarmana3.SizeConstraint="RelativeXY" 
fenbarmana3.TextXAlignment="Center" 
fenbarmana3.TextYAlignment="Center" 
fenbarmana3.Position=UDim2.new(0,0,0,0)
fenbarmana3.Size=UDim2.new(0,0,0.2,0)
local fenbarmana4=it("TextLabel") 
fenbarmana4.Parent=fenframe 
fenbarmana4.Text="Loading interface"
fenbarmana4.BackgroundTransparency=1 
fenbarmana4.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana4.SizeConstraint="RelativeXY" 
fenbarmana4.TextXAlignment="Center" 
fenbarmana4.TextYAlignment="Center" 
fenbarmana4.Position=UDim2.new(0,0,-0.3,0)
fenbarmana4.Size=UDim2.new(4,0,0.2,0)
fenbarmana4.FontSize="Size9"
fenbarmana4.TextStrokeTransparency=0
fenbarmana4.TextColor=BrickColor.new("White")

local donum=0

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 

function part2(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
	local fp = Instance.new("Part")
		fp.formFactor = formfactor
		fp.Parent = parent
		fp.Reflectance = reflectance
		fp.Transparency = transparency
		fp.CanCollide = false
		fp.Locked = true
		fp.BrickColor = BrickColor.new(tostring(brickcolor))
		fp.Name = name
		fp.Size = size
		fp.Position = Character.Torso.Position
		fp.Material = material
	
	NoOutline(fp)
	return fp
end
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
mesh.MeshId=meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end

function weld2(parent, part0, part1, c0, c1)
	local Weld = Instance.new("Weld")
		Weld.Parent = parent
		Weld.Part0 = part0
		Weld.Part1 = part1
		Weld.C0 = c0
		Weld.C1 = c1
	
	return Weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = true
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
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 



Damagefunc2 = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
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
		if h.MaxHealth >= math.huge then
			hit:BreakJoints()
		end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
		local c = Instance.new("ObjectValue")
			c.Name = "creator"
			c.Value = game:service("Players").LocalPlayer
			c.Parent = h
		
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			so(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
--                h:TakeDamage(Damage)
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
--                h:TakeDamage(Damage)
			h.Health = h.Health - Damage
			if Damage ~= 0 then
			ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
			end
		else
			h.Health = h.Health - (Damage / 2)
			if Damage ~=0 then
			ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
			end
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Instance.new("BodyVelocity")
				bodvol.velocity = angle * knockback
				bodvol.P = 5000
				bodvol.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
				bodvol.Parent = hit
			
			local rl = Instance.new("BodyAngularVelocity")
				rl.P = 3000
				rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
				rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
				rl.Parent = hit
			
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Plat" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(2)
				HHumanoid.PlatformStand = false
			end), hum)

			local rl = Instance.new("BodyAngularVelocity")
				rl.P = 3000
				rl.maxTorque = Vector3.new(100, 100, 100) * 500
				rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
				rl.Parent = hit
				
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Instance.new("BodyVelocity")
				vp.P = 500
				vp.maxForce = Vector3.new(math.huge, 0, math.huge)
				vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
			
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Instance.new("BodyVelocity")
				bodyVelocity.velocity = vt(0, 20, 0)
				bodyVelocity.P = 5000
				bodyVelocity.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
				bodyVelocity.Parent = hit
			
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "Snare" then
			local bp = Instance.new("BodyPosition")
				bp.P = 2000
				bp.D = 100
				bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				bp.position = hit.Parent.Torso.Position
				bp.Parent = hit.Parent.Torso
			
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Instance.new("BodyPosition")
				BodPos.P = 50000
				BodPos.D = 1000
				BodPos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodPos.position = hit.Parent.Torso.Position
				BodPos.Parent = hit.Parent.Torso
			
			local BodGy = Instance.new("BodyGyro") 
				BodGy.maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge 
				BodGy.P = 20e+003
				BodGy.Parent = hit.Parent.Torso
				BodGy.cframe = hit.Parent.Torso.CFrame
			
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Instance.new("BoolValue")
			debounce.Name = "DebounceHit"
			debounce.Parent = hit.Parent
			debounce.Value = true
		
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage2(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part2("Custom", workspace, "Neon", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
		BillboardGui.Size = UDim2.new(3, 0, 3, 0)
		BillboardGui.Adornee = EffectPart
		BillboardGui.Parent = EffectPart
	
	local TextLabel = Instance.new("TextLabel")
		TextLabel.BackgroundTransparency = 1
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = Text
		TextLabel.TextColor3 = Color
		TextLabel.TextScaled = true
		TextLabel.Font = Enum.Font.ArialBold
		TextLabel.Parent = BillboardGui
	
	game.Debris:AddItem(EffectPart, (Time + 0.1))
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

function BlastEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2)
	local prt = part2(3, workspace, "Neon", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	coroutine.resume(coroutine.create(function() 
		for i = 0, 1, 0.05 do
			wait()
			prt.Transparency = i
			msh.Scale = msh.Scale + vt(x2, y2, z2)
		end
		prt.Parent = nil
	end))
end

function weld(parent, part0, part1, c0, c1)
	local Weld = Instance.new("Weld")
		Weld.Parent = parent
		Weld.Part0 = part0
		Weld.Part1 = part1
		Weld.C0 = c0
		Weld.C1 = c1
	
	return Weld
end

function MagniDamage(Hit, Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then 
				--	Damagefunc2(Hit, head, mindam, maxdam, knock, Type, RootPart, .2, 1, 3)
					Damagefunc2(head, head, mindam, maxdam, knock, Type, RootPart, .2, 1, 3)
				end
			end
		end
	end
end

function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part2(3, workspace, "Neon", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			swait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

	user=game:service'Players'.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	tenebris=Instance.new('Model',char)
	game:service'Lighting'.Outlines=false
	tenebris.Name = "Tenebris"
	
-----------------------------------------

local poweremitter = Instance.new("ParticleEmitter", game.Players.LocalPlayer.Character.Torso)
poweremitter.ZOffset = 1
poweremitter.Lifetime = NumberRange.new(0.5)
poweremitter.Speed = NumberRange.new(0)
poweremitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 10), NumberSequenceKeypoint.new(1, 10)})
poweremitter.Acceleration = Vector3.new(0, 50, 0)
poweremitter.Rate = 200
poweremitter.Rotation = NumberRange.new(100)
poweremitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 0.9)})
poweremitter.LightEmission = 0.95
poweremitter.Color = ColorSequence.new(Color3.new(0.0745098, 0.0117647, 0.164706), Color3.new(0.0745098, 0.0117647, 0.164706))
poweremitter.Enabled = false
poweremitter.LockedToPart = true

    ds = Instance.new("Sound",Torso)
    ds.SoundId = "http://roblox.com/asset/?id=149560784"
    ds.Pitch = 0.3
    ds.Volume = 0.4
	ds.Looped = true
	ds.Playing = false

  
coroutine.resume(coroutine.create(function()
	while wait() do
		if mana>100 then
			poweremitter.Enabled = true
			ds.Playing = true
		elseif mana<= 99 then
			poweremitter.Enabled = false	
			ds.Playing = false
		end
	end
end))



local basering = Instance.new("Part", tenebris)
basering.FormFactor = Enum.FormFactor.Symmetric
basering.CanCollide = false
basering.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
basering.TopSurface = Enum.SurfaceType.SmoothNoOutlines
basering.Reflectance = 0.2
basering.Material = Enum.Material.Neon
basering.Size = Vector3.new(0.4, 0.42, 0.6)
basering.Name = "basering"
basering.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
basering.CFrame = CFrame.new(-44.767, 14.757, -113) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
basering.RightSurface = Enum.SurfaceType.SmoothNoOutlines
basering.BackSurface = Enum.SurfaceType.SmoothNoOutlines
basering.BrickColor = BrickColor.new("Royal purple")
basering.Friction = 0.3
basering.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_3 = Instance.new("SpecialMesh", basering)
mesh_3.Scale = Vector3.new(1.1, 0.5, 1.1)

local spikeconnector = Instance.new("WedgePart", tenebris)
spikeconnector.CanCollide = false
spikeconnector.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
spikeconnector.TopSurface = Enum.SurfaceType.SmoothNoOutlines
spikeconnector.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
spikeconnector.Friction = 0.3
spikeconnector.Material = Enum.Material.SmoothPlastic
spikeconnector.Size = Vector3.new(0.3, 0.54, 0.54)
spikeconnector.BackSurface = Enum.SurfaceType.SmoothNoOutlines
spikeconnector.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
spikeconnector.Name = "spikeconnector"
spikeconnector.RightSurface = Enum.SurfaceType.SmoothNoOutlines
spikeconnector.CFrame = CFrame.new(-50.027, 15.107, -113) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)
spikeconnector.BrickColor = BrickColor.new("Really black")

local weld = Instance.new("ManualWeld", spikeconnector)
weld.Part1 = basering
weld.Name = "Weld"
weld.C1 = CFrame.new(0, 5.26, 0.35) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld.Part0 = spikeconnector
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)

local handle = Instance.new("Part", tenebris)
handle.CanCollide = false
handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
handle.TopSurface = Enum.SurfaceType.SmoothNoOutlines
handle.Material = Enum.Material.SmoothPlastic
handle.Size = Vector3.new(5, 0.2, 0.2)
handle.Name = "handle"
handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
handle.CFrame = CFrame.new(-47.027, 14.757, -113) * CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
handle.BrickColor = BrickColor.new("Really black")
handle.Friction = 0.3
handle.Shape = Enum.PartType.Cylinder
handle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_2 = Instance.new("ManualWeld", handle)
weld_2.Part1 = basering
weld_2.Name = "Weld"
weld_2.C1 = CFrame.new(0, 2.26, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_2.Part0 = handle
weld_2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)

local light6 = Instance.new("Part", tenebris)
light6.FormFactor = Enum.FormFactor.Custom
light6.CanCollide = false
light6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
light6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
light6.Material = Enum.Material.Neon
light6.Size = Vector3.new(0.2, 0.2, 0.2)
light6.Name = "light6"
light6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
light6.CFrame = CFrame.new(-49.651, 14.467, -113.07) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
light6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
light6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
light6.BrickColor = BrickColor.new("Dark indigo")
light6.Friction = 0.3
light6.Shape = Enum.PartType.Ball
light6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_3 = Instance.new("ManualWeld", light6)
weld_3.Part1 = basering
weld_3.Name = "Weld"
weld_3.C1 = CFrame.new(0.07, 4.884, -0.29) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_3.Part0 = light6
weld_3.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local bigspike = Instance.new("WedgePart", tenebris)
bigspike.FormFactor = Enum.FormFactor.Symmetric
bigspike.CanCollide = false
bigspike.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
bigspike.TopSurface = Enum.SurfaceType.SmoothNoOutlines
bigspike.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
bigspike.Friction = 0.3
bigspike.Material = Enum.Material.SmoothPlastic
bigspike.Size = Vector3.new(0.3, 2, 0.9)
bigspike.BackSurface = Enum.SurfaceType.SmoothNoOutlines
bigspike.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
bigspike.Name = "bigspike"
bigspike.RightSurface = Enum.SurfaceType.SmoothNoOutlines
bigspike.CFrame = CFrame.new(-50.757, 14.387, -113) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
bigspike.BrickColor = BrickColor.new("Really black")

local weld_4 = Instance.new("ManualWeld", bigspike)
weld_4.Part1 = basering
weld_4.Name = "Weld"
weld_4.C1 = CFrame.new(0, 5.99, -0.37) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_4.Part0 = bigspike
weld_4.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local smallspike = Instance.new("WedgePart", tenebris)
smallspike.CanCollide = false
smallspike.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
smallspike.TopSurface = Enum.SurfaceType.SmoothNoOutlines
smallspike.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
smallspike.Friction = 0.3
smallspike.Material = Enum.Material.SmoothPlastic
smallspike.Size = Vector3.new(0.3, 1.04, 0.2)
smallspike.BackSurface = Enum.SurfaceType.SmoothNoOutlines
smallspike.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
smallspike.Name = "smallspike"
smallspike.RightSurface = Enum.SurfaceType.SmoothNoOutlines
smallspike.CFrame = CFrame.new(-50.277, 15.477, -113) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)
smallspike.BrickColor = BrickColor.new("Really black")

local weld_5 = Instance.new("ManualWeld", smallspike)
weld_5.Part1 = basering
weld_5.Name = "Weld"
weld_5.C1 = CFrame.new(0, 5.51, 0.72) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_5.Part0 = smallspike
weld_5.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)

local light4 = Instance.new("Part", tenebris)
light4.FormFactor = Enum.FormFactor.Custom
light4.CanCollide = false
light4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
light4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
light4.Material = Enum.Material.Neon
light4.Size = Vector3.new(0.2, 0.2, 0.2)
light4.Name = "light4"
light4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
light4.CFrame = CFrame.new(-49.654, 15.027, -113.07) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
light4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
light4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
light4.BrickColor = BrickColor.new("Dark indigo")
light4.Friction = 0.3
light4.Shape = Enum.PartType.Ball
light4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_6 = Instance.new("ManualWeld", light4)
weld_6.Part1 = basering
weld_6.Name = "Weld"
weld_6.C1 = CFrame.new(0.07, 4.887, 0.27) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_6.Part0 = light4
weld_6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local biglightholder = Instance.new("Part", tenebris)
biglightholder.FormFactor = Enum.FormFactor.Symmetric
biglightholder.CanCollide = false
biglightholder.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
biglightholder.TopSurface = Enum.SurfaceType.SmoothNoOutlines
biglightholder.Reflectance = 0.2
biglightholder.Material = Enum.Material.Marble
biglightholder.Size = Vector3.new(0.4, 0.8, 0.6)
biglightholder.Name = "biglightholder"
biglightholder.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
biglightholder.CFrame = CFrame.new(-50.027, 14.357, -113) * CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)
biglightholder.RightSurface = Enum.SurfaceType.SmoothNoOutlines
biglightholder.BackSurface = Enum.SurfaceType.SmoothNoOutlines
biglightholder.BrickColor = BrickColor.new("Royal purple")
biglightholder.Friction = 0.3
biglightholder.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh = Instance.new("SpecialMesh", biglightholder)
mesh.Scale = Vector3.new(1.1, 0.5, 1.1)

local weld_7 = Instance.new("ManualWeld", biglightholder)
weld_7.Part1 = basering
weld_7.Name = "Weld"
weld_7.C1 = CFrame.new(0, 5.26, -0.4) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_7.Part0 = biglightholder
weld_7.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.5707963705063, 0, -3.1415927410126)

local bladesupport = Instance.new("Part", tenebris)
bladesupport.CanCollide = false
bladesupport.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
bladesupport.TopSurface = Enum.SurfaceType.SmoothNoOutlines
bladesupport.Material = Enum.Material.SmoothPlastic
bladesupport.Size = Vector3.new(1.64, 0.3, 0.3)
bladesupport.Name = "bladesupport"
bladesupport.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
bladesupport.CFrame = CFrame.new(-49.507, 14.757, -113) * CFrame.Angles(-0, -0.78539830446243, -1.5707963705063)
bladesupport.RightSurface = Enum.SurfaceType.SmoothNoOutlines
bladesupport.BackSurface = Enum.SurfaceType.SmoothNoOutlines
bladesupport.BrickColor = BrickColor.new("Really black")
bladesupport.Friction = 0.3
bladesupport.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_8 = Instance.new("ManualWeld", bladesupport)
weld_8.Part1 = basering
weld_8.Name = "Weld"
weld_8.C1 = CFrame.new(0, 4.74, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_8.Part0 = bladesupport
weld_8.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0.78539818525314, 0, 1.5707963705063)

local lightholder = Instance.new("Part", tenebris)
lightholder.CanCollide = false
lightholder.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
lightholder.TopSurface = Enum.SurfaceType.SmoothNoOutlines
lightholder.Material = Enum.Material.SmoothPlastic
lightholder.Size = Vector3.new(1.64, 0.23, 0.3)
lightholder.Name = "lightholder"
lightholder.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
lightholder.CFrame = CFrame.new(-49.642, 14.757, -113) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
lightholder.RightSurface = Enum.SurfaceType.SmoothNoOutlines
lightholder.BackSurface = Enum.SurfaceType.SmoothNoOutlines
lightholder.BrickColor = BrickColor.new("Really black")
lightholder.Friction = 0.3
lightholder.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_9 = Instance.new("ManualWeld", lightholder)
weld_9.Part1 = basering
weld_9.Name = "Weld"
weld_9.C1 = CFrame.new(0, 4.875, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_9.Part0 = lightholder
weld_9.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)

local light1 = Instance.new("Part", tenebris)
light1.FormFactor = Enum.FormFactor.Custom
light1.CanCollide = false
light1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
light1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
light1.Material = Enum.Material.Neon
light1.Size = Vector3.new(0.2, 0.2, 0.2)
light1.Name = "light1"
light1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
light1.CFrame = CFrame.new(-49.651, 15.027, -112.93) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
light1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
light1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
light1.BrickColor = BrickColor.new("Dark indigo")
light1.Friction = 0.3
light1.Shape = Enum.PartType.Ball
light1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_10 = Instance.new("ManualWeld", light1)
weld_10.Part1 = basering
weld_10.Name = "Weld"
weld_10.C1 = CFrame.new(-0.07, 4.884, 0.27) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_10.Part0 = light1
weld_10.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local biglight1 = Instance.new("Part", tenebris)
biglight1.FormFactor = Enum.FormFactor.Custom
biglight1.CanCollide = false
biglight1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
biglight1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
biglight1.Material = Enum.Material.Neon
biglight1.Size = Vector3.new(0.2, 0.2, 0.2)
biglight1.Name = "biglight1"
biglight1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
biglight1.CFrame = CFrame.new(-50.037, 14.357, -112.87) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
biglight1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
biglight1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
biglight1.BrickColor = BrickColor.new("Institutional white")
biglight1.Friction = 0.3
biglight1.Shape = Enum.PartType.Ball
biglight1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local pointlight = Instance.new("PointLight", biglight1)
pointlight.Color = Color3.new(0.580392, 0.0666667, 1)

local weld_11 = Instance.new("ManualWeld", biglight1)
weld_11.Part1 = basering
weld_11.Name = "Weld"
weld_11.C1 = CFrame.new(-0.13, 5.27, -0.4) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_11.Part0 = biglight1
weld_11.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local light2 = Instance.new("Part", tenebris)
light2.FormFactor = Enum.FormFactor.Custom
light2.CanCollide = false
light2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
light2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
light2.Material = Enum.Material.Neon
light2.Size = Vector3.new(0.2, 0.2, 0.2)
light2.Name = "light2"
light2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
light2.CFrame = CFrame.new(-49.647, 14.747, -112.93) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
light2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
light2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
light2.BrickColor = BrickColor.new("Dark indigo")
light2.Friction = 0.3
light2.Shape = Enum.PartType.Ball
light2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_12 = Instance.new("ManualWeld", light2)
weld_12.Part1 = basering
weld_12.Name = "Weld"
weld_12.C1 = CFrame.new(-0.07, 4.88, -0.01) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_12.Part0 = light2
weld_12.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local light3 = Instance.new("Part", tenebris)
light3.FormFactor = Enum.FormFactor.Custom
light3.CanCollide = false
light3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
light3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
light3.Material = Enum.Material.Neon
light3.Size = Vector3.new(0.2, 0.2, 0.2)
light3.Name = "light3"
light3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
light3.CFrame = CFrame.new(-49.647, 14.467, -112.93) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
light3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
light3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
light3.BrickColor = BrickColor.new("Dark indigo")
light3.Friction = 0.3
light3.Shape = Enum.PartType.Ball
light3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_13 = Instance.new("ManualWeld", light3)
weld_13.Part1 = basering
weld_13.Name = "Weld"
weld_13.C1 = CFrame.new(-0.07, 4.88, -0.29) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_13.Part0 = light3
weld_13.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local biglight2 = Instance.new("Part", tenebris)
biglight2.FormFactor = Enum.FormFactor.Custom
biglight2.CanCollide = false
biglight2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
biglight2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
biglight2.Material = Enum.Material.Neon
biglight2.Size = Vector3.new(0.2, 0.2, 0.2)
biglight2.Name = "biglight2"
biglight2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
biglight2.CFrame = CFrame.new(-50.032, 14.357, -113.13) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
biglight2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
biglight2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
biglight2.BrickColor = BrickColor.new("Institutional white")
biglight2.Friction = 0.3
biglight2.Shape = Enum.PartType.Ball
biglight2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_14 = Instance.new("ManualWeld", biglight2)
weld_14.Part1 = basering
weld_14.Name = "Weld"
weld_14.C1 = CFrame.new(0.13, 5.265, -0.4) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_14.Part0 = biglight2
weld_14.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local light5 = Instance.new("Part", tenebris)
light5.FormFactor = Enum.FormFactor.Custom
light5.CanCollide = false
light5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
light5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
light5.Material = Enum.Material.Neon
light5.Size = Vector3.new(0.2, 0.2, 0.2)
light5.Name = "light5"
light5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
light5.CFrame = CFrame.new(-49.651, 14.747, -113.07) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
light5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
light5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
light5.BrickColor = BrickColor.new("Dark indigo")
light5.Friction = 0.3
light5.Shape = Enum.PartType.Ball
light5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_15 = Instance.new("ManualWeld", light5)
weld_15.Part1 = basering
weld_15.Name = "Weld"
weld_15.C1 = CFrame.new(0.07, 4.884, -0.01) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_15.Part0 = light5
weld_15.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local diamond = Instance.new("Part", tenebris)
diamond.CanCollide = false
diamond.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
diamond.TopSurface = Enum.SurfaceType.SmoothNoOutlines
diamond.Material = Enum.Material.SmoothPlastic
diamond.Size = Vector3.new(0.29, 0.3, 0.3)
diamond.Name = "diamond"
diamond.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
diamond.CFrame = CFrame.new(-49.329, 14.762, -113) * CFrame.Angles(0.0028290436603129, 0.61778599023819, 2.3512909412384)
diamond.RightSurface = Enum.SurfaceType.SmoothNoOutlines
diamond.BackSurface = Enum.SurfaceType.SmoothNoOutlines
diamond.BrickColor = BrickColor.new("Really black")
diamond.Friction = 0.3
diamond.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_16 = Instance.new("ManualWeld", diamond)
weld_16.Part1 = basering
weld_16.Name = "Weld"
weld_16.C1 = CFrame.new(0, 4.562, 0.005) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_16.Part0 = diamond
weld_16.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0.46561834216118, 0.42198696732521, -2.2507123947144)

local topring = Instance.new("Part", tenebris)
topring.FormFactor = Enum.FormFactor.Symmetric
topring.CanCollide = false
topring.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
topring.TopSurface = Enum.SurfaceType.SmoothNoOutlines
topring.Reflectance = 0.2
topring.Material = Enum.Material.Neon
topring.Size = Vector3.new(0.4, 0.36, 0.6)
topring.Name = "topring"
topring.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
topring.CFrame = CFrame.new(-49.057, 14.757, -113) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
topring.RightSurface = Enum.SurfaceType.SmoothNoOutlines
topring.BackSurface = Enum.SurfaceType.SmoothNoOutlines
topring.BrickColor = BrickColor.new("Royal purple")
topring.Friction = 0.3
topring.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_2 = Instance.new("SpecialMesh", topring)
mesh_2.Scale = Vector3.new(1.1, 0.5, 1.1)

local weld_17 = Instance.new("ManualWeld", topring)
weld_17.Part1 = basering
weld_17.Name = "Weld"
weld_17.C1 = CFrame.new(0, 4.29, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_17.Part0 = topring
weld_17.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local staffbase = Instance.new("Part", tenebris)
staffbase.CanCollide = false
staffbase.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
staffbase.TopSurface = Enum.SurfaceType.SmoothNoOutlines
staffbase.Material = Enum.Material.SmoothPlastic
staffbase.Size = Vector3.new(0.29, 0.29, 0.29)
staffbase.Name = "staffbase"
staffbase.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
staffbase.CFrame = CFrame.new(-44.551, 14.762, -113) * CFrame.Angles(0.0028290436603129, 0.61778599023819, 2.3512909412384)
staffbase.RightSurface = Enum.SurfaceType.SmoothNoOutlines
staffbase.BackSurface = Enum.SurfaceType.SmoothNoOutlines
staffbase.BrickColor = BrickColor.new("Really black")
staffbase.Friction = 0.3
staffbase.Shape = Enum.PartType.Ball
staffbase.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_18 = Instance.new("ManualWeld", staffbase)
weld_18.Part1 = basering
weld_18.Name = "Weld"
weld_18.C1 = CFrame.new(0, -0.216, 0.005) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_18.Part0 = staffbase
weld_18.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0.46561834216118, 0.42198696732521, -2.2507123947144)

local staffbaseorb = Instance.new("Part", tenebris)
staffbaseorb.FormFactor = Enum.FormFactor.Custom
staffbaseorb.CanCollide = false
staffbaseorb.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
staffbaseorb.Transparency = 0.19
staffbaseorb.TopSurface = Enum.SurfaceType.SmoothNoOutlines
staffbaseorb.Material = Enum.Material.Neon
staffbaseorb.Size = Vector3.new(0.6, 0.6, 0.6)
staffbaseorb.Name = "staffbaseorb"
staffbaseorb.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
staffbaseorb.CFrame = CFrame.new(-44.543, 14.757, -113) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
staffbaseorb.RightSurface = Enum.SurfaceType.SmoothNoOutlines
staffbaseorb.BackSurface = Enum.SurfaceType.SmoothNoOutlines
staffbaseorb.BrickColor = BrickColor.new("Dark indigo")
staffbaseorb.Friction = 0.3
staffbaseorb.Shape = Enum.PartType.Ball
staffbaseorb.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_19 = Instance.new("ManualWeld", staffbaseorb)
weld_19.Part1 = basering
weld_19.Name = "Weld"
weld_19.C1 = CFrame.new(0, -0.224, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_19.Part0 = staffbaseorb
weld_19.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local hitbox = Instance.new("Part", tenebris)
hitbox.CanCollide = false
hitbox.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Transparency = 1
hitbox.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Material = Enum.Material.SmoothPlastic
hitbox.Size = Vector3.new(1.74, 2.53, 0.3)
hitbox.Name = "hitbox"
hitbox.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.CFrame = CFrame.new(-50.532, 14.767, -113) * CFrame.Angles(3.1415927410126, -0, 1.5707963705063)
hitbox.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BrickColor = BrickColor.new("Really black")
hitbox.Friction = 0.3
hitbox.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_20 = Instance.new("ManualWeld", hitbox)
weld_20.Part1 = basering
weld_20.Name = "Weld"
weld_20.C1 = CFrame.new(0, 5.765, 0.01) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_20.Part0 = hitbox
weld_20.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)

local hitboxemitter = Instance.new("ParticleEmitter", hitbox)
hitboxemitter.ZOffset = 1
hitboxemitter.Lifetime = NumberRange.new(0.5)
hitboxemitter.Speed = NumberRange.new(0)
hitboxemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 5), NumberSequenceKeypoint.new(1, 5)})
hitboxemitter.Acceleration = Vector3.new(0, 50, 0)
hitboxemitter.Rate = 200
hitboxemitter.Rotation = NumberRange.new(100)
hitboxemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 0.9)})
hitboxemitter.LightEmission = 0.95
hitboxemitter.Color = ColorSequence.new(Color3.new(0.0745098, 0.0117647, 0.164706), Color3.new(0.0745098, 0.0117647, 0.164706))
hitboxemitter.Enabled = false

local magiccore = Instance.new("Part", tenebris)
magiccore.FormFactor = Enum.FormFactor.Custom
magiccore.CanCollide = false
magiccore.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
magiccore.Transparency = 0
magiccore.TopSurface = Enum.SurfaceType.SmoothNoOutlines
magiccore.Material = Enum.Material.Neon
magiccore.Size = Vector3.new(0.2, 0.2, 0.2)
magiccore.Name = "magiccore"
magiccore.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
magiccore.CFrame = CFrame.new(-50.502, 15.107, -113) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
magiccore.RightSurface = Enum.SurfaceType.SmoothNoOutlines
magiccore.BackSurface = Enum.SurfaceType.SmoothNoOutlines
magiccore.BrickColor = BrickColor.new("Institutional white")
magiccore.Friction = 0.3
magiccore.Shape = Enum.PartType.Ball
magiccore.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_21 = Instance.new("ManualWeld", magiccore)
weld_21.Part1 = basering
weld_21.Name = "Weld"
weld_21.C1 = CFrame.new(0, 5.735, 0.35) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_21.Part0 = magiccore
weld_21.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)

local coreemitter = Instance.new("ParticleEmitter", magiccore)
coreemitter.ZOffset = 1
coreemitter.Lifetime = NumberRange.new(0.5)
coreemitter.Speed = NumberRange.new(0)
coreemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.4), NumberSequenceKeypoint.new(1, 0.4)})
coreemitter.Rate = 200
coreemitter.Rotation = NumberRange.new(100)
coreemitter.LightEmission = 0.8
coreemitter.Color = ColorSequence.new(Color3.new(0.0745098, 0.0117647, 0.164706), Color3.new(0.0745098, 0.0117647, 0.164706))
coreemitter.LockedToPart = true

local coreemitter2 = Instance.new("ParticleEmitter", magiccore)
coreemitter2.ZOffset = 1
coreemitter2.Lifetime = NumberRange.new(0.5)
coreemitter2.Speed = NumberRange.new(0)
coreemitter2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 0.2)})
coreemitter2.Rate = 200
coreemitter2.LightEmission = 0.9
coreemitter2.Color = ColorSequence.new(Color3.new(0.0745098, 0.0117647, 0.164706), Color3.new(0.0745098, 0.0117647, 0.164706))
coreemitter2.LockedToPart = true

local magicshell = Instance.new("Part", tenebris)
magicshell.FormFactor = Enum.FormFactor.Custom
magicshell.CanCollide = false
magicshell.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
magicshell.Transparency = 0
magicshell.TopSurface = Enum.SurfaceType.SmoothNoOutlines
magicshell.Material = Enum.Material.Neon
magicshell.Size = Vector3.new(0.4, 0.4, 0.4)
magicshell.Name = "magicshell"
magicshell.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
magicshell.CFrame = CFrame.new(-50.502, 15.107, -113) * CFrame.Angles(-1.5707963705063, 0, 1.5707963705063)
magicshell.RightSurface = Enum.SurfaceType.SmoothNoOutlines
magicshell.BackSurface = Enum.SurfaceType.SmoothNoOutlines
magicshell.BrickColor = BrickColor.new("Really black")
magicshell.Friction = 0.3
magicshell.Shape = Enum.PartType.Ball
magicshell.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_22 = Instance.new("ManualWeld", magicshell)
weld_22.Part1 = basering
weld_22.Name = "Weld"
weld_22.C1 = CFrame.new(0, 5.735, 0.35) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
weld_22.Part0 = magicshell
weld_22.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)


local coreemitter3 = Instance.new("ParticleEmitter", magicshell)
coreemitter3.ZOffset = 1
coreemitter3.Lifetime = NumberRange.new(0.5)
coreemitter3.Speed = NumberRange.new(0)
coreemitter3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.4), NumberSequenceKeypoint.new(1, 0.4)})
coreemitter3.Rate = 200
coreemitter3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 0.5)})
coreemitter3.LightEmission = 1
coreemitter3.Color = ColorSequence.new(Color3.new(0.0745098, 0.0117647, 0.164706), Color3.new(0.0745098, 0.0117647, 0.164706))
coreemitter3.LockedToPart = true


tenebris.Parent = char
tenebris:MakeJoints()
print("Tenebris loaded.")
----------------------------------------------------
local cor = Instance.new("Part", char.Tenebris)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = Character["Right Arm"]
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Tenebris)
weld1.Part0 = cor
weld1.Part1 = handle
weld1.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(90))

-------------------------------------------------------

local function weldBetween(a, b, name)
    local weld = Instance.new("ManualWeld")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse() * a.CFrame
    weld.Parent = a
	weld.Name=name or 'weldb1'
	weld.Parent=m
    return weld;
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage2((hit.Parent:FindFirstChild("Head").CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage2((hit.Parent:FindFirstChild("Head").CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
       local S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function SummonSword(Part,cframe1,cframe2)
coroutine.resume(coroutine.create(function() 
 
local sword=part(1,workspace,0,0.5,TorsoColor,"Sword",vt(2,2,2))
sword.Anchored=true
--con1=sword.Touched:connect(function(hit) Damagefunc2(hit,5,1) end) 
local smesh=mesh("SpecialMesh",sword,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(3,3,3))
--smesh.Parent=nil
smesh.VertexColor=Vector3.new(0, 0, 0)
sword.CFrame=Part.CFrame*cframe1
con1=sword.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(5,10),"Normal",RootPart,.2,1) end) 
	so("http://roblox.com/asset/?id=231917788",sword,0.5,1)
					hitconasdf = sword.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so('http://roblox.com/asset/?id=220025675',sword,1,3)
			hitconasdf:disconnect()
		end
	end)
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,TorsoColor) 
for i=0,1,0.2 do
wait()
local dir = sword.CFrame.lookVector*-1
hit2,pos = rayCast(sword.Position,dir,5,Character)
if hit2~=nil then
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
--Damagefunc2(hit2,5,1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
--Damagefunc2(hit2,5,1)
end
end
sword.CFrame=sword.CFrame*cframe2
end
EVENMOARMAGIX(sword,4,4,4,0,0,0,0,0,0,TorsoColor) 
sword.Parent=nil
pcall(function()
		hitconasdf:disconnect()
	end)
con1:disconnect()
end))
end

rings=Instance.new('Model',Character)

ring=function(way,way2,where,vector,rv1,rv2,rv3,c1,c2)
	local rng = Instance.new("Part", rings)
	rng.Anchored = true
	rng.BrickColor = BrickColor.new("Bright blue")
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = .5
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = where.CFrame * CFrame.Angles(math.rad(way), math.rad(way2), 0) 
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	rngm.Scale = vector--10,10,1
	for i = 1, 20, 1 do
		rngm.Scale = Vector3.new(rv1 + i*c1, rv2 + i*c2, rv3)--(10 + i*2, 10 + i*2, 1)
		rng.Transparency = i/20
		swait()
	end
	wait()
	rng:destroy''
end

player=game.Players.localPlayer
char=player.Character
Effects={}
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
m=Instance.new("Model",char)

function atktype(s, e)
	coroutine.resume(coroutine.create(function()
		attacktype = e
		swait(80)
		attacktype = s
	end))
end

mouse.Button1Down:connect(function()
	if equipped==true and hand==false then
		if attacktype==1 then
			attackone()
		elseif attacktype==2 then
			attacktwo()
		end
	end
end)

keypress = false
input=""

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='f' then
		if attack==false and mana>=10 then
			VoidGrip()
		end
	elseif k=='0' and antirun == false then
		if attack==false then
			Humanoid.WalkSpeed = 32
		end
	elseif k=='x' then
		if attack==false and mana>=20 then
		VoidHook()
		end
	elseif k=='c' then
		if attack==false and mana>=75 then
		Implosion()
		end
	elseif k == 's' or 'w' and attack == false then 
		input=input..k
		print(input)
		coroutine.resume(coroutine.create(function()
			while keypress==true do
				swait()
			end
			for i=1,50 do
				if keypress==false then
					swait()
				end
			end
			input=''
		end))
	end
	if input=='ssw' and attack==false then
	LockOnStrike()
	end
end)

function spin()
attack=true
mana=mana-40
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.45)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.7)*euler(1.5,-1.5,0)*euler(.7,0,0),.45)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.45)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.45)
end
for i=0,1,0.15 do
so("http://roblox.com/asset/?id=231917987",hitbox,1,1)
swait()
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(-.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.3)
RootJoint.C0=RootCF*euler(0,0,6.6*i)
end
end
con1:disconnect()
attack=false
end


function attackone()
if attack==false and attacktype==1 then
	attacktype=2
	attack=true
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.1 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.3,0.5,-.3)*euler(.4,0,.2)*euler(0,-.2,0),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		--RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
		--LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
	end
	so("http://www.roblox.com/asset/?id=199145841",handle,1,.9)
		hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so("http://www.roblox.com/asset/?id="..mhitsounds[math.random(1,#mhitsounds)],hit.Parent:FindFirstChild("Torso"),1,1)
			hitconasdf:disconnect()
		end
	end)
	for i=0,1,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
		RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(0,0,0)*euler(0,0,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		--RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
		--LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
		corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
	end
	for i=0,1,0.1 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
		RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.6,0,-1)*euler(0,-.7,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		--RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
		--LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
		corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
	end
	con1:disconnect()
	hitconasdf:disconnect()
	attack=false
	atktype(1, 2)
end
end

function attacktwo()
	if attack==false and attacktype==2 then
	attacktype=1
	attack=true
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,math.random(5,10),"Normal",RootPart,.2,1) end) 
	for i=0,1,0.75 do
		swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0.5)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-60), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(50),math.rad(-10),math.rad(0)),.3)
	end
	so("http://www.roblox.com/asset/?id=199145887",handle,1,1)
			hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so("http://www.roblox.com/asset/?id="..mhitsounds[math.random(1,#mhitsounds)],hit.Parent:FindFirstChild("Torso"),1,1)
			hitconasdf:disconnect()
		end
	end)
	for i=0,1,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(0,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.3,0,1)*euler(0,1.6,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		--RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
		--LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
		corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
	end
	for i=0,1,0.1 do
		swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0.5)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-.5)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
corw.C0=clerp(corw.C0,cf(0,-2,-1)*angles(math.rad(-90),math.rad(10),math.rad(0)),.3)
	end
	attack=false
	atktype(1, 1)
	con1:disconnect()
	hitconasdf:disconnect()
	end
end


function LockOnStrike()
	mana=mana-10
	if Targetting==true then
		Targetting=false
	else
	if attack==false then
		attack=true
		con1 = hitbox.Touched:connect(function(hit) Damagefunc(hit,5,10,0,"Target",600,1,2) end) 
		for i=0,1,0.075 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*euler(0,0,.2),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.3),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,1.2)*euler(0,-2,0),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
			LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(.7,0,.1)*euler(0,-.4,0),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.3,0),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.3,0),.3)
		end
		so("http://roblox.com/asset/?id=234365549",hitbox,1,0.6)
					hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			so("http://www.roblox.com/asset/?id="..mhitsounds[math.random(1,#mhitsounds)],hit.Parent:FindFirstChild("Torso"),1,1)
			hitconasdf:disconnect()
		end
	    end)
		for i=0,1,0.075 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*euler(.2,0,-.6),.35)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.6),.35)
			RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.2,0,-1.2)*euler(0,-1.2,0),.35)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
			LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-.4,0,-.7)*euler(0,0,0),.35)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.6,0),.35)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.6,0),.35)
			corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
		end
		attack=false
		con1:disconnect()
		hitconasdf:disconnect()
		end
	end
end

local charging = false

function Implosion()
		mana=mana-75
		attack=true
		so("http://www.roblox.com/asset/?id=199145659",Torso,1,1)
		charging = true
		coroutine.wrap(function() 
                		while charging==true and wait() do
				
                   		local FireColors = {'Dark indigo', 'Royal purple', 'Really black'}
                   		local p = Instance.new('Part', hitbox)
                    	p.BrickColor = BrickColor.new(FireColors[math.random(1,#FireColors)])
                    	p.FormFactor = 'Custom'
						p.Material = 'Neon'
                    	p.Size = Vector3.new(2, 2, 2)
                    	p.CanCollide = false
                    	p.Anchored = true
                    	p.Locked = true
                    	p.CFrame = hitbox.CFrame * CFrame.new(0, 1, 0) * CFrame.Angles(math.random(0,3),math.random(0,3),math.random(0,3))
                    	Instance.new('BlockMesh', p)
                    		coroutine.wrap(function()
                        		for i = 1, 10 do
                            	p.Mesh.Scale = p.Mesh.Scale - Vector3.new(.1, .1, .1)
                            	p.CFrame = p.CFrame * CFrame.new(0, .35, 0)
                            	wait()
                        		end
                    		end)()
                    		game:service'Debris':AddItem(p, .55)
                		end
					end)()
		for i=0,1,0.075 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5-0.4)*euler(0.4+(0.4/2),0,-0.4),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.4/2,0,0.4),.3)
			RW.C0=clerp(RW.C0,cf(1,0.5,0)*angles(math.rad(0),math.rad(150),math.rad(-90)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(45)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,-0.4)*euler(-0.2-(0.4/2),1.57,0),.3)
			LH.C0=clerp(LH.C0,cf(-1,-.5+0.4,0)*euler(0.5+(0.4/2),-1.2,0)*euler(-.2,0,0),.3)
			corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
		end		
		wait(1)
		for i=0,1,0.075 do
			swait()
			RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2.5,0,0)*euler(0,0,0),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
			LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-0.5,0,0)*euler(0,0,0),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
			RH.C0=clerp(RH.C0,cf(1,-0.85,0.1)*euler(0,1.57,0)*euler(0,0,0),.3)
			LH.C0=clerp(LH.C0,cf(-1,-0.9,-0.1)*euler(0,-1.57,0)*euler(0,0,0),.3)
			corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
		end
		wait(0.1)
		charging=false
so("http://www.roblox.com/asset/?id=168413145",Torso,0.4,.2)
so("http://www.roblox.com/asset/?id=183763506",Torso,2,.6) 
so("http://roblox.com/asset/?id=228343408",Torso,1,1.4) 
MagniDamage(hitbox,hitbox,40,0,0,0,"Knockdown")
MagniDamage(hitbox,hitbox,40,25,45,0,"Plat")
MagicCircle(BrickColor.new("Dark indigo"),Torso.CFrame - Vector3.new(0,3,0),3,0.1,3,5,0.1,5,0.01)
MagicCircle(BrickColor.new("Institutional white"),hitbox.CFrame,3,3,3,15,15,15,0.1)
		for i=0,1,0.075 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*euler(.2,0,-.6),.35)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.6),.35)
			RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.2,0,-1.2)*euler(0,-1.2,0),.35)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
			LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-.4,0,-.7)*euler(0,0,0),.35)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.35)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.6,0),.35)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.6,0),.35)
			corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
		end

		attack=false
		end

local Grabbing = false

function VoidHook()
	mana=mana-20
	Humanoid.JumpPower = 0
		attack=true
		mana=mana-10
		if Grabbing == false then
			gp = nil
			con1=hitbox.Touched:connect(function(hit) -- credits to TheDarkRevenant for the grabbing
				if Targetting == true then --Make shift lock more pleasant when targeting a player
					Character.Torso.Anchored = true
				elseif Targetting == false then
				end
			local ht = hit.Parent          
			local hum1=ht:FindFirstChild('Humanoid')
				if hum1 ~= nil then
					coroutine.resume(coroutine.create(function()
						hum1.PlatformStand=true
						wait(3)
						hum1.PlatformStand=false	
					end))
					gp = ht
					Grabbing = true
					
					coroutine.wrap(function() 
                		while Grabbing==true and wait() do
				
                   		local FireColors = {'Dark indigo', 'Royal purple', 'Really black'}
                   		local p = Instance.new('Part', ht:FindFirstChild("Torso"))
                    	p.BrickColor = BrickColor.new(FireColors[math.random(1,#FireColors)])
                    	p.FormFactor = 'Custom'
						p.Material = 'Neon'
                    	p.Size = Vector3.new(2, 2, 2)
                    	p.CanCollide = false
                    	p.Anchored = true
                    	p.Locked = true
                    	p.CFrame = ht:FindFirstChild("Torso").CFrame * CFrame.new(0, 1, 0) * CFrame.Angles(math.random(0,3),math.random(0,3),math.random(0,3))
                    	Instance.new('BlockMesh', p)
                    		coroutine.wrap(function()
                        		for i = 1, 10 do
                            	p.Mesh.Scale = p.Mesh.Scale - Vector3.new(.1, .1, .1)
                            	p.CFrame = p.CFrame * CFrame.new(0, .35, 0)
                            	wait()
                        		end
                    		end)()
                    		game:service'Debris':AddItem(p, .55)
                		end
					end)()
					
					so("http://www.roblox.com/asset/?id=200632821", Torso, 1, .8)
					local asd=weld2(hitbox,hitbox,ht:FindFirstChild("Torso"),CFrame.new(0,-1.7,0),CFrame.new(0,0,0))
					asd.Parent = RightArm
					asd.Name = "asd"
					asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
					so("http://roblox.com/asset/?id=200632821",Torso,1,.9)
				elseif hum1 == nil then
					con1:disconnect()
					wait() return
				end
		end)
		end
		hitboxemitter.Enabled = true
		for i=0,1,0.05 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-170),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(3 / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(3 / 7))), .3)
			LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(3 / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(30 * math.cos(3 / 7))), .3)
			--RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			--LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
		end
		so("http://roblox.com/asset/?id=231917871",hitbox,1,0.8)
					hitconasdf = hitbox.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			hitconasdf:disconnect()
		end
		end)
		for i=0,0.5,2 do
		so("http://roblox.com/asset/?id=231917987",hitbox,1,1)
		swait()
		so("http://roblox.com/asset/?id=199145761", Torso, 1, math.random(75, 125) / 100)
	
		for i=0,1,0.025 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(30)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			--RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			--LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			corw.C0=clerp(corw.C0,cf(0,0-50*i,0)*angles(math.rad(-90),math.rad(0),math.rad(-100*i)),.3)
		end
		end
		
		for i=0,0.5,2 do
		so("http://roblox.com/asset/?id=231917987",hitbox,1,1)
		swait()
		for i=0,1,0.025 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(30)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			corw.C0=clerp(corw.C0,cf(0,-50+50*i,0)*angles(math.rad(-90),math.rad(0),math.rad(100*i)),.3)
		end
		end
		
		if Targetting == true then
			Character.Torso.Anchored = true
		elseif Targetting == false then
			Character.Torso.Anchored = false
		end		
		
		if Grabbing == false then
		
		Character.Torso.Anchored = false		
		
		for i=0,1,0.1 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-170),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
		end
		
		else
			
		if Targetting == true then
			Character.Torso.Anchored = true
		elseif Targetting == false then
			Character.Torso.Anchored = false
		end		
					
if Targetting ~= true then
	
		
			
	for i = 0, 1, 0.15 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
	   end
		
	
		
	for i=0,1,0.05 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(20),math.rad(-50)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(10)),.3)
		RW.C0=clerp(RW.C0,cf(1,0.5,0)*angles(math.rad(0),math.rad(-150),math.rad(-90)),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
		corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
	end
	

		
	for i=0,1,0.05 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*angles(math.rad(-80),math.rad(80),math.rad(-90)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5-0.4)*euler(0.4+(0.4/2),0,-0.4),.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.4/2,0,0.4),.3)
		RW.C0=clerp(RW.C0,cf(1,0.5,0)*angles(math.rad(0),math.rad(-150),math.rad(-90)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(45)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,-0.4)*euler(-0.2-(0.4/2),1.57,0),.3)
		LH.C0=clerp(LH.C0,cf(-1,-.5+0.4,0)*euler(0.5+(0.4/2),-1.2,0)*euler(-.2,0,0),.3)
	end

else
end

	
so("http://www.roblox.com/asset/?id=183763506",Torso,5,.7)
so("http://www.roblox.com/asset/?id=168413145",Torso,0.4,.7)
so("http://www.roblox.com/asset/?id=168413145",Torso,0.4,.9)
MagniDamage(hitbox,hitbox,6,30,40,0,"Up")
MagicCircle(BrickColor.new("Really black"),RightArm.CFrame,3,3,3,5,5,5,0.05)
MagicCircle(BrickColor.new("Dark indigo"),RightArm.CFrame,2,2,2,4,4,4,0.05)
BlastEffect(BrickColor.new("Really black"),Torso.CFrame,1,1,1,.7,.7,.7)
BlastEffect(BrickColor.new("Dark indigo"),Torso.CFrame,.9,.9,.9,.6,.6,.6)

		for i,v in pairs(RightArm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
         
			end
		end

	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
	 end
end
		for i,v in pairs(RightArm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
         
			end
		end		
		
		Character.Torso.Anchored = false
		
		hitboxemitter.Enabled = false
		Grabbing=false
		attack=false
		Humanoid.JumpPower = 50
	con1:disconnect()
	hitconasdf:disconnect()
end

function VoidGrip()
mana=mana-10
attack = true
so("http://roblox.com/asset/?id=200632211",hitbox,1,0.5)
so("http://roblox.com/asset/?id=161006212",hitbox,1,math.random(75, 125) / 100)
if Grabbing == false then
gp = nil
con1=hitbox.Touched:connect(function(hit) -- credits to TheDarkRevenant for the grabbing
local ht = hit.Parent          
local hum1=ht:FindFirstChild('Humanoid')
if hum1 ~= nil then
coroutine.resume(coroutine.create(function()
hum1.PlatformStand=true
wait(3)
hum1.PlatformStand=false	
end))
gp = ht
Grabbing = true
so("http://www.roblox.com/asset/?id=200632821", Torso, 1, .8)
local asd=weld2(hitbox,hitbox,ht:FindFirstChild("Torso"),CFrame.new(0,-1.7,0),CFrame.new(0,0,0))
asd.Parent = RightArm
asd.Name = "asd"
asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
so("http://roblox.com/asset/?id=200632821",Torso,1,.9)
elseif hum1 == nil then
con1:disconnect()
wait() return
end
end)
end
if Grabbing == false then
for i = 0,1,0.05 do
swait()
Torso.Velocity = Head.CFrame.lookVector * 50
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(-90)), .3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-60)), 0.3)
RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
corw.C0=clerp(corw.C0,cf(0,-2,-1)*angles(math.rad(-90),math.rad(10),math.rad(0)),.3)
end
end
if Grabbing == true then
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)

	   end
	
for i = 1, 2 do
		RootPart.Velocity = RootPart.CFrame.lookVector * 50
		so("http://roblox.com/asset/?id=320557563", Torso, 1, 0.7)
		so("http://roblox.com/asset/?id=203691492", Torso, 1, 1)
		for i = 0, 1, 0.04 do
			swait()
			RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -.2) * angles(math.rad(0), math.rad(0), -8 * i), .1)
			Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .1)
			RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.3) * angles(math.rad(0), math.rad(130), math.rad(80)), .2)
			LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(0), math.rad(-130), math.rad(-80)), .2)
			RH.C0 = clerp(RH.C0, cn(1, -1, -0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(30)), .1)
			LH.C0 = clerp(LH.C0, cn(-1, -1, -0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(-30)), .1)
			corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
		end
	end	

so("http://roblox.com/asset/?id=157878578",hitbox,.6,1.5)
MagniDamage(hitbox,hitbox,5,30,80,0,"Plat")
MagicCircle(BrickColor.new("Really black"),RightArm.CFrame,3,3,3,5,5,5,0.05)
MagicCircle(BrickColor.new("Dark indigo"),RightArm.CFrame,2,2,2,4,4,4,0.05)
BlastEffect(BrickColor.new("Really black"),Torso.CFrame,1,1,1,.3,.3,.3)
BlastEffect(BrickColor.new("Dark indigo"),Torso.CFrame,.2,.2,.2,-.1,-.1,-.1)
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(2), math.rad(0), math.rad(0)), .5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .5)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * angles(math.rad(130), math.rad(0), math.rad(0)), 0.5)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.5)
		RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-2)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
	   end
end
for i,v in pairs(RightArm:GetChildren()) do
            if v.Name == "asd" and v:IsA("Weld") then
                v:Remove()
         
end
end
con1:disconnect()
Grabbing = false
attack = false
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = TorsoColor
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = TorsoColor
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

local sine = 0
local change = 1
local val = 0

if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[1].Mesh
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end

local mananum=0
while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.3)
corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.3)
corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
Humanoid.WalkSpeed = 12
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.1 + 0.1 * math.cos(sine / 25)) * angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5 - 2 * math.cos(sine / 25)), math.rad(0), math.rad(30)), .3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(5-2.5*math.cos(sine/40)),math.rad(10),math.rad(85-2.5*math.cos(sine/40))),.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5 - 3 * math.cos(sine / 25))), 0.3)
RH.C0 = clerp(RH.C0, cn(1, -.9 - 0.1 * math.cos(sine / 25), 0) * RHCF * angles(math.rad(-2 + 2 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .3)
LH.C0 = clerp(LH.C0, cn(-1, -.9 - 0.1 * math.cos(sine / 25), 0) * LHCF * angles(math.rad(-2 + 2 * math.cos(sine / 25)), math.rad(-5), math.rad(0 + 2 * math.cos(sine / 25))), .3)
corw.C0=clerp(corw.C0,cf(-0.5,0,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, -0.05 + .1 * math.cos(sine / 7)) * angles(math.rad(5), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(2 * math.cos(sine / 10))), .2)
Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-3), math.rad(0), math.rad(-2 * math.cos(sine / 10)) + RootPart.RotVelocity.Y / 15), .2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10 * math.cos(sine / 13)), math.rad(0), math.rad(34)), .2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25 * math.cos(sine / 13)), math.rad(0), math.rad(10 * math.cos(sine / 13))), .2)
RH.C0 = clerp(RH.C0, cn(1, -1 + .1 * math.cos(sine / 5), 0) * RHCF * angles(math.rad(-2), math.rad(0), math.rad(10 * math.cos(sine / 13))), .2)
LH.C0 = clerp(LH.C0, cn(-1, -1 + .1 * math.cos(sine / 5), 0) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(10 * math.cos(sine / 13))), .2)
corw.C0=clerp(corw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(-10),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-30-2.5*math.cos(sine/20)),math.rad(-75),math.rad(15+2.5*math.cos(sine/20))),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*angles(math.rad(90+2.5*math.cos(sine/20)),math.rad(0),math.rad(45+2.5*math.cos(sine/20))),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
end
fenbarmana2:TweenSize(UDim2.new(4*mana/100,0,0.2,0),nil,1,0.4,true)
fenbarmana4.Text="[Shadow]                    <{[  "..mana.."  ]}>                    [Shadow]"
if mana>=100 then
mana=100
else
if mananum<=8 then
mananum=mananum+1
else
mananum=0
mana=mana+1
end
end
end

--[[
==================================]}
//{Base ver: 1
//{Collection: Phoenix
==================================]}
--]]

