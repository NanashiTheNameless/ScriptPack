--[[//////////////////////////]
//{Script: Argentum          
//{User: Solavenge/Citrus    
//{Creation date: 9/2/2016	 
//{Completion date: 9/2/2016 
//{Version: 1                
=============================]}
//{Controls:              
// E - Argon Rush
// R - Radial Blind
// LShift - Dash
=============================]}
//{Key combos:              
// ssw - Lock-on Strike
// qssd - Recovery
=============================]]


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
Glowing=false
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
local antirun = false
player=nil 
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
fenbarmana2.BackgroundColor3=Color3.new(255,255,255)
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

frame = 1 / 60 -- Changing this to a lower number might screw with any targetting moves. (Doesn't break them, just makes you walk choppy.)
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

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch) --bm1
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
			ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Institutional white").Color)
			end
		else
			h.Health = h.Health - (Damage / 2)
			if Damage ~=0 then
			ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Institutional white").Color)
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
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
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
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, .2, 1, 3)
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

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
	local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
	prt.Anchored=true
	prt.CFrame=cframe
	local msh = mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
	game:GetService("Debris"):AddItem(prt,2)
	coroutine.resume(coroutine.create(function(Part,Mesh) 
		for i=0,1,delay do
			swait()
			Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
			Part.Transparency=i
			Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
		end
		Part.Parent=nil
	end),prt,msh)
end 


	user=game:service'Players'.localPlayer
	char=user.Character
	mouse=user:GetMouse()
	argentum=Instance.new('Model',char)
	game:service'Lighting'.Outlines=false
	argentum.Name = "Argentum"
	

local baseshell = Instance.new("Part", argentum)
baseshell.CanCollide = false
baseshell.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
baseshell.Transparency = 0.8
baseshell.TopSurface = Enum.SurfaceType.SmoothNoOutlines
baseshell.Material = Enum.Material.Neon
baseshell.Size = Vector3.new(0.873, 0.873, 0.873)
baseshell.Name = "baseshell"
baseshell.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
baseshell.CFrame = CFrame.new(-87.493, 92.397, 118.954) * CFrame.Angles(0, 1.5707963705063, 0)
baseshell.RightSurface = Enum.SurfaceType.SmoothNoOutlines
baseshell.BackSurface = Enum.SurfaceType.SmoothNoOutlines
baseshell.Friction = 0.3
baseshell.Shape = Enum.PartType.Ball
baseshell.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local basecore = Instance.new("Part", argentum)
basecore.CanCollide = false
basecore.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
basecore.TopSurface = Enum.SurfaceType.SmoothNoOutlines
basecore.Material = Enum.Material.Neon
basecore.Size = Vector3.new(0.524, 0.524, 0.524)
basecore.Name = "basecore"
basecore.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
basecore.CFrame = CFrame.new(-87.493, 92.386, 118.954) * CFrame.Angles(0, 1.5707963705063, 0)
basecore.RightSurface = Enum.SurfaceType.SmoothNoOutlines
basecore.BackSurface = Enum.SurfaceType.SmoothNoOutlines
basecore.Friction = 0.3
basecore.Shape = Enum.PartType.Ball
basecore.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld = Instance.new("ManualWeld", basecore)
weld.Part1 = baseshell
weld.Name = "Weld"
weld.C1 = CFrame.new(0, -0.01, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld.Part0 = basecore
weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0, -1.5707963705063, 0)

local bigring = Instance.new("Part", argentum)
bigring.CanCollide = false
bigring.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
bigring.TopSurface = Enum.SurfaceType.SmoothNoOutlines
bigring.Material = Enum.Material.Neon
bigring.Size = Vector3.new(0.458, 0.458, 0.458)
bigring.Name = "bigring"
bigring.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
bigring.CFrame = CFrame.new(-87.493, 98.966, 118.954) * CFrame.Angles(1.5707963705063, 0, -3.1415927410126)
bigring.RightSurface = Enum.SurfaceType.SmoothNoOutlines
bigring.BackSurface = Enum.SurfaceType.SmoothNoOutlines
bigring.BrickColor = BrickColor.new("Institutional white")
bigring.Friction = 0.3
bigring.Shape = Enum.PartType.Cylinder
bigring.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh = Instance.new("SpecialMesh", bigring)
mesh.Scale = Vector3.new(0.873, 0.873, 0.873)
mesh.MeshId = "rbxassetid://3270017"
mesh.MeshType = Enum.MeshType.FileMesh

