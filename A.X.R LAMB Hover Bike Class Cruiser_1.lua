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
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
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
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil

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

	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=true
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function Seat(parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("VehicleSeat")
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	nooutline(fp)
	fp.Material=material
	fp:BreakJoints()
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
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
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

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
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
w2.BrickColor = BrickColor.new(TrailColor)
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
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
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local blocked=false
                local block=hit.Parent:findFirstChild("Block")
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
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Hitbox.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
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
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
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
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
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

Seat=Seat(m,Enum.Material.SmoothPlastic,0,1,"Cyan","Seat",Vector3.new(2, 2, 3))
Seatweld=weld(m,Seat,Seat,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.39999628, -1.94995117, -0.399997115, 1, 6.68508878e-023, -1.49907616e-020, -6.68508878e-023, 1, 1.6211516e-023, 1.49907616e-020, -1.6211516e-023, 1))
LightPart1=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Medium stone grey","LightPart1",Vector3.new(1.99999905, 1.20000005, 1.60000002))
LightPart1weld=weld(m,Seat,LightPart1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.60063505, -1.49921799, -0.0267181396, 8.40731718e-006, -9.63358252e-006, 1.00000072, -0.000813663588, 1.00000143, 9.64029641e-006, -1.00000274, -0.000813686929, 8.48886702e-006))
LightPart2=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","LightPart2",Vector3.new(1.20000005, 2.48000002, 0.800000072))
LightPart2weld=weld(m,Seat,LightPart2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09911251, -0.028711319, 1.60029244, 0.00120562338, 1.00000262, 6.74584317e-006, -1.00000513, 0.00120557286, 4.05480569e-006, 3.86795546e-006, -6.75111642e-006, 1.00000143))
mesh("CylinderMesh",LightPart2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
LightPart3=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","LightPart3",Vector3.new(1.20000005, 2.48000002, 0.800000072))
LightPart3weld=weld(m,Seat,LightPart3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09941339, -0.0258307457, -2.39943933, -0.00184239517, 1.00000346, 2.58815862e-006, -1.00000715, -0.00184246048, 4.810463e-006, 4.54703058e-006, -2.57986494e-006, 1.00000215))
mesh("CylinderMesh",LightPart3,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PEmitterPart1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","PEmitterPart1",Vector3.new(2.4000001, 0.200000003, 2.4000001))
PEmitterPart1weld=weld(m,Seat,PEmitterPart1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.69895315, -4.71988916, 0.0283708572, 0.000658218167, 1.00000167, -1.0073185e-005, 9.90134686e-006, 1.02072663e-005, 1.00000036, 1.00000262, -0.000658193254, -9.98407359e-006))
mesh("CylinderMesh",PEmitterPart1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PEmitterPart2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","PEmitterPart2",Vector3.new(1.59999955, 0.400000006, 2.4000001))
PEmitterPart2weld=weld(m,Seat,PEmitterPart2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.3991456, -0.161645412, -0.026222229, 7.9485153e-006, 1.75796795e-005, -1.00000286, 0.00101725385, -1.00000632, -1.7571123e-005, -1.00001132, -0.00101734383, -7.60885086e-006))
mesh("CylinderMesh",PEmitterPart2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PEmitterPart3=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","PEmitterPart3",Vector3.new(1.59999955, 0.400000006, 2.4000001))
PEmitterPart3weld=weld(m,Seat,PEmitterPart3,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.800851226, -0.161319733, 0.0281848907, 8.46056537e-006, -1.00613879e-005, 1.00000072, -0.0013102591, -1.00000083, -1.00499783e-005, 1.00000203, -0.001310274, -8.5631309e-006))
mesh("CylinderMesh",PEmitterPart3,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.10057306, -1.60665989, 1.59966803, 0.00121642661, 1.00000107, 6.69450401e-006, -1.00000203, 0.00121640088, 8.88051545e-006, 8.7829776e-006, -6.70549616e-006, 1.00000072))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.80097604, 0.50269413, -1.77186775, 1.45286026e-006, 1.00389962e-005, -1.00000358, 0.00114388636, 1.00000858, 1.00391544e-005, 1.00001395, -0.00114375819, 9.94613174e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 1.20000005, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.973210335, -2.69548035, -1.20025182, -1.00000799, -0.00127372472, -1.10720396e-006, -0.00127365696, 1.00000429, 6.68506436e-006, 1.36692302e-006, 6.68705343e-006, -1.00000215))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 1.20000005, 2.00000024))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.971236229, -2.69940758, 3.60063601, 1.00000632, -0.000226969263, -3.17525473e-006, 0.000227024633, 1.00000417, 5.83810788e-006, 2.99512817e-006, -5.839197e-006, 1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.99999952, 0.400000006, 2.4000001))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.800851583, 0.121459961, -0.0277256966, 8.87724491e-006, -9.97057032e-006, 1.00000072, 0.00105294876, 1.00000131, 9.96092513e-006, -1.00000226, 0.00105292327, 8.97712744e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(1.60000002, 1.20000005, 1.60000026))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0266094208, 0.29872036, 3.80084038, -1.00000596, 0.000215336724, 3.02296189e-006, -0.000215385953, -1.00000346, -6.71394901e-006, 2.84271141e-006, -6.71498856e-006, 1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(1.60000002, 1, 1.00000036))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0277814865, -2.60056448, -1.89906287, 1.00000501, 0.00147263659, 2.15560358e-005, -0.00147259212, 1.0000025, 1.70366854e-006, -2.17322777e-005, -1.73578894e-006, 1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.19967914, 0.102137566, 1.7724371, -1.12341022e-005, -1.00538928e-005, 1.00000501, 0.00132563838, 1.00001132, 1.00665611e-005, -1.00001991, 0.00132545829, -1.05952149e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.10069275, -0.202798367, 2.26717615, 0.00120945298, 1.00000107, 4.8923921e-006, -0.707215309, 0.000851864635, 0.707000434, 0.707001269, -0.000858524989, 0.707214177))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.20000005, 2.44000006, 1.20000005))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09909439, -0.0282974243, 1.60065281, 0.000954389921, 1.00000143, 6.72990882e-006, -1.00000238, 0.000954364368, 8.87872102e-006, 8.78290484e-006, -6.73857221e-006, 1.00000072))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.400000006, 1.67999995, 2.79999995))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09939575, -0.0249238014, 0.000835195184, -0.00237057498, 1.00000083, 2.07627068e-006, -1.00000334, -0.00237061712, -9.39066467e-006, -9.56443273e-006, -2.09890413e-006, 1.00000143))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.99999917, 2, 2.4000001))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.3996911, -1.09863853, -0.023414135, -1.02643153e-005, -6.34739536e-006, 1.00000143, -0.00350100454, 0.999997556, 6.31165949e-006, -1.00000012, -0.00350104389, -1.01077558e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.9999994, 0.400000006, 1.60000002))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.79974103, 0.121685505, -0.0247735977, -9.55743508e-006, -7.60076182e-006, 1.00000143, -0.00194565929, 1.00000179, 7.58210945e-006, -1.00000441, -0.00194570271, -9.39349047e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 1, 1.00000036))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.02389455, -2.59895945, -1.89978969, 1.00000012, 0.00350916269, 6.12183703e-006, -0.00350912334, 0.999997556, 6.27520785e-006, -6.27847794e-006, -6.29703845e-006, 1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Medium stone grey","Part",Vector3.new(1.60000002, 1.20000005, 2.00000024))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0286903381, -2.69945574, 3.60064149, 1.00000596, 3.71790593e-005, -3.99851979e-006, -3.71306123e-005, 1.00000346, 6.82252312e-006, 3.81997324e-006, -6.82276277e-006, 1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.59999943, 2, 2.4000001))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.8006928, -1.09817791, -0.0239701271, -8.98009148e-006, -7.91142156e-006, 1.00000358, -0.00275296904, 1.00000489, 7.88691887e-006, -1.00001121, -0.00275307172, -8.55504277e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 1.20000005, 2.00000024))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.0289371, -2.69907236, 3.60064173, 1.00000286, 0.000118954362, -4.08593451e-006, -0.000118930133, 1.00000167, 7.12752535e-006, 3.99738292e-006, -7.12723522e-006, 1.00000072))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.09809923, 1.85493279, 1.3203733, 0.00120741897, 1.00000107, 6.69461224e-006, -1.00000203, 0.00120739336, 8.88088289e-006, 8.78340416e-006, -6.70552527e-006, 1.00000072))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(2.39999914, 0.799999952, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.19961305, -0.500425339, -1.02260256, -6.82393784e-006, -6.99848624e-006, 1.00000215, -0.00398232276, 0.999997139, 6.97173709e-006, -1.00000083, -0.0039823791, -6.58368936e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.99999964, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.39966202, 0.502758503, -1.77234411, 9.15526471e-006, 1.92923762e-005, -1.00000572, 0.00103723735, 1.00001311, 1.9299463e-005, 1.00002289, -0.00103703619, 8.42037116e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 2.44000006, 0.819999993))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09971237, -0.0254769325, -1.78927946, -0.00225500413, 1.00000107, 1.23419306e-006, -1.00000358, -0.00225504651, -8.37120933e-006, -8.54711652e-006, -1.2534432e-006, 1.00000143))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.99999905, 1.20000017, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.60065103, -1.4999485, -1.02666402, 8.7284343e-006, -1.00782472e-005, 1, -0.000945873966, 0.999999523, 1.00864991e-005, -0.999999523, -0.000945874082, 8.71889824e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.20066595, 0.099588871, 1.82859683, 1.04471437e-005, 9.91858269e-006, -1.00000429, 0.00111895963, 1.00001025, 9.92849255e-006, 1.0000174, -0.00111880328, 9.89987166e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.99999952, 0.400000006, 2.4000001))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.39914107, 0.121270657, -0.0247020721, -1.12630914e-005, -6.10568304e-006, 1.00000143, -0.00199317792, 1.00000179, 6.08319124e-006, -1.00000429, -0.00199322123, -1.10965157e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000072, 1.20000005, 1.60000002))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07852316, 4.01986313, 0.0285496712, -0.000669267029, -1.00000548, 9.96278504e-006, -8.67575909e-006, -1.02379381e-005, -1.00000143, 1.00000834, -0.000669191941, -8.9371988e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.10079098, -1.88642669, 1.31939626, 0.0012075752, 1.00000107, 6.69461588e-006, -1.00000203, 0.00120754959, 8.88090744e-006, 8.78342962e-006, -6.70552981e-006, 1.00000072))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.20000005, 1.20000005, 1.60000002))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.09899664, 4.01988506, 0.0283508301, -0.000658542325, -1.00000548, 9.94970651e-006, -8.54435893e-006, -1.02250406e-005, -1.00000143, 1.00000834, -0.000658467179, -8.80591506e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.40058184, 0.102204323, 1.77229977, -3.52337838e-006, -1.00593106e-005, 1.00000715, 0.00131403375, 1.00001681, 1.00607776e-005, -1.00002849, 0.00131377799, -2.61663718e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.40032578, 0.102355003, -1.37541962, 8.58009025e-006, 8.64925914e-006, -1.00000572, -0.00168570655, 1.00001228, 8.63441437e-006, 1.00002205, 0.00168588117, 7.8797857e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.20000005, 1.20000005, 1.60000002))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.09882975, 3.9995327, 0.0252323151, 0.00236401567, -1.00000095, 1.37274283e-005, 1.02712474e-005, -1.37032648e-005, -1.00000143, 1.00000346, 0.00236405805, 1.00601055e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.39940953, 0.0998649597, -1.42620778, -1.10797255e-005, -5.98889392e-006, 1.00000286, -0.00107203797, 1.00000703, 5.97664257e-006, -1.00001156, -0.00107213622, -1.0728696e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.09826088, -1.37392807, 1.60062718, 0.00068693317, -1.00000489, -7.26723147e-006, 1.00000858, 0.000687003369, -5.87700424e-006, 5.61380602e-006, -7.26377766e-006, 1.00000215))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 1.63999999, 2.39999986))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09963369, -0.0252270699, -0.199597985, -0.0023164039, 1.00000095, 2.77942377e-006, -1.00000358, -0.00231644628, -6.79737468e-006, -6.9696207e-006, -2.79554092e-006, 1.00000143))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.20000005, 1.20000005, 0.800000072))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.09937716, 3.99955177, 0.805366039, 0.0025998354, -1.00000036, 1.37882917e-005, 1.03445873e-005, -1.37615652e-005, -1.00000143, 1.00000286, 0.00259987731, 1.01300557e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(2.39999962, 1.20000005, 1.20000017))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0261664391, 0.699213028, 3.99949765, 1.00000572, 0.00100220111, 1.48121271e-005, 0.00100215548, -1.00000322, -3.17156855e-006, 1.49876814e-005, 3.18679167e-006, -1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.99999905, 1.20000005, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.600631, -1.49826574, 0.973803997, 7.93251456e-006, -9.21295396e-006, 1.00000143, -0.00070046098, 1.00000322, 9.21823994e-006, -1.00000572, -0.00070050772, 8.10483834e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0.5,"Cyan","Part",Vector3.new(2.4000001, 0.800000012, 1.20000005))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0281844139, -3.69953918, 2.00111723, 1.00000632, 0.000523618481, -3.55036173e-006, -0.000523565046, 1.00000417, 3.38168029e-005, 3.38926543e-006, -3.38153877e-005, 1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(5.99999952, 0.400000006, 2.4000001))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399641037, 0.102004528, -0.0230698586, -9.47117587e-006, -8.17592172e-006, 1.00000072, -0.00354294665, 0.999996066, 8.14245232e-006, -0.99999702, -0.00354297319, -9.41073449e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.20072079, 0.0999488831, -1.42676711, -9.45360625e-006, -8.67914787e-006, 1.00000072, -0.000586868729, 1.00000226, 8.67347171e-006, -1.00000322, -0.000586898066, -9.36935157e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.09831715, -1.57168865, 1.60065258, -0.00121642172, -1.00000107, -8.14043233e-006, 1.00000203, -0.00121639587, -6.87361808e-006, 6.77431854e-006, -8.1489834e-006, 1.00000072))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(2.39999962, 1.79999995, 1.20000029))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.027923584, -2.19997215, 3.99946332, -1.00000608, -0.000631342875, -1.41628443e-005, -0.000631296309, 1.00000358, 2.30270462e-006, 1.43401248e-005, 2.31202375e-006, -1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.19959116, 0.102638721, -1.37454414, 9.5064006e-006, 1.05951704e-005, -1.00000072, -0.00102492026, 1.00000191, 1.05853314e-005, 1.00000286, 0.00102494913, 9.42790666e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.60000002, 1.20000005, 1.60000002))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.09960842, 3.99954987, 0.025302887, 0.0020484766, -1.00000155, 1.44522555e-005, 1.16322881e-005, -1.44284832e-005, -1.00000143, 1.00000417, 0.00204851967, 1.14239829e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(2.39999914, 2, 1.60000002))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.199211806, -1.0986681, -0.0233745575, -1.11853778e-005, -6.27877898e-006, 1.00000215, -0.00353213609, 0.999999464, 6.2396125e-006, -1.00000286, -0.00353220175, -1.09394114e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.59987855, 0.500069618, -1.82840061, -5.72391309e-006, -9.93667982e-006, 1, 0.00128525752, 0.999999285, 9.94402853e-006, -0.999999285, 0.00128525798, -5.71113651e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(2.39999962, 1.60000002, 0.800000191))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0259170532, 0.499517918, 3.79930305, 0.999999762, 0.000795156462, 6.53996267e-006, 0.000795156462, -0.999999762, -2.50548419e-006, 6.53796724e-006, 2.51068354e-006, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.20000005, 1.19999981, 1.60000002))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.00004363, -2.69912815, -0.0252399445, 1.02496506e-005, -8.66150822e-006, 1.00000143, -0.00142499432, 1.00000334, 8.67598465e-006, -1.00000548, -0.00142504578, 1.04160645e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.400000006, 2.48000002, 0.800000072))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09877491, -0.0239162445, -1.75978482, -0.00255785463, 1.00000238, 1.9593549e-006, -1.00000584, -0.00255792309, -6.38309393e-006, -6.64610343e-006, -1.9762258e-006, 1.00000215))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(1.60000002, 1.20000005, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0278177261, -2.69615316, -1.2002393, -1.00000882, -0.00100973377, -1.76265053e-006, -0.00100965833, 1.00000548, 5.8631631e-006, 2.02497131e-006, 5.86550277e-006, -1.00000215))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.999999583, 0.999999821, 2.4000001))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.89941692, -2.59950495, -0.0234746933, -2.01913317e-005, -6.06103868e-006, 1.00000143, -0.00273476192, 1, 6.00589965e-006, -1.00000262, -0.00273480313, -2.00290669e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.99999964, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.40056348, 0.499668121, -1.82858419, -8.54795962e-006, -1.6956734e-006, 1, 0.00110444042, 0.999999464, 1.70511328e-006, -0.999999464, 0.00110444089, -8.54608061e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(2.39999914, 0.799999952, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.19949466, -0.496664524, 0.977795124, -8.65785569e-006, -5.64212451e-006, 1.00000215, -0.00364382332, 0.999999046, 5.61095248e-006, -1.0000025, -0.00364388828, -8.41030123e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.99999952, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.399651527, 0.502972603, -1.77228737, 3.99069586e-006, 1.96569999e-005, -1, 0.00093543838, 0.999999583, 1.96607234e-005, 0.999999583, -0.000935438438, 3.97230588e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.99999964, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.60058331, 0.502756119, -1.77220917, 3.1345669e-006, 1.90898172e-005, -1, 0.00108608603, 0.999999464, 1.90932096e-005, 0.999999464, -0.00108608603, 3.11383133e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.99999964, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400335431, 0.499809742, -1.82851481, -2.74840522e-006, -1.86587158e-006, 1, 0.00109240296, 0.999999464, 1.86887303e-006, -0.999999464, 0.00109240343, -2.74636477e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.0982089, -0.177716255, 2.24350333, -0.00121559133, -1.00000107, -9.91930392e-006, 0.707227945, -0.00086669327, 0.706987441, -0.706988692, 0.000852374127, 0.707227051))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 1.20000005, 1.60000026))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0268414, 0.29840517, 3.80084729, -1.00000286, -0.000124700324, 3.25170913e-006, 0.000124676153, -1.00000167, -7.1612867e-006, 3.16320006e-006, -7.16107797e-006, 1.00000072))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.79992509, 0.499865532, -1.82837605, -5.73170928e-006, -1.33768981e-006, 1, 0.00114957907, 0.999999404, 1.3442783e-006, -0.999999404, 0.00114957953, -5.73016723e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.19999957, 1.19999981, 0.400000095))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.00005484, -2.70011663, -1.02729821, 1.02740423e-005, -8.67533709e-006, 1.00000143, -0.00053286145, 1.00000417, 8.6805303e-006, -1.00000632, -0.000532914884, 1.04481869e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 1.19999981, 2.4000001))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80077457, -0.29885149, -0.0257496834, -9.9696108e-006, -7.46038404e-006, 1.00000286, -0.00145209511, 1.0000062, 7.44565523e-006, -1.00001085, -0.00145219057, -9.62300419e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.59910321, 0.502381325, -1.77243471, 7.18249839e-006, 1.87215628e-005, -1, 0.00126205466, 0.999999285, 1.87306141e-005, 0.999999285, -0.0012620549, 7.15886517e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000066, 1.20000005, 1.60000002))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07904243, 4.01990128, 0.828058243, 0.000253173639, -1.00000191, 7.04345894e-006, -1.1683358e-005, -7.18708998e-006, -1.00000036, 1.00000286, 0.000253197795, -1.1774493e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000066, 1.20000005, 1.60000002))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.07732153, 4.01985693, -0.772010803, -0.000515888387, -1.0000056, 9.91615616e-006, -8.71991506e-006, -1.01926553e-005, -1.00000143, 1.00000846, -0.000515813765, -8.98290546e-006))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.20000005, 1.20000005, 0.800000072))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.0969739, 3.99953985, -0.774913788, 0.00259982888, -1.00000036, 1.3755166e-005, 1.03445018e-005, -1.37284396e-005, -1.00000143, 1.00000286, 0.00259987079, 1.01300575e-005))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 1.20000005, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02770901, -2.69822073, -1.20022452, -1.00000584, -0.00107230339, -1.80813197e-006, -0.00107225101, 1.0000037, 5.86305759e-006, 1.98067346e-006, 5.86536089e-006, -1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.99999964, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.59950948, 0.499870777, -1.82842445, -6.28917314e-006, -1.71337194e-006, 1, 0.00114983425, 0.999999404, 1.72060265e-006, -0.999999404, 0.00114983472, -6.28719818e-006))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 1.00000012, 1.00000036))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.976900101, -2.59928131, -1.89929867, 1.00000262, 0.00268047908, 2.01360745e-005, -0.00268043764, 1.00000012, 5.85600083e-006, -2.02990741e-005, -5.91033995e-006, 1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(1.20000005, 2.44000006, 1.20000005))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09918308, -0.0287213326, -2.39937401, 0.00113682076, 1.00000441, 6.51179835e-006, -1.00000811, 0.00113674463, 1.05428499e-005, 1.02672857e-005, -6.52436302e-006, 1.00000215))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.10039949, -1.40645576, 1.5996722, 0.00122026633, 1.00000107, 6.69451219e-006, -1.00000203, 0.00122024072, 8.88053819e-006, 8.78297396e-006, -6.70553845e-006, 1.00000072))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.400000006, 0.400000006))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.39952588, 0.0996141434, 1.82832408, 8.23051596e-006, 9.98337873e-006, -1, 0.00109611196, 0.999999464, 9.99239455e-006, 0.999999464, -0.00109611242, 8.21956746e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(0.400000006, 1.20000005, 1.60000026))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.973332405, 0.298690319, 3.80083895, -1.00000632, 0.000218193265, 2.34101208e-006, -0.000218248606, -1.00000417, -5.87187969e-006, 2.1609244e-006, -5.87275917e-006, 1.00000143))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cyan","Part",Vector3.new(1.19999957, 1.19999981, 0.400000095))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.00003862, -2.69827557, 0.973701954, 1.07890164e-005, -9.35332719e-006, 1.00000143, -0.000717455172, 1.00000322, 9.3607996e-006, -1.00000572, -0.000717501913, 1.09610719e-005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.400000006, 2.44000006, 0.200000003))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0996747, -0.025454998, 1.08058298, -0.00225337758, 1.00000107, 1.23469272e-006, -1.0000037, -0.00225342019, -7.47742706e-006, -7.65333152e-006, -1.2519148e-006, 1.00000143))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.400000006, 2.48000002, 0.400000036))
Partweld=weld(m,Seat,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09876585, -0.0238280296, 1.17050171, -0.00255756709, 1.00000238, 1.95993493e-006, -1.00000584, -0.00255763577, -4.95301629e-006, -5.21601942e-006, -1.97314671e-006, 1.00000215))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))