local weld_2 = Instance.new("ManualWeld", bigring)
weld_2.Part1 = baseshell
weld_2.Name = "Weld"
weld_2.C1 = CFrame.new(0, 6.569, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_2.Part0 = bigring
weld_2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, 0, -3.1415927410126)

local topshell = Instance.new("Part", argentum)
topshell.CanCollide = false
topshell.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
topshell.Transparency = 0.8
topshell.TopSurface = Enum.SurfaceType.SmoothNoOutlines
topshell.Material = Enum.Material.Ice
topshell.Size = Vector3.new(1.092, 1.092, 1.092)
topshell.Name = "topshell"
topshell.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
topshell.CFrame = CFrame.new(-87.493, 99.514, 118.954) * CFrame.Angles(0, 1.5707963705063, 0)
topshell.RightSurface = Enum.SurfaceType.SmoothNoOutlines
topshell.BackSurface = Enum.SurfaceType.SmoothNoOutlines
topshell.Friction = 0.3
topshell.Shape = Enum.PartType.Ball
topshell.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_3 = Instance.new("ManualWeld", topshell)
weld_3.Part1 = baseshell
weld_3.Name = "Weld"
weld_3.C1 = CFrame.new(0, 7.118, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_3.Part0 = topshell
weld_3.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0, -1.5707963705063, 0)

local band1 = Instance.new("Part", argentum)
band1.CanCollide = false
band1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
band1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
band1.Material = Enum.Material.Neon
band1.Size = Vector3.new(0.228, 0.48, 0.48)
band1.Name = "band1"
band1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
band1.CFrame = CFrame.new(-87.493, 98.429, 118.954) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
band1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
band1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
band1.BrickColor = BrickColor.new("Institutional white")
band1.Friction = 0.3
band1.Shape = Enum.PartType.Cylinder
band1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_2 = Instance.new("SpecialMesh", band1)
mesh_2.Scale = Vector3.new(0.765, 1, 1)
mesh_2.MeshType = Enum.MeshType.Cylinder

local weld_4 = Instance.new("ManualWeld", band1)
weld_4.Part1 = baseshell
weld_4.Name = "Weld"
weld_4.C1 = CFrame.new(0, 6.032, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_4.Part0 = band1
weld_4.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

local baseball = Instance.new("Part", argentum)
baseball.CanCollide = false
baseball.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
baseball.TopSurface = Enum.SurfaceType.SmoothNoOutlines
baseball.Reflectance = 1
baseball.Material = Enum.Material.SmoothPlastic
baseball.Size = Vector3.new(0.437, 0.437, 0.437)
baseball.Name = "baseball"
baseball.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
baseball.CFrame = CFrame.new(-87.493, 92.761, 118.954) * CFrame.Angles(1.5707963705063, 1.5707963705063, 0)
baseball.RightSurface = Enum.SurfaceType.SmoothNoOutlines
baseball.BackSurface = Enum.SurfaceType.SmoothNoOutlines
baseball.Friction = 0.3
baseball.Shape = Enum.PartType.Ball
baseball.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_5 = Instance.new("ManualWeld", baseball)
weld_5.Part1 = baseshell
weld_5.Name = "Weld"
weld_5.C1 = CFrame.new(0, 0.365, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_5.Part0 = baseball
weld_5.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)

local band4 = Instance.new("Part", argentum)
band4.CanCollide = false
band4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
band4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
band4.Material = Enum.Material.Neon
band4.Size = Vector3.new(1.162, 0.458, 0.458)
band4.Name = "band4"
band4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
band4.CFrame = CFrame.new(-87.493, 94.853, 118.954) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
band4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
band4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
band4.BrickColor = BrickColor.new("Institutional white")
band4.Friction = 0.3
band4.Shape = Enum.PartType.Cylinder
band4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_6 = Instance.new("ManualWeld", band4)
weld_6.Part1 = baseshell
weld_6.Name = "Weld"
weld_6.C1 = CFrame.new(0, 2.456, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_6.Part0 = band4
weld_6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

local band2 = Instance.new("Part", argentum)
band2.CanCollide = false
band2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
band2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
band2.Material = Enum.Material.Neon
band2.Size = Vector3.new(0.664, 0.458, 0.458)
band2.Name = "band2"
band2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
band2.CFrame = CFrame.new(-87.493, 97.855, 118.954) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
band2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
band2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
band2.BrickColor = BrickColor.new("Institutional white")
band2.Friction = 0.3
band2.Shape = Enum.PartType.Cylinder
band2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_7 = Instance.new("ManualWeld", band2)
weld_7.Part1 = baseshell
weld_7.Name = "Weld"
weld_7.C1 = CFrame.new(0, 5.458, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_7.Part0 = band2
weld_7.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

local topcore = Instance.new("Part", argentum)
topcore.CanCollide = false
topcore.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
topcore.TopSurface = Enum.SurfaceType.SmoothNoOutlines
topcore.Material = Enum.Material.Neon
topcore.Size = Vector3.new(0.655, 0.655, 0.655)
topcore.Name = "topcore"
topcore.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
topcore.CFrame = CFrame.new(-87.493, 99.501, 118.954) * CFrame.Angles(0, 1.5707963705063, 0)
topcore.RightSurface = Enum.SurfaceType.SmoothNoOutlines
topcore.BackSurface = Enum.SurfaceType.SmoothNoOutlines
topcore.Friction = 0.3
topcore.Shape = Enum.PartType.Ball
topcore.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_8 = Instance.new("ManualWeld", topcore)
weld_8.Part1 = baseshell
weld_8.Name = "Weld"
weld_8.C1 = CFrame.new(0, 7.104, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_8.Part0 = topcore
weld_8.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0, -1.5707963705063, 0)

local topball = Instance.new("Part", argentum)
topball.CanCollide = false
topball.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
topball.TopSurface = Enum.SurfaceType.SmoothNoOutlines
topball.Reflectance = 1
topball.Material = Enum.Material.SmoothPlastic
topball.Size = Vector3.new(0.437, 0.437, 0.437)
topball.Name = "topball"
topball.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
topball.CFrame = CFrame.new(-87.493, 98.674, 118.954) * CFrame.Angles(1.5707963705063, 1.5707963705063, 0)
topball.RightSurface = Enum.SurfaceType.SmoothNoOutlines
topball.BackSurface = Enum.SurfaceType.SmoothNoOutlines
topball.Friction = 0.3
topball.Shape = Enum.PartType.Ball
topball.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_9 = Instance.new("ManualWeld", topball)
weld_9.Part1 = baseshell
weld_9.Name = "Weld"
weld_9.C1 = CFrame.new(0, 6.277, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_9.Part0 = topball
weld_9.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)

local mainrod = Instance.new("Part", argentum)
mainrod.CanCollide = false
mainrod.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
mainrod.TopSurface = Enum.SurfaceType.SmoothNoOutlines
mainrod.Reflectance = 1
mainrod.Material = Enum.Material.SmoothPlastic
mainrod.Size = Vector3.new(5.912, 0.437, 0.437)
mainrod.Name = "mainrod"
mainrod.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
mainrod.CFrame = CFrame.new(-87.493, 95.717, 118.954) * CFrame.Angles(1.5707963705063, 1.5707963705063, 0)
mainrod.RightSurface = Enum.SurfaceType.SmoothNoOutlines
mainrod.BackSurface = Enum.SurfaceType.SmoothNoOutlines
mainrod.Friction = 0.3
mainrod.Shape = Enum.PartType.Cylinder
mainrod.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_10 = Instance.new("ManualWeld", mainrod)
weld_10.Part1 = baseshell
weld_10.Name = "Weld"
weld_10.C1 = CFrame.new(0, 3.321, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_10.Part0 = mainrod
weld_10.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.5707963705063, 0, -1.5707963705063)

local wing1 = Instance.new("Part", argentum)
wing1.CanCollide = false
wing1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wing1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wing1.Reflectance = 0.1
wing1.Material = Enum.Material.Neon
wing1.Size = Vector3.new(0.568, 0.476, 1.092)
wing1.Name = "wing1"
wing1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wing1.CFrame = CFrame.new(-87.493, 99.263, 119.925) * CFrame.Angles(0, 1.5707963705063, 0)
wing1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wing1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wing1.Friction = 0.3
wing1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_3 = Instance.new("SpecialMesh", wing1)
mesh_3.Scale = Vector3.new(0.437, 0.437, 0.437)
mesh_3.MeshId = "rbxassetid://111896510"
mesh_3.MeshType = Enum.MeshType.FileMesh

local weld_11 = Instance.new("ManualWeld", wing1)
weld_11.Part1 = baseshell
weld_11.Name = "Weld"
weld_11.C1 = CFrame.new(-0.972, 6.866, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_11.Part0 = wing1
weld_11.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0, -1.5707963705063, 0)

local basecyl = Instance.new("Part", argentum)
basecyl.CanCollide = false
basecyl.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
basecyl.TopSurface = Enum.SurfaceType.SmoothNoOutlines
basecyl.Material = Enum.Material.Neon
basecyl.Size = Vector3.new(0.228, 0.524, 0.524)
basecyl.Name = "basecyl"
basecyl.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
basecyl.CFrame = CFrame.new(-87.493, 92.619, 118.954) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
basecyl.RightSurface = Enum.SurfaceType.SmoothNoOutlines
basecyl.BackSurface = Enum.SurfaceType.SmoothNoOutlines
basecyl.BrickColor = BrickColor.new("Institutional white")
basecyl.Friction = 0.3
basecyl.Shape = Enum.PartType.Cylinder
basecyl.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_4 = Instance.new("SpecialMesh", basecyl)
mesh_4.Scale = Vector3.new(0.287, 1, 1)
mesh_4.MeshType = Enum.MeshType.Cylinder

local weld_12 = Instance.new("ManualWeld", basecyl)
weld_12.Part1 = baseshell
weld_12.Name = "Weld"
weld_12.C1 = CFrame.new(0, 0.223, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_12.Part0 = basecyl
weld_12.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

local band6 = Instance.new("Part", argentum)
band6.CanCollide = false
band6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
band6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
band6.Material = Enum.Material.Neon
band6.Size = Vector3.new(0.228, 0.458, 0.458)
band6.Name = "band6"
band6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
band6.CFrame = CFrame.new(-87.493, 92.702, 118.954) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
band6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
band6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
band6.BrickColor = BrickColor.new("Institutional white")
band6.Friction = 0.3
band6.Shape = Enum.PartType.Cylinder
band6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_5 = Instance.new("SpecialMesh", band6)
mesh_5.Scale = Vector3.new(0.555, 1, 1)
mesh_5.MeshType = Enum.MeshType.Cylinder

local weld_13 = Instance.new("ManualWeld", band6)
weld_13.Part1 = baseshell
weld_13.Name = "Weld"
weld_13.C1 = CFrame.new(0, 0.306, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_13.Part0 = band6
weld_13.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

local band3 = Instance.new("Part", argentum)
band3.CanCollide = false
band3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
band3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
band3.Material = Enum.Material.Neon
band3.Size = Vector3.new(0.228, 0.458, 0.458)
band3.Name = "band3"
band3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
band3.CFrame = CFrame.new(-87.493, 95.663, 118.954) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
band3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
band3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
band3.BrickColor = BrickColor.new("Institutional white")
band3.Friction = 0.3
band3.Shape = Enum.PartType.Cylinder
band3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_6 = Instance.new("SpecialMesh", band3)
mesh_6.Scale = Vector3.new(0.287, 1, 1)
mesh_6.MeshType = Enum.MeshType.Cylinder

local weld_14 = Instance.new("ManualWeld", band3)
weld_14.Part1 = baseshell
weld_14.Name = "Weld"
weld_14.C1 = CFrame.new(0, 3.266, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_14.Part0 = band3
weld_14.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

local smallring = Instance.new("Part", argentum)
smallring.CanCollide = false
smallring.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
smallring.TopSurface = Enum.SurfaceType.SmoothNoOutlines
smallring.Material = Enum.Material.Neon
smallring.Size = Vector3.new(0.458, 0.458, 0.458)
smallring.Name = "smallring"
smallring.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
smallring.CFrame = CFrame.new(-87.493, 98.676, 118.954) * CFrame.Angles(1.5707963705063, 0, -3.1415927410126)
smallring.RightSurface = Enum.SurfaceType.SmoothNoOutlines
smallring.BackSurface = Enum.SurfaceType.SmoothNoOutlines
smallring.BrickColor = BrickColor.new("Institutional white")
smallring.Friction = 0.3
smallring.Shape = Enum.PartType.Cylinder
smallring.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_7 = Instance.new("SpecialMesh", smallring)
mesh_7.Scale = Vector3.new(0.655, 0.655, 0.655)
mesh_7.MeshId = "rbxassetid://3270017"
mesh_7.MeshType = Enum.MeshType.FileMesh

local weld_15 = Instance.new("ManualWeld", smallring)
weld_15.Part1 = baseshell
weld_15.Name = "Weld"
weld_15.C1 = CFrame.new(0, 6.279, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_15.Part0 = smallring
weld_15.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, 0, -3.1415927410126)

local wing2 = Instance.new("Part", argentum)
wing2.CanCollide = false
wing2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
wing2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
wing2.Reflectance = 0.1
wing2.Material = Enum.Material.Neon
wing2.Size = Vector3.new(0.568, 0.476, 1.092)
wing2.Name = "wing2"
wing2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
wing2.CFrame = CFrame.new(-87.493, 99.252, 117.989) * CFrame.Angles(-0, -1.5707963705063, 0)
wing2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
wing2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
wing2.Friction = 0.3
wing2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_8 = Instance.new("SpecialMesh", wing2)
mesh_8.Scale = Vector3.new(0.437, 0.437, 0.437)
mesh_8.MeshId = "rbxassetid://111896510"
mesh_8.MeshType = Enum.MeshType.FileMesh

local weld_16 = Instance.new("ManualWeld", wing2)
weld_16.Part1 = baseshell
weld_16.Name = "Weld"
weld_16.C1 = CFrame.new(0.965, 6.856, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_16.Part0 = wing2
weld_16.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 1.5707963705063, 0)

local band5 = Instance.new("Part", argentum)
band5.CanCollide = false
band5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
band5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
band5.Material = Enum.Material.Neon
band5.Size = Vector3.new(0.228, 0.458, 0.458)
band5.Name = "band5"
band5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
band5.CFrame = CFrame.new(-87.493, 94.036, 118.954) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
band5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
band5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
band5.BrickColor = BrickColor.new("Institutional white")
band5.Friction = 0.3
band5.Shape = Enum.PartType.Cylinder
band5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local mesh_9 = Instance.new("SpecialMesh", band5)
mesh_9.Scale = Vector3.new(0.287, 1, 1)
mesh_9.MeshType = Enum.MeshType.Cylinder

local weld_17 = Instance.new("ManualWeld", band5)
weld_17.Part1 = baseshell
weld_17.Name = "Weld"
weld_17.C1 = CFrame.new(0, 1.64, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_17.Part0 = band5
weld_17.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963705063, 0, 1.5707963705063)

local hitbox = Instance.new("Part", argentum)
hitbox.CanCollide = false
hitbox.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Transparency = 1
hitbox.TopSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.Material = Enum.Material.SmoothPlastic
hitbox.Size = Vector3.new(1, 2.98, 1)
hitbox.Name = "hitbox"
hitbox.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.CFrame = CFrame.new(-87.493, 98.61, 118.954) * CFrame.Angles(0, 1.5707963705063, 0)
hitbox.RightSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BackSurface = Enum.SurfaceType.SmoothNoOutlines
hitbox.BrickColor = BrickColor.new("Lily white")
hitbox.Friction = 0.3
hitbox.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

local weld_18 = Instance.new("ManualWeld", hitbox)
weld_18.Part1 = baseshell
weld_18.Name = "Weld"
weld_18.C1 = CFrame.new(0, 6.213, 0) * CFrame.Angles(-0, -1.5707963705063, 0)
weld_18.Part0 = hitbox
weld_18.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-0, -1.5707963705063, 0)

argentum.Parent = char
argentum:MakeJoints()
print("Argentum loaded.")

local handl = Instance.new("Part", char.Argentum)
handl.Name = "Grip"
handl.Locked = true
handl.BottomSurface = 0
handl.CanCollide = false
handl.Size = Vector3.new(1, 1, 1)
handl.Transparency = 1
handl.TopSurface = 0
handlw = Instance.new("Weld", handl)
handlw.Part0 = Character["Right Arm"]
handlw.Part1 = handl
handlw.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(90))
handlw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Argentum)
weld1.Part0 = handl
weld1.Part1 = mainrod
weld1.C0 = CFrame.new(0, -1.1, -1) * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(90))


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

					coroutine.wrap(function() 
                		while wait() do
						if Glowing == true then
                   			local EgColors = {'Institutional white', "Medium stone grey"}
                   			local p = Instance.new('Part', Character.Argentum:FindFirstChild("topcore"))
                    		p.BrickColor = BrickColor.new(EgColors[math.random(1,#EgColors)])
                    		p.FormFactor = 'Custom'
							p.Material = 'Neon'
                    		p.Size = Vector3.new(1, 1, 1)
                    		p.CanCollide = false
                    		p.Anchored = true
                    		p.Locked = true
                    		p.CFrame = Character.Argentum:FindFirstChild("topcore").CFrame * CFrame.new(0, 1, 0) * CFrame.Angles(math.random(0,3),math.random(0,3),math.random(0,3))
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
						end
					end)()
					
Asset = "http://www.roblox.com/asset/?id="
local mhitsounds = {199149137,199149186,199149221,199149235,199149269,199149297}
local magicshots = {263609809,263609836,263609864,263609874,263609898}
local ptches = {0.9, 0.95, 1, 1.05}

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

--[[function SummonSword(Part,cframe1,cframe2)
coroutine.resume(coroutine.create(function() 
 
local sword=part(1,workspace,0,0.5,TorsoColor,"Sword",vt(2,2,2))
sword.Anchored=true
--con1=sword.Touched:connect(function(hit) Damagefunc(hit,5,1) end) 
local smesh=mesh("SpecialMesh",sword,"FileMesh","http://www.roblox.com/asset/?id=50798664",vt(0,0,0),vt(3,3,3))
--smesh.Parent=nil
smesh.VertexColor=Vector3.new(0, 0, 0)
sword.CFrame=Part.CFrame*cframe1
con1=sword.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(5,10),"Normal",RootPart,.2,1) end) -- Improper Damagefunc syntax 
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
--Damagefunc(hit2,5,1)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
--Damagefunc(hit2,5,1)
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
end]] -- Unused function, will have to modify to fit my new Damagefunc 

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
		elseif attacktype==3 then
			attackthree()
		end
	end
end)

keypress = false
input=""

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='e' then
		if attack==false and mana>=15 then
			ArgonRush()
		end
	elseif k=='r' then
		if attack==false and mana>=75 then
			RadialBlind()
		end
	elseif k=='0' and antirun == false then
		if attack==false then
			Humanoid.WalkSpeed = 32
		end
	elseif k == 'a' or k == 'w' or k == 'h' or k == 'u' or k == 'a' or k == 'd' or k == 'f' or k == 'e' or k == 's' or k == 'q' and attack == false then 
		input=input..k
		print(input)
		coroutine.resume(coroutine.create(function()
			while keypress==true do
				swait()
			end
			for i=1,55 do
				if keypress==false then
					swait()
				end
			end
			input=''
		end))
	end
	if input=='ssw' and mana>=15 and attack==false then
	LockOnStrike()
	elseif input=='qssd' and mana>=50 and attack==false then
	Recovery()
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

	for i=0,1,0.1 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.3,0.5,-.3)*euler(.4,0,.2)*euler(0,-.2,0),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
	end
	--so("http://www.roblox.com/asset/?id=200633077",hitbox,1,1)	
	so("http://www.roblox.com/asset/?id=199145841",hitbox,1,.9)
	--so(Asset..magicshots[math.random(1,#magicshots)],hitbox,1,ptches[math.random(1,#ptches)])
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hitbox, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, Asset..mhitsounds[math.random(1,#mhitsounds)], 1) end)
	for i=0,1,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
		RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(0,0,0)*euler(0,0,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
		handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
	end
	for i=0,1,0.1 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
		RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(.6,0,-1)*euler(0,-.7,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
		handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
	end
	con1:disconnect()
	attack=false
	atktype(1, 2)
end
end

function attacktwo()
	if attack==false and attacktype==2 then
	attacktype=3
	attack=true 
	for i=0,1,0.75 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(0,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.3,0,1)*euler(0,1.6,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
		handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
	end
	for i=0,1,0.1 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.7)*euler(.2,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.7),.3)
		RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*euler(1.57,0,-1)*euler(0,1.2,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.8,0,-.4),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		RH.C0=clerp(RH.C0,cf(.8,-1,.2)*euler(0,1.57,0)*euler(0,-.7,0),.3)
		LH.C0=clerp(LH.C0,cf(-.8,-1,.2)*euler(0,-1.57,0)*euler(0,-.7,0),.3)
	end
	so("http://www.roblox.com/asset/?id=199145887",hitbox,1,1)
	--so("http://www.roblox.com/asset/?id=200633077",hitbox,1,1)	
	--so(Asset..magicshots[math.random(1,#magicshots)],hitbox,1,ptches[math.random(1,#ptches)])
	con1=hitbox.Touched:connect(function(hit) Damagefunc(hitbox, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, Asset..mhitsounds[math.random(1,#mhitsounds)], 1) end)
	for i=0,1,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(0,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.3,0,1)*euler(0,1.6,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
		handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
	end
	for i=0,1,0.1 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,.5)*euler(.1,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1,0,.8)*euler(0,1.3,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.2,0,-.2),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
		handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
	end
	attack=false
	atktype(1, 3)
	con1:disconnect()
	end
end


function attackthree()
if attack==false and attacktype==3 then
	attacktype=1
	attack=true
	Glowing=true
	for i=0,1,0.1 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(.2,0,.5),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-.5),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2,0,1),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.3,0.5,-.3)*euler(.4,0,.2)*euler(0,-.2,0),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.4)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,.5,0),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,.5,0),.3)
	end
	
	so("http://www.roblox.com/asset/?id=199145841",hitbox,1,.9)
	so(Asset..magicshots[math.random(1,#magicshots)],hitbox,1,ptches[math.random(1,#ptches)])
	--con1=hitbox.Touched:connect(function(hit) Damagefunc(hitbox, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, Asset..mhitsounds[math.random(1,#mhitsounds)], 1) end)
	for i=0,1,0.2 do
		swait()
		Neck.C0=clerp(Neck.C0,necko*euler(0,0,-.5)*euler(.2,0,0),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.5),.3)
		RW.C0=clerp(RW.C0,cf(1.2,0.5,-.3)*euler(0,0,0)*euler(0,0,0),.3)
		RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.4,0,-.2),.3)
		LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0)*euler(0,-.5,0),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0)*euler(0,-.5,0),.3)
		handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
	end
	--function MagniDamage(Hit, Part, magni, mindam, maxdam, knock, Type)
	so("http://www.roblox.com/asset/?id=231917788",hitbox,1,1.4)
	MagniDamage(hitbox,hitbox,5,10,25,0,"Normal")
	MagicCircle(BrickColor.new("Institutional white"),Character.Argentum:FindFirstChild("topcore").CFrame,0.3,0.3,0.3,1.3,1.3,1.3,0.05)
	attack=false
	atktype(1, 1)
	con1:disconnect()
	Glowing=false
end
end

function LockOnStrike()
		mana=mana-15
		attack=true
		Glowing=true
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
		so(Asset..magicshots[math.random(1,#magicshots)],hitbox,1,ptches[math.random(1,#ptches)])
		con1=hitbox.Touched:connect(function(hit) Damagefunc(hitbox, hit, 5, 10, math.random(1, 5), "Target", 600, 1, Asset..mhitsounds[math.random(1,#mhitsounds)], 1) end)
		
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
			handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
		end
		attack=false
		Glowing=false
		con1:disconnect()
end



function RadialBlind()
		attack=true
		mana=mana-75
		Glowing=true
		so("http://www.roblox.com/asset/?id=200633077",hitbox,1,1.2)
		so(Asset..magicshots[math.random(1,#magicshots)],hitbox,1,ptches[math.random(1,#ptches)])
		for i=0,1,0.075 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*euler(-0.4,0.4,0),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2.5,0,0)*euler(0,0,0),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
			LW.C0=clerp(LW.C0,cf(-1.4,0.5,-.2)*euler(-0.5,0,0)*euler(0,0,0),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
			RH.C0=clerp(RH.C0,cf(1,-0.85,0.1)*euler(0,1.57,0)*euler(0,0,0),.3)
			LH.C0=clerp(LH.C0,cf(-1,-0.9,-0.1)*euler(0,-1.57,0)*euler(0,0,0),.3)
			handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)

		end
		wait(0.3)
		so("http://www.roblox.com/asset/?id=168413145",Torso,0.4,.2)
		so("http://www.roblox.com/asset/?id=168413145",Torso,0.4,.5)
		so("http://roblox.com/asset/?id=228343408",Torso,1,1.4) 
		MagniDamage(hitbox,hitbox,20,5,10,0,"Knockdown")
		MagniDamage(hitbox,hitbox,30,0,0,0,"Plat")
		MagicCircle(BrickColor.new("Really black"),Torso.CFrame - Vector3.new(0,3,0),3,0.1,3,5,0.1,5,0.01)
		MagicCircle(BrickColor.new("Institutional white"),Character.Argentum:FindFirstChild("topcore").CFrame,3,3,3,5,5,5,0.05)

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
			handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(-45),math.rad(0),math.rad(0)),.2)
		end
		attack=false
		Glowing=false
		end

function ArgonRush()
		attack=true
		mana=mana-15
		Glowing=true 
		for i=0,1,0.05 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
			RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*angles(math.rad(0),math.rad(-45),math.rad(-90)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
		end
		so("http://roblox.com/asset/?id=231917871",hitbox,1,0.8)
		so(Asset..magicshots[math.random(1,#magicshots)],hitbox,1,ptches[math.random(1,#ptches)])
		con1=hitbox.Touched:connect(function(hit) Damagefunc(hitbox, hit, 10, 30, math.random(1, 5), "Normal", RootPart, .1, Asset..mhitsounds[math.random(1,#mhitsounds)], 1) end)

		for i=0,1,0.05 do
			swait()
			Torso.Velocity=RootPart.CFrame.lookVector*50
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(180),math.rad(0),math.rad(90)),.2)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			handlw.C0=clerp(handlw.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.2)
		end
		attack=false
		Glowing=false
	con1:disconnect()
end

function Recovery()
		local Recovering = true
		attack=true
		Glowing=true
		mana=mana-25
		so("http://www.roblox.com/asset/?id=200633077",hitbox,1,0.8)
		for i=0,1,0.05 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5-0.4)*euler(0.4+(0.4/2),0,-0.4),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.4/2,0,0.4),.3)
			RW.C0=clerp(RW.C0,cf(1,0.5,0)*angles(math.rad(0),math.rad(-150),math.rad(-90)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(45)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,-0.4)*euler(-0.2-(0.4/2),1.57,0),.3)
			LH.C0=clerp(LH.C0,cf(-1,-.5+0.4,0)*euler(0.5+(0.4/2),-1.2,0)*euler(-.2,0,0),.3)
			handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
		end
		Humanoid.WalkSpeed = 0
		Humanoid.JumpPower = 0
		wait(0.5)
		coroutine.resume(coroutine.create(function()			
			while Humanoid.Health<100 and Humanoid.Health>0 and Recovering do
				wait(0.05)
				Humanoid.Health = Humanoid.Health + 1
			end
		end))
		so(Asset..magicshots[math.random(1,#magicshots)],hitbox,1,1.2)
		MagicCircle(BrickColor.new("Institutional white"),Character.Argentum:FindFirstChild("topcore").CFrame,3,3,3,4,4,4,0.1)
		wait(1)
		so(Asset..magicshots[math.random(1,#magicshots)],hitbox,1,1.2)
		MagicCircle(BrickColor.new("Institutional white"),Character.Argentum:FindFirstChild("topcore").CFrame,3,3,3,4,4,4,0.1)
		wait(1)
		so(Asset..magicshots[math.random(1,#magicshots)],hitbox,1,1.2)
		MagicCircle(BrickColor.new("Institutional white"),Character.Argentum:FindFirstChild("topcore").CFrame,3,3,3,4,4,4,0.1)
		wait(1)		
		MagicCircle(BrickColor.new("Institutional white"),Character.Argentum:FindFirstChild("topcore").CFrame,1,3,3,4,4,4,0.1)
		for i=0,1,0.05 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(-60),math.rad(0),math.rad(-60)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5-0.4)*euler(0.2+(0.4/2),0,-0.4),.3)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.4/2,0,0.4),.3)
			RW.C0=clerp(RW.C0,cf(1,0.5,0)*angles(math.rad(0),math.rad(-150),math.rad(-90)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(90),math.rad(0),math.rad(45)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,-0.4)*euler(-0.2-(0.4/2),1.57,0),.3)
			LH.C0=clerp(LH.C0,cf(-1,-.5+0.4,0)*euler(0.5+(0.4/2),-1.2,0)*euler(-.2,0,0),.3)
		end
		Recovering = false
		Humanoid.WalkSpeed = 15
		Humanoid.JumpPower = 50
		Glowing=false
		attack=false
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
handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
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
handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
Humanoid.WalkSpeed = 16
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.25)*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(6+2.5*math.cos(sine/40)),math.rad(5+2.5*math.cos(sine/40)),math.rad(30)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(5-2.5*math.cos(sine/40)),math.rad(10),math.rad(85-2.5*math.cos(sine/40))),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(15-2.5*math.cos(sine/40)),math.rad(0),math.rad(-15+2.5*math.cos(sine/40))),.3)
RH.C0=clerp(RH.C0,cf(1.1,-0.75,0.1)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-5)),.3)
LH.C0=clerp(LH.C0,cf(-1.15,-0.8,-0.1)*angles(math.rad(0),math.rad(-60),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(5)),.3)
handlw.C0=clerp(handlw.C0,cf(-0.5,0,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30+5*math.cos(sine/30)),math.rad(-17),math.rad(30+5*math.cos(sine/30))),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-15-5*math.cos(sine/30)),math.rad(0),math.rad(-30-5*math.cos(sine/30))),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
handlw.C0=clerp(handlw.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
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
fenbarmana2:TweenSize(UDim2.new(4*mana/200,0,0.2,0),nil,1,0.4,true)
fenbarmana4.Text="[Light]                    <{[  "..mana.."  ]}>                    [Light]"
if mana>=200 then
mana=200
else
if mananum<=8 then
mananum=mananum+1
else
mananum=0
mana=math.ceil(mana+0.5)
end
end
end