local Light1 = it("SpotLight",LightPart1)
Light1.Angle = 90
Light1.Brightness = 1
Light1.Shadows = true
Light1.Face = "Left"
Light1.Range = 60

local Light2 = it("PointLight",LightPart2)
Light2.Brightness = 5
Light2.Shadows = true
Light2.Range = 8

local Light3 = it("PointLight",LightPart3)
Light3.Brightness = 5
Light3.Shadows = true
Light3.Range = 8

local PE1 = Instance.new("ParticleEmitter",PEmitterPart1)
PE1.Color = ColorSequence.new(Color3.new (85, 255, 255), Color3.new (85, 255, 255))
PE1.Transparency = NumberSequence.new(.8)
PE1.Size = NumberSequence.new(2)
PE1.Texture = "rbxassetid://242093929"
PE1.Lifetime = NumberRange.new(1)
PE1.Rate = 50
PE1.Rotation = NumberRange.new(100)
PE1.Speed = NumberRange.new(3)
PE1.LightEmission = 1

local PE2 = Instance.new("ParticleEmitter",PEmitterPart2)
PE2.Color = ColorSequence.new(Color3.new (85, 255, 255), Color3.new (85, 255, 255))
PE2.Transparency = NumberSequence.new(.8)
PE2.Size = NumberSequence.new(2)
PE2.Texture = "rbxassetid://242093929"
PE2.Lifetime = NumberRange.new(0.5)
PE2.Rate = 25
PE2.Rotation = NumberRange.new(0)
PE2.Speed = NumberRange.new(5)
PE2.LightEmission = 1

local PE3 = Instance.new("ParticleEmitter",PEmitterPart3)
PE3.Color = ColorSequence.new(Color3.new (85, 255, 255), Color3.new (85, 255, 255))
PE3.Transparency = NumberSequence.new(.8)
PE3.Size = NumberSequence.new(2)
PE3.Texture = "rbxassetid://242093929"
PE3.Lifetime = NumberRange.new(0.5)
PE3.Rate = 25
PE3.Rotation = NumberRange.new(0)
PE3.Speed = NumberRange.new(5)
PE3.LightEmission = 1

Seat.CFrame = Torso.CFrame*CFrame.new(5,0.5,0)


local bodypos = Instance.new("BodyPosition",Seat)

bodypos.position = Torso.CFrame*CFrame.new(5,0.5,0).p

bodypos.maxForce = Vector3.new(0,math.huge,0)
local bodygyr = Instance.new("BodyGyro",m.Seat)
bodygyr.maxTorque = Vector3.new(7e5, 0, 7e5);
local bodyvel = Instance.new("BodyVelocity",m.Seat)
bodyvel.velocity=Vector3.new(0,0,0)
bodyvel.maxForce = Vector3.new(9000,9000,9000)
local bodyang = Instance.new("BodyAngularVelocity",m.Seat)
bodyang.angularvelocity=Vector3.new(0,0,0)


S=Instance.new("Sound",Seat)
S.SoundId = 'http://www.roblox.com/asset/?id=149560784'
S.Looped = true
S:play()





game:GetService("RunService").Heartbeat:connect(function()
    
    local ray = Ray.new(Seat.Position, Vector3.new(0, -5.5, 0))
    local hitz, enz, norm = workspace:FindPartOnRay(ray, Character)
    
    local targetPos = enz+Vector3.new(0,5 + math.sin(tick()/2)*.25,0);
    
    bodyvel.velocity = m.Seat.CFrame.lookVector*m.Seat.Throttle*80
    S.Pitch = Seat.Throttle/80+1
    bodyang.angularvelocity = Vector3.new(0,m.Seat.Steer*-10,0)
    bodypos.position = targetPos
    
    local dir = (Seat.CFrame.lookVector*Vector3.new(1,1,1)).unit
    bodygyr.cframe = CFrame.new(enz,enz+dir)*CFrame.Angles(-math.asin(dir:Dot(norm)),0,0)
end)

function onChildAdded(child)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(85), math.rad(110)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-85), math.rad(-110)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(20)),.3)
end
end

Seat.ChildAdded:connect(onChildAdded)

local sine = 0
local change = 1
local val = 0

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

--[[if Humanoid.Sit == true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(110), math.rad(0), math.rad(5)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(110), math.rad(0), math.rad(-5)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(20)),.3)
elseif Humanoid.Sit == false then
Anim = "Standing"
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end]]--

if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false and Humanoid.Sit == false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and Humanoid.Sit == false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(50)), 0.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-50)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and Humanoid.Sit == false  then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(5)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-5)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(5)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-5)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false and Humanoid.Sit == false  then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30*math.cos(sine/10)), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30*math.cos(sine/10)), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
end
end
end
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
Mesh=Thing[7]
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
end